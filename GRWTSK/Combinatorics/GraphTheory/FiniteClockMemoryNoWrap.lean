/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Native Lean elaboration, kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.FiniteClockMemoryVoltage
import Mathlib

/-!
# Bounded-word recovery from the actual clock-memory voltage

This file discharges the outstanding source-memory *no-wrap injection* obligation
for the `ClockMemoryVoltage.wordVoltage` group already constructed in
`FiniteClockMemoryVoltage.lean`. In particular it proves the separating-voltage
premise consumed by `VoltageCover.distinct_endpoints` for any bounded positive
bouquet-word inventory, without defining a surrogate code or an assumed oracle.

The proof uses the actual recursive lamp formula, a support bound, and the
injectivity of casting naturals strictly below the modulus to `ZMod N`.
For lengths below N, the clock recovers length and the lamp at clock zero
recovers the head letter. Group cancellation then recovers the remainder.

The same arguments do NOT prove separation of reduced free-group words after
inverse-edge cancellation, or physical/Weil consequences. The explicit no-wrap
hypothesis is not discarded. All source identities are retained.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace ClockMemoryVoltage

universe u v
variable {A : Type u} [DecidableEq A] {N : Nat}

/-- An outside clock slot contains no source-memory contribution. This holds
    without assuming the modulus is positive: it is a formal support fact. -/
theorem sourceMemory_zero_outside (xs : List A) (slot : ZMod N) (b : A)
    (outside : ∀ j : Nat, j < xs.length → slot ≠ (j : ZMod N)) :
    sourceMemory (N := N) xs slot b = 0 := by
  induction xs generalizing slot with
  | nil => rfl
  | cons a tail ih =>
      have hzero : slot ≠ 0 := by
        exact outside 0 (by simp)
      have htail : ∀ j : Nat, j < tail.length →
          slot - 1 ≠ (j : ZMod N) := by
        intro j hj heq
        have hsucc : j + 1 < (a :: tail).length := by
          simp only [List.length_cons]
          omega
        apply outside (j + 1) hsucc
        have hh := congrArg (fun z : ZMod N => z + 1) heq
        calc
          slot = (slot - 1) + 1 := by abel
          _ = (j : ZMod N) + 1 := hh
          _ = ((j + 1 : Nat) : ZMod N) := by simp
      have hz := ih (slot - 1) htail
      simpa [sourceMemory, pointLamp, hzero, hz]

/-- A strictly positive residue below N is nonzero in `ZMod N`. -/
theorem cast_ne_zero_below [NeZero N] (k : Nat)
    (positive : 0 < k) (bounded : k < N) :
    (k : ZMod N) ≠ 0 := by
  intro h
  have hv := congrArg ZMod.val h
  have hk : k = 0 := by
    simpa [ZMod.val_natCast_of_lt bounded] using hv
  omega

/-- The last cyclic slot cannot equal a slot belonging to a shorter word. -/
theorem minus_one_ne_cast [NeZero N] (j : Nat) (hj : j + 1 < N) :
    (-1 : ZMod N) ≠ (j : ZMod N) := by
  intro heq
  have h := congrArg (fun z : ZMod N => z + 1) heq
  have hzero : ((j + 1 : Nat) : ZMod N) = 0 := by
    simpa using h.symm
  exact (cast_ne_zero_below (N := N) (j + 1) (by omega) hj) hzero

/-- When the head has not wrapped around the clock, its bit at slot zero is
    precisely the one-hot test of the original first source letter. -/
theorem sourceMemory_head [NeZero N] (a : A) (xs : List A) (b : A)
    (bounded : (a :: xs).length < N) :
    sourceMemory (N := N) (a :: xs) 0 b =
      (if b = a then (1 : ZMod 2) else 0) := by
  have tailzero : sourceMemory (N := N) xs (-1 : ZMod N) b = 0 := by
    apply sourceMemory_zero_outside
    intro j hj
    apply minus_one_ne_cast (N := N) j
    have hlen : xs.length + 1 < N := by simpa using bounded
    omega
  simp [sourceMemory, pointLamp, tailzero, eq_comm]

/-- The same head readout belongs to the existing, actual group voltage. -/
theorem wordVoltage_head [NeZero N] (a : A) (xs : List A) (b : A)
    (bounded : (a :: xs).length < N) :
    (wordVoltage (N := N) (a :: xs)).lamps 0 b =
      (if b = a then (1 : ZMod 2) else 0) := by
  rw [wordVoltage_memory]
  exact sourceMemory_head (N := N) a xs b bounded

/-- At lengths below N, equality of clock values means equality of word
    lengths as natural numbers, not merely equality of residues. -/
theorem length_eq_of_voltage_eq [NeZero N] (xs ys : List A)
    (hx : xs.length < N) (hy : ys.length < N)
    (heq : wordVoltage (N := N) xs = wordVoltage ys) :
    xs.length = ys.length := by
  have hc := congrArg Fiber.clock heq
  rw [wordVoltage_clock (N := N) xs,
      wordVoltage_clock (N := N) ys] at hc
  have hv := congrArg ZMod.val hc
  simpa [ZMod.val_natCast_of_lt hx, ZMod.val_natCast_of_lt hy] using hv

