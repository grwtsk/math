-- corpus-organization-transform:v1
-- Mathematical subject: Computation.DataStructures
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Computation.DataStructures.SourceCorpus.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","mathematical_subject":"Computation.DataStructures","original_sha256":"4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Opaque.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Raw

/-! # Explicit opaque-artifact retention -/


namespace FormalResearch.Computation.DataStructures.SourceCorpus.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0

namespace Mathematics.Ingestion

inductive OpacityReason
  | unsupportedMedia
  | parserUnavailable
  | toolchainUnavailable
  | encrypted
  | intentionallyOpaque
  deriving DecidableEq, Repr

/-- An unparsed artifact remains byte-addressed and queryable. -/
structure OpaqueArtifact where
  artifact : Ecosystem.RawArtifact
  reason : OpacityReason
  diagnosticArtifactIds : List StableId
  classificationDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ingestion
