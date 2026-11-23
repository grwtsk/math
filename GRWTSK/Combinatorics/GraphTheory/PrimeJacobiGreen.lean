/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Matrix.Block
import Mathlib.Basic.Real.Basic
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic.NormNum

/-!
# Zero-energy Green matrices of even Jacobi sections

Number even and odd sites separately, starting at zero. The block from
odd to even sites is lower bidiagonal. Solving its rows successively
defines a single array whose leading squares invert all finite sections.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGreen

variable {𝕜 : Type*} [Field 𝕜]

/-- The block from odd sites to even sites of a path with edge weights `a`. -/
def lowerBlock (a : ℕ → 𝕜) (m : ℕ) : Matrix (Fin m) (Fin m) 𝕜 :=
  fun i k => (if k = i then a (2 * i.val) else 0) +
    if 0 < i.val then
      if k = ⟨i.val - 1, Nat.lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩
      then a (2 * (i.val - 1) + 1) else 0
    else 0

/-- Forward substitution with a unit source in column `j`. -/
def greenEntry (a : ℕ → 𝕜) : ℕ → ℕ → 𝕜
  | 0, j => (if 0 = j then 1 else 0) / a 0
  | k + 1, j =>
    ((if k + 1 = j then 1 else 0) - a (2 * k + 1) * greenEntry a k j) /
      a (2 * (k + 1))

/-- The same Green entries are used at every cutoff. -/
def greenBlock (a : ℕ → 𝕜) (m : ℕ) : Matrix (Fin m) (Fin m) 𝕜 :=
  fun i j => greenEntry a i.val j.val

theorem lowerBlock_mul_greenBlock (a : ℕ → 𝕜) (ha : ∀ k, a (2 * k) ≠ 0) (m : ℕ) :
    lowerBlock a m * greenBlock a m = 1 := by
  ext i j
  obtain ⟨i, hi⟩ := i
  cases i with
  | zero =>
    have h := ha 0
    simp only [Nat.mul_zero] at h
    simp [Matrix.mul_apply, lowerBlock, greenBlock, greenEntry, Matrix.one_apply,
      ite_mul, mul_div_cancel₀ _ h]
    simp [Fin.ext_iff]
  | succ k =>
    simp [Matrix.mul_apply, lowerBlock, greenBlock, Matrix.one_apply,
      add_mul, Finset.sum_add_distrib, ite_mul, greenEntry, mul_div_cancel₀ _ (ha _)]
    simp [Fin.ext_iff]

/-- In parity order the inverse has the transposed Green block on its
upper right and the Green block itself on its lower left. -/
theorem evenSection_inverse (a : ℕ → 𝕜) (ha : ∀ k, a (2 * k) ≠ 0) (m : ℕ) :
    (Matrix.fromBlocks 0 (lowerBlock a m) (lowerBlock a m).transpose 0)⁻¹ =
      Matrix.fromBlocks 0 (greenBlock a m).transpose (greenBlock a m) 0 := by
  have h := lowerBlock_mul_greenBlock a ha m
  have h' := mul_eq_one_comm.mp h
  apply Matrix.inv_eq_right_inv
  rw [Matrix.fromBlocks_multiply]
  simp [h, ← Matrix.transpose_mul, h', Matrix.fromBlocks_one]

/-- Specialization to the successive prime edge weights of the real Jacobi path. -/
theorem prime_evenSection_inverse (m : ℕ) :
    let p : ℕ → ℝ := fun n => Nat.nth Nat.Prime n
    (Matrix.fromBlocks 0 (lowerBlock p m) (lowerBlock p m).transpose 0)⁻¹ =
      Matrix.fromBlocks 0 (greenBlock p m).transpose (greenBlock p m) 0 := by
  apply evenSection_inverse
  intro k
  exact_mod_cast (Nat.prime_nth_prime (2 * k)).ne_zero

/-- The squared Hilbert–Schmidt norm of the four-site inverse is the sum
of the squared entries of its two nonzero blocks. -/
theorem four_site_green_sum :
    2 * ∑ i : Fin 2, ∑ j : Fin 2,
      (greenEntry (fun n => (Nat.nth Nat.Prime n : ℚ)) i.val j.val) ^ 2 = 19 / 25 := by
  norm_num [Fin.sum_univ_two, greenEntry]

/-- Entries in row `i` depend only on edges up to index `2*i`. -/
theorem greenEntry_congr {a b : ℕ → 𝕜} (i j : ℕ)
    (h : ∀ n ≤ 2 * i, a n = b n) : greenEntry a i j = greenEntry b i j := by
  induction i with
  | zero => simp [greenEntry, h 0 (by omega)]
  | succ i ih =>
    simp only [greenEntry]
    rw [h (2 * i + 1) (by omega), h (2 * (i + 1)) (by omega),
      ih (fun n hn => h n (by omega))]

private def sectionPrimes (n : ℕ) : ℕ :=
  [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47].getD n 0

private theorem sectionPrimes_correct (i : Fin 15) :
    Nat.nth Nat.Prime i.val = sectionPrimes i.val := by
  have table : ∀ j : Fin 15, Nat.Prime (sectionPrimes j.val) ∧
      Nat.count Nat.Prime (sectionPrimes j.val) = j.val := by decide +kernel
  simpa only [(table i).2] using Nat.nth_count (table i).1

/-- Exact sixteen-site curvature used in the scale obstruction. The finite
prime table is checked against Mathlib's enumeration by counting primes. -/
theorem sixteen_site_green_sum :
    2 * ∑ i : Fin 8, ∑ j : Fin 8,
      (greenEntry (fun n => (Nat.nth Nat.Prime n : ℚ)) i.val j.val) ^ 2 =
        172553655273874304 / 150028243823119475 := by
  have e (i j : Fin 8) : greenEntry (fun n => (Nat.nth Nat.Prime n : ℚ)) i.val j.val =
      greenEntry (fun n => (sectionPrimes n : ℚ)) i.val j.val := by
    apply greenEntry_congr
    intro n hn
    exact_mod_cast sectionPrimes_correct ⟨n, by omega⟩
  simp_rw [e]
  decide +kernel

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGreen
