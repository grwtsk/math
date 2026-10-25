# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivingCountable.Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1e9b233f4cdd5c4cd115c594bc590ca8139be2b` · SHA-256 `ab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.DeriveCountable
import Mathlib.Data.Countable.Basic
import Mathlib.Logic.Equiv.List

/-!
# Tests of the `Countable` deriving handler
-/

namespace Test

/-!
Structure
-/
structure S (α β : Type*) where
  x : α
  y : List β
  deriving Countable

example : Countable (S Nat Bool) := inferInstance

/-!
Recursive inductive type, no indices
-/
inductive T (α : Type)
  | a (n : Option α)
  | b (n m : α) (t : T α)
  | c
  deriving Countable

example : Countable (T Nat) := inferInstance

/-!
Motivating example for writing the deriving handler
-/
inductive PreCantor' : Type
  | zero : PreCantor'
  | oadd : PreCantor' → ℕ+ → PreCantor' → PreCantor'
  deriving Countable

example : Countable PreCantor' := inferInstance

/-!
Sort
-/
inductive PList (α : Sort _) where
  | nil
  | cons (x : α) (xs : PList α)
  deriving Countable

example : Countable (PList (1 = 2)) := inferInstance

/-!
Recursive type with indices
-/

inductive I : Nat → Type
  | a (n : Nat) : I n
  | b (n : Nat) (x : Nat) (c : I x) : I (n + 1)
  deriving Countable

example : Countable (I 37) := inferInstance
example : Countable (Σ i, I i) := inferInstance

/-!
Mutually recursive types
-/
mutual
inductive T1 where
  | a
  | b (x : T1) (y : T2)
  deriving Countable
inductive T2 where
  | c (n : Nat)
  | d (x y : T1)
  deriving Countable
end

example : Countable T1 := inferInstance
example : Countable T2 := inferInstance


/-!
Not supported: nested inductive types
-/
/--
error: default handlers have not been implemented yet, class: 'Countable' types: [Test.Nested]
-/
#guard_msgs in
inductive Nested where
  | mk (xs : List Nested)
  deriving Countable

/-!
Not supported: reflexive inductive types
-/
/--
error: default handlers have not been implemented yet, class: 'Countable' types: [Test.Reflex]
-/
#guard_msgs in
inductive Reflex where
  | mk (f : Bool → Reflex)
  deriving Countable
```
