-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevThetaLinearUpper.Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ChebyshevThetaLinearUpper.Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"a5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ChebyshevUpperBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ChebyshevDyadicUpper

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevUpperBounds

Checked linear upper bound for Chebyshev theta.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevThetaLinearUpper.Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

/--
Checked Chebyshev-type linear upper bound for `theta(N)`.

This is a pre-PNT estimate obtained from central binomial coefficients and
dyadic summation. It is not PNT and does not use analytic continuation,
zero-free regions, RH, or generalized RH.
-/
theorem chebyshevTheta_linear_upper :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N := by
  exact chebyshevTheta_linear_upper_from_dyadic
    chebyshevTheta_two_mul_sub_theta_le_n_log_four

theorem ChebyshevThetaUpperBoundTarget_checked :
    ChebyshevThetaUpperBoundTarget := by
  exact chebyshevTheta_linear_upper

/-- Theorem target for the corresponding psi linear upper bound. -/
def ChebyshevPsiLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevPsi N ≤ C * N

/-- Theorem target for a weak linear prime-counting upper bound. -/
def PrimeCountingLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, (primeCounting N : Real) ≤ C * N

end AnalyticNumberTheory
end Rebuild
end Folder
