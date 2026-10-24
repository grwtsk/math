# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35d8ca52a56b1691d8d54dcb105f2744f143d7e5` · SHA-256 `4eb2a3c8875f8e34f23409cdc0fd6477666b954eff4ee10dcbc680deab80d496`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Retaining the subtractive term in the logarithmic Mellin majorant

The earlier bound log(t) <= t^a/a discarded a useful constant. Here
log(t) <= (t^a-1)/a is integrated as a DIFFERENCE of two separately
integrable powers. This yields 1/(sigma*(sigma-a)), with 0<a<sigma,
rather than 1/a^2 on Re(s)>=2a. It uses the same fractional Mellin
source and its already declared derivative integral, not a numerical fit.

These source proof scripts have not been elaborated or kernel-audited.
The integration tail is not a complete zero-divisor or Weil-form tail.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex MeasureTheory Filter Set

noncomputable section

/-- The positive real base and exponent are essential. The subtracted one is
retained before integration; the estimate is not a complex logarithm identity. -/
theorem log_le_rpow_sub_one_div {t a : ℝ} (ht : 0 < t) (ha : 0 < a) :
    Real.log t ≤ (t ^ a - 1) / a := by
  apply (le_div_iff₀ ha).mpr
  have h := Real.add_one_le_exp (Real.log t * a)
  rw [← Real.rpow_def_of_pos ht a] at h
  linarith

/-- Both power terms converge independently. Their difference is not formed
from divergent integrals or from an assigned default integral value. -/
theorem log_majorant_integral {σ a : ℝ} (ha : 0 < a) (haσ : a < σ) :
    (∫ t : ℝ in Ioi 1,
      (1 / a) * (t ^ (-(σ - a + 1)) - t ^ (-(σ + 1)))) =
      1 / (σ * (σ - a)) := by
  have hσ : 0 < σ := ha.trans haσ
  have hsa : 0 < σ - a := sub_pos.mpr haσ
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(σ - a + 1))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hq : IntegrableOn (fun t : ℝ => t ^ (-(σ + 1))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  rw [integral_const_mul, integral_sub hp hq,
    integral_Ioi_rpow_of_lt (by linarith : -(σ - a + 1) < -1) zero_lt_one,
    integral_Ioi_rpow_of_lt (by linarith : -(σ + 1) < -1) zero_lt_one,
    show -(σ - a + 1) + 1 = -(σ - a) by ring,
    show -(σ + 1) + 1 = -σ by ring]
  simp only [Real.one_rpow, neg_div_neg_eq]
  field_simp [ha.ne', hσ.ne', hsa.ne'] <;> ring

/-- Source-derived derivative bound on one declared closed right half-plane.
No positivity of the Mellin value at nonreal s is assumed. -/
theorem fractionalMellin_deriv_norm_le_subtracted {σ a : ℝ} {s : ℂ}
    (ha : 0 < a) (haσ : a < σ) (hs : σ ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ 1 / (σ * (σ - a)) := by
  have hσ : 0 < σ := ha.trans haσ
  have hs0 : 0 < s.re := hσ.trans_le hs
  rw [(fractionalMellin_hasDerivAt hs0).2.deriv, norm_neg,
    fractionalLogMellin_eq_integral]
  have hi := fractionalLogMellin_integrable hs0
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(σ - a + 1))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hq : IntegrableOn (fun t : ℝ => t ^ (-(σ + 1))) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) zero_lt_one
  have hg : IntegrableOn (fun t : ℝ =>
      (1 / a) * (t ^ (-(σ - a + 1)) - t ^ (-(σ + 1)))) (Ioi 1) :=
    (hp.sub hq).const_mul (1 / a)
  calc
    _ ≤ ∫ t : ℝ in Ioi 1, ‖(Real.log t : ℂ) * fractionalIntegrand s t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi 1,
        (1 / a) * (t ^ (-(σ - a + 1)) - t ^ (-(σ + 1))) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 < t := zero_lt_one.trans ht
      have hlog : 0 ≤ Real.log t := Real.log_nonneg ht.le
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hlog]
      calc
        _ ≤ Real.log t * t ^ (-(s.re + 1)) :=
          mul_le_mul_of_nonneg_left (fractionalIntegrand_norm_le ht) hlog
        _ ≤ Real.log t * t ^ (-(σ + 1)) :=
          mul_le_mul_of_nonneg_left
            (Real.rpow_le_rpow_of_exponent_le ht.le (by linarith)) hlog
        _ ≤ ((t ^ a - 1) / a) * t ^ (-(σ + 1)) :=
          mul_le_mul_of_nonneg_right (log_le_rpow_sub_one_div ht0 ha)
            (Real.rpow_nonneg ht0.le _)
        _ = (1 / a) * (t ^ (-(σ - a + 1)) - t ^ (-(σ + 1))) := by
          have hpower : t ^ a * t ^ (-(σ + 1)) = t ^ (-(σ - a + 1)) := by
            rw [← Real.rpow_add ht0]
            congr 1
            ring
          calc
            _ = (1 / a) * (t ^ a * t ^ (-(σ + 1)) - t ^ (-(σ + 1))) := by ring
            _ = _ := by rw [hpower]
    _ = 1 / (σ * (σ - a)) := log_majorant_integral ha haσ

/-- A fixed rational profile used by the explicit-height application. The auxiliary
exponent 1/16 is not a height cutoff or an unbounded limiting parameter. -/
theorem fractionalMellin_deriv_norm_le_thirtyTwoSevenths {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ (32 / 7 : ℝ) := by
  have h := fractionalMellin_deriv_norm_le_subtracted (σ := (1 / 2 : ℝ))
    (a := (1 / 16 : ℝ)) (by norm_num) (by norm_num) hs
  norm_num at h
  exact h

/-- The same vertical mean-value transport with its sharper source derivative.
The positive real-projection value is not substituted at a complex point. -/
theorem fractionalMellin_vertical_variation_subtracted {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖fractionalMellin s - fractionalMellin (s.re : ℂ)‖ ≤
      (32 / 7 : ℝ) * |s.im| := by
  let V : Set ℂ := {z | (1 / 2 : ℝ) ≤ z.re}
  have hconv : Convex ℝ V :=
    (convex_Ici (1 / 2 : ℝ)).linear_preimage Complex.reCLM.toLinearMap
  have hF : ∀ z ∈ V, DifferentiableAt ℂ fractionalMellin z := by
    intro z hz
    exact fractionalMellin_differentiableAt (by change (1 / 2 : ℝ) ≤ z.re at hz; linarith)
  have hD : ∀ z ∈ V, ‖deriv fractionalMellin z‖ ≤ (32 / 7 : ℝ) := by
    intro z hz
    exact fractionalMellin_deriv_norm_le_thirtyTwoSevenths hz
  have hc : (s.re : ℂ) ∈ V := by simpa only [V, mem_setOf_eq, ofReal_re] using hs
  have hz : s ∈ V := hs
  have h := Convex.norm_image_sub_le_of_norm_deriv_le hF hD hconv hc hz
  have hdiff : s - (s.re : ℂ) = (s.im : ℂ) * I := by
    apply Complex.ext <;> simp
  simpa only [hdiff, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_I, mul_one] using h

/-- A sharper whole-region supplier for the EXISTING derivative patch constructor.
The modulus bound, real-part margin and auxiliary exponent are distinct inputs. -/
theorem poleNormalized_deriv_norm_le_subtracted {σ a B : ℝ} {s : ℂ}
    (ha : 0 < a) (haσ : a < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖deriv poleNormalizedZeta s‖ ≤
      1 + (2 * B + 1) / σ + B * (B + 1) / (σ * (σ - a)) := by
  have hσ : 0 < σ := ha.trans haσ
  have hB0 : 0 ≤ B := (norm_nonneg s).trans hB
  have hM := fractionalMellin_norm_le hσ hs
  have hD := fractionalMellin_deriv_norm_le_subtracted ha haσ hs
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      _ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa only [norm_one] using add_le_add_right hB 1
  have htwo : ‖2 * s - 1‖ ≤ 2 * B + 1 := by
    calc
      _ ≤ ‖(2 : ℂ) * s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ = 2 * ‖s‖ + 1 := by norm_num [norm_mul]
      _ ≤ 2 * B + 1 := by linarith
  rw [(poleNormalized_hasDerivAt_mellin (hσ.trans_le hs)).deriv]
  calc
    _ ≤ ‖(1 : ℂ)‖ + ‖(2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s‖ := norm_sub_le _ _
    _ ≤ 1 + (‖(2 * s - 1) * fractionalMellin s‖ +
        ‖s * (s - 1) * deriv fractionalMellin s‖) := by
      simpa only [norm_one] using add_le_add_left (norm_add_le _ _) (1 : ℝ)
    _ ≤ 1 + ((2 * B + 1) * (1 / σ) +
        B * (B + 1) * (1 / (σ * (σ - a)))) := by
      simp only [norm_mul]
      apply add_le_add_left
      apply add_le_add
      · exact mul_le_mul htwo hM (norm_nonneg _) (by positivity)
      · exact mul_le_mul
          (mul_le_mul hB hsub (norm_nonneg _) hB0) hD
          (norm_nonneg _) (mul_nonneg hB0 (by positivity))
    _ = _ := by ring

/-- In the existing Re(s)>=1/2, |s|<=1 patch region this improves 45 to 113/7.
It does not alter the earlier source declarations or their replay identities. -/
theorem poleNormalized_deriv_norm_le_113_sevenths {s : ℂ}
    (hs : (1 / 2 : ℝ) ≤ s.re) (hB : ‖s‖ ≤ 1) :
    ‖deriv poleNormalizedZeta s‖ ≤ (113 / 7 : ℝ) := by
  have h := poleNormalized_deriv_norm_le_subtracted (σ := (1 / 2 : ℝ))
    (a := (1 / 16 : ℝ)) (B := 1) (by norm_num) (by norm_num) hs hB
  norm_num at h
  exact h

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
