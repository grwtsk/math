-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.TracePower.Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.TracePower.Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Determinants/ZetaDet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Algebra.Module.Basic
import Mathlib.Algebra.BigOperators.Ring
import Mathlib.Analysis.NormedSpace.OperatorNorm
import SpectralProof.Core.Weight


namespace GRWTSK.Analysis.AsymptoticAnalysis.TracePower.Variant57e2be95acf169b62de4ccea41a5d4e80773c2b12913d466f6bb431ae3494bb9

noncomputable section

open Complex BigOperators

namespace SpectralProof.Determinants

variable {ϕ : ℝ → ℝ}

/--
The `n`-th trace power of a trace-class operator T: Tr(Tⁿ).
Used in the zeta-determinant expansion.
-/
def tracePower (T : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ) (n : ℕ) : ℂ :=
  trace ℂ ((T ^ n : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ))

/--
Zeta-regularized Fredholm determinant of a trace-class operator:
\[
\det_\zeta(I - λ T) = \exp\left(-\sum_{n=1}^\infty \frac{λ^n}{n} \operatorname{Tr}(T^n)\right)
\]
This defines an entire function of order 1, with zeros encoding the spectrum of T.
-/
noncomputable def zetaDet (T : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ) (λ : ℂ) : ℂ :=
  let s : ℕ → ℂ := fun n => (λ ^ n / n) * tracePower T n
  exp (-∑' n, s n)

lemma zetaDet_def (T : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ) (λ : ℂ) :
    zetaDet T λ = exp (-(∑' n, (λ ^ n / n) * tracePower T n)) := rfl

/--
If T is trace-class, then the zeta determinant series converges absolutely.
-/
lemma zetaDet_converges
    {T : Hϕ ϕ →ₗ[ℂ] Hϕ ϕ} (h : TraceClass ℂ (Hϕ ϕ) T) (λ : ℂ) :
    Summable (fun n ↦ (λ ^ n / n) * tracePower T n) := by
  -- Use norm estimates to show the series is dominated by a convergent exponential
  let a := ‖λ‖ * ‖T‖₁
  have h_summable : Summable (fun n ↦ (a ^ n) / n) := by
    apply summable_mul_right
    exact summable_one_div_nat_of_ne_zero one_ne_zero

  apply summable_of_norm_bounded_eventually _ h_summable
  filter_upwards [Filter.eventually_gt_at_top 0] with n hn
  have : ‖(λ ^ n / n) * tracePower T n‖ ≤ (‖λ‖ ^ n / n) * ‖T‖₁ ^ n := by
    simp only [norm_mul, norm_div, norm_pow]
    apply mul_le_mul
    · apply norm_trace_power_le; exact h
    · positivity
    · positivity
    · positivity
  calc
    ‖(λ ^ n / n) * tracePower T n‖ ≤ (‖λ‖ ^ n / n) * ‖T‖₁ ^ n := this
    _ = (a ^ n) / n := by rw [mul_pow, ← mul_div_assoc, div_eq_mul_inv, ← mul_assoc]

end SpectralProof.Determinants
