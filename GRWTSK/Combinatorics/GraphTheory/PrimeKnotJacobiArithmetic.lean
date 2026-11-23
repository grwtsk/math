/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
The earlier source at Git blob 2759dc76c224e3214e8a1c8d9abd054f37edacab
recorded unperformed formal checks. A subsequent Lean 4.34.1 build
found a missing distance import and three failing proofs in that version.
Issue grwtsk/math#1849 records checks of the repaired version.
Independent specialist review: NOT_RUN.
-/
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.NumberTheory.SumPrimeReciprocals
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Matrix.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
# A zero-independent arithmetic Jacobi operator from actual prime knots

Define p_n := Nat.nth Nat.Prime n; the n-th prime is 2,3,5,...
A finite Jacobi section is a REAL SYMMETRIC weighted path graph:
  J(i,j) = p_min(i,j) when Nat.dist i j = 1; zero otherwise.
Its graph adjacency spectrum is determined from the prime data alone.
No Riemann zeta zeros, completed xi coefficients, spectral zero tables,
Alpoge theorem or Lean challenge are imported into this source.

The second operator is the associated positive graph Laplacian.
Its exact Dirichlet energy is nonnegative. A symmetric adjacency
operator and a positive Laplacian are not interchangeable: the
Jacobi adjacency has positive and negative eigenvalues in general.

An infinite Jacobi operator on c_00(N) with offdiagonals p_n is
symmetric. The classical Carleman criterion says it is essentially
self-adjoint if sum_n 1/p_n diverges. The latter divergence follows
from the already pinned Mathlib theorem for prime reciprocals.
THIS FILE DOES NOT FORMALIZE CARLEMAN'S L2 DOMAIN / CLOSURE THEOREM;
that indispensable functional-analytic step is recorded separately.

Even essential self-adjointness does NOT establish that this operator
has zeta zero ordinates as its point spectrum or that it has compact
resolvent. Its source is arithmetic-only, and the spectral bridge
remains an explicit original-source research obligation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic

/-- The genuine n-th arithmetic prime, not a stored zeta zero or a
zero-containing address. -/
def primeAt (n : ℕ) : ℕ := Nat.nth Nat.Prime n

theorem primeAt_prime (n : ℕ) : Nat.Prime (primeAt n) :=
  Nat.prime_nth_prime n

theorem primeAt_pos (n : ℕ) : 0 < primeAt n :=
  (primeAt_prime n).pos

/-- Enumerate the genuine subtype of primes by the actual nth-prime
function; the reverse map is the pinned exact prime counting rank. -/
def primeIndexEquiv : ℕ ≃ Nat.Primes where
  toFun n := ⟨primeAt n, primeAt_prime n⟩
  invFun p := Nat.primeCounting' p.1
  left_inv := by
    intro n
    exact Nat.primeCounting'_nth_eq n
  right_inv := by
    intro p
    apply Subtype.ext
    exact Nat.nth_count (p := Nat.Prime) p.property

/-- The Euler/Erdos reciprocal-prime divergence in the EXACT nth-prime
index used for the Jacobi offdiagonal. Carleman's analytical criterion
can consume this without importing any RH result. -/
theorem not_summable_reciprocal_primeAt :
    ¬ Summable (fun n : ℕ => (1 : ℝ) / (primeAt n : ℝ)) := by
  intro hs
  have hcomp :
      Summable ((fun p : Nat.Primes => (1 : ℝ) / (p : ℝ)) ∘
        primeIndexEquiv) := by
    exact hs
  have hp : Summable (fun p : Nat.Primes => (1 : ℝ) / (p : ℝ)) :=
    primeIndexEquiv.summable_iff.mp hcomp
  exact Nat.Primes.not_summable_one_div hp

/-- The mathematical offdiagonal is an actual prime; no eigenvalues
are supplied as parameters. -/
def bond (n : ℕ) : ℝ := (primeAt n : ℝ)

theorem bond_pos (n : ℕ) : 0 < bond n := by
  unfold bond
  exact_mod_cast primeAt_pos n

