/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported special-unitary matrix construction and Mathlib results retain
their upstream authorship and Apache-2.0 license. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.YangMillsAndOtherGaugeTheoriesInQuantumFieldTheory.SU2Wilson
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramExponential
import Mathlib.Tactic.Group

/-!
# Positive type of the actual SU(2) Wilson kernel

The normalization is exactly the existing penalty `1-Re(trace(g))/2`.
The real trace of `A*B^-1` is the Frobenius Gram kernel in all eight real
matrix coordinates. Its entrywise exponential, multiplied by exp(-beta),
is positive semidefinite for arbitrary finite complex coefficients.

This supplies the local kernel used by a temporal Wilson cross-plaquette.
It does not supply the gauge-compatible two-boundary Haar gluing argument.
No strict positivity, reflection positivity or physical mass gap is claimed.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential

/-- Four complex entries, each with its real and imaginary coordinate. -/
abbrev RealCoordinate := (Fin 2 × Fin 2) × Fin 2

def realCoordinates (g : SU2) (k : RealCoordinate) : ℝ :=
  if k.2 = 0 then (matrix g k.1.1 k.1.2).re else (matrix g k.1.1 k.1.2).im

/-- The literal real Frobenius Gram identity; no imaginary entry is dropped. -/
theorem realTrace_mul_inv_eq_gram (A B : SU2) :
    (Matrix.trace (matrix (A * B⁻¹))).re = gram realCoordinates A B := by
  simp [matrix_mul, matrix_inv, Matrix.trace, Matrix.mul_apply, Matrix.star_apply,
    Complex.star_def, Complex.mul_re, gram, realCoordinates,
    Fintype.sum_prod_type, Fin.sum_univ_two] <;> ring

/-- The actual local Wilson Boltzmann kernel, a real scalar. -/
def wilsonKernel (β : ℝ) (A B : SU2) : ℝ :=
  Real.exp (-β * penalty (A * B⁻¹))

/-- Exact normalization and the entrywise, scalar exponential representation. -/
theorem wilsonKernel_eq_exp_gram (β : ℝ) (A B : SU2) :
    wilsonKernel β A B = Real.exp (-β) *
      Real.exp ((β / 2) * gram realCoordinates A B) := by
  unfold wilsonKernel penalty
  rw [realTrace_mul_inv_eq_gram, ← Real.exp_add]
  congr 1
  ring

@[simp] theorem wilsonKernel_zero (A B : SU2) : wilsonKernel 0 A B = 1 := by
  simp [wilsonKernel]

@[simp] theorem wilsonKernel_self (β : ℝ) (A : SU2) : wilsonKernel β A A = 1 := by
  simp [wilsonKernel]

/-- Reversing a cross-plaquette exchanges the two path arguments. -/
theorem wilsonKernel_symm (β : ℝ) (A B : SU2) :
    wilsonKernel β A B = wilsonKernel β B A := by
  simp only [wilsonKernel_eq_exp_gram]
  rw [gram_symm realCoordinates A B]

/-- Independent left/right boundary gauge factors act on both arguments. -/
theorem wilsonKernel_bitransport (β : ℝ) (h k A B : SU2) :
    wilsonKernel β (h * A * k⁻¹) (h * B * k⁻¹) = wilsonKernel β A B := by
  have heq : (h * A * k⁻¹) * (h * B * k⁻¹)⁻¹ = h * (A * B⁻¹) * h⁻¹ := by
    group
  unfold wilsonKernel
  rw [heq, penalty_conjugation]

/-- Both ordered sums are retained; the index need not map injectively to SU(2). -/
def kernelQuadratic {I : Type*} [Fintype I] (β : ℝ) (A : I → SU2) (c : I → ℂ) : ℂ :=
  complexQuadratic (fun i j => wilsonKernel β (A i) (A j)) c

/-- The actual Wilson kernel is of positive type for arbitrary finite complex
coefficients. This is semidefiniteness, including beta=0 and repeated matrices. -/
theorem wilsonKernel_positiveType {I : Type*} [Fintype I]
    (β : ℝ) (hβ : 0 ≤ β) (A : I → SU2) (c : I → ℂ) :
    (kernelQuadratic β A c).im = 0 ∧ 0 ≤ (kernelQuadratic β A c).re := by
  classical
  let f : I → RealCoordinate → ℝ := fun i => realCoordinates (A i)
  have hp := expGram_complex_positive (β / 2) (div_nonneg hβ (by norm_num)) f c
  have heq : kernelQuadratic β A c = (Real.exp (-β) : ℂ) *
      complexQuadratic (fun i j => Real.exp ((β / 2) * gram f i j)) c := by
    unfold kernelQuadratic complexQuadratic
    simp only [wilsonKernel_eq_exp_gram, Complex.ofReal_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    change conj (c i) * c j * ((Real.exp (-β) : ℂ) *
        (Real.exp ((β / 2) * gram f i j) : ℂ)) = _
    ring
  rw [heq]
  constructor
  · simp only [Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, hp.1,
      mul_zero, zero_mul, add_zero]
  · simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      zero_mul, sub_zero] using mul_nonneg (Real.exp_nonneg (-β)) hp.2

/-- Concrete null vector: a repeated matrix and coefficients (1,-1).
Thus the local theorem cannot be promoted to strict positive definiteness. -/
theorem repeated_matrix_null (β : ℝ) (A : SU2) :
    kernelQuadratic β (fun _ : Fin 2 => A) (fun i => if i = 0 then 1 else -1) = 0 := by
  simp [kernelQuadratic, complexQuadratic, Fin.sum_univ_two]

end GRWTSK.Geometry.GaugeTheory.SU2WilsonPositiveType
