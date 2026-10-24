# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectFiber.Variant3409d3bcbc45342e8a4f1cb4f9753f4ce0457b0a5c3a66e5749b95614022ba5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc8348f885640760cb27e006570ec44613ef938f` · SHA-256 `3409d3bcbc45342e8a4f1cb4f9753f4ce0457b0a5c3a66e5749b95614022ba5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
