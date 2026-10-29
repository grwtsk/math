-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/ProjectionProfile/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.OperatorOrder

/-!
# Sonin projection-profile primitive
-/


namespace GRWTSK.Algebra.LinearAlgebra.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninProjectionProfile
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) where
  projection :
    PrimeCut U →
    HilbertEnd H.Ambient
  projection_isProjection :
    ∀ S,
      OrthogonalProjectionCertificate
        (projection S)
  projection_range :
    ∀ S,
      LinearMap.range
        (projection S).toLinearMap
      =
      H.transportedRange S
  projection_absorbs_left :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection T).comp
        (projection S)
      =
      projection S
  projection_absorbs_right :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection S).comp
        (projection T)
      =
      projection S
  projection_mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      OperatorLE
        (projection S)
        (projection T)
  projection_top :
    projection (topCut U)
    =
    ContinuousLinearMap.id
      ℂ
      H.Ambient

end Mathematics.SemiLocalDefect.SoninCore
