-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaComplexHalfPlaneMulMobiusDirichletSeries.Variant66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ZetaComplexHalfPlaneMulMobiusDirichletSeries.Variant66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a","mathematical_subject":"Foundations.Unclassified","original_sha256":"66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ZetaNonvanishingHalfPlane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.DirichletInverse

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaNonvanishingHalfPlane

Nonvanishing of the ordinary complex zeta Dirichlet series in the half-plane
of absolute convergence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaComplexHalfPlaneMulMobiusDirichletSeries.Variant66d3a27c49792dc5d593a6f2976d1ffa4ea3f4c55cbc9da64a9048ad502aa69a

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem zetaComplexHalfPlane_mul_mobiusDirichletSeries
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s * mobiusDirichletSeries s = 1 := by
  rw [zetaComplexHalfPlane_eq_complexDirichletSeries_one]
  exact dirichletSeries_mul_inverse_eq_one
    oneArithFnComplex
    mobiusComplex
    (complexDirichletSeries_absSummable_of_bounded_coeff
      oneArithFnComplex
      (s := s)
      (C := 1)
      hs
      zero_le_one
      (by intro n; simp [oneArithFnComplex]))
    (mobiusDirichlet_absSummable hs)
    one_has_mobius_inverse

theorem zeta_mul_mobiusDirichletSeries
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s * mobiusDirichletSeries s = 1 :=
  zetaComplexHalfPlane_mul_mobiusDirichletSeries hs

/--
Checked nonvanishing of the ordinary zeta Dirichlet series in the half-plane
`Re(s) > 1`.

This is the classical elementary half-plane nonvanishing theorem obtained from
the absolutely convergent Möbius inverse. It is not analytic continuation, not
the zero-free line `Re(s)=1`, not PNT, not RH, and not generalized RH.
-/
theorem zetaComplexHalfPlane_ne_zero
    {s : Complex}
    (hs : 1 < s.re) :
    zetaComplexHalfPlane s ≠ 0 := by
  rw [zetaComplexHalfPlane_eq_complexDirichletSeries_one]
  exact dirichletSeries_ne_zero_of_has_absSummable_inverse
    oneArithFnComplex
    mobiusComplex
    (complexDirichletSeries_absSummable_of_bounded_coeff
      oneArithFnComplex
      (s := s)
      (C := 1)
      hs
      zero_le_one
      (by intro n; simp [oneArithFnComplex]))
    (mobiusDirichlet_absSummable hs)
    one_has_mobius_inverse

end AnalyticNumberTheory
end Rebuild
end Folder
