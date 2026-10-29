/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's compact parametric integrals retain Zhouhang Zhou and Yury
Kudryashov's authorship; finite products retain Mario Carneiro's authorship
and Apache-2.0 license. Other imports retain their upstream attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceAction
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# Continuity and pointwise bounds of the actual integrated slice kernel

K is the actual temporal Haar integral, with both half spatial weights.
Compact parameter integration proves continuity. The bounds are derived
from actual SU2 penalty bounds and normalized Haar, never assumed.
A positive pointwise denominator is not an operator/form lower bound.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType

variable (L : ℕ) [NeZero L]

theorem spatialDirections_card : Fintype.card SpatialDirections = 3 := by decide
theorem spatialVertex_card : Fintype.card (SpatialVertex L) = L ^ 3 := by
  simp only [SpatialVertex, Fintype.card_fun, Fintype.card_fin, ZMod.card]
theorem spatialLink_card : Fintype.card (SpatialLink L) = 3 * L ^ 3 := by
  simp only [SpatialLink, Fintype.card_prod, spatialVertex_card, Fintype.card_fin]
  ring
theorem spatialPlaquette_card : Fintype.card (SpatialPlaquette L) = 3 * L ^ 3 := by
  simp only [SpatialPlaquette, Fintype.card_prod, spatialVertex_card, spatialDirections_card]
  ring

theorem continuous_sliceGaugeAction :
    Continuous (fun p : SliceGauge L SU2 × Slice L SU2 => sliceGaugeAction p.1 p.2) := by
  apply continuous_pi
  intro e
  exact (((continuous_apply e.1).comp continuous_fst).mul
    ((continuous_apply e).comp continuous_snd)).mul
      (((continuous_apply (spatialShift e.1 e.2)).comp continuous_fst).inv)

theorem continuous_sliceHolonomy (p : SpatialPlaquette L) :
    Continuous (fun a : Slice L SU2 => sliceHolonomy a p) := by
  unfold sliceHolonomy spatialPlaquetteHolonomy
  exact (((continuous_apply (p.1, p.2.val.1)).mul
    (continuous_apply (spatialShift p.1 p.2.val.1, p.2.val.2))).mul
      (continuous_apply (spatialShift p.1 p.2.val.2, p.2.val.1)).inv).mul
        (continuous_apply (p.1, p.2.val.2)).inv

theorem continuous_sliceAction : Continuous (sliceAction L) := by
  unfold sliceAction
  apply continuous_finsetSum
  intro p _
  exact continuous_penalty.comp (continuous_sliceHolonomy L p)

theorem continuous_M (β : ℝ) : Continuous (halfSpatialWeight L β) :=
  Real.continuous_exp.comp ((continuous_const.mul (continuous_sliceAction L)).div_const 2)

theorem continuous_W (β : ℝ) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => sliceWilsonProduct L β p.1 p.2) := by
  unfold sliceWilsonProduct
  apply continuous_finsetProd
  intro e _
  exact Real.continuous_exp.comp
    (continuous_const.mul (continuous_penalty.comp
      (((continuous_apply e).comp continuous_fst).mul
        ((continuous_apply e).comp continuous_snd).inv)))

theorem continuous_temporalFactor (β : ℝ) :
    Continuous (fun p : (Slice L SU2 × Slice L SU2) × SliceGauge L SU2 =>
      sliceWilsonProduct L β p.1.1 (sliceGaugeAction p.2 p.1.2)) :=
  (continuous_W L β).comp (continuous_fst.fst.prodMk
    ((continuous_sliceGaugeAction L).comp (continuous_snd.prodMk continuous_fst.snd)))

theorem continuous_integrated_W (β : ℝ) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 =>
      ∫ g, sliceWilsonProduct L β p.1 (sliceGaugeAction g p.2) ∂sliceGaugeHaar L) := by
  have h := continuous_parametric_integral_of_continuous
    (μ := sliceGaugeHaar L) (continuous_temporalFactor L β)
    (isCompact_univ : IsCompact (Set.univ : Set (SliceGauge L SU2)))
  simpa only [Measure.restrict_univ] using h

theorem continuous_K (β : ℝ) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => sliceKernel L β p.1 p.2) :=
  (((continuous_M L β).comp continuous_fst).mul
    ((continuous_M L β).comp continuous_snd)).mul (continuous_integrated_W L β)

theorem integrable_temporalFactor (β : ℝ) (a b : Slice L SU2) :
    Integrable (fun g => sliceWilsonProduct L β a (sliceGaugeAction g b)) (sliceGaugeHaar L) :=
  ((continuous_temporalFactor L β).comp
    (continuous_const.prodMk continuous_id)).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)

theorem W_eq_exp_sum (β : ℝ) (a b : Slice L SU2) :
    sliceWilsonProduct L β a b =
      Real.exp (-β * ∑ e : SpatialLink L, penalty (a e * (b e)⁻¹)) := by
  unfold sliceWilsonProduct wilsonKernel
  rw [← Real.exp_sum, ← Finset.mul_sum]