/-- No-wrap injectivity: the voltage of the *original source word* determines
    all letters and their order, provided both lengths are strictly below N. -/
theorem wordVoltage_injective_bounded [NeZero N] :
    ∀ (xs ys : List A), xs.length < N → ys.length < N →
      wordVoltage (N := N) xs = wordVoltage ys → xs = ys := by
  intro xs
  induction xs with
  | nil =>
      intro ys hx hy heq
      have hlen := length_eq_of_voltage_eq (N := N) [] ys hx hy heq
      cases ys with
      | nil => rfl
      | cons b rest => simp at hlen
  | cons a rest ih =>
      intro ys hx hy heq
      cases ys with
      | nil =>
          have hlen := length_eq_of_voltage_eq (N := N) (a :: rest) [] hx hy heq
          simp at hlen
      | cons b tail =>
          have hh := congrArg (fun z : Fiber A N => z.lamps 0 a) heq
          rw [wordVoltage_head (N := N) a rest a hx,
              wordVoltage_head (N := N) b tail a hy] at hh
          have hab : a = b := by
            by_contra hne
            have bad : (1 : ZMod 2) = 0 := by simpa [hne] using hh
            exact (by decide : (1 : ZMod 2) ≠ 0) bad
          subst b
          have htail : wordVoltage (N := N) rest = wordVoltage tail := by
            have hprod : letter (N := N) a * wordVoltage rest =
                letter a * wordVoltage tail := by
              simpa only [wordVoltage_cons] using heq
            exact mul_left_cancel hprod
          have hr : rest.length < N := by
            have : rest.length + 1 < N := by simpa using hx
            omega
          have ht : tail.length < N := by
            have : tail.length + 1 < N := by simpa using hy
            omega
          exact congrArg (List.cons a) (ih tail hr ht htail)

/-- Source-fidelity return: a faithful bounded inventory has different
    *actual* voltages on every pair of distinct recorded histories. -/
theorem inventory_voltages_injective [NeZero N]
    {P : Type v} (words : P → List A)
    (faithful : Function.Injective words)
    (bounded : ∀ p : P, (words p).length < N) :
    Function.Injective (fun p => wordVoltage (N := N) (words p)) := by
  intro p q hv
  exact faithful (wordVoltage_injective_bounded (N := N)
    (words p) (words q) (bounded p) (bounded q) hv)

/-- The literal original bouquet paths, lifted from the *same* chosen sheet,
    have distinct final endpoints when their histories differ. -/
theorem bounded_bouquet_endpoints_injective [NeZero N]
    {P : Type v} (words : P → List A)
    (faithful : Function.Injective words)
    (bounded : ∀ p : P, (words p).length < N)
    (g : Fiber A N) :
    Function.Injective (fun p =>
      (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge A)
        (bouquetTransport (A := A) (N := N))
        (PositiveWordSeparation.asBouquetPath (words p)) g).1) := by
  intro p q heq
  have hsource : g * wordVoltage (N := N) (words p) =
      g * wordVoltage (N := N) (words q) := by
    simpa only [endpoint_bouquet_lift] using heq
  exact inventory_voltages_injective (N := N) words faithful bounded
    (mul_left_cancel hsource)

/-! ### Finite group cardinality, without changing its transport -/

/-- The group carrier's full coordinates are its clock and every lamp bit. -/
def fiberCoordinateEquiv :
    Fiber A N ≃ (ZMod N × (ZMod N → A → ZMod 2)) where
  toFun x := (x.clock, x.lamps)
  invFun p := ⟨p.1, p.2⟩
  left_inv x := by cases x; rfl
  right_inv p := by cases p; rfl

/-- The cardinality is finite whenever the clock and the alphabet are finite. -/
noncomputable instance [Fintype A] [NeZero N] : Fintype (Fiber A N) :=
  Fintype.ofEquiv (ZMod N × (ZMod N → A → ZMod 2))
    (fiberCoordinateEquiv (A := A) (N := N)).symm

/-- An exact group-cardinality formula, not a generic finite permutation bound. -/
theorem card_fiber [Fintype A] [NeZero N] :
    Fintype.card (Fiber A N) = N * 2 ^ (N * Fintype.card A) := by
  classical
  calc
    Fintype.card (Fiber A N) =
        Fintype.card (ZMod N × (ZMod N → A → ZMod 2)) :=
          Fintype.card_congr (fiberCoordinateEquiv (A := A) (N := N))
    _ = N * 2 ^ (N * Fintype.card A) := by
      simp [Fintype.card_fun, ZMod.card, pow_mul, mul_comm]

/-- A power-of-two clock makes this entire source group a finite 2-group. -/
theorem card_fiber_power_two [Fintype A] (k : Nat) :
    Fintype.card (Fiber A (2 ^ k)) =
      2 ^ (k + 2 ^ k * Fintype.card A) := by
  haveI : NeZero (2 ^ k) := ⟨by positivity⟩
  simp [card_fiber, pow_add]

end ClockMemoryVoltage
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
