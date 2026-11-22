/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. New Lean elaboration, independent kernel replay,
transitive axiom audit, and expert review: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic
import Mathlib.Data.Nat.Dist
import Mathlib.Tactic

/-!
# Independent prime Jacobi: exact mirror symmetry and square positivity

The genuine off-diagonal weights are Nat.nth Nat.Prime n. No Riemann
zeta zero, RH proof, arbitrary chosen spectrum, or source-derived
diagonal appears in the construction.

The prime-weighted path is bipartite, with canonical alternation
sigma(n)=(-1)^n. Its adjacency operator J anticommutes with this
involutive grading: J sigma = -sigma J. This is an exact form of the
two-sheet mirror familiar in chiral/bipartite graph theory.

The squared operator J^2 is positive semidefinite:
  <f,J^2 f> = sum_i (J f)_i^2 >= 0.
Equality precisely detects the finite kernel of J, with NO relation
to the signed Weil quadratic form asserted by this positivity.

These unconditional finite-dimensional theorems guide proposed
mirrored semigroups and reject any positive-only graph-operator model
that silently discards the Jacobi operator's negative eigenvalues.

They do not establish a self-adjoint infinite ℓ² closure or
spectral equivalence with zeta-zero ordinates; those are independent
functional-analytic and number-theoretic obligations.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiParitySquare

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic

/-- Canonical even/odd prime-ordinal sheet grading, independent of RH. -/
def alternatingSign {N : ℕ} (i : Fin N) : ℝ :=
  (-1 : ℝ) ^ i.val

theorem alternatingSign_ne_zero {N : ℕ} (i : Fin N) :
    alternatingSign i ≠ 0 :=
  pow_ne_zero _ (by norm_num)

theorem alternatingSign_square_one {N : ℕ} (i : Fin N) :
    (alternatingSign i) * (alternatingSign i) = 1 := by
  simp only [alternatingSign, ← mul_pow]
  norm_num

/-- The ONLY possible nonzero prime bonds join successive ordinals. -/
theorem knotWeight_support_successor {N : ℕ} (i j : Fin N)
    (h : knotWeight i j ≠ 0) :
    i.val + 1 = j.val ∨ j.val + 1 = i.val := by
  have hd : Nat.dist i.val j.val = 1 := by
    by_contra hn
    exact h (by simp [knotWeight, hn])
  unfold Nat.dist at hd
  omega

/-- Across each supported bond, the parity grading reverses sign. -/
theorem alternatingSign_flip {N : ℕ} (i j : Fin N)
    (h : knotWeight i j ≠ 0) :
    alternatingSign i = -alternatingSign j := by
  rcases knotWeight_support_successor i j h with hij | hji
  · rw [← hij]
    simp [alternatingSign, pow_succ]
    ring
  · rw [hji]
    simp [alternatingSign, pow_succ]
    ring

/-- The sign action is an exact involution on ALL finite signals. -/
def twist {N : ℕ} (f : Fin N → ℝ) : Fin N → ℝ :=
  fun i => alternatingSign i * f i

theorem twist_involution {N : ℕ} (f : Fin N → ℝ) :
    twist (twist f) = f := by
  funext i
  change alternatingSign i *
    (alternatingSign i * f i) = f i
  rw [← mul_assoc, alternatingSign_square_one, one_mul]

theorem twist_nonzero_at {N : ℕ} (f : Fin N → ℝ)
    (i : Fin N) (hfi : f i ≠ 0) :
    twist f i ≠ 0 :=
  mul_ne_zero (alternatingSign_ne_zero i) hfi

/-- A general, exact finite anti-commutation equation for the actual
source-prime Jacobi matrix. Candidate graph layers may not silently
erase the negative sheet of this mirror. -/
theorem jacobi_twist_anticommutes {N : ℕ} (f : Fin N → ℝ) :
    applyJacobi (twist f) =
      fun i => -(twist (applyJacobi f) i) := by
  classical
  funext i
  change (∑ j : Fin N,
    knotWeight i j * (alternatingSign j * f j)) =
      -(alternatingSign i * ∑ j : Fin N, knotWeight i j * f j)
  calc
    (∑ j : Fin N,
      knotWeight i j * (alternatingSign j * f j)) =
        ∑ j : Fin N,
          -(alternatingSign i * (knotWeight i j * f j)) := by
      apply Finset.sum_congr rfl
      intro j _
      by_cases hij : knotWeight i j = 0
      · simp [hij]
      · rw [alternatingSign_flip i j hij]
        ring
    _ = -(alternatingSign i * ∑ j : Fin N,
        knotWeight i j * f j) := by
      rw [Finset.mul_sum, Finset.sum_neg_distrib]

/-- A real eigenvector with eigenvalue lambda has a nonzero,
source-defined mirror eigenvector with eigenvalue -lambda. -/
theorem jacobi_mirrored_eigenpair {N : ℕ}
    (f : Fin N → ℝ) (λ : ℝ)
    (hf : ∀ i, applyJacobi f i = λ * f i) :
    ∀ i, applyJacobi (twist f) i = (-λ) * twist f i := by
  intro i
  have hm := congrArg (fun g : Fin N → ℝ => g i)
    (jacobi_twist_anticommutes f)
  calc
    applyJacobi (twist f) i =
        -(twist (applyJacobi f) i) := hm
    _ = (-λ) * twist f i := by
      simp only [twist, hf i]
      ring

/-- The genuine squared source-prime Jacobi operator, not the separate
positive graph Laplacian and not a signed arithmetic Weil form. -/
def squareAction {N : ℕ} (f : Fin N → ℝ) : Fin N → ℝ :=
  applyJacobi (applyJacobi f)

/-- Exact real quadratic form of J squared. -/
def squareEnergy {N : ℕ} (f : Fin N → ℝ) : ℝ :=
  ∑ i : Fin N, f i * squareAction f i

/-- Finite-source operator identity:
    <f,J^2 f> = <Jf,Jf>. -/
theorem squareEnergy_eq_sum_sq {N : ℕ} (f : Fin N → ℝ) :
    squareEnergy f = ∑ i : Fin N, (applyJacobi f i) ^ 2 := by
  calc
    squareEnergy f =
      ∑ i : Fin N, (applyJacobi f i) *
        (applyJacobi f i) := by
      simpa only [squareEnergy, squareAction] using
        (jacobi_action_symmetric f (applyJacobi f)).symm
    _ = ∑ i : Fin N, (applyJacobi f i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- Unconditional positivity for the ACTUAL finite prime Jacobi square. -/
theorem squareEnergy_nonnegative {N : ℕ} (f : Fin N → ℝ) :
    0 ≤ squareEnergy f := by
  rw [squareEnergy_eq_sum_sq]
  exact Finset.sum_nonneg (fun i _ => sq_nonneg (applyJacobi f i))

/-- The null-space of the squared quadratic form is exactly the kernel
of J. This does not claim strict positivity for odd graph sections. -/
theorem squareEnergy_zero_iff_kernel {N : ℕ} (f : Fin N → ℝ) :
    squareEnergy f = 0 ↔ ∀ i : Fin N, applyJacobi f i = 0 := by
  rw [squareEnergy_eq_sum_sq]
  constructor
  · intro h i
    have hzero :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun j (_ : j ∈ (Finset.univ : Finset (Fin N))) =>
          sq_nonneg (applyJacobi f j))).mp h
    have hs := hzero i (Finset.mem_univ i)
    nlinarith
  · intro h
    simp [h]

/-- The square commutes with the parity involution even though the
Jacobi operator itself anticommutes. Thus even and odd source sheets
can evolve independently under any admissible function of J squared. -/
theorem jacobiSquare_twist_commutes {N : ℕ} (f : Fin N → ℝ) :
    squareAction (twist f) = twist (squareAction f) := by
  funext i
  have hfirst := jacobi_twist_anticommutes f
  have hsecond := jacobi_twist_anticommutes (applyJacobi f)
  have hj : applyJacobi (twist f) =
      fun j => -(twist (applyJacobi f) j) := hfirst
  have hlinear_neg (g : Fin N → ℝ) :
      applyJacobi (fun j => -(g j)) =
        fun j => -(applyJacobi g j) := by
    funext j
    simp [applyJacobi, Finset.sum_neg_distrib, mul_neg]
  calc
    squareAction (twist f) i =
        applyJacobi (fun j => -(twist (applyJacobi f) j)) i := by
      simp only [squareAction]
      rw [hj]
    _ = -applyJacobi (twist (applyJacobi f)) i := by
      rw [hlinear_neg]
    _ = twist (squareAction f) i := by
      have hh := congrArg (fun g : Fin N → ℝ => g i) hsecond
      dsimp [squareAction]
      linarith

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiParitySquare
