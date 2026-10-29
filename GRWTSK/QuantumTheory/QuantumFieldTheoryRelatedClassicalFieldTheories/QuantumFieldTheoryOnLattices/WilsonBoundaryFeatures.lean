/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSplitAction
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramIntegral

/-!
# Concatenated real features of every actual Wilson crossing plaquette

The coordinate inventory is CrossPlaquette x RealCoordinate: all eight
real matrix entries for every crossing plaquette at both boundaries.
Repeated positive-link indices are retained with their actual multiplicity.
The literal product kernel is one positive scalar times an entrywise
exponential Gram kernel. The actual SU(2) real-trace range gives |Gram|<=2P,
not an assumed feature margin. This supplies finite complex positive type,
the normalized Taylor bound, and the actual Haar-integral consumer.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
attribute [local instance] Classical.propDecidable
open scoped BigOperators ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonBoundaryFeatures

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
open GRWTSK.Geometry.GaugeTheory.WilsonHaarCoordinates
open GRWTSK.Geometry.GaugeTheory.WilsonSplitAction
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

abbrev BoundaryCoordinate (T : ℕ) := CrossPlaquette T × RealCoordinate

theorem continuous_realCoordinates (k : RealCoordinate) :
    Continuous (fun A : SU2 => realCoordinates A k) := by
  unfold realCoordinates
  split_ifs
  · exact Complex.continuous_re.comp ((continuous_apply_apply k.1.1 k.1.2).comp continuous_matrix)
  · exact Complex.continuous_im.comp ((continuous_apply_apply k.1.1 k.1.2).comp continuous_matrix)

variable (T : ℕ) [NeZero (2 * T)]

def boundaryCount : ℕ := Fintype.card (CrossPlaquette T)

/-- Literal concatenation: no quotient, discarded entry or deduplicated plaquette. -/
def boundaryFeatures (hT : 2 ≤ T) (u : HalfConfig T) (k : BoundaryCoordinate T) : ℝ :=
  realCoordinates (u (boundaryPositiveLink T hT k.1)) k.2

theorem continuous_boundaryFeatures (hT : 2 ≤ T) (k : BoundaryCoordinate T) :
    Continuous (fun u => boundaryFeatures T hT u k) :=
  (continuous_realCoordinates k.2).comp (continuous_apply (boundaryPositiveLink T hT k.1))

theorem boundaryGram_sum (hT : 2 ≤ T) (u v : HalfConfig T) :
    gram (boundaryFeatures T hT) u v =
      ∑ b : CrossPlaquette T, gram realCoordinates
        (u (boundaryPositiveLink T hT b)) (v (boundaryPositiveLink T hT b)) := by
  simp only [gram, boundaryFeatures, Fintype.sum_prod_type]

/-- Exact product-to-exponential identity with the original Wilson normalization. -/
theorem boundaryKernelProduct_eq_exp_gram (hT : 2 ≤ T) (β : ℝ) (u v : HalfConfig T) :
    boundaryKernelProduct T hT β u v =
      Real.exp (-β * (boundaryCount T : ℝ)) *
        Real.exp ((β / 2) * gram (boundaryFeatures T hT) u v) := by
  calc
    _ = Real.exp (∑ b : CrossPlaquette T, (-β +
        (β / 2) * gram realCoordinates (u (boundaryPositiveLink T hT b))
          (v (boundaryPositiveLink T hT b)))) := by
      unfold boundaryKernelProduct
      simp_rw [wilsonKernel_eq_exp_gram, ← Real.exp_add]
      rw [Real.exp_sum]
    _ = Real.exp (-β * (boundaryCount T : ℝ) +
        (β / 2) * gram (boundaryFeatures T hT) u v) := by
      congr 1
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, boundaryGram_sum]
      simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, boundaryCount]
      ring
    _ = _ := Real.exp_add _ _

