resource "google_compute_instance" "default" {
  project      = "PROJECT_ID"
  name         = "instance_name"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "mynetwork"
    access_config {
    }
  }
}
