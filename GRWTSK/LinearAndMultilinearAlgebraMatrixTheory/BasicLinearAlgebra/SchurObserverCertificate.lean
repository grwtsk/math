/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurResidualEnclosure
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DividedDifferenceObserverBounds
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificates

/-!
# Directional observed Schur certificates

Formalization of `weil-low-schur-enclosure.md`, (2.4), (5.1)--(5.3), (6.4),
and the structured-observer composition in `weil-polarized-observers-and-mathieu.md`.
Both notes are in `documentation/mathematics/_support/reviews/` at the baseline
67144c4b923ace618dbdb9c80e24f951a8981cac. Reuse the original quadratic checker,
congruence, Schur residual enclosure and commutator estimate. No new checker,
Weil operator, spectrum, or RH predicate is introduced.

The complete argument has three parts. First, Young's inequality charges an
observed residual AND its error. Second, the original residual identity gives
a directional lower enclosure; the reconstruction Gram and the remote-tail
matrix remain matrices. Third, an explicit oblique kernel projection turns the
existing certificate checker into a certificate on the EXACT trace kernel.
The zero-functional case requires a whole-space certificate, not a fake pivot.

The Hilbert lemma below derives the two observer errors from one actual operator
norm bound and a contractive row projection. Its norm is the continuous-linear-
map norm, never the default coefficient-matrix norm. The later matrix assembly
uses the original `QuadraticCertificates.quadratic` and `.congruence`.

A nonnegative hyperplane permits injectivity of its defining functional on any
strictly negative subspace. This is the algebraic negative-index mechanism; it
is NOT a formal compact-resolvent/min--max theorem. The actual Weil/source
identification, infinite residual-tail bounds, and existence of passing
arithmetic certificates on cofinal windows remain separate obligations.

AI-assisted manual source drafting. Elaboration, fresh kernel checking,
transitive axiom audit and independent mathematical review: NOT_RUN.
These are formal source candidates, not reported machine-checked results.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.LinearAlgebra.SchurObserver

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurResidual
open GRWTSK.Algebra.LinearAlgebra.DividedDifferenceObserverBounds

/-- Young's inequality, keeping its strictly positive tuning parameter. -/
theorem weighted_square (a b s : ℝ) (hs : 0 < s) :
    (a + b) ^ 2 ≤ (1 + s) * a ^ 2 + (1 + s⁻¹) * b ^ 2 := by
  have h := sq_nonneg (s * a - b)
  have he : s * s⁻¹ = 1 := mul_inv_cancel₀ (ne_of_gt hs)
  have hid : s * ((1 + s) * a ^ 2 + (1 + s⁻¹) * b ^ 2 -
      (a + b) ^ 2) = (s * a - b) ^ 2 := by
    calc
      _ = (s * a - b) ^ 2 + (s * s⁻¹ - 1) * b ^ 2 := by ring
      _ = _ := by rw [he]; ring
  have hn : 0 ≤ s * ((1 + s) * a ^ 2 + (1 + s⁻¹) * b ^ 2 -
      (a + b) ^ 2) := by rw [hid]; exact h
  have hn' : 0 ≤ (1 + s) * a ^ 2 + (1 + s⁻¹) * b ^ 2 - (a + b) ^ 2 := by
    apply (mul_le_mul_left hs).mp
    simpa only [mul_zero] using hn
  linarith

