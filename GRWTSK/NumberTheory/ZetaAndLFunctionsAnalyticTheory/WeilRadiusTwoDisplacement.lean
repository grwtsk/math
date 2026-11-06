/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualSourceComparison

/-!
# Displacement of the literal radius-two odd core

The distinct-mode gamma and prime entries share a divided-difference
denominator. Conjugating by the alternating sine signs exposes two real
source vectors in the displacement by the squared mode numbers. The
identity applies to every finite compression of the physical core, with
its literal diagonal and shift. The rank-two displacement is a standard
structured matrix representation. Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDisplacement

open Matrix
open LowSchur OddRootProjection OddOutputTrace OddPrimeRow
open OddBoundarySignalBounds OddResidualSourceComparison

/-- The common signed boundary and arithmetic source in the divided difference. -/
def displacementSignal (n : ℕ) : ℝ :=
  -(n : ℝ) * boundarySignal 2 n - (2 / Real.pi) * primeSignal 2 (n : ℝ)

/-- Conjugation of the shifted physical core by the alternating sine signs. -/
def parityCoreEntry (m n : ℕ) : ℝ :=
  (-1 : ℝ) ^ (m + n) * (literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0))

/-- The entry displacement keeps the literal off-diagonal signs and vanishes
on the diagonal. -/
theorem parityCoreEntry_displacement {m n : ℕ} (hm : 0 < m) (hn : 0 < n) :
    ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) * parityCoreEntry m n =
      (m : ℝ) * displacementSignal n - (n : ℝ) * displacementSignal m := by
  by_cases hmn : m = n
  · subst n
    simp
  · have hCast : (m : ℝ) ≠ n := by exact_mod_cast hmn
    have hD : (m : ℝ) ^ 2 - (n : ℝ) ^ 2 ≠ 0 := by
      rw [show (m : ℝ) ^ 2 - (n : ℝ) ^ 2 = ((m : ℝ) - n) * ((m : ℝ) + n) by ring]
      exact mul_ne_zero (sub_ne_zero.mpr hCast) (by positivity)
    have hSign : (((-1 : ℝ) ^ (m + n)) ^ 2) = 1 := by
      rw [← pow_mul, Nat.mul_comm (m + n) 2, pow_mul]
      norm_num
    unfold parityCoreEntry literalCoreEntry
    rw [ite_eq_right hmn, sub_zero, sineArchimedeanEntry_eq_boundary 2 (by norm_num) hm hn hmn,
      prime_shift_sum_off_diagonal 2 m n (by norm_num) hm hn hmn]
    unfold archimedeanOffDiagonal oddPrimeRow primeRow
    calc
      _ = (((-1 : ℝ) ^ (m + n)) ^ 2) *
          ((m : ℝ) * displacementSignal n - (n : ℝ) * displacementSignal m) := by
        unfold displacementSignal
        field_simp [hD, Real.pi_ne_zero]
        ring
      _ = _ := by rw [hSign, one_mul]

/-- A finite compression along a choice of positive sine modes. -/
def parityCoreMatrix {ι : Type*} (mode : ι → ℕ) : Matrix ι ι ℝ :=
  fun i j => parityCoreEntry (mode i) (mode j)

/-- The squared-mode displacement is the difference of two outer products. -/
theorem parityCoreMatrix_displacement {ι : Type*} [Fintype ι] [DecidableEq ι]
    (mode : ι → ℕ) (hmode : ∀ i, 0 < mode i) :
    let D := Matrix.diagonal (fun i => ((mode i : ℕ) : ℝ) ^ 2)
    let v := fun i => ((mode i : ℕ) : ℝ)
    let u := fun i => displacementSignal (mode i)
    D * parityCoreMatrix mode - parityCoreMatrix mode * D = vecMulVec v u - vecMulVec u v := by
  dsimp only
  ext i j
  simp only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal,
    parityCoreMatrix, Matrix.vecMulVec_apply]
  rw [mul_comm (parityCoreEntry (mode i) (mode j)), ← sub_mul]
  simpa only [mul_comm (displacementSignal (mode i))] using
    parityCoreEntry_displacement (hmode i) (hmode j)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDisplacement
