/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.TentContourMajorants
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

set_option autoImplicit false

/-!
# Integrating an affine logarithmic-derivative envelope on a horizontal ray

The extra linear real-part cost is integrated against the actual three
endpoint powers. The resulting budget has no left-cutoff factor. Bounded
finite integrals of the norm prove absolute integrability on (-infinity,2].
No zeta estimate or contour-residue identity is assumed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.TentHorizontalRayMajorant

open MeasureTheory Filter Set
open scoped Topology Interval
open GRWTSK.Analysis.ComplexAnalysis.TentContourMajorants

noncomputable section

/-- Primitive of (A+(2-sigma)/2) times one actual endpoint power. -/
def affinePowerPrimitive (t A σ : ℝ) : ℝ :=
  powerProfile t σ * ((A + (2 - σ) / 2) / Real.log t + 1 / (2 * (Real.log t) ^ 2))

/-- Keep the same endpoint coefficients 1,2,1. -/
def affineProfilePrimitive (x h A σ : ℝ) : ℝ :=
  affinePowerPrimitive (x + h) A σ + 2 * affinePowerPrimitive x A σ +
    affinePowerPrimitive (x - h) A σ

/-- The full integrated envelope, normalized by the tent radius. -/
def affineRayBudget (x h A : ℝ) : ℝ := affineProfilePrimitive x h A 2 / h

/-- The extra logarithmic-square moment charged for horizontal shift growth. -/
def shiftMomentBudget (x h : ℝ) : ℝ :=
  (powerProfile (x + h) 2 / (2 * (Real.log (x + h)) ^ 2) +
    2 * (powerProfile x 2 / (2 * (Real.log x) ^ 2)) +
    powerProfile (x - h) 2 / (2 * (Real.log (x - h)) ^ 2)) / h

theorem affineRayBudget_eq (x h A : ℝ) :
    affineRayBudget x h A = A * horizontalBudget x h + shiftMomentBudget x h := by
  unfold affineRayBudget affineProfilePrimitive affinePowerPrimitive
    horizontalBudget profilePrimitive shiftMomentBudget
  ring

/-- The logarithmic-square term is needed to cancel the derivative of the affine factor. -/
theorem affinePowerPrimitive_deriv (t A σ : ℝ) (ht : 1 < t) :
    HasDerivAt (affinePowerPrimitive t A)
      ((A + (2 - σ) / 2) * powerProfile t σ) σ := by
  have hc : Real.log t ≠ 0 := ne_of_gt (Real.log_pos ht)
  have he : HasDerivAt (powerProfile t) (powerProfile t σ * Real.log t) σ := by
    change HasDerivAt (fun u : ℝ => Real.exp ((u + 1) * Real.log t)) _ σ
    simpa [powerProfile, Pi.mul_def, id_eq] using ((((hasDerivAt_id σ).add_const 1).mul_const (Real.log t)).exp)
  have hd : HasDerivAt
      (fun u : ℝ => (A + (2 - u) / 2) / Real.log t + 1 / (2 * (Real.log t) ^ 2))
      (-1 / (2 * Real.log t)) σ := by
    convert (((((hasDerivAt_id σ).const_sub 2).div_const 2).const_add A).div_const
      (Real.log t)).add_const (1 / (2 * (Real.log t) ^ 2)) using 1 <;> first | rfl | ring
  change HasDerivAt (fun u => powerProfile t u *
    ((A + (2 - u) / 2) / Real.log t + 1 / (2 * (Real.log t) ^ 2))) _ σ
  apply (he.mul hd).congr_deriv
  field_simp [hc]; ring