/-- Normed residual comparison; a finite residual of zero does not erase error. -/
theorem residual_square_le {E : Type*} [SeminormedAddCommGroup E]
    (f fhat : E) {e s : ℝ} (he : ‖f - fhat‖ ≤ e) (hs : 0 < s) :
    ‖f‖ ^ 2 ≤ (1 + s) * ‖fhat‖ ^ 2 + (1 + s⁻¹) * e ^ 2 := by
  have he0 : 0 ≤ e := (norm_nonneg _).trans he
  have htri : ‖f‖ ≤ ‖fhat‖ + e := by
    calc
      ‖f‖ ≤ ‖f - fhat‖ + ‖fhat‖ := norm_le_norm_sub_add f fhat
      _ ≤ e + ‖fhat‖ := add_le_add_right he _
      _ = _ := add_comm _ _
  have hsquare : ‖f‖ ^ 2 ≤ (‖fhat‖ + e) ^ 2 := by
    have hp := mul_nonneg (sub_nonneg.mpr htri)
      (add_nonneg (norm_nonneg f) (add_nonneg (norm_nonneg fhat) he0))
    nlinarith
  exact hsquare.trans (weighted_square ‖fhat‖ e s hs)

section HilbertObservation

variable {E W : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  [NormedAddCommGroup W] [NormedSpace ℝ W]

/-- Quadratic error in the ACTUAL Hilbert norm, before any scalarization in u. -/
theorem quadratic_observation_error (A Ahat : E →L[ℝ] E) (v : E)
    {ω : ℝ} (hω : ‖A - Ahat‖ ≤ ω) :
    |inner ℝ v (A v) - inner ℝ v (Ahat v)| ≤ ω * ‖v‖ ^ 2 := by
  have happly : ‖(A - Ahat) v‖ ≤ ω * ‖v‖ :=
    ((A - Ahat).le_opNorm v).trans
      (mul_le_mul_of_nonneg_right hω (norm_nonneg v))
  calc
    |inner ℝ v (A v) - inner ℝ v (Ahat v)| =
        ‖inner ℝ v ((A - Ahat) v)‖ := by
      simp only [ContinuousLinearMap.sub_apply, inner_sub_right, Real.norm_eq_abs]
    _ ≤ ‖v‖ * ‖(A - Ahat) v‖ := norm_inner_le_norm _ _
    _ ≤ ‖v‖ * (ω * ‖v‖) :=
      mul_le_mul_of_nonneg_left happly (norm_nonneg v)
    _ = ω * ‖v‖ ^ 2 := by ring

/-- A contractive projection onto ALL finite residual rows preserves the bound. -/
theorem residual_observation_error (A Ahat : E →L[ℝ] E)
    (P : E →L[ℝ] W) (hP : ‖P‖ ≤ 1) (v : E)
    {ω : ℝ} (hω : ‖A - Ahat‖ ≤ ω) :
    ‖P (A v) - P (Ahat v)‖ ≤ ω * ‖v‖ := by
  calc
    ‖P (A v) - P (Ahat v)‖ = ‖P ((A - Ahat) v)‖ := by simp
    _ ≤ ‖P‖ * ‖(A - Ahat) v‖ := P.le_opNorm _
    _ ≤ 1 * ‖(A - Ahat) v‖ :=
      mul_le_mul_of_nonneg_right hP (norm_nonneg _)
    _ = ‖(A - Ahat) v‖ := one_mul _
    _ ≤ ‖A - Ahat‖ * ‖v‖ := (A - Ahat).le_opNorm _
    _ ≤ ω * ‖v‖ := mul_le_mul_of_nonneg_right hω (norm_nonneg _)

/-- Direct reuse of the structured observer, with optional paid edge filtering. -/
theorem structured_observation_errors
    (H Hhat D Dhat K Ahat : E →L[ℝ] E)
    (P : E →L[ℝ] W) (v : E) (ε η σ : ℝ)
    (hH : ‖H - Hhat‖ ≤ ε) (hD : ‖D - Dhat‖ ≤ η)
    (hK : ‖K‖ ≤ 1) (hP : ‖P‖ ≤ 1)
    (hfilter : ‖operatorModel Hhat Dhat K - Ahat‖ ≤ σ) :
    |inner ℝ v (operatorModel H D K v) - inner ℝ v (Ahat v)| ≤
        (ε + 2 * η + σ) * ‖v‖ ^ 2 ∧
      ‖P (operatorModel H D K v) - P (Ahat v)‖ ≤
        (ε + 2 * η + σ) * ‖v‖ := by
  have h := norm_filtered_model_difference_le
    H Hhat D Dhat K Ahat ε η σ hH hD hK hfilter
  exact ⟨quadratic_observation_error _ _ v h,
    residual_observation_error _ _ P hP v h⟩

end HilbertObservation

/-- Assembly using the pre-existing exact residual identity. No low sign is an
input or conclusion: the result is the complete enclosure of that signed value. -/
theorem directional_enclosure
    {S U Uhat defect delta ω mass rfin2 rhat2 tail s : ℝ}
    (hdelta : 0 < delta) (hid : S = U - defect) (hdefect : 0 ≤ defect)
    (hbudget : defect ≤ (rfin2 + tail) / delta)
    (hobs : |U - Uhat| ≤ ω * mass)
    (hres : rfin2 ≤ (1 + s) * rhat2 + (1 + s⁻¹) * ω ^ 2 * mass) :
    Uhat - ω * mass -
        ((1 + s) * rhat2 + (1 + s⁻¹) * ω ^ 2 * mass + tail) / delta ≤ S ∧
      S ≤ Uhat + ω * mass := by
  have he := split_residual_enclosure hid hdefect hbudget
  have ho := abs_le.mp hobs
  have hd := div_le_div_of_nonneg_right (add_le_add_right hres tail) hdelta.le
  constructor <;> linarith [he.1, he.2, ho.1, ho.2]

/-- The residual comparison above is derived from the norm error, not postulated
as a positive Schur margin. This theorem retains the reconstruction's mass. -/
theorem directional_enclosure_of_norm_error
    {E : Type*} [SeminormedAddCommGroup E]
    (f fhat : E) {S U Uhat defect delta ω n tail s : ℝ}
    (hdelta : 0 < delta) (hs : 0 < s)
    (hid : S = U - defect) (hdefect : 0 ≤ defect)
    (hbudget : defect ≤ (‖f‖ ^ 2 + tail) / delta)
    (hobs : |U - Uhat| ≤ ω * n ^ 2)
    (hres : ‖f - fhat‖ ≤ ω * n) :
    Uhat - ω * n ^ 2 -
        ((1 + s) * ‖fhat‖ ^ 2 + (1 + s⁻¹) * ω ^ 2 * n ^ 2 + tail) / delta ≤ S ∧
      S ≤ Uhat + ω * n ^ 2 := by
  apply directional_enclosure hdelta hid hdefect hbudget hobs
  have h := residual_square_le f fhat hres hs
  nlinarith [h]

section MatrixCertificate

variable {ι κ ρ ν : Type*} [Fintype ι] [Fintype κ] [Fintype ρ] [Fintype ν]
  [DecidableEq ι] [DecidableEq κ]

/-- The actual reconstruction Gram; no largest-eigenvalue replacement. -/
def reconstructionGram (X : Matrix κ ι ℝ) : Matrix ι ι ℝ := X.transpose * X

/-- Matrix version of (6.4). T is the WHOLE remote residual-square allowance. -/
def lowerMatrix (U G : Matrix ι ι ℝ) (F : Matrix ρ ι ℝ)
    (T : Matrix ι ι ℝ) (ω delta s : ℝ) : Matrix ι ι ℝ :=
  U - ω • G - delta⁻¹ •
    ((1 + s) • (F.transpose * F) + ((1 + s⁻¹) * ω ^ 2) • G + T)

def upperMatrix (U G : Matrix ι ι ℝ) (ω : ℝ) : Matrix ι ι ℝ := U + ω • G

/-- Reuses the original quadratic evaluator rather than a new PSD convention. -/
theorem lowerMatrix_quadratic (U G : Matrix ι ι ℝ) (F : Matrix ρ ι ℝ)
    (T : Matrix ι ι ℝ) (ω delta s : ℝ) (x : ι → ℝ) :
    quadratic (lowerMatrix U G F T ω delta s) x =
      quadratic U x - ω * quadratic G x -
        ((1 + s) * quadratic (F.transpose * F) x +
          (1 + s⁻¹) * ω ^ 2 * quadratic G x + quadratic T x) / delta := by
  simp only [lowerMatrix, quadratic, Matrix.sub_mulVec, Matrix.add_mulVec,
    Matrix.smul_mulVec, dotProduct_sub, dotProduct_add, dotProduct_smul, smul_eq_mul]
  ring

theorem upperMatrix_quadratic (U G : Matrix ι ι ℝ) (ω : ℝ) (x : ι → ℝ) :
    quadratic (upperMatrix U G ω) x = quadratic U x + ω * quadratic G x := by
  simp [upperMatrix, quadratic, Matrix.add_mulVec, Matrix.smul_mulVec,
    dotProduct_add, dotProduct_smul, smul_eq_mul]

/-- Form the observed quadratic matrix from the source block and stored X.
The input Ahat contains the full diagonal, prime, pole and boundary entries. -/
def observedUpper (Ahat : Matrix κ κ ℝ) (X : Matrix κ ι ℝ) (β : ℝ) : Matrix ι ι ℝ :=
  congruence X (Ahat - β • (1 : Matrix κ κ ℝ))

/-- Form the observed finite residual from the SAME shifted block. In the Weil
consumer P selects every row N<|n|<=L; completeness is part of the source split. -/
def observedResidual (Ahat : Matrix κ κ ℝ) (X : Matrix κ ι ℝ)
    (P : Matrix ρ κ ℝ) (β : ℝ) : Matrix ρ ι ℝ := P * (Ahat - β • 1) * X

/-- A fully specified finite target, not a freely supplied positive matrix. -/
def observedLower (Ahat : Matrix κ κ ℝ) (X : Matrix κ ι ℝ)
    (P : Matrix ρ κ ℝ) (T : Matrix ι ι ℝ) (β ω delta s : ℝ) : Matrix ι ι ℝ :=
  lowerMatrix (observedUpper Ahat X β) (reconstructionGram X)
    (observedResidual Ahat X P β) T ω delta s

/-- Literal Gram value, including the high reconstruction components. -/
theorem reconstructionGram_quadratic (X : Matrix κ ι ℝ) (x : ι → ℝ) :
    quadratic (reconstructionGram X) x = ∑ i, (X.mulVec x i) ^ 2 := by
  have h := quadratic_congruence (1 : Matrix κ κ ℝ) X x
  simpa [reconstructionGram, congruence, quadratic, dotProduct,
    pow_two] using h

/-- The reconstructed shifted energy uses the full Gram denominator. -/
theorem observedUpper_quadratic (Ahat : Matrix κ κ ℝ) (X : Matrix κ ι ℝ)
    (β : ℝ) (x : ι → ℝ) :
    quadratic (observedUpper Ahat X β) x =
      quadratic Ahat (X.mulVec x) - β * quadratic (reconstructionGram X) x := by
  rw [observedUpper, quadratic_congruence, reconstructionGram_quadratic]
  simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec,
    dotProduct_sub, dotProduct_smul, smul_eq_mul, dotProduct, pow_two]

/-- Orthogonal low/high supports give the exact Gram I+YᵀY. The support
identities are structural, not assumptions on a spectral gap. -/
theorem reconstructionGram_of_orthogonal_supports
    (E Y : Matrix κ ι ℝ) (hE : E.transpose * E = 1)
    (hEY : E.transpose * Y = 0) (hYE : Y.transpose * E = 0) :
    reconstructionGram (E - Y) = 1 + Y.transpose * Y := by
  simp [reconstructionGram, Matrix.transpose_sub, Matrix.sub_mul, Matrix.mul_sub,
    hE, hEY, hYE]

/-- The directional scalar return is exactly the quadratic form of the stored
matrix target. `rfin2` is the true finite residual-square value at x. -/
theorem matrix_enclosure (Uhat G : Matrix ι ι ℝ) (Fhat : Matrix ρ ι ℝ)
    (T : Matrix ι ι ℝ) (ω delta s : ℝ) (x : ι → ℝ)
    {S U defect rfin2 : ℝ} (hdelta : 0 < delta)
    (hid : S = U - defect) (hdefect : 0 ≤ defect)
    (hbudget : defect ≤ (rfin2 + quadratic T x) / delta)
    (hobs : |U - quadratic Uhat x| ≤ ω * quadratic G x)
    (hres : rfin2 ≤ (1 + s) * quadratic (Fhat.transpose * Fhat) x +
      (1 + s⁻¹) * ω ^ 2 * quadratic G x) :
    quadratic (lowerMatrix Uhat G Fhat T ω delta s) x ≤ S ∧
      S ≤ quadratic (upperMatrix Uhat G ω) x := by
  rw [lowerMatrix_quadratic, upperMatrix_quadratic]
  exact directional_enclosure hdelta hid hdefect hbudget hobs hres

/-- An unrestricted problem for the EXISTING Gram/multiplier checker. -/
def matrixProblem {R : Type*} (A : Matrix ι ι R) : Problem R ι Empty Empty where
  target := A
  equalities := fun e => nomatch e
  inequalities := fun e => nomatch e

/-- No new finite checker: consume the original `check_sound`. -/
theorem checked_matrix_nonneg (A : Matrix ι ι ℝ)
    (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem A) C = true) (x : ι → ℝ) :
    0 ≤ quadratic A x := by
  exact check_sound (matrixProblem A) C hcheck x
    ⟨fun e => nomatch e, fun e => nomatch e⟩

/-- A passing rational Gram identity gives a real inequality for EVERY real
vector, not just rational test vectors. Cast the identity, not a finite sample.
Only the already-existing rational checker is used. -/
theorem checked_rational_matrix_nonneg (A : Matrix ι ι ℚ)
    (C : Certificate ℚ ι Empty Empty ν)
    (hcheck : check (matrixProblem A) C = true) (x : ι → ℝ) :
    0 ≤ quadratic (fun i j => (A i j : ℝ)) x := by
  have hv : Valid (matrixProblem A) C := of_decide_eq_true hcheck
  have hid : A = C.gram.transpose * C.gram := by
    simpa [matrixProblem] using hv.2
  let W : Matrix ν ι ℝ := fun i j => (C.gram i j : ℝ)
  have hreal : (fun i j => (A i j : ℝ)) = W.transpose * W := by
    ext i j
    have hij := congrFun (congrFun hid i) j
    change (A i j : ℝ) = ∑ k, (C.gram k i : ℝ) * (C.gram k j : ℝ)
    rw [hij]
    simp [Matrix.mul_apply, Matrix.transpose_apply]
  let CReal : Certificate ℝ ι Empty Empty ν :=
    { gram := W
      equalityMultipliers := fun e => nomatch e
      inequalityMultipliers := fun e => nomatch e }
  have hvReal : Valid (matrixProblem (fun i j => (A i j : ℝ))) CReal := by
    refine ⟨fun e => nomatch e, ?_⟩
    simpa [matrixProblem, CReal] using hreal
  exact sound (matrixProblem _) CReal hvReal x
    ⟨fun e => nomatch e, fun e => nomatch e⟩