theorem W_bounds (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    Real.exp (-2 * β * (Fintype.card (SpatialLink L) : ℝ)) ≤ sliceWilsonProduct L β a b ∧
      sliceWilsonProduct L β a b ≤ 1 := by
  have hn : 0 ≤ ∑ e : SpatialLink L, penalty (a e * (b e)⁻¹) :=
    Finset.sum_nonneg (fun e _ => (penalty_bounds _).1)
  have hu : (∑ e : SpatialLink L, penalty (a e * (b e)⁻¹)) ≤
      2 * (Fintype.card (SpatialLink L) : ℝ) := by
    calc
      _ ≤ ∑ _e : SpatialLink L, (2 : ℝ) :=
        Finset.sum_le_sum (fun e _ => (penalty_bounds _).2)
      _ = _ := by simp; ring
  rw [W_eq_exp_sum]
  constructor
  · apply Real.exp_le_exp.mpr
    have h := mul_le_mul_of_nonneg_left hu hβ
    nlinarith
  · apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hβ) hn

theorem M_bounds (β : ℝ) (hβ : 0 ≤ β) (a : Slice L SU2) :
    Real.exp (-β * (Fintype.card (SpatialPlaquette L) : ℝ)) ≤ halfSpatialWeight L β a ∧
      halfSpatialWeight L β a ≤ 1 := by
  have hv := sliceAction_bounds L a
  unfold halfSpatialWeight
  constructor
  · apply Real.exp_le_exp.mpr
    have h := mul_le_mul_of_nonneg_left hv.2 hβ
    nlinarith
  · apply Real.exp_le_one_iff.mpr
    have h := mul_nonneg hβ hv.1
    nlinarith

theorem integrated_W_bounds (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    Real.exp (-2 * β * (Fintype.card (SpatialLink L) : ℝ)) ≤
        (∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L) ∧
      (∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L) ≤ 1 := by
  have hi := integrable_temporalFactor L β a b
  constructor
  · have h := integral_mono (integrable_const
        (Real.exp (-2 * β * (Fintype.card (SpatialLink L) : ℝ)))) hi
      (fun g => (W_bounds L β hβ a (sliceGaugeAction g b)).1)
    simpa only [integral_const, probReal_univ, one_smul] using h
  · have h := integral_mono hi (integrable_const (1 : ℝ))
      (fun g => (W_bounds L β hβ a (sliceGaugeAction g b)).2)
    simpa only [integral_const, probReal_univ, one_smul] using h

/-- The actual P_s and E_s, whose cardinalities both equal3*L^3 above. -/
theorem K_bounds (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    Real.exp (-2 * β * ((Fintype.card (SpatialPlaquette L) : ℝ) +
        (Fintype.card (SpatialLink L) : ℝ))) ≤ sliceKernel L β a b ∧
      sliceKernel L β a b ≤ 1 := by
  have ha := M_bounds L β hβ a
  have hb := M_bounds L β hβ b
  have hh := integrated_W_bounds L β hβ a b
  have hma : 0 ≤ halfSpatialWeight L β a := Real.exp_nonneg _
  have hmb : 0 ≤ halfSpatialWeight L β b := Real.exp_nonneg _
  have hH : 0 ≤ ∫ g, sliceWilsonProduct L β a (sliceGaugeAction g b) ∂sliceGaugeHaar L :=
    (Real.exp_nonneg _).trans hh.1
  have hlo := mul_le_mul ha.1 hb.1 (Real.exp_nonneg _) hma
  have hhi : halfSpatialWeight L β a * halfSpatialWeight L β b ≤ 1 := by
    simpa only [one_mul] using mul_le_mul ha.2 hb.2 hmb (by norm_num : (0 : ℝ) ≤ 1)
  constructor
  · have h := mul_le_mul hlo hh.1 (Real.exp_nonneg _) (mul_nonneg hma hmb)
    have he :
        (Real.exp (-β * (Fintype.card (SpatialPlaquette L) : ℝ)) *
          Real.exp (-β * (Fintype.card (SpatialPlaquette L) : ℝ))) *
          Real.exp (-2 * β * (Fintype.card (SpatialLink L) : ℝ)) =
        Real.exp (-2 * β * ((Fintype.card (SpatialPlaquette L) : ℝ) +
          (Fintype.card (SpatialLink L) : ℝ))) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    simpa only [he, sliceKernel] using h
  · have h := mul_le_mul hhi hh.2 hH (by norm_num : (0 : ℝ) ≤ 1)
    simpa only [one_mul, sliceKernel] using h

theorem K_pos (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    0 < sliceKernel L β a b := (Real.exp_pos _).trans_le (K_bounds L β hβ a b).1

theorem K_bounds_explicit (β : ℝ) (hβ : 0 ≤ β) (a b : Slice L SU2) :
    Real.exp (-12 * β * (L : ℝ) ^ 3) ≤ sliceKernel L β a b ∧
      sliceKernel L β a b ≤ 1 := by
  have h := K_bounds L β hβ a b
  rw [spatialPlaquette_card L, spatialLink_card L] at h
  push_cast at h
  constructor
  · convert h.1 using 1 <;> congr 1 <;> ring
  · exact h.2

/-- A continuous reciprocal of the actual pointwise denominator, not coercivity. -/
theorem continuous_K_reciprocal (β : ℝ) (hβ : 0 ≤ β) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => (sliceKernel L β p.1 p.2)⁻¹) :=
  (continuous_K L β).inv₀ (fun p => (K_pos L β hβ p.1 p.2).ne')

end GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity

