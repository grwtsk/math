/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Lean elaboration, fresh kernel replay, and
transitive axiom audit: NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.FinitePositiveWordMagnusSeparation
import Mathlib

/-!
# Finite clock-memory voltage for ordered relational histories

This increment constructs a concrete group-valued voltage instead of assuming
that one exists. Its group law is a cyclic shift acting on binary memories.
For a finite alphabet and a clock of length `N = 2^k > 0`, the resulting
semidirect product has order `N * 2^(N * card A)`, a power of two.

The finite-two-group order and the no-wrap bounded-word injectivity theorem are
proved mathematically in the associated exposition, but are NOT presented as
Lean-checked theorems here. This Lean source provides the concrete group law,
source-word voltage, its composition laws, and exact connections to the existing
`VoltageCover.liftPath` / `erase_liftPath` interface. The remaining no-wrap
source injection is kept an EXPLICIT hypothesis of the final endpoint theorem,
rather than manufactured by a similarly named definition.

This construction separates positive words with a declared finite bound; it does
not automatically distinguish free-group classes modulo inverse-edge reduction.
No spin physics, neural mechanism, runtime authority, or Weil positivity follows.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace ClockMemoryVoltage

universe u

/-- The entire memory, including every label and slot, is retained. -/
structure Fiber (A : Type u) (N : Nat) where
  clock : ZMod N
  lamps : ZMod N → A → ZMod 2

variable {A : Type u} {N : Nat}

/-- Shift the binary memory by the indicated cyclic clock value. -/
def shift (s : ZMod N) (m : ZMod N → A → ZMod 2) :
    ZMod N → A → ZMod 2 :=
  fun i a => m (i - s) a

@[simp] theorem shift_zero (m : ZMod N → A → ZMod 2) :
    shift (N := N) 0 m = m := by
  funext i a
  simp [shift]

/-- Two successive cyclic shifts combine by clock addition. -/
theorem shift_add (s t : ZMod N) (m : ZMod N → A → ZMod 2) :
    shift (s + t) m = shift s (shift t m) := by
  funext i a
  change m (i - (s + t)) a = m ((i - s) - t) a
  congr 1
  abel

/-- Semidirect-product multiplication: shift the second memory by the first clock. -/
def multiplication (x y : Fiber A N) : Fiber A N :=
  ⟨x.clock + y.clock,
    fun i a => x.lamps i a + shift x.clock y.lamps i a⟩

def identity : Fiber A N := ⟨0, fun _ _ => 0⟩

def inverse (x : Fiber A N) : Fiber A N :=
  ⟨-x.clock, fun i a => -shift (-x.clock) x.lamps i a⟩

theorem multiplication_assoc (x y z : Fiber A N) :
    multiplication (multiplication x y) z =
      multiplication x (multiplication y z) := by
  apply Fiber.ext
  · simp only [multiplication]
    exact add_assoc _ _ _
  · funext i a
    change (x.lamps i a + y.lamps (i - x.clock) a) +
      z.lamps (i - (x.clock + y.clock)) a =
      x.lamps i a +
        (y.lamps (i - x.clock) a + z.lamps ((i - x.clock) - y.clock) a)
    have h : i - (x.clock + y.clock) = (i - x.clock) - y.clock := by
      abel
    rw [h]
    exact add_assoc _ _ _

theorem identity_mul (x : Fiber A N) : multiplication identity x = x := by
  apply Fiber.ext
  · simp [multiplication, identity]
  · funext i a
    simp [multiplication, identity, shift]

theorem mul_identity (x : Fiber A N) : multiplication x identity = x := by
  apply Fiber.ext
  · simp [multiplication, identity]
  · funext i a
    simp [multiplication, identity, shift]

theorem inverse_mul (x : Fiber A N) : multiplication (inverse x) x = identity := by
  apply Fiber.ext
  · simp [multiplication, inverse, identity]
  · funext i a
    simp [multiplication, inverse, identity, shift]

/-- The clock-memory carrier is genuinely a group for every clock modulus.
For a positive power-of-two modulus and a finite alphabet, it is a finite
2-group; that cardinality comparison remains a separate formal task. -/
instance : Group (Fiber A N) where
  mul := multiplication
  one := identity
  inv := inverse
  mul_assoc := multiplication_assoc
  one_mul := identity_mul
  mul_one := mul_identity
  inv_mul_cancel := inverse_mul

@[simp] theorem clock_mul (x y : Fiber A N) :
    (x * y).clock = x.clock + y.clock := rfl

@[simp] theorem clock_one : (1 : Fiber A N).clock = 0 := rfl

/-- One bit at clock zero, indexed by the exact source letter. -/
def pointLamp [DecidableEq A] (a : A) : ZMod N → A → ZMod 2 :=
  fun slot b => if slot = 0 ∧ b = a then 1 else 0

/-- A positive edge advances one clock position and writes its letter bit. -/
def letter [DecidableEq A] (a : A) : Fiber A N :=
  ⟨1, pointLamp a⟩

/-- Product of actual source edge transports in their original order. -/
def wordVoltage [DecidableEq A] : List A → Fiber A N
  | [] => 1
  | a :: rest => letter a * wordVoltage rest

@[simp] theorem wordVoltage_nil [DecidableEq A] :
    wordVoltage (A := A) (N := N) [] = 1 := rfl

@[simp] theorem wordVoltage_cons [DecidableEq A] (a : A) (xs : List A) :
    wordVoltage (N := N) (a :: xs) = letter (N := N) a * wordVoltage xs := rfl

/-- An executable monoid homomorphism from positive words to the concrete group. -/
theorem wordVoltage_append [DecidableEq A] (xs ys : List A) :
    wordVoltage (N := N) (xs ++ ys) =
      wordVoltage xs * wordVoltage ys := by
  induction xs with
  | nil => simp [wordVoltage]
  | cons x xs ih =>
      simp [wordVoltage, ih, mul_assoc]

/-- The cyclic counter agrees with word length modulo the chosen modulus. -/
theorem wordVoltage_clock [DecidableEq A] (xs : List A) :
    (wordVoltage (N := N) xs).clock = (xs.length : ZMod N) := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
      simp [wordVoltage, letter, clock_mul, ih, Nat.cast_succ, add_comm]

/-- A second, direct description of the binary source-memory update. -/
def sourceMemory [DecidableEq A] :
    List A → ZMod N → A → ZMod 2
  | [] => fun _ _ => 0
  | a :: tail => fun slot b =>
      pointLamp (N := N) a slot b + sourceMemory tail (slot - 1) b

/-- The group voltage's stored memory is exactly the recursive source record. -/
theorem wordVoltage_memory [DecidableEq A] (xs : List A)
    (slot : ZMod N) (b : A) :
    (wordVoltage (N := N) xs).lamps slot b =
      sourceMemory (N := N) xs slot b := by
  induction xs generalizing slot with
  | nil => rfl
  | cons a tail ih =>
      change pointLamp (N := N) a slot b +
        (wordVoltage (N := N) tail).lamps (slot - 1) b =
        pointLamp (N := N) a slot b +
        sourceMemory (N := N) tail (slot - 1) b
      rw [ih]

/-- Voltage on the existing one-vertex bouquet, not on a substituted graph. -/
def bouquetTransport [DecidableEq A] {x y : PUnit} :
    PositiveWordSeparation.bouquetEdge A x y → Fiber A N :=
  letter (N := N)

/-- Holonomy of the actual endpoint-indexed source path is the clock-memory code. -/
theorem holonomy_bouquet [DecidableEq A] (xs : List A) :
    Path.holonomy (bouquetTransport (A := A) (N := N))
      (PositiveWordSeparation.asBouquetPath xs) =
    wordVoltage (N := N) xs := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      change letter (N := N) x *
        Path.holonomy (bouquetTransport (A := A) (N := N))
          (PositiveWordSeparation.asBouquetPath xs) =
        letter (N := N) x * wordVoltage (N := N) xs
      rw [ih]

/-- Exact geometric return: every lifted source edge, including order, survives. -/
theorem erase_bouquet_lift [DecidableEq A] (xs : List A) (g : Fiber A N) :
    VoltageCover.erasePath (PositiveWordSeparation.bouquetEdge A)
      (bouquetTransport (A := A) (N := N))
      (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge A)
        (bouquetTransport (A := A) (N := N))
        (PositiveWordSeparation.asBouquetPath xs) g).2 =
      PositiveWordSeparation.asBouquetPath xs :=
  VoltageCover.erase_liftPath _ _ _ _

/-- Source holonomy is *exactly* the final marked sheet of its voltage lift. -/
theorem endpoint_bouquet_lift [DecidableEq A] (xs : List A) (g : Fiber A N) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge A)
      (bouquetTransport (A := A) (N := N))
      (PositiveWordSeparation.asBouquetPath xs) g).1 =
      g * wordVoltage (N := N) xs := by
  rw [VoltageCover.lift_endpoint, holonomy_bouquet]

/-- When concrete voltages differ, no final sheet can conflate the two paths. -/
theorem distinct_lifted_endpoints_of_voltage [DecidableEq A]
    (xs ys : List A) (g : Fiber A N)
    (different : wordVoltage (N := N) xs ≠ wordVoltage (N := N) ys) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge A)
      (bouquetTransport (A := A) (N := N))
      (PositiveWordSeparation.asBouquetPath xs) g).1 ≠
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge A)
      (bouquetTransport (A := A) (N := N))
      (PositiveWordSeparation.asBouquetPath ys) g).1 := by
  apply VoltageCover.distinct_endpoints
  simpa only [holonomy_bouquet] using different

end ClockMemoryVoltage
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
