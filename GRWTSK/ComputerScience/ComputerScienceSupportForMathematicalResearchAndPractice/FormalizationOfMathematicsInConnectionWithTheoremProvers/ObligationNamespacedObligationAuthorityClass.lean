-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","mathematical_subject":"Foundations.Unclassified","original_sha256":"fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Identity

/-!
# Indexed resolution obligations

The proposition, source, authority class, exactness, and certificate kind are
version-bound coordinates of one permanently identified obligation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObligationAuthorityClass.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6

namespace Mathematics.Resolution

universe u

inductive ObligationAuthorityClass
  | leanTheorem
  | runtimeRefinement
  | transportNaturality
  | snapshotConsistency
  | codec
  | identityPreservation
  | resultConstruction
  deriving DecidableEq, Repr

inductive ExactnessClass
  | exact
  | certifiedApproximation
  deriving DecidableEq, Repr

structure IndexedObligation (Statement : Type u) where
  identity : ObligationIdentity
  statement : Statement
  propositionDigest : String
  dependencyDigest : String
  authorityClass : ObligationAuthorityClass
  exactness : ExactnessClass
  certificateKind : String
  deriving DecidableEq, Repr

end Mathematics.Resolution
