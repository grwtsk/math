/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.HeegnerHeightJetProjection
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# The exact higher-rank Neron--Tate Schur regulator factor

This file proves finite-dimensional real inner-product algebra using the
ACTUAL Schur determinant theorem in pinned Mathlib, NOT a made-up positive
Gram determinant. The only intended arithmetic instantiation is the true
Mordell--Weil quotient with its Neron--Tate pairing and an INTEGRAL basis.

For q a primitive integral Mordell--Weil point and P_i the remaining
integral basis, let a=<q,q>, b_i=<q,P_i>, C_ij=<P_i,P_j>.
The full original Gram has determinant

  det [[a,b^T],[b,C]] = a * det (C - b*b^T/a).

The second factor is exactly the Gram of the q-orthogonal residuals.
If a separately established genuine rational point Q=m q mod torsion,
then a=<Q,Q>/m^2. No conjectural analytic rank, arbitrary isometry,
BSD leading coefficient, or spectral zero multiplicity is assumed.

A GL(Z)-unimodular basis change has determinant square one and preserves
the full regulator; an arbitrary real basis rescaling DOES NOT.

This file does not construct the actual rational point type, canonical
Neron--Tate height, modularity, Gross--Zagier, Kolyvagin, the central
L-germ, a Connes spectral Hilbert metric or BSD-I/BSD-II. Those are
genuine independent supplier obligations; no proof is inferred from
the presence of a generic finite Hilbert structure.
-/

namespace GRWTSK.Analysis.InnerProductSpace.HeegnerHeightSchur

open GRWTSK.Analysis.InnerProductSpace.HeegnerHeightJetProjection

variable {ι H : Type*} [Fintype ι] [DecidableEq ι]
variable [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- One-dimensional pivot; the pivot is not silently replaced by 1. -/
def pivot (a : ℝ) : Matrix (Fin 1) (Fin 1) ℝ := !![a]

def upperBlock (b : ι → ℝ) : Matrix (Fin 1) ι ℝ :=
  fun _ j => b j

def lowerBlock (b : ι → ℝ) : Matrix ι (Fin 1) ℝ :=
  fun i _ => b i

def outerDiv (a : ℝ) (b : ι → ℝ) : Matrix ι ι ℝ :=
  fun i j => b i * b j / a

def sourceBlock (a : ℝ) (b : ι → ℝ) (C : Matrix ι ι ℝ) :
    Matrix (Fin 1 ⊕ ι) (Fin 1 ⊕ ι) ℝ :=
  Matrix.fromBlocks (pivot a) (upperBlock b) (lowerBlock b) C

@[simp] theorem pivot_det (a : ℝ) : (pivot a).det = a := by
  simpa [pivot] using Matrix.det_fin_one (pivot a)

/-- The source pivot has a genuine inverse exactly when its height is
nonzero; neither positivity nor an operator eigenvalue is inserted. -/
def pivotInvertible (a : ℝ) (ha : a ≠ 0) : Invertible (pivot a) := by
  have hdet : (pivot a).det ≠ 0 := by
    simpa only [pivot_det] using ha
  letI : Invertible (pivot a).det := invertibleOfNonzero hdet
  exact Matrix.invertibleOfDetInvertible (pivot a)

/-- The REAL (0,0) entry of the genuine inverse of the 1x1 height pivot. -/
theorem pivot_inverse_entry (a : ℝ) (ha : a ≠ 0)
    [Invertible (pivot a)] :
    (⅟(pivot a)) 0 0 = a⁻¹ := by
  have hmul : a * (⅟(pivot a)) 0 0 = 1 := by
    have h :=
      congrArg (fun M : Matrix (Fin 1) (Fin 1) ℝ => M 0 0)
        (mul_invOf_self (pivot a))
    simpa [pivot, Matrix.mul_apply, Fin.sum_univ_one] using h
  change (⅟(pivot a)) 0 0 = 1 / a
  apply (eq_div_iff ha).2
  simpa [mul_comm] using hmul

/-- The exact rank-one Schur correction, not a Gram guess. -/
theorem crossBlock_eq_outerDiv (a : ℝ) (ha : a ≠ 0)
    (b : ι → ℝ) [Invertible (pivot a)] :
    lowerBlock b * ⅟(pivot a) * upperBlock b = outerDiv a b := by
  ext i j
  simp [lowerBlock, upperBlock, outerDiv, Matrix.mul_apply,
    Fin.sum_univ_one, pivot_inverse_entry a ha, div_eq_mul_inv] <;> ring

/-- An actual application of pinned Mathlib Matrix.det_fromBlocks₁₁.
The complete orthogonal determinant, not merely the observed rank-one
determinant, is retained. -/
theorem sourceBlock_det_schur (a : ℝ) (ha : a ≠ 0)
    (b : ι → ℝ) (C : Matrix ι ι ℝ) :
    (sourceBlock a b C).det = a * (C - outerDiv a b).det := by
  letI : Invertible (pivot a) := pivotInvertible a ha
  calc
    (sourceBlock a b C).det =
        (pivot a).det *
          (C - lowerBlock b * ⅟(pivot a) * upperBlock b).det :=
      Matrix.det_fromBlocks₁₁ (pivot a) (upperBlock b) (lowerBlock b) C
    _ = a * (C - outerDiv a b).det := by
      rw [pivot_det, crossBlock_eq_outerDiv a ha b]

/-- The original q-and-complement Gram is a literal source block.
Every entry uses the ORIGINAL Hilbert pairing. -/
def fullHeightBlock (q : H) (P : ι → H) :
    Matrix (Fin 1 ⊕ ι) (Fin 1 ⊕ ι) ℝ :=
  sourceBlock (inner ℝ q q) (fun i => inner ℝ q (P i))
    (originalGram P)

/-- The Schur complement is exactly the Gram of the actual
q-orthogonal residual vectors, not an arbitrary PSD matrix. -/
theorem height_schur_complement_eq_residual
    (q : H) (P : ι → H) (hq : inner ℝ q q ≠ 0) :
    originalGram P -
        outerDiv (inner ℝ q q) (fun i => inner ℝ q (P i)) =
      residualGram q P := by
  ext i j
  change
    inner ℝ (P i) (P j) -
      inner ℝ q (P i) * inner ℝ q (P j) /
        inner ℝ q q =
    residualPairing q (P i) (P j)
  have h :=
    source_pairing_eq_observed_add_residual q (P i) (P j) hq
  unfold observedPairing at h
  rw [real_inner_comm (P i) q,
    real_inner_comm (P j) q] at h
  linarith

/-- Arbitrary-rank EXACT original Gram determinant identity. -/
theorem full_height_block_det
    (q : H) (P : ι → H) (hq : inner ℝ q q ≠ 0) :
    (fullHeightBlock q P).det =
      inner ℝ q q * (residualGram q P).det := by
  unfold fullHeightBlock
  rw [sourceBlock_det_schur (inner ℝ q q) hq]
  rw [height_schur_complement_eq_residual q P hq]

/-- If a GENUINE integral point Q represents m times a primitive
integral lattice element q, then its height contributes h_Q/m^2.
The hypothesis Q=m*q is arithmetic source information, not a BSD
rank--order equality. -/
theorem full_height_det_integral_index
    (q Q : H) (P : ι → H) (m : ℤ)
    (hq : inner ℝ q q ≠ 0) (hm : m ≠ 0)
    (hQ : Q = (m : ℝ) • q) :
    (fullHeightBlock q P).det =
      (inner ℝ Q Q / (m : ℝ) ^ 2) *
        (residualGram q P).det := by
  rw [full_height_block_det q P hq]
  rw [index_square_regulator q Q m hm hQ]

/-- The determinant of an ACTUAL Gram transforms by det(U)^2, so
changing the real coordinate frame generally changes covolume. -/
theorem congruence_det_square (G U : Matrix ι ι ℝ) :
    (Uᵀ * G * U).det = U.det ^ 2 * G.det := by
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- Unimodular changes preserve the exact regulator. For a genuine
integral Mordell--Weil basis change, prove the integer matrix is
unimodular separately; do not freely orthonormalize the real space. -/
theorem unimodular_congruence_regulator
    (G U : Matrix ι ι ℝ) (hU : U.det ^ 2 = 1) :
    (Uᵀ * G * U).det = G.det := by
  rw [congruence_det_square, hU, one_mul]

/-- The source block still needs the real arithmetic basis. An
arbitrary positive Gram and nonzero q does not certify it. -/
theorem one_dimensional_index_convention
    (q Q : H) (m : ℤ)
    (hq : inner ℝ q q ≠ 0) (hm : m ≠ 0)
    (hQ : Q = (m : ℝ) • q) :
    (fullHeightBlock q (fun i : Fin 0 => i.elim0)).det =
      inner ℝ Q Q / (m : ℝ) ^ 2 := by
  have h := full_height_det_integral_index q Q
    (fun i : Fin 0 => i.elim0) m hq hm hQ
  simpa [residualGram, Matrix.det_fin_zero] using h


/-- The original, ordered height family with the primitive first
integral generator. No Gram data are independently manufactured. -/
def extendedHeightFamily (q : H) (P : ι → H) :
    (Fin 1 ⊕ ι) → H
  | .inl _ => q
  | .inr i => P i

/-- The Schur block is literally the Gram of the original full family;
the only non-definitional case uses symmetry of the REAL height pairing. -/
theorem fullHeightBlock_is_originalGram (q : H) (P : ι → H) :
    fullHeightBlock q P = originalGram (extendedHeightFamily q P) := by
  ext i j
  cases i with
  | inl i =>
      fin_cases i
      cases j with
      | inl j =>
          fin_cases j
          rfl
      | inr j => rfl
  | inr i =>
      cases j with
      | inl j =>
          fin_cases j
          change inner ℝ q (P i) = inner ℝ (P i) q
          exact real_inner_comm q (P i)
      | inr j => rfl

/-- Source family formulation: the ORIGINAL height Gram determinant is
the first-point height times the true orthogonal residual determinant. -/
theorem extended_original_regulator_schur
    (q : H) (P : ι → H) (hq : inner ℝ q q ≠ 0) :
    (originalGram (extendedHeightFamily q P)).det =
      inner ℝ q q * (residualGram q P).det := by
  rw [← fullHeightBlock_is_originalGram]
  exact full_height_block_det q P hq

/-- Literal entrywise real image of an integral change-of-basis matrix. -/
def integerChangeToReal (U : Matrix ι ι ℤ) : Matrix ι ι ℝ :=
  U.map fun x => (x : ℝ)

/-- Mathlib's genuine determinant/cast comparison. -/
theorem integerChangeToReal_det (U : Matrix ι ι ℤ) :
    (integerChangeToReal U).det = (U.det : ℝ) := by
  exact (Int.cast_det U).symm

/-- A source-proved INTEGRAL change of basis (det = +1 or -1) does not
change the height regulator. Arbitrary nonunimodular real matrices
can change it and cannot be used to erase the arithmetic covolume. -/
theorem integral_unimodular_regulator
    (G : Matrix ι ι ℝ) (U : Matrix ι ι ℤ)
    (hU : U.det = 1 ∨ U.det = -1) :
    ((integerChangeToReal U)ᵀ * G * integerChangeToReal U).det =
      G.det := by
  apply unimodular_congruence_regulator
  rw [integerChangeToReal_det]
  rcases hU with h | h <;> norm_num [h]

end GRWTSK.Analysis.InnerProductSpace.HeegnerHeightSchur
