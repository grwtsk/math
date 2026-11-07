/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowIntegerEntries

/-!
# Integer grids for the radius-two physical residual

The scalar tables store exact interval endpoints on the `2^-44` grid.
The integer operations preserve the signs of the two off-diagonal
contributions, the cubic archimedean tail, and both outward roundings.
The midpoint and radius numerators use the `2^-45` grid. On trial
overlap the diagonal includes the physical shift `+1/2` in the entry.
The signed pole is taken from its own table.

Beyond trial support every physical column has a strictly smaller
mode. The tail evaluator uses that orientation, a parity test and
exact cancellation of the positive common grid. The entry and row
equalities preserve the same endpoint recipe. Comparing the stored
scalar intervals with the literal analytic source is a separate
requirement. Independent mathematical review is pending.
-/

set_option autoImplicit false

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoCandidateEntries RadiusTwoGammaPoleObservations RadiusTwoPrimeObservations
open UnitWindowIntegerEntries (Endpoints decode iMul decode_mul)

set_option maxHeartbeats 350000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid

/-- The scalar endpoint denominator. -/
def grid : ℕ := 2^44

def iPoint (x : ℤ) : Endpoints := (x, x)
def iSub (a b : Endpoints) : Endpoints := (a.1-b.2, a.2-b.1)
def iAdd (a b : Endpoints) : Endpoints := (a.1+b.1, a.2+b.2)
def iScale (x : ℤ) (a : Endpoints) : Endpoints := iMul (iPoint x) a
def rebase (e : ℕ) (a : Endpoints) : Endpoints := ((e : ℤ)*a.1, (e : ℤ)*a.2)

theorem decode_iSub (d : ℕ) (a b : Endpoints) :
    decode d (iSub a b) = sub (decode d a) (decode d b) := by
  simp [decode, iSub, sub, add, neg, sub_eq_add_neg, add_div, neg_div]

theorem decode_iAdd (d : ℕ) (a b : Endpoints) :
    decode d (iAdd a b) = add (decode d a) (decode d b) := by
  simp [decode, iAdd, add, add_div]

theorem decode_iScale (d e : ℕ) (x : ℤ) (a : Endpoints) :
    decode (d*e) (iScale x a) = scale ((x : ℚ) / (d : ℚ)) (decode e a) := by
  rw [iScale, decode_mul]
  rfl

theorem decode_rebase (d e : ℕ) (he : 0 < e) (a : Endpoints) :
    decode (e*d) (rebase e a) = decode d a := by
  simp [decode, rebase, mul_div_mul_left _ _ (by exact_mod_cast he.ne' : (e : ℚ) ≠ 0)]

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
  simp only [grid, decode, roundInt, GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.round, hl, hu, Nat.cast_pow, Nat.cast_ofNat]

def gap (m n : ℕ) : ℕ := (max m n)^2 - (min m n)^2
def direction (m n : ℕ) : ℤ := if n ≤ m then 1 else -1

theorem gap_pos {m n : ℕ} (h : m ≠ n) : 0 < gap m n := by
  unfold gap
  have hmn : min m n < max m n := by omega
  exact Nat.sub_pos_of_lt (Nat.pow_lt_pow_left hmn (by decide))

theorem div_diff (m n : ℕ) (q : ℚ) :
    q / ((m : ℚ)^2 - (n : ℚ)^2) = (direction m n : ℚ)*q / (gap m n : ℚ) := by
  by_cases h : n ≤ m
  · simp only [gap, direction, max_eq_left h, min_eq_right h, ite_eq_left h, Int.cast_one, one_mul]
    rw [Nat.cast_sub (Nat.pow_le_pow_left h _), Nat.cast_pow, Nat.cast_pow]
  · have h' : m ≤ n := by omega
    simp only [gap, direction, max_eq_right h', min_eq_left h', ite_eq_right h, Int.cast_neg,
      Int.cast_one, neg_one_mul]
    rw [Nat.cast_sub (Nat.pow_le_pow_left h' _), Nat.cast_pow, Nat.cast_pow,
      neg_div, ← div_neg, neg_sub]

def piLow : ℕ := 314159265358979323846
def piHigh : ℕ := 314159265358979323847
def piGrid : ℕ := piLow*piHigh
def piDigits : Endpoints := (10^20 * (piLow : ℤ), 10^20 * (piHigh : ℤ))
def tailGrid : ℕ := 192 * (1024 - 1)^3 * (10^20)^2
def tailDigits (m n : ℕ) : Endpoints :=
  let p := (piHigh : ℤ)^2 * (m : ℤ) * (n : ℤ)
  (-p, p)

theorem decode_pi : decode piGrid piDigits = inv (3.14159265358979323846, 3.14159265358979323847) := by
  norm_num [decode, piGrid, piDigits, piLow, piHigh, inv]

/-- Stored scalar endpoint functions, with one column for the signed pole. -/
structure Scalars where
  boundary : ℕ → Endpoints
  gamma : ℕ → Endpoints
  pole : ℕ → Endpoints
  prime : ℕ → Endpoints
  primeDiagonal : ℕ → Endpoints

/-- Decode the scalar endpoints into the rational physical observation tables. -/
def Scalars.tables (t : Scalars) : ScalarTables :=
  ⟨archOffDiagonalBoundsFrom 44 1024 (decode grid ∘ t.boundary),
    decode grid ∘ t.gamma, decode grid ∘ t.pole,
    decode grid ∘ t.prime, decode grid ∘ t.primeDiagonal⟩

def archInt (t : Scalars) (m n : ℕ) : Endpoints :=
  let den := gap m n * grid
  let arch := iScale (direction m n * (-1 : ℤ)^(m+n) * (-(m : ℤ)) * (n : ℤ))
    (iSub (t.boundary n) (t.boundary m))
  roundInt (tailGrid*den) (iAdd (rebase tailGrid arch) (rebase den (tailDigits m n)))

theorem archInt_eq (t : Scalars) {m n : ℕ} (hmn : m ≠ n) :
    decode grid (archInt t m n) = t.tables.gammaOffDiagonal m n := by
  unfold archInt
  dsimp only
  have hp : 0 < gap m n * grid := Nat.mul_pos (gap_pos hmn) (by decide)
  rw [roundInt_eq, decode_iAdd, decode_rebase _ _ (by decide : 0 < tailGrid),
    mul_comm tailGrid (gap m n * grid), decode_rebase _ _ hp, decode_iScale, decode_iSub]
  simp only [Scalars.tables, archOffDiagonalBoundsFrom, Function.comp_apply]
  apply congrArg (GRWTSK.Algebra.LinearAlgebra.RationalRealBounds.round 44)
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

def primeInt (t : Scalars) (m n : ℕ) : Endpoints :=
  let signal := iSub (iScale m (t.prime n)) (iScale n (t.prime m))
  iScale (direction m n * 2 * (-1 : ℤ)^(m+n)) (iMul piDigits signal)

theorem primeInt_eq (t : Scalars) (m n : ℕ) :
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

/-- Integer endpoints for the physical trial coordinates and signed pole. -/
def residualInt (t : Scalars) (i : ResidualRows) : Trial → Endpoints
  | .inl j => physicalInt t (65 + i.val) (j.val + 1)
  | .inr _ => t.pole (65 + i.val)

/-- The integer residual endpoints decode to the exact rational recipe. -/
theorem residualInt_eq (t : Scalars) (i : ResidualRows) (j : Trial) :
    decode grid (residualInt t i j) = residualBoundsFrom 44 t.tables i j := by
  rcases j with j | ⟨⟩
  · exact physicalInt_eq t (65 + i.val) (j.val + 1)
  · rfl

/-- The midpoint and radius numerators represent the same residual enclosure. -/
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


/-- The last stored column is the scalar pole. -/
def trialSlot (j : Fin 513) : Trial :=
  if h : j.val < 512 then .inl ⟨j.val,h⟩ else .inr ()

def checkEntry (t : Scalars) (i : ResidualRows) (j : Trial) (c r : ℤ) : Bool :=
  let d := residualInt t i j
  (c == d.1+d.2) && (r == d.2-d.1)

/-- Check an entire row on the midpoint and radius grid. -/
def checkRow (t : Scalars) (i : ResidualRows) (c r : Fin 513 → ℤ) : Bool :=
  (List.finRange 513).all (fun j => checkEntry t i (trialSlot j) (c j) (r j))

/-- A checked row identifies every stored entry and its radius. -/
theorem checkRow_sound (t : Scalars) (i : ResidualRows) (c r : Fin 513 → ℤ)
    (h : checkRow t i c r = true) (j : Fin 513) :
    residualCenters 44 t.tables i (trialSlot j) = (c j : ℚ) / 2^45 ∧
    residualRadii 44 t.tables i (trialSlot j) = (r j : ℚ) / 2^45 := by
  have hj := (List.all_eq_true.mp h) j (List.mem_finRange j)
  simp only [checkEntry, Bool.and_eq_true, beq_iff_eq] at hj
  exact physical_binding t i (trialSlot j) hj.1 hj.2

namespace FastTail

private def parity (m n : ℕ) : ℤ := if (m+n)%2 = 0 then 1 else -1

private theorem parity_eq (m n : ℕ) : parity m n = (-1 : ℤ)^(m+n) := by
  simp only [parity, neg_one_pow_eq_ite, Nat.even_iff]

private def pointScale (x : ℤ) (a : Endpoints) : Endpoints :=
  let u := x*a.1
  let v := x*a.2
  (min u v, max u v)

private theorem pointScale_eq (x : ℤ) (a : Endpoints) : pointScale x a = iScale x a := by
  simp only [pointScale, iScale, iMul, iPoint, min_self, max_self]

private def directedRound (d : ℕ) (a : Endpoints) : Endpoints :=
  (a.1 / (d : ℤ), -(-a.2 / (d : ℤ)))

private theorem directedRound_eq (d : ℕ) (a : Endpoints) :
    directedRound d a = roundInt (d*grid) a := by
  have h : (0 : ℤ) < 2^44 := by norm_num
  simp only [directedRound, roundInt, grid, Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat,
    ← Int.mul_neg, Int.mul_comm (d : ℤ), Int.mul_ediv_mul_of_pos _ _ h]

/-- Compute a physical entry strictly beyond its trial-column mode. -/
def entry (m n : ℕ) (boundaryM boundaryN primeM primeN : Endpoints) : Endpoints :=
  let delta := m^2 - n^2
  let sign := parity m n
  let arch := pointScale (-sign * (m : ℤ) * (n : ℤ)) (iSub boundaryN boundaryM)
  let tailDen := delta * grid
  let archRounded := directedRound (tailGrid * delta)
    (iAdd (rebase tailGrid arch) (rebase tailDen (tailDigits m n)))
  let signal := iSub (pointScale m primeN) (pointScale n primeM)
  let prime := pointScale (2*sign) (iMul piDigits signal)
  let den := delta*piGrid
  directedRound den (iSub (rebase den archRounded) prime)

theorem entry_eq (t : Scalars) {m n : ℕ} (h : n < m) :
    entry m n (t.boundary m) (t.boundary n) (t.prime m) (t.prime n) =
      physicalInt t m n := by
  simp only [entry, physicalInt, archInt, primeInt, ite_eq_right (Nat.ne_of_lt h).symm,
    direction, ite_eq_left h.le, gap, max_eq_left h.le, min_eq_right h.le,
    directedRound_eq, pointScale_eq, parity_eq, one_mul, mul_neg, neg_mul,
    mul_assoc]

private def check (d : Endpoints) (c r : ℤ) : Bool :=
  (c == d.1+d.2) && (r == d.2-d.1)

/-- Check all trial columns and the scalar pole on a tail row. -/
def checkRow (t : Scalars) (i : ResidualRows) (c r : Fin 513 → ℤ) : Bool :=
  let m := 65+i.val
  let b := t.boundary m
  let p := t.prime m
  (List.finRange 513).all (fun j =>
    let n := j.val+1
    let d := if j.val < 512 then entry m n b (t.boundary n) p (t.prime n) else t.pole m
    check d (c j) (r j))

theorem checkRow_eq (t : Scalars) (i : ResidualRows) (h : 512 < 65+i.val)
    (c r : Fin 513 → ℤ) :
    checkRow t i c r = RadiusTwoPhysicalGrid.checkRow t i c r := by
  unfold checkRow RadiusTwoPhysicalGrid.checkRow
  refine congrArg (fun f : Fin 513 → Bool => (List.finRange 513).all f) ?_
  funext j
  unfold check RadiusTwoPhysicalGrid.checkEntry trialSlot
  by_cases hj : j.val < 512
  · simp only [ite_eq_left hj, dite_eq_left hj, residualInt]
    rw [entry_eq t (by omega : j.val+1 < 65+i.val)]
  · simp only [ite_eq_right hj, dite_eq_right hj, residualInt]

end FastTail

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid
