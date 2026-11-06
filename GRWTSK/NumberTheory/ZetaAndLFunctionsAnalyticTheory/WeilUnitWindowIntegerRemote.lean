/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowRemoteBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowIntegerEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowBoundedPacket

/-!
# Integer comparison for complete remote-matrix enclosures

Retain each outward rational interval with an uncancelled common positive
denominator. Interpret the same signed trace, tail and remainder recipe
using integer cross-products. Compare the resulting endpoints to the
serialized dyadic observation by multiplying through the denominator.

This is an exact replay of the interval comparison. The source theorem
for the remote matrix remains separate. Independent mathematical review
is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerRemote

open GRWTSK.Algebra.LinearAlgebra
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open UnitWindowRemoteBounds UnitWindowIntegerEntries UnitWindowDyadicObservations

/-- Exact endpoints with a common denominator, without gcd normalization. -/
structure RawBounds where
  numerators : Endpoints
  denominator : ℕ
  positive : 0 < denominator

def RawBounds.value (b : RawBounds) : Bounds := decode b.denominator b.numerators

private def RawBounds.add (a b : RawBounds) : RawBounds :=
  ⟨((b.denominator : ℤ) * a.numerators.1 + (a.denominator : ℤ) * b.numerators.1,
     (b.denominator : ℤ) * a.numerators.2 + (a.denominator : ℤ) * b.numerators.2),
    a.denominator * b.denominator, Nat.mul_pos a.positive b.positive⟩

private theorem RawBounds.value_add (a b : RawBounds) :
    (a.add b).value = RationalRealBounds.add a.value b.value := by
  have ha : (a.denominator : ℚ) ≠ 0 := by exact_mod_cast a.positive.ne'
  have hb : (b.denominator : ℚ) ≠ 0 := by exact_mod_cast b.positive.ne'
  apply Prod.ext <;>
    simp only [RawBounds.add, RawBounds.value, decode, RationalRealBounds.add,
      Int.cast_add, Int.cast_mul, Int.cast_natCast, Nat.cast_mul] <;>
    field_simp [ha, hb]

private def RawBounds.mul (a b : RawBounds) : RawBounds :=
  ⟨iMul a.numerators b.numerators,
    a.denominator * b.denominator, Nat.mul_pos a.positive b.positive⟩

private theorem RawBounds.value_mul (a b : RawBounds) :
    (a.mul b).value = RationalRealBounds.mul a.value b.value :=
  decode_mul _ _ _ _

private def RawBounds.point (q : ℚ) : RawBounds :=
  ⟨(q.num, q.num), q.den, q.den_pos⟩

private theorem RawBounds.value_point (q : ℚ) : (RawBounds.point q).value = RationalRealBounds.point q := by
  simp [RawBounds.point, RawBounds.value, decode, RationalRealBounds.point, Rat.num_div_den]

/-- Transfer exact rational scalar bounds into their common-denominator form. -/
def RawBounds.ofBounds (b : Bounds) : RawBounds :=
  ⟨((b.2.den : ℤ) * b.1.num, (b.1.den : ℤ) * b.2.num),
    b.1.den * b.2.den, Nat.mul_pos b.1.den_pos b.2.den_pos⟩

@[simp] theorem RawBounds.value_ofBounds (b : Bounds) : (RawBounds.ofBounds b).value = b := by
  have h₁ : (b.1.den : ℚ) ≠ 0 := by exact_mod_cast b.1.den_pos.ne'
  have h₂ : (b.2.den : ℚ) ≠ 0 := by exact_mod_cast b.2.den_pos.ne'
  apply Prod.ext
  · change ((↑((b.2.den : ℤ) * b.1.num) : ℚ) / ↑(b.1.den * b.2.den)) = b.1
    push_cast
    rw [mul_comm (b.2.den : ℚ), mul_div_mul_right _ _ h₂, Rat.num_div_den]
  · change ((↑((b.1.den : ℤ) * b.2.num) : ℚ) / ↑(b.1.den * b.2.den)) = b.2
    push_cast
    rw [mul_div_mul_left _ _ h₁, Rat.num_div_den]

/-- Encode the checked scalar and trace inputs once for integer replay. -/
def integerInputs (t : RemoteTables) : RemoteRecipeInputs RawBounds :=
  t.recipe.map RawBounds.ofBounds

@[simp] theorem integerInputs_value (t : RemoteTables) :
    (integerInputs t).map RawBounds.value = t.recipe := by
  unfold integerInputs
  generalize t.recipe = r
  cases r
  simp [RemoteRecipeInputs.map, Function.comp_def]

def remoteNumerators (t : RemoteRecipeInputs RawBounds) (i j : Head) : RawBounds :=
  remoteEntryRecipe RawBounds.add RawBounds.mul RawBounds.point t i j

theorem remoteNumerators_value (t : RemoteRecipeInputs RawBounds) (i j : Head) :
    (remoteNumerators t i j).value = remoteEntryRecipe add mul point (t.map RawBounds.value) i j :=
  remoteEntryRecipe_map _ _ _ _ _ _ _ RawBounds.value_add RawBounds.value_mul
    RawBounds.value_point t i j

/-- Test both endpoint inequalities by multiplying through the positive denominator. -/
def fits (center radius : ℤ) (b : RawBounds) : Prop :=
  (center - radius) * (b.denominator : ℤ) ≤ 2^40 * b.numerators.1 ∧
    2^40 * b.numerators.2 ≤ (center + radius) * (b.denominator : ℤ)

instance (center radius : ℤ) (b : RawBounds) : Decidable (fits center radius b) :=
  inferInstanceAs (Decidable
    ((center - radius) * (b.denominator : ℤ) ≤ 2^40 * b.numerators.1 ∧
      2^40 * b.numerators.2 ≤ (center + radius) * (b.denominator : ℤ)))

theorem fits_sound {center radius : ℤ} {b : RawBounds} (h : fits center radius b) :
    UnitWindowBoundedPacket.covers center radius b.value := by
  obtain ⟨hl, hu⟩ := h
  have hd : 0 < (b.denominator : ℚ) := by exact_mod_cast b.positive
  have hl' : ((center : ℚ) - (radius : ℚ)) * (b.denominator : ℚ) ≤
      (2 : ℚ)^40 * (b.numerators.1 : ℚ) := by exact_mod_cast hl
  have hu' : (2 : ℚ)^40 * (b.numerators.2 : ℚ) ≤
      ((center : ℚ) + (radius : ℚ)) * (b.denominator : ℚ) := by exact_mod_cast hu
  have hL := (le_div_iff₀ hd).2 hl'
  have hU := (div_le_iff₀ hd).2 hu'
  rw [mul_div_assoc] at hL hU
  unfold UnitWindowBoundedPacket.covers requiredRadius
  apply max_le <;> apply Int.ceil_le.mpr
  · change (center : ℚ) - (2 : ℚ)^40 * ((b.numerators.1 : ℚ) / b.denominator) ≤ (radius : ℚ)
    linarith only [hL]
  · change (2 : ℚ)^40 * ((b.numerators.2 : ℚ) / b.denominator) - (center : ℚ) ≤ (radius : ℚ)
    linarith only [hU]

/-- A passing integer check covers the identical source interval. -/
theorem remoteFits_sound {t : RemoteRecipeInputs RawBounds} {source : RemoteTables}
    (ht : t.map RawBounds.value = source.recipe) {i j : Head} {center radius : ℤ}
    (h : fits center radius (remoteNumerators t i j)) :
    UnitWindowBoundedPacket.covers center radius (remoteEntryFrom source i j) := by
  have h' := fits_sound h
  rw [remoteNumerators_value, ht] at h'
  exact h'

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowIntegerRemote
