/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowIntegerEntries

/-!
# Integer endpoint arithmetic for the radius-two physical entries

The off-diagonal boundary formula rounds to the physical grid before
subtracting the prime divided difference and rounding again. Clearing
positive denominators retains the sign of the frequency difference in
both scalar contributions. On the overlap diagonal the physical shift
is the exact grid value of one half. The scalar pole uses its supplied
signed endpoint directly.

The final identity binds midpoint and radius numerators for arbitrary
supplied scalar tables to the rational radius-two observation recipe.
Scalar soundness and completeness of a concrete packet are separate
premises. The argument clears denominators in the same observation
formula. Independent mathematical review is pending.
-/

open GRWTSK.Algebra.LinearAlgebra
open RationalRealBounds
open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoCandidateEntries RadiusTwoGammaPoleObservations RadiusTwoPrimeObservations
open UnitWindowIntegerEntries (Endpoints decode iMul decode_mul)

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoIntegerEntries

/-- The scalar and physical endpoint denominator. -/
def grid : ℕ := 2^44

private def iPoint (x : ℤ) : Endpoints := (x, x)
private def iSub (a b : Endpoints) : Endpoints := (a.1-b.2, a.2-b.1)
private def iAdd (a b : Endpoints) : Endpoints := (a.1+b.1, a.2+b.2)
private def iScale (x : ℤ) (a : Endpoints) : Endpoints := iMul (iPoint x) a
private def rebase (e : ℕ) (a : Endpoints) : Endpoints := ((e : ℤ)*a.1, (e : ℤ)*a.2)

private theorem decode_iSub (d : ℕ) (a b : Endpoints) :
    decode d (iSub a b) = sub (decode d a) (decode d b) := by
  simp [decode, iSub, sub, add, neg, sub_eq_add_neg, add_div, neg_div]

private theorem decode_iAdd (d : ℕ) (a b : Endpoints) :
    decode d (iAdd a b) = add (decode d a) (decode d b) := by
  simp [decode, iAdd, add, add_div]

private theorem decode_iScale (d e : ℕ) (x : ℤ) (a : Endpoints) :
    decode (d*e) (iScale x a) = scale ((x : ℚ) / (d : ℚ)) (decode e a) := by
  rw [iScale, decode_mul]
  rfl

private theorem decode_rebase (d e : ℕ) (he : 0 < e) (a : Endpoints) :
    decode (e*d) (rebase e a) = decode d a := by
  simp [decode, rebase, mul_div_mul_left _ _ (by exact_mod_cast he.ne' : (e : ℚ) ≠ 0)]

/-- Round signed integer endpoint numerators to the physical grid. -/
def roundInt (d : ℕ) (a : Endpoints) : Endpoints :=
  ((2^44*a.1) / (d : ℤ), - (-(2^44*a.2) / (d : ℤ)))

theorem roundInt_eq (d : ℕ) (a : Endpoints) :
    decode grid (roundInt d a) = round 44 (decode d a) := by
  have hcast (x : ℤ) : (((2 : ℤ)^44*x : ℤ) : ℚ) = (2 : ℚ)^44 * (x : ℚ) := by
    push_cast
    rfl
  have hl : ⌊(2 : ℚ)^44 * ((a.1 : ℚ)/(d : ℚ))⌋ = 2^44*a.1 / (d : ℤ) := by
    rw [← mul_div_assoc, ← hcast, Rat.floor_intCast_div_natCast]
  have hu : ⌈(2 : ℚ)^44 * ((a.2 : ℚ)/(d : ℚ))⌉ = - (-(2^44*a.2) / (d : ℤ)) := by
    rw [← mul_div_assoc, ← hcast, Rat.ceil_intCast_div_natCast]
  simp only [grid, decode, roundInt, RationalRealBounds.round, hl, hu, Nat.cast_pow, Nat.cast_ofNat]

private def gap (m n : ℕ) : ℕ := (max m n)^2 - (min m n)^2
private def direction (m n : ℕ) : ℤ := if n ≤ m then 1 else -1

private theorem gap_pos {m n : ℕ} (h : m ≠ n) : 0 < gap m n := by
  unfold gap
  have hmn : min m n < max m n := by omega
  exact Nat.sub_pos_of_lt (Nat.pow_lt_pow_left hmn (by decide))

private theorem div_diff (m n : ℕ) (q : ℚ) :
    q / ((m : ℚ)^2 - (n : ℚ)^2) = (direction m n : ℚ)*q / (gap m n : ℚ) := by
  by_cases h : n ≤ m
  · simp only [gap, direction, max_eq_left h, min_eq_right h, ite_eq_left h, Int.cast_one, one_mul]
    rw [Nat.cast_sub (Nat.pow_le_pow_left h _), Nat.cast_pow, Nat.cast_pow]
  · have h' : m ≤ n := by omega
    simp only [gap, direction, max_eq_right h', min_eq_left h', ite_eq_right h, Int.cast_neg,
      Int.cast_one, neg_one_mul]
    rw [Nat.cast_sub (Nat.pow_le_pow_left h' _), Nat.cast_pow, Nat.cast_pow,
      neg_div, ← div_neg, neg_sub]

private def piLow : ℕ := 314159265358979323846
private def piHigh : ℕ := 314159265358979323847
private def piGrid : ℕ := piLow*piHigh
private def piDigits : Endpoints := (10^20 * (piLow : ℤ), 10^20 * (piHigh : ℤ))
private def tailGrid : ℕ := 192 * (1024 - 1)^3 * (10^20)^2
private def tailDigits (m n : ℕ) : Endpoints :=
  let p := (piHigh : ℤ)^2 * (m : ℤ) * (n : ℤ)
  (-p, p)

private theorem decode_pi : decode piGrid piDigits = inv (3.14159265358979323846, 3.14159265358979323847) := by
  norm_num [decode, piGrid, piDigits, piLow, piHigh, inv]

/-- Supplied integer numerators of the five physical scalar tables. -/
structure Scalars where
  boundary : ℕ → Endpoints
  gamma : ℕ → Endpoints
  pole : ℕ → Endpoints
  prime : ℕ → Endpoints
  primeDiagonal : ℕ → Endpoints

def Scalars.tables (t : Scalars) : ScalarTables :=
  ⟨archOffDiagonalBoundsFrom 44 1024 (decode grid ∘ t.boundary),
    decode grid ∘ t.gamma, decode grid ∘ t.pole,
    decode grid ∘ t.prime, decode grid ∘ t.primeDiagonal⟩

private def archInt (t : Scalars) (m n : ℕ) : Endpoints :=
  let den := gap m n * grid
  let arch := iScale (direction m n * (-1 : ℤ)^(m+n) * (-(m : ℤ)) * (n : ℤ))
    (iSub (t.boundary n) (t.boundary m))
  roundInt (tailGrid*den) (iAdd (rebase tailGrid arch) (rebase den (tailDigits m n)))

private theorem archInt_eq (t : Scalars) {m n : ℕ} (hmn : m ≠ n) :
    decode grid (archInt t m n) = t.tables.gammaOffDiagonal m n := by
  unfold archInt
  dsimp only
  have hp : 0 < gap m n * grid := Nat.mul_pos (gap_pos hmn) (by decide)
  rw [roundInt_eq, decode_iAdd, decode_rebase _ _ (by decide : 0 < tailGrid),
    mul_comm tailGrid (gap m n * grid), decode_rebase _ _ hp, decode_iScale, decode_iSub]
  simp only [Scalars.tables, archOffDiagonalBoundsFrom, Function.comp_apply]
  apply congrArg (RationalRealBounds.round 44)
  congr 1
  · congr 1
    change _ = (((-1 : ℚ)^(m+n) * (-(m : ℚ) * (n : ℚ))) /
      ((m : ℚ)^2 - (n : ℚ)^2))
    rw [div_diff]
    push_cast
    ring
  · change decode tailGrid (tailDigits m n) =
      (-((3.14159265358979323847 * m / 2) * (3.14159265358979323847 * n / 2) /
        (48 * ((1024 : ℚ) - 1)^3)),
        (3.14159265358979323847 * m / 2) * (3.14159265358979323847 * n / 2) /
        (48 * ((1024 : ℚ) - 1)^3))
    apply Prod.ext <;> norm_num [tailDigits, tailGrid, piHigh, decode] <;> ring

private def primeInt (t : Scalars) (m n : ℕ) : Endpoints :=
  let signal := iSub (iScale m (t.prime n)) (iScale n (t.prime m))
  iScale (direction m n * 2 * (-1 : ℤ)^(m+n)) (iMul piDigits signal)

private theorem primeInt_eq (t : Scalars) (m n : ℕ) :
    decode ((gap m n * piGrid)*grid) (primeInt t m n) =
      primeOffDiagonalBoundsFrom t.tables.prime m n := by
  unfold primeInt
  dsimp only
  rw [mul_assoc, decode_iScale, decode_mul, decode_pi, decode_iSub]
  have hScale (a b : ℕ) : decode grid (iScale a (t.prime b)) =
      scale (a : ℚ) (decode grid (t.prime b)) := by
    simpa only [Nat.one_mul, Int.cast_natCast, Nat.cast_one, div_one] using
      decode_iScale 1 grid (a : ℤ) (t.prime b)
  rw [hScale, hScale]
  change scale _ _ = scale ((2 * (-1 : ℚ)^(m+n)) / ((m : ℚ)^2-(n : ℚ)^2)) _
  rw [div_diff]
  congr 1
  push_cast
  ring

/-- Compose the physical entry, preserving both outward rounding steps. -/
def physicalInt (t : Scalars) (m n : ℕ) : Endpoints :=
  if m = n then
    iAdd (iSub (t.gamma n) (t.primeDiagonal n)) (iPoint (2^43))
  else
    let den := gap m n*piGrid
    roundInt (den*grid) (iSub (rebase den (archInt t m n)) (primeInt t m n))

theorem physicalInt_eq (t : Scalars) (m n : ℕ) :
    decode grid (physicalInt t m n) = physicalBoundsFrom 44 t.tables m n := by
  unfold physicalInt physicalBoundsFrom
  split_ifs with hmn
  · rw [decode_iAdd, decode_iSub]
    have hHalf : decode grid (iPoint (2^43)) = point (1/2) := by
      norm_num [grid, decode, iPoint, point]
    rw [hHalf]
    change add (sub (decode grid (t.gamma n)) (decode grid (t.primeDiagonal n))) (point (1/2))
      = round 44 (add (sub (decode grid (t.gamma n)) (decode grid (t.primeDiagonal n))) (point (1/2)))
    have h := roundInt_eq grid (iAdd (iSub (t.gamma n) (t.primeDiagonal n)) (iPoint (2^43)))
    rw [decode_iAdd, decode_iSub, hHalf] at h
    have hGrid (a : Endpoints) : roundInt grid a = a := by
      obtain ⟨a, b⟩ := a
      change (((2:ℤ)^44*a)/((2:ℤ)^44), -(-((2:ℤ)^44*b)/((2:ℤ)^44))) = (a,b)
      rw [← Int.mul_neg, Int.mul_ediv_cancel_left _ (by decide),
        Int.mul_ediv_cancel_left _ (by decide), neg_neg]
    rwa [hGrid, decode_iAdd, decode_iSub, hHalf] at h
  · rw [roundInt_eq, decode_iSub, decode_rebase _ _ (Nat.mul_pos (gap_pos hmn)
      (by decide : 0 < piGrid)), archInt_eq t hmn, primeInt_eq]

/-- The rectangular physical observation uses trial coordinates with the pole last. -/
def residualInt (t : Scalars) (i : ResidualRows) : Trial → Endpoints
  | .inl j => physicalInt t (65 + i.val) (j.val + 1)
  | .inr _ => t.pole (65 + i.val)

theorem residualInt_eq (t : Scalars) (i : ResidualRows) (j : Trial) :
    decode grid (residualInt t i j) = residualBoundsFrom 44 t.tables i j := by
  rcases j with j | ⟨⟩
  · exact physicalInt_eq t (65 + i.val) (j.val + 1)
  · rfl

/-- Bind serialized midpoint and radius numerators to the supplied-table entries. -/
theorem physical_binding (t : Scalars) (i : ResidualRows) (j : Trial) {c r : ℤ}
    (hc : c = (residualInt t i j).1 + (residualInt t i j).2)
    (hr : r = (residualInt t i j).2 - (residualInt t i j).1) :
    residualCenters 44 t.tables i j = (c : ℚ) / 2^45 ∧
      residualRadii 44 t.tables i j = (r : ℚ) / 2^45 := by
  unfold residualCenters residualRadii
  rw [← residualInt_eq, hc, hr]
  unfold decode grid
  push_cast
  constructor <;> ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoIntegerEntries
