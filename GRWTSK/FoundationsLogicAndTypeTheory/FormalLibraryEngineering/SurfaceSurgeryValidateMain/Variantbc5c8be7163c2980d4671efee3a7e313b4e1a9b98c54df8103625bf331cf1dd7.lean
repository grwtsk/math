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
