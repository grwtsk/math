-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SoninCapacityCertificate.Variant681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SoninCapacityCertificate.Variant681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/Increment/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.Increment.Definition

/-!
# Projection-increment certificate primitive
-/


namespace GRWTSK.Algebra.LinearAlgebra.SoninCapacityCertificate.Variant681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninCapacityCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H) where
  differenceLayer :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Submodule ℂ H.Ambient
  difference_range :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      LinearMap.range
        (projectionDifference
          P S T).toLinearMap
      =
      differenceLayer hST
  difference_isProjection :
    ∀ {S T : PrimeCut U}
      (_hST : S ⊆ T),
      OrthogonalProjectionCertificate
        (projectionDifference P S T)
  square_closed :
    ∀ (S : PrimeCut U)
      (p q : U.Prime),
      p ∉ S →
      q ∉ S →
      p ≠ q →
      soninIncrement P S p
      +
      soninIncrement
        P
        (insert p S)
        q
      =
      soninIncrement P S q
      +
      soninIncrement
        P
        (insert q S)
        p

end Mathematics.SemiLocalDefect.SoninCore
