/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowEntryBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowDyadicObservations

/-!
# Integer replay of the radius-one entry comparisons

Every scalar endpoint is decoded from a fixed dyadic grid. The prime
factor uses the same two rational pi endpoints as the analytic entry
recipe. For an off-diagonal entry, use the common positive denominator
formed by the frequency difference, the scalar grid and the reciprocal
pi grid. Signed endpoint products are computed before the common
division. The integer floor and ceiling implement exactly the existing
outward rounding. This is a numerical replay of the existing enclosure
formula. The analytic table proofs and the complete window remain
separate. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries

open GRWTSK.Algebra.LinearAlgebra GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open UnitWindowEntryBounds UnitWindowDyadicObservations

abbrev Endpoints := ℤ × ℤ

def decode (d : ℕ) (a : Endpoints) : Bounds :=
  ((a.1 : ℚ) / (d : ℚ), (a.2 : ℚ) / (d : ℚ))

private def iPoint (x : ℤ) : Endpoints := (x, x)
private def iSub (a b : Endpoints) : Endpoints := (a.1 - b.2, a.2 - b.1)

def iMul (a b : Endpoints) : Endpoints :=
  (min (min (a.1*b.1) (a.2*b.1)) (min (a.1*b.2) (a.2*b.2)),
   max (max (a.1*b.1) (a.2*b.1)) (max (a.1*b.2) (a.2*b.2)))

private def iScale (x : ℤ) (a : Endpoints) : Endpoints := iMul (iPoint x) a

private theorem decode_sub (d : ℕ) (a b : Endpoints) :
    decode d (iSub a b) = sub (decode d a) (decode d b) := by
  simp [decode, iSub, sub, add, neg, sub_eq_add_neg, add_div, neg_div]

theorem decode_mul (d e : ℕ) (a b : Endpoints) :
    decode (d*e) (iMul a b) = mul (decode d a) (decode e b) := by
  have h : 0 ≤ (d : ℚ) * (e : ℚ) := by positivity
  simp [decode, iMul, mul, Int.cast_min, Int.cast_max, min_div_div_right h,
    max_div_div_right h, div_mul_div_comm, min_assoc, max_assoc]

private theorem decode_scale (d e : ℕ) (x : ℤ) (a : Endpoints) :
    decode (d*e) (iScale x a) = scale ((x : ℚ) / (d : ℚ)) (decode e a) := by
  rw [iScale, decode_mul]
  rfl

private def rebase (e : ℕ) (a : Endpoints) : Endpoints := ((e : ℤ)*a.1, (e : ℤ)*a.2)

private theorem decode_rebase (d e : ℕ) (he : 0 < e) (a : Endpoints) :
    decode (e*d) (rebase e a) = decode d a := by
  simp [decode, rebase, mul_div_mul_left _ _ (by exact_mod_cast he.ne' : (e : ℚ) ≠ 0)]

private def grid : ℕ := 2^64
private def piLow : ℕ := 314159265358979323846
private def piHigh : ℕ := 314159265358979323847
private def piGrid : ℕ := piLow * piHigh
private def piNumerators : Endpoints := (10^20 * (piLow : ℤ), 10^20 * (piHigh : ℤ))

private def roundNumerators (d : ℕ) (a : Endpoints) : Endpoints :=
  ((2^48*a.1) / (d : ℤ), - (-(2^48*a.2) / (d : ℤ)))

private theorem roundNumerators_eq (d : ℕ) (a : Endpoints) :
    decode (2^48) (roundNumerators d a) = RationalRealBounds.round 48 (decode d a) := by
  have hcast (x : ℤ) : (((2 : ℤ)^48*x : ℤ) : ℚ) = (2 : ℚ)^48 * (x : ℚ) := by
    push_cast
    rfl
  have hl : ⌊(2 : ℚ)^48 * ((a.1 : ℚ)/(d : ℚ))⌋ = 2^48*a.1 / (d : ℤ) := by
    rw [← mul_div_assoc, ← hcast, Rat.floor_intCast_div_natCast]
  have hu : ⌈(2 : ℚ)^48 * ((a.2 : ℚ)/(d : ℚ))⌉ = - (-(2^48*a.2) / (d : ℤ)) := by
    rw [← mul_div_assoc, ← hcast, Rat.ceil_intCast_div_natCast]
  simp only [decode, roundNumerators, RationalRealBounds.round, hl, hu, Nat.cast_pow,
    Nat.cast_ofNat]

/-- The same scalar endpoint tables with integer numerators on the `2^-64` grid. -/
structure Tables where
  boundary : ℕ → Endpoints
  prime : ℕ → Endpoints
  gamma : ℕ → Endpoints
  primeDiagonal : ℕ → Endpoints
  pole : ℕ → Endpoints

def Tables.physical (t : Tables) : PhysicalTables :=
  ⟨decode grid ∘ t.boundary, decode grid ∘ t.prime, decode grid ∘ t.gamma,
    decode grid ∘ t.primeDiagonal⟩

def Tables.poleBounds (t : Tables) (n : ℕ) : Bounds := decode grid (t.pole n)

private theorem decode_pi :
    decode piGrid piNumerators = inv (3.14159265358979323846, 3.14159265358979323847) := by
  norm_num [decode, piGrid, piNumerators, piLow, piHigh, inv]

private def physicalNumerators (t : Tables) (m n : ℕ) (shift : ℤ) : Endpoints :=
  if m = n then
    roundNumerators grid (iSub (iSub (t.gamma n) (t.primeDiagonal n)) (iPoint (shift*grid)))
  else
    let parity := (-1 : ℤ)^(m+n)
    let diff := m^2-n^2
    let arch := iScale (parity * (-2) * (m : ℤ) * (n : ℤ))
      (iSub (t.boundary n) (t.boundary m))
    let signal := iSub (iScale m (t.prime n)) (iScale n (t.prime m))
    let prime := iScale (parity*2) (iMul piNumerators signal)
    roundNumerators ((piGrid*grid)*diff) (iSub (rebase piGrid arch) prime)

private theorem decode_physicalNumerators (t : Tables) (m n : ℕ) (hmn : n ≤ m) (shift : ℤ) :
    decode (2^48) (physicalNumerators t m n shift) =
      physicalBoundsFrom 48 t.physical m n (shift : ℚ) := by
  unfold physicalNumerators physicalBoundsFrom
  split_ifs with h
  · rw [roundNumerators_eq, decode_sub, decode_sub]
    have hp : decode grid (iPoint (shift*grid)) = point (shift : ℚ) := by
      simp [decode, iPoint, point, grid]
    rw [hp]
    rfl
  · rw [roundNumerators_eq, show (piGrid*grid)*(m^2-n^2) = piGrid*((m^2-n^2)*grid) by ac_rfl,
      decode_sub, decode_rebase _ _ (by norm_num [piGrid, piLow, piHigh])]
    have hDen : ((m^2-n^2 : ℕ) : ℚ) = (m : ℚ)^2 - (n : ℚ)^2 := by
      rw [Nat.cast_sub (Nat.pow_le_pow_left hmn _)]
      push_cast
      rfl
    rw [decode_scale, decode_sub]
    rw [show piGrid*((m^2-n^2)*grid) = (m^2-n^2)*(piGrid*grid) by ac_rfl, decode_scale,
      decode_mul, decode_pi, decode_sub]
    have hSignal (k l : ℕ) :
        decode grid (iScale k (t.prime l)) = scale (k : ℚ) (decode grid (t.prime l)) := by
      simpa using decode_scale 1 grid (k : ℤ) (t.prime l)
    rw [hSignal, hSignal]
    change RationalRealBounds.round 48 (sub _ _) = RationalRealBounds.round 48 (sub
      (scale (((-1 : ℚ)^(m+n) * (-2) * (m : ℚ) * (n : ℚ)) /
        ((m : ℚ)^2-(n : ℚ)^2)) (sub (decode grid (t.boundary n)) (decode grid (t.boundary m))))
      (scale (((-1 : ℚ)^(m+n) * 2) / ((m : ℚ)^2-(n : ℚ)^2))
        (mul (inv (3.14159265358979323846, 3.14159265358979323847))
          (sub (scale (m : ℚ) (decode grid (t.prime n))) (scale (n : ℚ) (decode grid (t.prime m)))))))
    rw [hDen]
    push_cast
    rfl

private def gridFits (center radius : ℤ) (bounds : Endpoints) : Prop :=
  256*(center-radius) ≤ bounds.1 ∧ bounds.2 ≤ 256*(center+radius)

private instance (center radius : ℤ) (bounds : Endpoints) : Decidable (gridFits center radius bounds) :=
  inferInstanceAs (Decidable (256*(center-radius) ≤ bounds.1 ∧ bounds.2 ≤ 256*(center+radius)))

private theorem gridFits_sound {center radius : ℤ} {bounds : Endpoints}
    (h : gridFits center radius bounds) :
    requiredRadius center (decode (2^48) bounds).1 (decode (2^48) bounds).2 ≤ radius := by
  obtain ⟨hl, hu⟩ := h
  have hl' : (256 : ℚ) * ((center : ℚ) - (radius : ℚ)) ≤ (bounds.1 : ℚ) := by exact_mod_cast hl
  have hu' : (bounds.2 : ℚ) ≤ 256 * ((center : ℚ) + (radius : ℚ)) := by exact_mod_cast hu
  apply max_le <;> apply Int.ceil_le.mpr
  · norm_num [decode]
    linarith
  · norm_num [decode]
    linarith

private def ordinaryFits (center radius : ℤ) (bounds : Bounds) : Prop :=
  requiredRadius center bounds.1 bounds.2 ≤ radius

private instance (c r : ℤ) (b : Bounds) : Decidable (ordinaryFits c r b) :=
  inferInstanceAs (Decidable (requiredRadius c b.1 b.2 ≤ r))

/-- Compare a serialized head radius using integer entry arithmetic. -/
def headFits (t : Tables) (c r : ℤ) : Head → Head → Prop
  | .inl i, .inl j => gridFits c r
    (physicalNumerators t (max i.val j.val + 1) (min i.val j.val + 1) (-1))
  | .inl i, .inr _ => ordinaryFits c r (t.poleBounds (i.val + 1))
  | .inr _, .inl j => ordinaryFits c r (t.poleBounds (j.val + 1))
  | .inr _, .inr _ => ordinaryFits c r (point (1/2))

instance (t : Tables) (c r : ℤ) (i j : Head) : Decidable (headFits t c r i j) := by
  cases i <;> cases j <;> unfold headFits <;> infer_instance

theorem headFits_sound {t : Tables} {c r : ℤ} {i j : Head} (h : headFits t c r i j) :
    requiredRadius c (headBoundsFrom 48 t.physical t.poleBounds i j).1
      (headBoundsFrom 48 t.physical t.poleBounds i j).2 ≤ r := by
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩
  · have h' := gridFits_sound h
    have hOrder : min i.val j.val + 1 ≤ max i.val j.val + 1 :=
      Nat.succ_le_succ ((min_le_left _ _).trans (le_max_left _ _))
    rw [decode_physicalNumerators t _ _ hOrder] at h'
    simpa [headBoundsFrom] using h'
  all_goals exact h

/-- Compare a serialized finite residual radius using integer entry arithmetic. -/
def residualFits (t : Tables) (c r : ℤ) (i : Observed) : Head → Prop
  | .inl j => gridFits c r (physicalNumerators t (256 + 1 + i.val) (j.val + 1) 0)
  | .inr _ => ordinaryFits c r (t.poleBounds (256 + 1 + i.val))

instance (t : Tables) (c r : ℤ) (i : Observed) (j : Head) :
    Decidable (residualFits t c r i j) := by
  cases j <;> unfold residualFits <;> infer_instance

theorem residualFits_sound {t : Tables} {c r : ℤ} {i : Observed} {j : Head}
    (h : residualFits t c r i j) :
    requiredRadius c (residualBoundsFrom 48 t.physical t.poleBounds i j).1
      (residualBoundsFrom 48 t.physical t.poleBounds i j).2 ≤ r := by
  rcases j with j | ⟨⟩
  · have h' := gridFits_sound h
    have hOrder : j.val + 1 ≤ 256 + 1 + i.val := by have := j.isLt; omega
    rw [decode_physicalNumerators t _ _ hOrder] at h'
    simpa [residualBoundsFrom] using h'
  · exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerEntries
