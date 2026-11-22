/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 elaboration, transitive axiom
audit, independent checker, and fresh kernel replay: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiMomentGram
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiParitySquare
import Mathlib.LinearAlgebra.Matrix.Block
import Mathlib.Tactic

/-!
# Arithmetic Krylov frontier and inverse root Hankel determinants

Every operator coefficient here comes from the actual nth prime in
PrimeKnotJacobiArithmetic, not from a zeta zero or Alpöge RH theorem.
Krylov support and its unique outermost path show that the prime-root
Krylov matrix is upper triangular with strictly positive diagonal.
Its determinant and the Gram identity yield a positive Hankel
determinant and an exact THREE-determinant recovery of each prime bond.

In the ratio theorem, each D_k is evaluated on the k-dimensional
prime-Jacobi section; these sections have the same initial prime bonds.
A further finite-section moment-stability theorem is needed to turn
this into one formally specified infinite moment sequence.

This is a source proof candidate, NOT a checked Lean proof, and
does not establish an xi determinant or the Riemann hypothesis.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiKrylovFrontier

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiParitySquare

/-- Exactly the product of the bonds along the unique path 0,...,n. -/
def bondPrefix (n : ℕ) : ℝ := (Finset.range n).prod bond

theorem bondPrefix_zero : bondPrefix 0 = 1 := by
  simp [bondPrefix]

theorem bondPrefix_succ (n : ℕ) :
    bondPrefix (n + 1) = bondPrefix n * bond n := by
  simp [bondPrefix, Finset.prod_range_succ]

theorem bondPrefix_pos (n : ℕ) : 0 < bondPrefix n := by
  unfold bondPrefix
  apply Finset.prod_pos
  intro j _
  exact bond_pos j

/-- Prime adjacency cannot enlarge support by more than one vertex. -/
theorem action_support {N k : ℕ} (f : Fin N → ℝ)
    (hf : ∀ i : Fin N, k < i.val → f i = 0) :
    ∀ i : Fin N, k + 1 < i.val → applyJacobi f i = 0 := by
  intro i hi
  change (∑ j : Fin N, knotWeight i j * f j) = 0
  apply Finset.sum_eq_zero
  intro j _
  by_cases hw : knotWeight i j = 0
  · simp [hw]
  · have hnear := knotWeight_support_successor i j hw
    have hj : k < j.val := by
      rcases hnear with hnear | hnear <;> omega
    simp [hf j hj]

/-- J^n e_0 has no coefficient at an ordinal strictly above n. -/
theorem iterate_root_support (N n : ℕ) :
    ∀ i : Fin N, n < i.val →
      iterateJacobi n (rootVector N) i = 0 := by
  induction n with
  | zero =>
      intro i hi
      change rootVector N i = 0
      have hv : i.val ≠ 0 := by omega
      simp [rootVector, hv]
  | succ n ih =>
      intro i hi
      change applyJacobi (iterateJacobi n (rootVector N)) i = 0
      exact action_support (iterateJacobi n (rootVector N)) ih i (by omega)

/-- The only edge reaching vertex n+1 from an earlier vertex is bond n. -/
theorem frontier_edge (N n : ℕ) (h : n + 1 < N) :
    knotWeight (⟨n + 1, h⟩ : Fin N)
      (⟨n, by omega⟩ : Fin N) = bond n := by
  have hd : Nat.dist (n + 1) n = 1 := by
    unfold Nat.dist
    omega
  have hm : min (n + 1) n = n := by omega
  simp [knotWeight, hd, hm]

/-- Unique monotone outward n-step walk contributes the root frontier. -/
theorem iterate_root_frontier (N n : ℕ) :
    ∀ h : n < N,
      iterateJacobi n (rootVector N) (⟨n, h⟩ : Fin N) =
        bondPrefix n := by
  induction n with
  | zero =>
      intro h
      simp [iterateJacobi, rootVector, bondPrefix]
  | succ n ih =>
      intro h
      have hn : n < N := by omega
      let i : Fin N := ⟨n + 1, h⟩
      let j0 : Fin N := ⟨n, hn⟩
      have hsum :
          (∑ j : Fin N,
            knotWeight i j * iterateJacobi n (rootVector N) j) =
              knotWeight i j0 * iterateJacobi n (rootVector N) j0 := by
        classical
        apply Finset.sum_eq_single j0
        · intro j _ hne
          by_cases hw : knotWeight i j = 0
          · simp [hw]
          · rcases knotWeight_support_successor i j hw with hj | hj
            · have hfar : n < j.val := by
                dsimp [i] at hj
                omega
              simp [iterate_root_support N n j hfar]
            · have heq : j = j0 := by
                apply Fin.ext
                dsimp [i, j0] at hj
                omega
              exact (hne heq).elim
        · intro hnot
          exact (hnot (Finset.mem_univ j0)).elim
      calc
        iterateJacobi (n + 1) (rootVector N) (⟨n + 1, h⟩ : Fin N) =
            ∑ j : Fin N,
              knotWeight i j * iterateJacobi n (rootVector N) j := rfl
        _ = knotWeight i j0 * iterateJacobi n (rootVector N) j0 := hsum
        _ = bond n * bondPrefix n := by
          rw [show knotWeight i j0 = bond n from frontier_edge N n h, ih hn]
        _ = bondPrefix (n + 1) := (bondPrefix_succ n).symm

/-- The arithmetic root Krylov matrix has zero entries below diagonal. -/
theorem krylovMatrix_upper_triangular (N : ℕ) :
    (krylovMatrix N).IsUpperTriangular := by
  intro i j hji
  change iterateJacobi j.val (rootVector N) i = 0
  exact iterate_root_support N j.val i (Fin.lt_iff_val_lt_val.mp hji)

theorem krylovMatrix_diagonal (N : ℕ) (i : Fin N) :
    krylovMatrix N i i = bondPrefix i.val :=
  iterate_root_frontier N i.val i.isLt

/-- Explicit source-prime product, with no eigenvalue parameters. -/
theorem krylovMatrix_det_product (N : ℕ) :
    (krylovMatrix N).det = ∏ i : Fin N, bondPrefix i.val := by
  calc
    (krylovMatrix N).det =
        ∏ i : Fin N, krylovMatrix N i i :=
          Matrix.det_of_isUpperTriangular (krylovMatrix_upper_triangular N)
    _ = ∏ i : Fin N, bondPrefix i.val := by
          apply Finset.prod_congr rfl
          intro i _
          exact krylovMatrix_diagonal N i

/-- All finite true prime-root Hankel determinants are strictly positive. -/
theorem hankelMatrix_det_explicit (N : ℕ) :
    (hankelMatrix N).det = (∏ i : Fin N, bondPrefix i.val) ^ 2 := by
  rw [hankelMatrix_det_square, krylovMatrix_det_product]

theorem hankelMatrix_det_positive (N : ℕ) :
    0 < (hankelMatrix N).det := by
  rw [hankelMatrix_det_explicit]
  apply pow_pos
  apply Finset.prod_pos
  intro i _
  exact bondPrefix_pos i.val

/-- Products over prime-ordinal Krylov frontiers. -/
def prefixKrylovDet (n : ℕ) : ℝ := (Finset.range n).prod bondPrefix

theorem prefixKrylovDet_succ (n : ℕ) :
    prefixKrylovDet (n + 1) = prefixKrylovDet n * bondPrefix n := by
  simp [prefixKrylovDet, Finset.prod_range_succ]

/-- Each determinant uses only its own finite prime-Jacobi section. -/
def primeRootHankelDet (n : ℕ) : ℝ := (hankelMatrix n).det

theorem primeRootHankelDet_eq_prefix (n : ℕ) :
    primeRootHankelDet n = (prefixKrylovDet n) ^ 2 := by
  rw [primeRootHankelDet, hankelMatrix_det_explicit]
  change (∏ i : Fin n, bondPrefix i.val) ^ 2 =
    ((Finset.range n).prod bondPrefix) ^ 2
  rw [Fin.prod_univ_eq_prod_range]

theorem primeRootHankelDet_positive (n : ℕ) :
    0 < primeRootHankelDet n := hankelMatrix_det_positive n

/-- Cross-dimensional determinant recurrence for common prime prefixes. -/
theorem primeRootHankelDet_recurrence (n : ℕ) :
    primeRootHankelDet (n + 2) * primeRootHankelDet n =
      (bond n) ^ 2 * (primeRootHankelDet (n + 1)) ^ 2 := by
  rw [primeRootHankelDet_eq_prefix (n + 2),
      primeRootHankelDet_eq_prefix n,
      primeRootHankelDet_eq_prefix (n + 1)]
  have h1 := prefixKrylovDet_succ n
  have h2 := prefixKrylovDet_succ (n + 1)
  have h3 := bondPrefix_succ n
  have h4 : n + 2 = (n + 1) + 1 := by omega
  rw [h4, h2, h1, h3]
  ring

/-- Every genuine prime bond is the positive root of this exact ratio. -/
theorem bond_sq_from_hankel_determinants (n : ℕ) :
    bond n ^ 2 =
      primeRootHankelDet (n + 2) * primeRootHankelDet n /
        (primeRootHankelDet (n + 1)) ^ 2 := by
  have hne : (primeRootHankelDet (n + 1)) ^ 2 ≠ 0 :=
    pow_ne_zero 2 (ne_of_gt (primeRootHankelDet_positive (n + 1)))
  apply (div_eq_iff hne).2
  exact (primeRootHankelDet_recurrence n).symm

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiKrylovFrontier
