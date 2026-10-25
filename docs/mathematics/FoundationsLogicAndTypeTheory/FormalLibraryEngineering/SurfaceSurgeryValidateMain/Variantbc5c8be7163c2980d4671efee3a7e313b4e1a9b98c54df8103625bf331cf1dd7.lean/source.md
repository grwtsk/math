# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceSurgeryValidateMain.Variantbc5c8be7163c2980d4671efee3a7e313b4e1a9b98c54df8103625bf331cf1dd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97075a635956124defd7b5e9c634f692373e968c` · SHA-256 `03c6f324da42bac3e78fb23dec674aa41bbbe9a2308a1c84c15873a17900d4d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectionCodes.Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RejectionCodes.Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/tools/SurfaceSurgeryValidateMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Data.Json
import Surface.Refactor.Surgery

/-!
# Structural-surgery validation manifest

Operational source validation is performed by the strict Rust protocol and the
existing isolated overlay/compiler gates.  This Lean executable publishes the
formal gate order and stable rejection vocabulary without accepting source
bytes or mutating the repository.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectionCodes.Variant0b8442162fedc898f94369eee2f48d221e585c9b29db9c08009d937da06feed1

open Lean
open Surface.Refactor.Surgery

namespace SurfaceSurgeryValidate

def rejectionCodes : List String := [
  .invalidStructuralPacket, .unsupportedLanguage,
  .parserFingerprintMismatch, .packetHashMismatch,
  .staleRepositoryRevision, .equalRevisionSurgeryConflict,
  .nodeNotFound, .ambiguousNodeCorrespondence, .sourceSpanMismatch,
  .unsupportedSurgeryOperation, .overlappingCompiledEdits,
  .bracketProjectionInvalid, .parseRecoveryNotAdmissible,
  .importCycle, .unresolvedReference, .compilerValidationFailed,
  .leanStatementChanged, .leanPublicApiChanged, .leanAxiomGrowth,
  .inverseRoundtripFailed, .patchRenderFailed, .patchApplyCheckFailed,
  .transactionRace, .transactionRollback, .schemaOrAlgorithmMismatch,
  .contractOrSnapshotMismatch, .sourceBytesOrHashesMismatch,
  .compiledHashMismatch, .structuralInvariantFailed
].map SurgeryRejectionCode.wireCode

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_surgery_validate"
    return 64
  let output := Json.mkObj [
    ("schema", toJson "surface.surgery.validation-manifest.v1"),
    ("algorithmVersion", toJson (1 : Nat)),
    ("mutationEnabled", toJson false),
    ("authority", toJson "finiteDeterministicManifest"),
    ("rejectionCodes", toJson rejectionCodes),
    ("requiredDownstreamGates", toJson [
      "exact-source-and-hash-recheck",
      "canonical-parser-or-compiler",
      "requested-build-targets",
      "theorem-task-identity",
      "public-api-and-classification",
      "axiom-closure",
      "inverse-roundtrip",
      "journaled-transaction"])
  ]
  IO.println output.compress
  pure 0

end SurfaceSurgeryValidate

def main (args : List String) : IO UInt32 :=
  SurfaceSurgeryValidate.main args
```
