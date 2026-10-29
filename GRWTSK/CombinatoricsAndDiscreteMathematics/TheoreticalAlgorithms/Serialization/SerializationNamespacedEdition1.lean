-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalFileReceipt.Variant12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalFileReceipt.Variant12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832","mathematical_subject":"Computation.DataStructures","original_sha256":"12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Serialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Core

/-!
# Canonical serialization boundary

Actual UTF-8 canonical JSON and hashing are executable operations.  These
structures record the obligations a sound decoder must discharge; they do not
assert correctness of an external serializer merely from matching digests.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalFileReceipt.Variant12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832

namespace MathDiscovery.Extractor

open MathDiscovery

structure CanonicalFileReceipt where
  path : CanonicalPath
  digest : Digest
  sizeBytes : Nat
  deriving DecidableEq, Repr, Inhabited

structure CanonicalPayloadReceipt where
  schemaVersion : Nat
  extractorVersion : Version
  files : Array CanonicalFileReceipt
  payloadDigest : Digest
  deriving DecidableEq, Repr, Inhabited

structure MerkleReceipt where
  files : Array CanonicalFileReceipt
  rootDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace CanonicalFileReceipt

def Valid (receipt : CanonicalFileReceipt) : Prop :=
  receipt.path.Valid ∧ receipt.digest.Valid

end CanonicalFileReceipt

namespace CanonicalPayloadReceipt

def Valid (payload : CanonicalPayloadReceipt) : Prop :=
  payload.schemaVersion = 2 ∧
  payload.extractorVersion.value ≠ "" ∧
  payload.payloadDigest.Valid ∧
  (payload.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ payload.files, file.Valid

end CanonicalPayloadReceipt

namespace MerkleReceipt

def Valid (merkle : MerkleReceipt) : Prop :=
  merkle.rootDigest.Valid ∧
  (merkle.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ merkle.files, file.Valid

end MerkleReceipt

end MathDiscovery.Extractor