theorem affineProfilePrimitive_deriv (x h A σ : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    HasDerivAt (affineProfilePrimitive x h A)
      ((A + (2 - σ) / 2) * numeratorProfile x h σ) σ := by
  convert ((affinePowerPrimitive_deriv (x + h) A σ (by linarith)).add
    ((affinePowerPrimitive_deriv x A σ (by linarith)).const_mul 2)).add
      (affinePowerPrimitive_deriv (x - h) A σ ha) using 1
  <;> first | rfl | (simp only [numeratorProfile]; ring)

theorem affinePowerPrimitive_nonneg (t A σ : ℝ) (ht : 1 < t) (hA : 0 ≤ A) (hσ : σ ≤ 2) :
    0 ≤ affinePowerPrimitive t A σ := by
  have hc : 0 < Real.log t := Real.log_pos ht
  have hq : 0 ≤ A + (2 - σ) / 2 := by linarith
  unfold affinePowerPrimitive powerProfile
  positivity

theorem affineProfilePrimitive_nonneg (x h A σ : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hA : 0 ≤ A) (hσ : σ ≤ 2) :
    0 ≤ affineProfilePrimitive x h A σ := by
  exact add_nonneg (add_nonneg
    (affinePowerPrimitive_nonneg (x + h) A σ (by linarith) hA hσ)
    (mul_nonneg (by norm_num) (affinePowerPrimitive_nonneg x A σ (by linarith) hA hσ)))
    (affinePowerPrimitive_nonneg (x - h) A σ ha hA hσ)

theorem affineRayBudget_nonneg (x h A : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A) :
    0 ≤ affineRayBudget x h A :=
  div_nonneg (affineProfilePrimitive_nonneg x h A 2 hh ha hA le_rfl) hh.le

theorem shiftMomentBudget_pos (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    0 < shiftMomentBudget x h := by
  have hb : 0 < Real.log (x + h) := Real.log_pos (by linarith)
  have hx : 0 < Real.log x := Real.log_pos (by linarith)
  have hla : 0 < Real.log (x - h) := Real.log_pos ha
  unfold shiftMomentBudget powerProfile
  positivity

/-- Actual finite mass; a nonnegative lower primitive is the only discarded term. -/
theorem integral_affine_envelope_le (x h A y l : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hA : 0 ≤ A) (hy : y ≠ 0) (hl : l ≤ 2) :
    (∫ σ in l..2, (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) ≤
      affineRayBudget x h A / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ => (A + (2 - σ) / 2) * numeratorProfile x h σ) :=
    (by fun_prop : Continuous (fun σ : ℝ => A + (2 - σ) / 2)).mul
      (continuous_numeratorProfile x h)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun σ _ => affineProfilePrimitive_deriv x h A σ hh ha) (hc.intervalIntegrable l 2)
  rw [intervalIntegral.integral_div, he]
  have hd : 0 < h * y ^ 2 := mul_pos hh (sq_pos_of_ne_zero hy)
  calc
    _ ≤ affineProfilePrimitive x h A 2 / (h * y ^ 2) :=
      div_le_div_of_nonneg_right
        (sub_le_self _ (affineProfilePrimitive_nonneg x h A l hh ha hA hl)) hd.le
    _ = _ := by unfold affineRayBudget; ring

/-- Any continuous complex function with this envelope has uniformly bounded finite norm mass. -/
theorem integral_norm_le_of_affine_envelope (g : ℝ → ℂ) (hg : Continuous g)
    (x h A y l : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A)
    (hy : y ≠ 0) (hl : l ≤ 2)
    (hbound : ∀ σ ≤ 2, ‖g σ‖ ≤
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) :
    (∫ σ in l..2, ‖g σ‖) ≤ affineRayBudget x h A / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ =>
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) := by
    exact ((by fun_prop : Continuous (fun σ : ℝ => A + (2 - σ) / 2)).mul
      (continuous_numeratorProfile x h)).div_const _
  exact (intervalIntegral.integral_mono_on hl (hg.norm.intervalIntegrable l 2)
    (hc.intervalIntegrable l 2) (fun σ hσ => hbound σ hσ.2)).trans
      (integral_affine_envelope_le x h A y l hh ha hA hy hl)

/-- Absolute integrability is derived from bounds on every finite norm integral. -/
theorem integrableOn_Iic_of_affine_envelope (g : ℝ → ℂ) (hg : Continuous g)
    (x h A y : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A) (hy : y ≠ 0)
    (hbound : ∀ σ ≤ 2, ‖g σ‖ ≤
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) :
    IntegrableOn g (Iic 2) := by
  apply integrableOn_Iic_of_intervalIntegral_norm_bounded
    (a := fun N : ℕ => -(N : ℝ)) (l := atTop) (affineRayBudget x h A / y ^ 2) 2
  · intro N
    exact (hg.integrableOn_Icc).mono_set Ioc_subset_Icc_self
  · exact (tendsto_neg_atTop_atBot.comp tendsto_natCast_atTop_atTop)
  · exact Eventually.of_forall (fun N => integral_norm_le_of_affine_envelope g hg
      x h A y (-(N : ℝ)) hh ha hA hy (by linarith [Nat.cast_nonneg (α := ℝ) N]) hbound)

/-- The same explicit budget bounds the norm integral over the entire leftward ray. -/
theorem integral_norm_Iic_le_of_affine_envelope (g : ℝ → ℂ) (hg : Continuous g)
    (x h A y : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A) (hy : y ≠ 0)
    (hbound : ∀ σ ≤ 2, ‖g σ‖ ≤
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) :
    (∫ σ in Iic (2 : ℝ), ‖g σ‖) ≤ affineRayBudget x h A / y ^ 2 := by
  have hi := integrableOn_Iic_of_affine_envelope g hg x h A y hh ha hA hy hbound
  have hl := intervalIntegral_tendsto_integral_Iic 2 hi.norm
    ((tendsto_neg_atTop_atBot.comp tendsto_natCast_atTop_atTop) :
      Tendsto (fun N : ℕ => -(N : ℝ)) atTop atBot)
  exact le_of_tendsto hl (Eventually.of_forall (fun N =>
    integral_norm_le_of_affine_envelope g hg x h A y (-(N : ℝ)) hh ha hA hy
      (by linarith [Nat.cast_nonneg (α := ℝ) N]) hbound))

end
end GRWTSK.Analysis.ComplexAnalysis.TentHorizontalRayMajorant
