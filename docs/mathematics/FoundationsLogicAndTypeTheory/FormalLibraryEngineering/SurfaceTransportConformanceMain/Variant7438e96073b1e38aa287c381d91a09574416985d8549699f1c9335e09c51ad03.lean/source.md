# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceTransportConformanceMain.Variant7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82c2f2ef045520b50560d57b63fe54e3d65c1b38` · SHA-256 `7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Data.Json
import Surface.Core.Transport
import Surface.Refactor.Syntax
import Surface.Refactor.Surgery

/-!
# Finite transport conformance manifest

The executable identifies the exact level-one interfaces consumed by bounded
golden/property corpora.  It deliberately does not turn a successful test run
into a universal Rust, parser, patch, client, or Lean equivalence theorem.
-/

open Lean

namespace SurfaceTransportConformance

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_transport_conformance"
    return 64
  let output := Json.mkObj [
    ("schema", toJson "surface.transport.conformance-manifest.v1"),
    ("evidenceLevel", toJson "finiteGoldenCorpus"),
    ("exposesProposition", toJson false),
    ("interfaces", toJson [
      "RustTransportConforms",
      "RustStructuralPacketConforms",
      "RustBracketProjectionConforms",
      "RustSurgeryVerifierConforms",
      "RustPatchCompilerConforms",
      "ClientPacketDecoderConforms"]),
    ("nonclaims", toJson [
      "Finite corpus agreement is not a universal implementation proof.",
      "Parser output and build observations are not Lean kernel proofs.",
      "Transport metadata does not prove transported theorem tasks."])
  ]
  IO.println output.compress
  pure 0

end SurfaceTransportConformance

def main (args : List String) : IO UInt32 :=
  SurfaceTransportConformance.main args
```
