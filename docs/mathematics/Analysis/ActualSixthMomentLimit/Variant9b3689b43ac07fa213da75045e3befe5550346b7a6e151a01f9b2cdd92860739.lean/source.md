# Complete source: GRWTSK.Analysis.ActualSixthMomentLimit.Variant9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf549a47a77bf5d31a9308da68139406a511e872` · SHA-256 `9b3689b43ac07fa213da75045e3befe5550346b7a6e151a01f9b2cdd92860739`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSixthNormalizedFormula
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Exact limiting coefficient of the unchanged normalized sixth source moment

The exact endpoint correction tends to one and the fixed source normalization
tends to 4096/109395. Their checked closed formula gives the numerical source
coefficient 1959910318080. This is the source moment limit; the complete finite
census error must still be consumed separately. Human exact-source and uniform
normalization direction: grwtsk contributors. Local limit consumer: OpenAI
Codex. Upstream calculus and limit declarations retain their qualified names.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthMomentLimit
open FormalResearch.RiemannHypothesis.SourcePairing
open ActualSixthLaplacePrimitive ActualSixthNormalizedFormula Filter
open scoped Topology
noncomputable section

theorem inverse_radius_power_tends_to_zero (n : ℕ) (hn : n ≠ 0) :
    Tendsto (fun A : ℝ ↦ 1 / A ^ n) atTop (𝓝 0) := by
  have h := (tendsto_pow_atTop (α := ℝ) hn).inv_tendsto_atTop
  convert h using 1
  funext A
  simp only [Pi.inv_apply, one_div]

theorem actual_source_normalization_limit :
    Tendsto sourceNormalization atTop (𝓝 (4096 / 109395 : ℝ)) := by
  have h2 := inverse_radius_power_tends_to_zero 2 (by decide)
  have h4 := inverse_radius_power_tends_to_zero 4 (by decide)
  have ht := ((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (4096 / 109395 : ℝ)) atTop
      (𝓝 (4096 / 109395 : ℝ))).add
    (h2.const_mul ((131072 / 45045 : ℝ) / 2))).add
      (h4.const_mul (196608 / 5005 : ℝ))
  have heq : sourceNormalization = fun A : ℝ ↦ (4096 / 109395 : ℝ) +
      ((131072 / 45045 : ℝ) / 2) * (1 / A ^ 2) +
        (196608 / 5005 : ℝ) * (1 / A ^ 4) := by
    funext A
    unfold sourceNormalization
    ring
  rw [heq]
  simpa only [mul_zero, add_zero] using ht

theorem actual_sixth_endpoint_correction_limit :
    Tendsto sixthEndpointCorrection atTop (𝓝 1) := by
  have h1 := inverse_radius_power_tends_to_zero 1 (by decide)
  have h2 := inverse_radius_power_tends_to_zero 2 (by decide)
  have h3 := inverse_radius_power_tends_to_zero 3 (by decide)
  have h4 := inverse_radius_power_tends_to_zero 4 (by decide)
  have he : Tendsto (fun A : ℝ ↦ Real.exp (-A / 3)) atTop (𝓝 0) := by
    have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0 : ℝ) (1 / 3) (by norm_num)
    have heq : (fun A : ℝ ↦ A ^ (0 : ℝ) * Real.exp (-(1 / 3) * A)) =
        fun A ↦ Real.exp (-A / 3) := by
      funext A
      rw [Real.rpow_zero, one_mul]
      congr 1
      ring
    rw [heq] at h
    exact h
  have hminus := ((((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (1 : ℝ)) atTop (𝓝 1)).sub
    (h1.const_mul 60)).add (h2.const_mul 1620)).sub (h3.const_mul 22680)).add
      (h4.const_mul 136080)
  have hplus := ((((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (1 : ℝ)) atTop (𝓝 1)).add
    (h1.const_mul 60)).add (h2.const_mul 1620)).add (h3.const_mul 22680)).add
      (h4.const_mul 136080)
  have ht := hminus.sub (he.mul hplus)
  have heq : sixthEndpointCorrection = fun A : ℝ ↦
      1 - 60 * (1 / A ^ 1) + 1620 * (1 / A ^ 2) - 22680 * (1 / A ^ 3) +
        136080 * (1 / A ^ 4) - Real.exp (-A / 3) *
          (1 + 60 * (1 / A ^ 1) + 1620 * (1 / A ^ 2) + 22680 * (1 / A ^ 3) +
            136080 * (1 / A ^ 4)) := by
    funext A
    unfold sixthEndpointCorrection
    ring
  rw [heq]
  simpa only [mul_zero, zero_mul, add_zero, sub_zero] using ht

theorem actual_normalized_sixth_moment_limit :
    Tendsto normalizedSixthMoment atTop (𝓝 (1959910318080 : ℝ)) := by
  have ht := ((tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (73383542784 : ℝ)) atTop
      (𝓝 (73383542784 : ℝ))).div actual_source_normalization_limit
        (by norm_num : (4096 / 109395 : ℝ) ≠ 0)).mul
          (actual_sixth_endpoint_correction_limit.pow 2)
  have hlimit : Tendsto (fun A : ℝ ↦
      (73383542784 / sourceNormalization A) * (sixthEndpointCorrection A) ^ 2)
      atTop (𝓝 (1959910318080 : ℝ)) := by
    convert ht using 1 <;> norm_num
  apply hlimit.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actual_sixth_normalized_squared_formula hA).symm

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthMomentLimit
```
