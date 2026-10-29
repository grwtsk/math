/- Copyright (c) 2026 grwtsk contributors. MIT.
The actual SU2 matrix construction retains Shing Tak Lam's authorship.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceRegularity
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramIntegral

/-!
# All spatial-link real matrix coordinates in the literal Wilson product

The inventory is SpatialLink L x RealCoordinate, with all eight real
matrix-entry coordinates at every spatial link. Nothing is quotiented,
deduplicated or inferred from a different boundary/source inventory.
The scalar exponential-Gram representation preserves the existing W
normalization. Its absolute Gram bound comes from the actual SU2 trace.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

abbrev SliceCoordinate (L : ℕ) := SpatialLink L × RealCoordinate

variable (L : ℕ) [NeZero L]

def spatialLinkCount : ℕ := Fintype.card (SpatialLink L)

def sliceFeatures (a : Slice L SU2) (k : SliceCoordinate L) : ℝ :=
  realCoordinates (a k.1) k.2

/-- Continuity of each literal real or imaginary matrix-entry evaluation. -/
theorem continuous_sliceFeatures (k : SliceCoordinate L) :
    Continuous (fun a : Slice L SU2 => sliceFeatures L a k) := by
  unfold sliceFeatures realCoordinates
  split_ifs
  · exact Complex.continuous_re.comp
      (((continuous_apply_apply k.2.1.1 k.2.1.2).comp continuous_matrix).comp
        (continuous_apply k.1))
  · exact Complex.continuous_im.comp
      (((continuous_apply_apply k.2.1.1 k.2.1.2).comp continuous_matrix).comp
        (continuous_apply k.1))

theorem sliceGram_sum (a b : Slice L SU2) :
    gram (sliceFeatures L) a b =
      ∑ e : SpatialLink L, gram realCoordinates (a e) (b e) := by
  simp only [gram, sliceFeatures, Fintype.sum_prod_type]

/-- Exact entrywise scalar exponential; its constant is exp(-beta*E_s). -/
theorem W_eq_exp_gram (β : ℝ) (a b : Slice L SU2) :
    sliceWilsonProduct L β a b =
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        Real.exp ((β / 2) * gram (sliceFeatures L) a b) := by
  calc
    _ = Real.exp (∑ e : SpatialLink L, (-β +
        (β / 2) * gram realCoordinates (a e) (b e))) := by
      unfold sliceWilsonProduct
      simp_rw [wilsonKernel_eq_exp_gram, ← Real.exp_add]
      rw [Real.exp_sum]
    _ = Real.exp (-β * (spatialLinkCount L : ℝ) +
        (β / 2) * gram (sliceFeatures L) a b) := by
      congr 1
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, sliceGram_sum]
      simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, spatialLinkCount]
      ring
    _ = _ := Real.exp_add _ _

/-- The actual SU2 trace range pays |Gram| <= 2E_s for this full inventory. -/
theorem sliceGram_abs_le (a b : Slice L SU2) :
    |gram (sliceFeatures L) a b| ≤ 2 * (spatialLinkCount L : ℝ) := by
  rw [sliceGram_sum]
  have he (e : SpatialLink L) : |gram realCoordinates (a e) (b e)| ≤ 2 := by
    rw [← realTrace_mul_inv_eq_gram]
    exact abs_le.mpr (real_trace_bounds (a e * (b e)⁻¹))
  calc
    _ ≤ ∑ e : SpatialLink L, |gram realCoordinates (a e) (b e)| := by
      simpa only [Real.norm_eq_abs] using norm_sum_le Finset.univ
        (fun e : SpatialLink L => gram realCoordinates (a e) (b e))
    _ ≤ ∑ _e : SpatialLink L, (2 : ℝ) := Finset.sum_le_sum (fun e _ => he e)
    _ = _ := by
      simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, spatialLinkCount]
      ring

theorem continuous_sliceGram :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => gram (sliceFeatures L) p.1 p.2) :=
  continuous_gram (sliceFeatures L) (continuous_sliceFeatures L)

/-- The original product is continuous, now also from its exact Gram source. -/
theorem continuous_W_exp_gram (β : ℝ) :
    Continuous (fun p : Slice L SU2 × Slice L SU2 => sliceWilsonProduct L β p.1 p.2) := by
  have h : Continuous (fun p : Slice L SU2 × Slice L SU2 =>
      Real.exp (-β * (spatialLinkCount L : ℝ)) *
        Real.exp ((β / 2) * gram (sliceFeatures L) p.1 p.2)) :=
    continuous_const.mul (Real.continuous_exp.comp
      (continuous_const.mul (continuous_sliceGram L)))
  simpa only [W_eq_exp_gram] using h

/-- A correct scalar Taylor majorant; this is not an operator lower bound. -/
theorem normalizedTaylor_abs_le_one (β : ℝ) (hβ : 0 ≤ β)
    (n : ℕ) (a b : Slice L SU2) :
    |Real.exp (-β * (spatialLinkCount L : ℝ)) *
      taylorKernel (β / 2) (sliceFeatures L) n a b| ≤ 1 := by
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-β * (spatialLinkCount L : ℝ)) *
        Real.exp ((β / 2) * (2 * (spatialLinkCount L : ℝ))) :=
      mul_le_mul_of_nonneg_left
        (abs_taylorKernel_le (div_nonneg hβ (by norm_num)) (sliceFeatures L)
          (sliceGram_abs_le L) n a b) (Real.exp_nonneg _)
    _ = 1 := by
      rw [← Real.exp_add, show -β * (spatialLinkCount L : ℝ) +
        (β / 2) * (2 * (spatialLinkCount L : ℝ)) = 0 by ring, Real.exp_zero]

end GRWTSK.Geometry.GaugeTheory.WilsonSliceFeatures
