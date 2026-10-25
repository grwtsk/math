# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceTransportConformanceMain.Variantd54e41b6e48dfee7374343d47ef7b447f9dc16e784439a9364c9c429bb1cdca5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a0334f11667d6df4a33d8f73b654f76b27d9a1d` · SHA-256 `19622533e4bb162fcfa1075aa55ff2e755d802116f909ba522714077ab4fa675`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Main.Variant7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/tools/SurfaceTransportConformanceMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant7438e96073b1e38aa287c381d91a09574416985d8549699f1c9335e09c51ad03

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