/-- A checked lower matrix supplies a sign only after its source comparison. -/
theorem checked_lower_source_nonneg (A : Matrix ι ι ℝ) (S : (ι → ℝ) → ℝ)
    (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem A) C = true)
    (hsource : ∀ x, quadratic A x ≤ S x) (x : ι → ℝ) : 0 ≤ S x :=
  (checked_matrix_nonneg A C hcheck x).trans (hsource x)

/-- Mathlib's outer product acts by the literal row observation. -/
theorem outer_mulVec (v : κ → ℝ) (a x : ι → ℝ) :
    (Matrix.vecMulVec v a).mulVec x = (a ⬝ᵥ x) • v := by
  ext i
  simp [Matrix.mulVec, Matrix.vecMulVec, dotProduct, Finset.mul_sum,
    Finset.sum_mul, mul_comm, mul_left_comm, mul_assoc]

/-- Exact rank-one quadratic, using Mathlib's outer product. -/
theorem outer_quadratic (a : ι → ℝ) (x : ι → ℝ) :
    quadratic (Matrix.vecMulVec a a) x = (a ⬝ᵥ x) ^ 2 := by
  simp only [quadratic, outer_mulVec, dotProduct_smul, smul_eq_mul]
  rw [dotProduct_comm x a]
  ring

/-- Exact oblique kernel projection. The pivot is required only by its theorems.
It is square and may be singular; the existing congruence checker permits this. -/
def kernelProjection (a : ι → ℝ) (k : ι) : Matrix ι ι ℝ :=
  1 - Matrix.vecMulVec (Pi.single k (1 / a k)) a

theorem kernelProjection_apply (a : ι → ℝ) (k : ι) (x : ι → ℝ) :
    (kernelProjection a k).mulVec x = x - Pi.single k ((a ⬝ᵥ x) / a k) := by
  rw [kernelProjection, Matrix.sub_mulVec, Matrix.one_mulVec, outer_mulVec]
  ext i
  by_cases hi : i = k
  · subst i
    simp [div_eq_mul_inv]
  · simp [Pi.single_apply, hi]

/-- Every output is in the exact kernel; no approximate nullspace is used. -/
theorem kernelProjection_in_kernel (a : ι → ℝ) (k : ι) (hk : a k ≠ 0)
    (x : ι → ℝ) : a ⬝ᵥ (kernelProjection a k).mulVec x = 0 := by
  rw [kernelProjection_apply, dotProduct_sub]
  have hh : a ⬝ᵥ Pi.single k ((a ⬝ᵥ x) / a k) = a k * ((a ⬝ᵥ x) / a k) := by
    simp [dotProduct, Pi.single_apply, mul_ite]
  rw [hh]
  field_simp [hk]
  <;> ring

/-- Every kernel vector is fixed, proving completeness of the kernel range. -/
theorem kernelProjection_fixes (a : ι → ℝ) (k : ι) (x : ι → ℝ)
    (hx : a ⬝ᵥ x = 0) : (kernelProjection a k).mulVec x = x := by
  rw [kernelProjection_apply, hx]
  simp

/-- Exact range equivalence, including the direction required for a complete
hyperplane certificate. The matrix need not be an orthogonal projector. -/
theorem kernelProjection_range_iff (a : ι → ℝ) (k : ι) (hk : a k ≠ 0)
    (x : ι → ℝ) :
    (∃ y, (kernelProjection a k).mulVec y = x) ↔ a ⬝ᵥ x = 0 := by
  constructor
  · rintro ⟨y, rfl⟩
    exact kernelProjection_in_kernel a k hk y
  · intro hx
    exact ⟨x, kernelProjection_fixes a k x hx⟩

/-- Reuses the original congruence identity and checker on the complete kernel. -/
theorem checked_kernel_nonneg (A : Matrix ι ι ℝ) (a : ι → ℝ) (k : ι)
    (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem (congruence (kernelProjection a k) A)) C = true)
    (x : ι → ℝ) (hx : a ⬝ᵥ x = 0) : 0 ≤ quadratic A x := by
  have h := checked_matrix_nonneg _ C hcheck x
  rw [quadratic_congruence, kernelProjection_fixes a k x hx] at h
  exact h

/-- Source return restricted to the actual trace kernel, not a trial complement. -/
theorem checked_kernel_source_nonneg
    (A : Matrix ι ι ℝ) (S : (ι → ℝ) → ℝ) (a : ι → ℝ) (k : ι)
    (C : Certificate ℝ ι Empty Empty ν)
    (hcheck : check (matrixProblem (congruence (kernelProjection a k) A)) C = true)
    (hsource : ∀ x, a ⬝ᵥ x = 0 → quadratic A x ≤ S x)
    (x : ι → ℝ) (hx : a ⬝ᵥ x = 0) : 0 ≤ S x :=
  (checked_kernel_nonneg A a k C hcheck x hx).trans (hsource x hx)

end MatrixCertificate

section FormDomainReturn

variable {L V : Type*} [AddCommGroup L] [Module ℝ L]
  [AddCommGroup V] [Module ℝ V]

/-- Reuse the original full form-domain square completion on the exact low
hyperplane. Z is the justified high solution map, not the stored approximate Y. -/
theorem full_form_nonneg_on_head_kernel
    (a : LinearMap.BilinForm ℝ V) (l : LinearMap.BilinForm ℝ L)
    (b : L →ₗ[ℝ] V →ₗ[ℝ] ℝ) (Z : L →ₗ[ℝ] V) (ell : L →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (hsolve : ∀ u v, a (Z u) v = b u v) (hhigh : ∀ v, 0 ≤ a v v)
    (hlow : ∀ u, ell u = 0 → 0 ≤ l u u - b u (Z u))
    (u : L) (v : V) (hu : ell u = 0) :
    0 ≤ l u u + 2 * b u v + a v v := by
  rw [block_square_completion a l b Z hsym hsolve]
  exact add_nonneg (hlow u hu) (hhigh _)

/-- The negative-index bound without presupposing eigenvalues: on every strictly
negative subspace, a scalar functional with nonnegative kernel is injective.
In the consumer q is the full shifted form and ell is the reconstructed endpoint
functional of the head. This is an at-most-one-negative-direction result. -/
theorem functional_injective_on_negative_subspace
    (q : V → ℝ) (ell : V →ₗ[ℝ] ℝ)
    (hker : ∀ v, ell v = 0 → 0 ≤ q v)
    (W : Submodule ℝ V) (hnegative : ∀ v ∈ W, v ≠ 0 → q v < 0) :
    Function.Injective (fun v : W => ell (v : V)) := by
  intro x y hxy
  have hz : ((x : V) - (y : V)) = 0 := by
    by_contra hn
    have hm : (x : V) - (y : V) ∈ W := W.sub_mem x.property y.property
    have he : ell ((x : V) - (y : V)) = 0 := by rw [map_sub, hxy, sub_self]
    exact (not_lt_of_ge (hker _ he)) (hnegative _ hm hn)
  apply Subtype.ext
  exact sub_eq_zero.mp hz

/-- The negative witness forces the endpoint functional to be nonzero there. -/
theorem negative_witness_has_nonzero_trace (q : V → ℝ) (ell : V →ₗ[ℝ] ℝ)
    (hker : ∀ v, ell v = 0 → 0 ≤ q v) (v : V) (hv : q v < 0) : ell v ≠ 0 := by
  intro he
  exact (not_lt_of_ge (hker v he)) hv

end FormDomainReturn

/-- Full normalization is retained in the negative-trial Rayleigh upper bound. -/
theorem trial_rayleigh_return {q mass β upper : ℝ}
    (hmass : 0 < mass) (hupper : q - β * mass ≤ upper) (hnegative : upper < 0) :
    q / mass ≤ β + upper / mass ∧ β + upper / mass < β := by
  constructor
  · apply (div_le_iff₀ hmass).2
    have he : (β + upper / mass) * mass = β * mass + upper := by
      field_simp [ne_of_gt hmass]
    rw [he]
    linarith
  · have h := div_neg_of_neg_of_pos hnegative hmass
    linarith

/-- The spacing lower bound produced by the certified trial, not an unknown gap. -/
theorem trial_separation_price {β upper mass : ℝ}
    (hmass : 0 < mass) (hnegative : upper < 0) :
    β - (β + upper / mass) = -upper / mass ∧ 0 < -upper / mass := by
  constructor
  · ring
  · exact div_pos (neg_pos.mpr hnegative) hmass

end GRWTSK.LinearAlgebra.SchurObserver
