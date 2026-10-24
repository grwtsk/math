# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiInverseSquareAttempt01.Variant0c9574fe7b51483945e39c3d8b37d9836cb3c451b03c94f22324b9cfb6111217

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3c632b630fa74fce425c11ab33d214403331cd7` · SHA-256 `45aee4ba1d42f58f5520c599a169125926daf0f0a9b1ba2b31ebcf3377a5328f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PsiInverseSquareIntervalIntegrable.Variant24a949a3505a527aebf07e089da0ab6086e000909f9013b215999841a5309c4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24a949a3505a527aebf07e089da0ab6086e000909f9013b215999841a5309c4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PsiInverseSquareIntervalIntegrable.Variant24a949a3505a527aebf07e089da0ab6086e000909f9013b215999841a5309c4d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"24a949a3505a527aebf07e089da0ab6086e000909f9013b215999841a5309c4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-next/recovery-certificate-20261006-streamed-signedwitness-v1/rival-finite-packet/scratch/rh16-followthrough-20261006-finite/SourceActualPsiInverseSquare.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiNegativeBlock
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
Exact finite real inverse-square integration of the literal closed Mangoldt
source and the independently prescribed shifted Xi. All prime powers, natural
floor cutoffs and closed endpoint atoms are retained. No arithmetic bound is
asserted. Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PsiInverseSquareIntervalIntegrable.Variant24a949a3505a527aebf07e089da0ab6086e000909f9013b215999841a5309c4d

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open SourceMangoldtAbel WeightedPrimeMertens RH16ActualPsiNegativeBlock

private theorem psi_inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y => Chebyshev.psi y / y ^ 2) volume 2 X := by
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    exact ((continuousAt_id.pow 2).inv₀ (by positivity)).neg.continuousWithinAt
  have hi := integrableOn_mul_sum_Icc (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2) hc.integrableOn_Icc
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hX]
  apply hi.neg.congr_fun
  · intro y _
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  · exact measurableSet_Icc

/-- Raw psi retains its exact closed weighted prefix, with no invented gamma shift. -/
theorem actual_psi_inverse_square (X : ℝ) (hX : 2 ≤ X) :
    (∫ y in 2..X, Chebyshev.psi y / y ^ 2) =
      mangoldtLogPrefix (Real.log X) - Chebyshev.psi X / X := by
  have hX0 : 0 < X := by linarith
  have hdiff : ∀ y ∈ Icc (2 : ℝ) X,
      DifferentiableAt ℝ (fun y : ℝ => y⁻¹) y := by
    intro y hy
    exact (hasDerivAt_inv (show y ≠ 0 by linarith [hy.1])).differentiableAt
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    exact ((continuousAt_id.pow 2).inv₀ (by positivity)).neg.continuousWithinAt
  have hi : IntegrableOn (deriv (fun y : ℝ => y⁻¹)) (Icc 2 X) := by
    simpa only [deriv_inv'] using hc.integrableOn_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) X hdiff hi
  have hs : (∑ n ∈ Finset.Icc 0 ⌊X⌋₊, (n : ℝ)⁻¹ * vonMangoldt n) =
      mangoldtLogPrefix (Real.log X) := by
    unfold mangoldtLogPrefix weightedMangoldt
    rw [Real.exp_log hX0, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
    simp only [Nat.cast_zero, inv_zero, zero_mul, zero_add, div_eq_mul_inv, mul_comm]
  have hj : (∫ y in Ioc (2 : ℝ) X,
      deriv (fun y : ℝ => y⁻¹) y * ∑ n ∈ Finset.Icc 0 ⌊y⌋₊, vonMangoldt n) =
      -(∫ y in 2..X, Chebyshev.psi y / y ^ 2) := by
    rw [intervalIntegral.integral_of_le hX, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro y _
    rw [deriv_inv, ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hs, ← Chebyshev.psi_eq_sum_Icc, hj] at ha
  linarith

end FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare
```
