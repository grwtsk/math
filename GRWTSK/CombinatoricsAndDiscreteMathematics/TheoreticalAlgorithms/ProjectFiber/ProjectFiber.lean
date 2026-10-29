import Mathematics.Ingestion.Receipt
import Mathematics.Ecosystem.Registry

/-! # Federated project fibers -/

namespace Mathematics.Federation

/--
Each project remains in its own environment fiber.  Federation indexes these
fibers; it does not flatten their namespaces or dependency graphs.
-/
structure ProjectFiber where
  snapshot : Ecosystem.ProjectSnapshot
  ingestion : Ingestion.IngestionReceipt
  ingestion_matches : ingestion.raw.snapshot = snapshot
  environment : Ingestion.EnvironmentCapture
  fiberDigest : Digest

structure FederatedEnvironment where
  fibers : List ProjectFiber
  fiberKeysUnique :
    (fibers.map fun fiber ↦ fiber.snapshot.key).Nodup
  federationDigest : Digest

end Mathematics.Federation