/-- Actual trace bounds pay the full concatenated Gram inventory. -/
theorem boundaryGram_abs_le (hT : 2 ≤ T) (u v : HalfConfig T) :
    |gram (boundaryFeatures T hT) u v| ≤ 2 * (boundaryCount T : ℝ) := by
  rw [boundaryGram_sum]
  have hb (b : CrossPlaquette T) :
      |gram realCoordinates (u (boundaryPositiveLink T hT b))
        (v (boundaryPositiveLink T hT b))| ≤ 2 := by
    rw [← realTrace_mul_inv_eq_gram]
    exact abs_le.mpr (real_trace_bounds
      (u (boundaryPositiveLink T hT b) * (v (boundaryPositiveLink T hT b))⁻¹))
  calc
    _ ≤ ∑ b : CrossPlaquette T,
        |gram realCoordinates (u (boundaryPositiveLink T hT b))
          (v (boundaryPositiveLink T hT b))| := by
      simpa only [Real.norm_eq_abs] using norm_sum_le Finset.univ
        (fun b : CrossPlaquette T => gram realCoordinates
          (u (boundaryPositiveLink T hT b)) (v (boundaryPositiveLink T hT b)))
    _ ≤ ∑ _b : CrossPlaquette T, (2 : ℝ) := Finset.sum_le_sum (fun b _ => hb b)
    _ = _ := by
      simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, boundaryCount]
      ring

theorem continuous_boundaryKernelProduct (hT : 2 ≤ T) (β : ℝ) :
    Continuous (fun p : HalfConfig T × HalfConfig T => boundaryKernelProduct T hT β p.1 p.2) := by
  have h : Continuous (fun p : HalfConfig T × HalfConfig T =>
      Real.exp (-β * (boundaryCount T : ℝ)) *
        Real.exp ((β / 2) * gram (boundaryFeatures T hT) p.1 p.2)) :=
    continuous_const.mul (Real.continuous_exp.comp
      (continuous_const.mul (continuous_gram (boundaryFeatures T hT)
        (continuous_boundaryFeatures T hT))))
  simpa only [boundaryKernelProduct_eq_exp_gram] using h

/-- Every normalized truncation has absolute value at most one. -/
theorem normalizedTaylor_abs_le_one (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)
    (n : ℕ) (u v : HalfConfig T) :
    |Real.exp (-β * (boundaryCount T : ℝ)) *
      taylorKernel (β / 2) (boundaryFeatures T hT) n u v| ≤ 1 := by
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-β * (boundaryCount T : ℝ)) *
        Real.exp ((β / 2) * (2 * (boundaryCount T : ℝ))) :=
      mul_le_mul_of_nonneg_left
        (abs_taylorKernel_le (div_nonneg hβ (by norm_num))
          (boundaryFeatures T hT) (boundaryGram_abs_le T hT) n u v) (Real.exp_nonneg _)
    _ = 1 := by
      rw [← Real.exp_add, show -β * (boundaryCount T : ℝ) +
        (β / 2) * (2 * (boundaryCount T : ℝ)) = 0 by ring, Real.exp_zero]

/-- Finite complex positive type is supplied by concatenation, without Schur products. -/
theorem boundaryKernelProduct_positiveType {I : Type*} [Fintype I]
    (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β) (u : I → HalfConfig T) (c : I → ℂ) :
    (complexQuadratic (fun i j => boundaryKernelProduct T hT β (u i) (u j)) c).im = 0 ∧
      0 ≤ (complexQuadratic (fun i j => boundaryKernelProduct T hT β (u i) (u j)) c).re := by
  classical
  let f : I → BoundaryCoordinate T → ℝ := fun i => boundaryFeatures T hT (u i)
  have hp := expGram_complex_positive (β / 2) (div_nonneg hβ (by norm_num)) f c
  have heq : complexQuadratic (fun i j => boundaryKernelProduct T hT β (u i) (u j)) c =
      (Real.exp (-β * (boundaryCount T : ℝ)) : ℂ) *
        complexQuadratic (fun i j => Real.exp ((β / 2) * gram f i j)) c := by
    unfold complexQuadratic
    simp only [boundaryKernelProduct_eq_exp_gram, Complex.ofReal_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    change conj (c i) * c j * ((Real.exp (-β * (boundaryCount T : ℝ)) : ℂ) *
      (Real.exp ((β / 2) * gram f i j) : ℂ)) = _
    ring
  rw [heq]
  constructor
  · simp only [Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, hp.1,
      mul_zero, zero_mul, add_zero]
  · simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using
      mul_nonneg (Real.exp_nonneg (-β * (boundaryCount T : ℝ))) hp.2

end GRWTSK.Geometry.GaugeTheory.WilsonBoundaryFeatures
