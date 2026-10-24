# Complete source: GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `349ab72f75cd0252e42b1aa152a62622da7ce6c8` · SHA-256 `aa625ffa7141a81a8bc49a9b94a1d0fa7bd9621915256bfa6dc30e5b5c17c705`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.TestFunctions.EvenSeparation
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.Calculus.Deriv.Support

/-!
Retain both exponential moments of the differential
variation Lh = h'' - h/4. An even nonzero homogeneous solution annihilates
every such variation, showing why ordinary test separation is insufficient.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.PoleAdmissibleTest

open MeasureTheory
open scoped ContDiff

def poleVariation (h : ℝ → ℝ) (t : ℝ) : ℝ := deriv (deriv h) t - h t / 4

/-- Two integrations by parts keep every exponential weight and product integrability. -/
theorem integral_second_derivative_exp {h : ℝ → ℝ}
    (hh : ContDiff ℝ ∞ h) (hc : HasCompactSupport h) (c : ℝ) :
    (∫ t, Real.exp (c * t) * deriv (deriv h) t) =
      c ^ 2 * ∫ t, Real.exp (c * t) * h t := by
  have hh' : ContDiff ℝ ∞ (deriv h) := (contDiff_infty_iff_deriv.mp hh).2
  have hh'' : ContDiff ℝ ∞ (deriv (deriv h)) := (contDiff_infty_iff_deriv.mp hh').2
  have he : Continuous (fun t ↦ Real.exp (c * t)) := by fun_prop
  have he' : Continuous (fun t ↦ c * Real.exp (c * t)) := continuous_const.mul he
  have hi0 : Integrable (fun t ↦ Real.exp (c * t) * h t) :=
    (he.mul hh.continuous).integrable_of_hasCompactSupport hc.mul_left
  have hi1 : Integrable (fun t ↦ Real.exp (c * t) * deriv h t) :=
    (he.mul hh'.continuous).integrable_of_hasCompactSupport hc.deriv.mul_left
  have hi2 : Integrable (fun t ↦ Real.exp (c * t) * deriv (deriv h) t) :=
    (he.mul hh''.continuous).integrable_of_hasCompactSupport hc.deriv.deriv.mul_left
  have hic0 : Integrable (fun t ↦ (c * Real.exp (c * t)) * h t) :=
    (he'.mul hh.continuous).integrable_of_hasCompactSupport hc.mul_left
  have hic1 : Integrable (fun t ↦ (c * Real.exp (c * t)) * deriv h t) :=
    (he'.mul hh'.continuous).integrable_of_hasCompactSupport hc.deriv.mul_left
  have hexp (t : ℝ) : HasDerivAt (fun u ↦ Real.exp (c * u))
      (c * Real.exp (c * t)) t := by
    simpa only [id_eq, mul_one, mul_comm] using ((hasDerivAt_id t).const_mul c).exp
  have h1 := integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ hexp t)
    (fun t _ ↦ ((contDiff_infty_iff_deriv.mp hh).1 t).hasDerivAt) hi1 hic0 hi0
  have h2 := integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ hexp t)
    (fun t _ ↦ ((contDiff_infty_iff_deriv.mp hh').1 t).hasDerivAt) hi2 hic1 hi1
  simp_rw [mul_assoc] at h1 h2
  rw [integral_const_mul] at h1 h2
  rw [h2, h1]
  ring

/-- The differential variation annihilates both prescribed real exponential poles. -/
theorem pole_variation_exp_moment_zero {h : ℝ → ℝ}
    (hh : ContDiff ℝ ∞ h) (hc : HasCompactSupport h) {c : ℝ} (hc2 : c ^ 2 = 1 / 4) :
    Integrable (fun t ↦ Real.exp (c * t) * poleVariation h t) ∧
      (∫ t, Real.exp (c * t) * poleVariation h t) = 0 := by
  have hh' : ContDiff ℝ ∞ (deriv h) := (contDiff_infty_iff_deriv.mp hh).2
  have hh'' : ContDiff ℝ ∞ (deriv (deriv h)) := (contDiff_infty_iff_deriv.mp hh').2
  have he : Continuous (fun t ↦ Real.exp (c * t)) := by fun_prop
  have hi0 : Integrable (fun t ↦ Real.exp (c * t) * h t) :=
    (he.mul hh.continuous).integrable_of_hasCompactSupport hc.mul_left
  have hi2 : Integrable (fun t ↦ Real.exp (c * t) * deriv (deriv h) t) :=
    (he.mul hh''.continuous).integrable_of_hasCompactSupport hc.deriv.deriv.mul_left
  constructor
  · simpa only [poleVariation, mul_sub, ← mul_div_assoc] using
      hi2.sub' (hi0.div_const 4)
  · simp_rw [poleVariation, mul_sub, ← mul_div_assoc]
    rw [integral_sub hi2 (hi0.div_const 4), integral_div,
      integral_second_derivative_exp hh hc c, hc2]
    ring

/-- A nonzero even continuous residual can annihilate the entire differential-image test space. -/
theorem even_homogeneous_residual_counterexample :
    let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) + Real.exp (-t / 2)
    Continuous f ∧ Function.Even f ∧ f 0 ≠ 0 ∧
      ∀ h : ℝ → ℝ, ContDiff ℝ ∞ h → HasCompactSupport h →
        Integrable (fun t ↦ f t * poleVariation h t) ∧
          (∫ t, f t * poleVariation h t) = 0 := by
  dsimp only
  refine ⟨by fun_prop, ?_, ?_, ?_⟩
  · intro t
    simp only [neg_neg]
    ring
  · norm_num
  · intro h hh hc
    obtain ⟨hpint, hp⟩ := pole_variation_exp_moment_zero hh hc
      (c := 1 / 2) (by norm_num)
    obtain ⟨hnint, hn⟩ := pole_variation_exp_moment_zero hh hc
      (c := -(1 / 2)) (by norm_num)
    have heqp : (fun t : ℝ ↦ Real.exp ((1 / 2) * t) * poleVariation h t) =
        (fun t : ℝ ↦ Real.exp (t / 2) * poleVariation h t) := by
      funext t
      congr 2
      ring
    have heqn : (fun t : ℝ ↦ Real.exp (-(1 / 2) * t) * poleVariation h t) =
        (fun t : ℝ ↦ Real.exp (-t / 2) * poleVariation h t) := by
      funext t
      congr 2
      ring
    rw [heqp] at hpint hp
    rw [heqn] at hnint hn
    constructor
    · simpa only [add_mul] using hpint.fun_add hnint
    · simp_rw [add_mul]
      rw [integral_add hpint hnint, hp, hn, add_zero]

end GRWTSK.RiemannHypothesis.PoleAdmissibleTest
```
