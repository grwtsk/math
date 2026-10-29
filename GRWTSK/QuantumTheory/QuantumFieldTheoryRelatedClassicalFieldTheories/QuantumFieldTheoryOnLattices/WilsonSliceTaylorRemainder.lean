/- Copyright (c) 2026 grwtsk contributors. MIT.
The SU(2), Haar and exponential-series constructions retain their actual
upstream authorship and licenses. -/
import GRWTSK.RealFunctions.ExponentialTaylorRemainder
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceFeatures

/-!
# Quantitative factorial remainder with the actual Wilson normalization

The factors exp(-beta*E_s) and exp((beta/2)*(2*E_s)) cancel exactly.
Both spatial half weights are at most one for beta>=0. Consequently the
bare weighted kernel error is at most (beta*E_s)^m/m!, not an unquantified
tail or a fitted certificate. No regulator-uniformity is inferred.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped Topology
open Filter

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceTaylorRemainder
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.SpecialFunctions.ExponentialTaylorRemainder

variable (L : ℕ) [NeZero L]

def tailAllowance (β : ℝ) (m : ℕ) : ℝ :=
  (β * (spatialLinkCount L : ℝ)) ^ m / (m.factorial : ℝ)

def normalizedTaylor (β : ℝ) (m : ℕ) (a b : Slice L SU2) : ℝ :=
  Real.exp (-β * (spatialLinkCount L : ℝ)) * taylorKernel (β / 2) (sliceFeatures L) m a b

theorem tailAllowance_nonnegative {β : ℝ} (hβ : 0 ≤ β) (m : ℕ) :
    0 ≤ tailAllowance L β m := by unfold tailAllowance; positivity

/-- Every real Gram entry is allowed, including negative entries. -/
theorem normalizedTaylor_error {β : ℝ} (hβ : 0 ≤ β) (m : ℕ) (a b : Slice L SU2) :
    |sliceWilsonProduct L β a b - normalizedTaylor L β m a b| ≤ tailAllowance L β m := by
  have hz : |(β / 2) * gram (sliceFeatures L) a b| ≤ β * (spatialLinkCount L : ℝ) := by
    rw [abs_mul, abs_of_nonneg (div_nonneg hβ (by norm_num))]
    have h := mul_le_mul_of_nonneg_left (sliceGram_abs_le L a b)
      (div_nonneg hβ (by norm_num))
    convert h using 1 <;> ring
  have hs := abs_remainder_le_of_abs_le hz m
  rw [W_eq_exp_gram, normalizedTaylor, ← mul_sub, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-β * (spatialLinkCount L : ℝ)) *
        allowance (β * (spatialLinkCount L : ℝ)) m := by
      exact mul_le_mul_of_nonneg_left hs (Real.exp_pos _).le
    _ = tailAllowance L β m := by
      unfold allowance tailAllowance
      calc
        _ = (Real.exp (-β * (spatialLinkCount L : ℝ)) *
          Real.exp (β * (spatialLinkCount L : ℝ))) *
            ((β * (spatialLinkCount L : ℝ)) ^ m / (m.factorial : ℝ)) := by ring
        _ = _ := by
          rw [← Real.exp_add]
          have hz : -β * (spatialLinkCount L : ℝ) + β * (spatialLinkCount L : ℝ) = 0 := by ring
          rw [hz, Real.exp_zero, one_mul]

def bareKernel (β : ℝ) : C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => halfSpatialWeight L β p.1 * halfSpatialWeight L β p.2 * sliceWilsonProduct L β p.1 p.2,
    (((continuous_M L β).comp continuous_fst).mul
      ((continuous_M L β).comp continuous_snd)).mul (continuous_W L β)⟩

def bareTaylorKernel (β : ℝ) (m : ℕ) : C(Slice L SU2 × Slice L SU2, ℝ) :=
  ⟨fun p => halfSpatialWeight L β p.1 * halfSpatialWeight L β p.2 * normalizedTaylor L β m p.1 p.2,
    (((continuous_M L β).comp continuous_fst).mul
      ((continuous_M L β).comp continuous_snd)).mul
        (continuous_const.mul (continuous_taylorKernel (β / 2)
          (sliceFeatures L) (continuous_sliceFeatures L) m))⟩

/-- A uniform bound on the literal difference kernel; probability normalization pays the norm. -/
theorem bareTaylorKernel_error {β : ℝ} (hβ : 0 ≤ β) (m : ℕ) (a b : Slice L SU2) :
    |bareKernel L β (a,b) - bareTaylorKernel L β m (a,b)| ≤ tailAllowance L β m := by
  have hma : 0 ≤ halfSpatialWeight L β a := Real.exp_nonneg _
  have hmb : 0 ≤ halfSpatialWeight L β b := Real.exp_nonneg _
  have hM : halfSpatialWeight L β a * halfSpatialWeight L β b ≤ 1 := by
    simpa only [one_mul] using mul_le_mul (M_bounds L β hβ a).2
      (M_bounds L β hβ b).2 hmb (by norm_num : (0 : ℝ) ≤ 1)
  change |(halfSpatialWeight L β a * halfSpatialWeight L β b) * sliceWilsonProduct L β a b -
    (halfSpatialWeight L β a * halfSpatialWeight L β b) * normalizedTaylor L β m a b| ≤ _
  rw [← mul_sub, abs_mul, abs_of_nonneg (mul_nonneg hma hmb)]
  calc
    _ ≤ (halfSpatialWeight L β a * halfSpatialWeight L β b) * tailAllowance L β m :=
      mul_le_mul_of_nonneg_left (normalizedTaylor_error L hβ m a b) (mul_nonneg hma hmb)
    _ ≤ 1 * tailAllowance L β m :=
      mul_le_mul_of_nonneg_right hM (tailAllowance_nonnegative L hβ m)
    _ = _ := one_mul _

theorem tailAllowance_tendsto_zero (β : ℝ) :
    Tendsto (tailAllowance L β) atTop (𝓝 0) := by
  have hs : HasSum (fun n : ℕ => (β * (spatialLinkCount L : ℝ)) ^ n / (n.factorial : ℝ))
      (Real.exp (β * (spatialLinkCount L : ℝ))) := by
    simpa only [Real.exp_eq_exp_ℝ] using
      NormedSpace.expSeries_div_hasSum_exp (β * (spatialLinkCount L : ℝ))
  exact hs.summable.tendsto_atTop_zero

end GRWTSK.Geometry.GaugeTheory.WilsonSliceTaylorRemainder
