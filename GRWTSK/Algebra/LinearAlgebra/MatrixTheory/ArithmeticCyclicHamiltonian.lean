/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGram
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Hermitian

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # Signed arithmetic potentials on an actual finite cyclic matrix

The sites are ZMod N with N nonzero. In particular the requested N>=3 family
is included. Real coefficients and real parts of genuine Dirichlet characters
give a real potential, with no positivity assumption. The existing full
complex readout and exact realification are reused for this signed matrix.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No weighted-Laplacian kernel/Poincare result, spectral enclosure, infinite AMO
identification or physical Yang-Mills conclusion is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

variable (N : ℕ) [hN : NeZero N]

include hN

/-- Sx(i)=x(i+1), with addition in the actual cyclic site type. -/
def cyclicShift : Matrix (ZMod N) (ZMod N) ℂ :=
  fun i j => if j = i + 1 then 1 else 0

/-- The full signed Hamiltonian t(S+S*)+diag(q), not a Gram surrogate. -/
def hamiltonian (t : ℝ) (q : ZMod N → ℝ) : Matrix (ZMod N) (ZMod N) ℂ :=
  (t : ℂ) • (cyclicShift N + (cyclicShift N).conjTranspose) +
    Matrix.diagonal (fun i => (q i : ℂ))

def forwardCorrelation (x : ZMod N → ℂ) : ℂ :=
  ∑ i, conj (x i) * x (i + 1)

theorem cyclicShift_mulVec (x : ZMod N → ℂ) (i : ZMod N) :
    (cyclicShift N).mulVec x i = x (i + 1) := by
  simp [cyclicShift, Matrix.mulVec, dotProduct]

theorem cyclicShift_adjoint_mulVec (x : ZMod N → ℂ) (i : ZMod N) :
    (cyclicShift N).conjTranspose.mulVec x i = x (i - 1) := by
  have hindex (j : ZMod N) : (i = j + 1) ↔ j = i - 1 := by
    constructor
    · intro h
      rw [h]
      simp
    · intro h
      rw [h]
      simp
  simp [Matrix.conjTranspose_apply, cyclicShift, Matrix.mulVec, dotProduct, hindex]

theorem cyclicShift_adjoint_right_inverse (x : ZMod N → ℂ) :
    (cyclicShift N).mulVec ((cyclicShift N).conjTranspose.mulVec x) = x := by
  funext i
  simp only [cyclicShift_mulVec, cyclicShift_adjoint_mulVec, add_sub_cancel_right]

theorem cyclicShift_adjoint_left_inverse (x : ZMod N → ℂ) :
    (cyclicShift N).conjTranspose.mulVec ((cyclicShift N).mulVec x) = x := by
  funext i
  simp only [cyclicShift_adjoint_mulVec, cyclicShift_mulVec, sub_add_cancel]

theorem hamiltonian_mulVec (t : ℝ) (q : ZMod N → ℝ)
    (x : ZMod N → ℂ) (i : ZMod N) :
    (hamiltonian N t q).mulVec x i =
      (t : ℂ) * (x (i + 1) + x (i - 1)) + (q i : ℂ) * x i := by
  simp [hamiltonian, Matrix.add_mulVec, Matrix.smul_mulVec, Matrix.mulVec_diagonal,
    cyclicShift_mulVec, cyclicShift_adjoint_mulVec, smul_eq_mul]

theorem hamiltonian_isHermitian (t : ℝ) (q : ZMod N → ℝ) :
    (hamiltonian N t q).IsHermitian := by
  have ht : IsSelfAdjoint (t : ℂ) := by
    change star (t : ℂ) = (t : ℂ)
    simp
  have hq : (Matrix.diagonal (fun i => (q i : ℂ))).IsHermitian := by
    apply Matrix.isHermitian_diagonal_iff.mpr
    intro i
    change star (q i : ℂ) = (q i : ℂ)
    simp
  exact ((Matrix.isHermitian_add_transpose_self (cyclicShift N)).smul ht).add hq

/-- Compatibility with the existing signed-matrix Hermitian/readout API. -/
theorem hamiltonian_hermitian_source (t : ℝ) (q : ZMod N → ℝ) :
    Hermitian (fun p => hamiltonian N t q p.1 p.2) := by
  intro i j
  have h := (hamiltonian_isHermitian N t q).apply j i
  simpa only [Complex.star_def] using h.symm

theorem readout_eq_sum_mulVec (x : ZMod N → ℂ) (A : Matrix (ZMod N) (ZMod N) ℂ) :
    complexReadout x (fun p => A p.1 p.2) = ∑ i, conj (x i) * A.mulVec x i := by
  simp only [complexReadout, Fintype.sum_prod_type, Matrix.mulVec, dotProduct,
    Finset.mul_sum, mul_assoc]

theorem reverseCorrelation_eq_conj (x : ZMod N → ℂ) :
    (∑ i, conj (x i) * x (i - 1)) = conj (forwardCorrelation N x) := by
  have hsum := Fintype.sum_equiv (Equiv.addRight (1 : ZMod N))
    (fun i => x i * conj (x (i + 1))) (fun i => conj (x i) * x (i - 1))
    (by intro i; simp [mul_comm])
  rw [← hsum]
  simp [forwardCorrelation, map_sum, mul_comm]

/-- The inner-product convention is conj(x) times Hx. -/
theorem hamiltonian_readout (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) :
    complexReadout x (fun p => hamiltonian N t q p.1 p.2) =
      (t : ℂ) * (forwardCorrelation N x + conj (forwardCorrelation N x)) +
        ∑ i, (q i : ℂ) * ((‖x i‖ ^ 2 : ℝ) : ℂ) := by
  rw [readout_eq_sum_mulVec]
  calc
    _ = ∑ i, ((t : ℂ) * (conj (x i) * x (i + 1)) +
        (t : ℂ) * (conj (x i) * x (i - 1)) +
          (q i : ℂ) * ((‖x i‖ ^ 2 : ℝ) : ℂ)) := by
      apply Finset.sum_congr rfl
      intro i _hi
      rw [hamiltonian_mulVec, ← Complex.normSq_eq_norm_sq,
        Complex.normSq_eq_conj_mul_self]
      ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, ← Finset.mul_sum]
      change (t : ℂ) * forwardCorrelation N x +
        (t : ℂ) * (∑ i, conj (x i) * x (i - 1)) + _ = _
      rw [reverseCorrelation_eq_conj]
      ring

theorem hamiltonian_energy (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => hamiltonian N t q p.1 p.2)).re =
      2 * t * (forwardCorrelation N x).re + ∑ i, q i * ‖x i‖ ^ 2 := by
  rw [hamiltonian_readout]
  simp only [Complex.add_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.conj_re, Complex.conj_im, Complex.re_sum, zero_mul, sub_zero]
  ring

theorem hamiltonian_readout_im_zero (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => hamiltonian N t q p.1 p.2)).im = 0 :=
  hermitian_readout_im_zero x _ (hamiltonian_hermitian_source N t q)

/-- The existing realification retains the full complex vector, even for signed q. -/
theorem hamiltonian_real_readout (t : ℝ) (q : ZMod N → ℝ) (x : ZMod N → ℂ) :
    GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual.quadraticReadout (realVector x)
      (realSource (fun p => hamiltonian N t q p.1 p.2)) =
        2 * t * (forwardCorrelation N x).re + ∑ i, q i * ‖x i‖ ^ 2 := by
  rw [real_readout, hamiltonian_energy]

theorem hamiltonian_sub (t : ℝ) (q r : ZMod N → ℝ) :
    hamiltonian N t q - hamiltonian N t r =
      Matrix.diagonal (fun i => ((q i - r i : ℝ) : ℂ)) := by
  ext i j
  by_cases h : i = j
  · subst j
    simp [hamiltonian, Matrix.diagonal_apply]
  · simp [hamiltonian, Matrix.diagonal_apply, h]

/-- All real coefficients are allowed. The character is an actual arithmetic
Dirichlet character; its real part supplies the real diagonal. -/
def arithmeticPotential (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (u v w : ℝ) (i : ZMod N) : ℝ :=
  u * ArithmeticFunction.vonMangoldt (m i) +
    v * Real.log (UniqueFactorizationMonoid.radical (m i) : ℝ) +
      w * (χ (m i : ZMod level)).re

def arithmeticHamiltonian (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) : Matrix (ZMod N) (ZMod N) ℂ :=
  hamiltonian N t (arithmeticPotential N level χ m u v w)

theorem arithmeticHamiltonian_isHermitian (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) :
    (arithmeticHamiltonian N level χ m t u v w).IsHermitian :=
  hamiltonian_isHermitian N t _

theorem arithmeticHamiltonian_mulVec (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) (x : ZMod N → ℂ) (i : ZMod N) :
    (arithmeticHamiltonian N level χ m t u v w).mulVec x i =
      (t : ℂ) * (x (i + 1) + x (i - 1)) +
        (arithmeticPotential N level χ m u v w i : ℂ) * x i :=
  hamiltonian_mulVec N t _ x i

theorem arithmeticHamiltonian_energy (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => arithmeticHamiltonian N level χ m t u v w p.1 p.2)).re =
      2 * t * (forwardCorrelation N x).re +
        ∑ i, arithmeticPotential N level χ m u v w i * ‖x i‖ ^ 2 :=
  hamiltonian_energy N t _ x

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