theorem bond_reciprocal_not_summable :
    ¬ Summable (fun n : ℕ => (1 : ℝ) / bond n) :=
  not_summable_reciprocal_primeAt

/-- Only consecutive arithmetic prime ORDINALS are connected.
The bond strength is the actual left-hand prime number, hence depends
on arithmetic alone; the graph is undirected. -/
def knotWeight {N : ℕ} (i j : Fin N) : ℝ :=
  if Nat.dist i.val j.val = 1 then
    bond (min i.val j.val)
  else 0

theorem knotWeight_symmetric {N : ℕ} (i j : Fin N) :
    knotWeight i j = knotWeight j i := by
  have hd : Nat.dist i.val j.val = Nat.dist j.val i.val :=
    Nat.dist_comm _ _
  simp only [knotWeight, ← hd, min_comm]

theorem knotWeight_nonneg {N : ℕ} (i j : Fin N) :
    0 ≤ knotWeight i j := by
  unfold knotWeight
  split_ifs with h
  · exact le_of_lt (bond_pos _)
  · exact le_refl 0

theorem knotWeight_self_zero {N : ℕ} (i : Fin N) :
    knotWeight i i = 0 := by
  simp [knotWeight]

/-- A genuine real symmetric prime-weighted tridiagonal matrix.
Its entries do not contain zeta zeros, RH assumptions or spectral data. -/
def jacobiMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => knotWeight i j

/-- Finite self-adjointness in the real symmetric-matrix sense.
A separately defined l2 operator domain is required in infinite rank. -/
theorem jacobiMatrix_transpose (N : ℕ) :
    (jacobiMatrix N).transpose = jacobiMatrix N := by
  ext i j
  exact knotWeight_symmetric j i

/-- The independent finite-dimensional Jacobi action on actual
prime-ordinal signals. -/
def applyJacobi {N : ℕ} (f : Fin N → ℝ) : Fin N → ℝ :=
  fun i => ∑ j : Fin N, knotWeight i j * f j

/-- The finite prime-only Jacobi action is self-adjoint for the
standard REAL dot product. The proof uses exact pairwise symmetry
of actual arithmetic prime weights and a full finite sum swap.
It is not the infinite l2 domain/Carleman closure theorem. -/
theorem jacobi_action_symmetric {N : ℕ}
    (f g : Fin N → ℝ) :
    (∑ i : Fin N, applyJacobi f i * g i) =
      ∑ i : Fin N, f i * applyJacobi g i := by
  classical
  have hswap :
      (∑ i : Fin N, ∑ j : Fin N,
        knotWeight i j * f j * g i) =
      ∑ i : Fin N, ∑ j : Fin N,
        knotWeight i j * f i * g j := by
    calc
      _ = ∑ j : Fin N, ∑ i : Fin N,
          knotWeight i j * f j * g i := by rw [Finset.sum_comm]
      _ = ∑ j : Fin N, ∑ i : Fin N,
          knotWeight j i * f j * g i := by
            apply Finset.sum_congr rfl
            intro j _
            apply Finset.sum_congr rfl
            intro i _
            rw [knotWeight_symmetric i j]
      _ = ∑ i : Fin N, ∑ j : Fin N,
          knotWeight i j * f i * g j := rfl
  calc
    (∑ i : Fin N, applyJacobi f i * g i) =
        ∑ i : Fin N, ∑ j : Fin N,
          knotWeight i j * f j * g i := by
            unfold applyJacobi
            simp_rw [Finset.sum_mul]
    _ = ∑ i : Fin N, ∑ j : Fin N,
          knotWeight i j * f i * g j := hswap
    _ = ∑ i : Fin N, f i * applyJacobi g i := by
          unfold applyJacobi
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring

/-- Every constant vector is annihilated by the GRAPH LAPLACIAN, not
by the Jacobi adjacency operator. -/
def applyLaplacian {N : ℕ} (f : Fin N → ℝ) : Fin N → ℝ :=
  fun i => ∑ j : Fin N, knotWeight i j * (f i - f j)

theorem laplacian_constant_zero {N : ℕ} (c : ℝ) :
    applyLaplacian (fun _ : Fin N => c) = (0 : Fin N → ℝ) := by
  funext i
  simp [applyLaplacian]

/-- The precise, unnormalized Dirichlet form of the prime knot path.
The factor 1/2 needed to identify <f,Lf> is not silently dropped. -/
def graphEnergy {N : ℕ} (f : Fin N → ℝ) : ℝ :=
  ∑ i : Fin N, ∑ j : Fin N,
    knotWeight i j * (f i - f j) ^ 2

/-- Independent unconditional positivity of the actual graph
Dirichlet form, from actual prime weights and real squares. -/
theorem graphEnergy_nonneg {N : ℕ} (f : Fin N → ℝ) :
    0 ≤ graphEnergy f := by
  classical
  unfold graphEnergy
  apply Finset.sum_nonneg
  intro i _
  apply Finset.sum_nonneg
  intro j _
  exact mul_nonneg (knotWeight_nonneg i j) (sq_nonneg _)

/-- Vanishing of the energy for a constant signal is exact. -/
theorem graphEnergy_constant_zero {N : ℕ} (c : ℝ) :
    graphEnergy (fun _ : Fin N => c) = 0 := by
  simp [graphEnergy]

/-- A symmetric bilinear Dirichlet form that can be used by source-
preserving graph-sandwich and heat-system layers independently of RH. -/
def graphPairing {N : ℕ} (f g : Fin N → ℝ) : ℝ :=
  ∑ i : Fin N, ∑ j : Fin N,
    knotWeight i j * (f i - f j) * (g i - g j)

theorem graphPairing_symmetric {N : ℕ} (f g : Fin N → ℝ) :
    graphPairing f g = graphPairing g f := by
  classical
  unfold graphPairing
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem graphPairing_self_nonneg {N : ℕ} (f : Fin N → ℝ) :
    0 ≤ graphPairing f f := by
  have heq : graphPairing f f = graphEnergy f := by
    classical
    unfold graphPairing graphEnergy
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [heq]
  exact graphEnergy_nonneg f

/-- The arithmetic continuant determined by the prime-ordinal
Jacobi three-term recurrence. A future determinant theorem must
establish that it equals det(λ I - J_N); the recurrence is already
the correct exact target and contains NO zeta-zero input. -/
def continuant (height : ℝ) : ℕ → ℝ
  | 0 => 1
  | 1 => height
  | n + 2 =>
      height * continuant height (n + 1) -
        (bond n) ^ 2 * continuant height n

theorem continuant_one (height : ℝ) :
    continuant height 1 = height := rfl

/-- For every ODD rank the arithmetic continuant has an exact
zero at spectral parameter zero (a bipartite graph obstruction). -/
theorem continuant_odd_zero (k : ℕ) :
    continuant 0 (2 * k + 1) = 0 := by
  induction k with
  | zero =>
      norm_num [continuant]
  | succ k ih =>
      have hk : 2 * (k + 1) + 1 = (2 * k + 1) + 2 := by omega
      rw [hk]
      simp [continuant, ih]

/-- Even ranks give a nonzero, signed prime-bond product at zero. -/
theorem continuant_even_step (k : ℕ) :
    continuant 0 (2 * (k + 1)) =
      -((bond (2 * k)) ^ 2) * continuant 0 (2 * k) := by
  have hk : 2 * (k + 1) = (2 * k) + 2 := by omega
  rw [hk]
  simp [continuant]

/-- Exact even-rank nonvanishing in the scalar Jacobi recurrence,
using only that every true arithmetic prime bond is positive. -/
theorem continuant_even_ne_zero (k : ℕ) :
    continuant 0 (2 * k) ≠ 0 := by
  induction k with
  | zero =>
      norm_num [continuant]
  | succ k ih =>
      rw [continuant_even_step]
      exact mul_ne_zero (neg_ne_zero.mpr (pow_ne_zero 2 (bond_pos (2 * k)).ne')) ih

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
