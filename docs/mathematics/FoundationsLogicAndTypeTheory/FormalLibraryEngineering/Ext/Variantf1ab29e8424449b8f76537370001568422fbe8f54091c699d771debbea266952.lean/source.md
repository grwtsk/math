# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05acde32e5f0bab693fd216e76c6745c871e9225` · SHA-256 `f1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Ext
import Std.Logic

set_option linter.missingDocs false
axiom mySorry {α : Sort _} : α

structure A (n : Nat) where
  a : Nat

example (a b : A n) : a = b ∨ True := by
  fail_if_success
    apply Or.inl; ext
  exact Or.inr trivial

structure B (n) extends A n where
  b : Nat
  h : b > 0
  i : Fin b

@[ext] structure C (n) extends B n where
  c : Nat

example (a b : C n) : a = b := by
  ext
  guard_target = a.a = b.a; exact mySorry
  guard_target = a.b = b.b; exact mySorry
  guard_target = HEq a.i b.i; exact mySorry
  guard_target = a.c = b.c; exact mySorry

@[ext (flat := false)] structure C' (n) extends B n where
  c : Nat

example (a b : C' n) : a = b := by
  ext
  guard_target = a.toB = b.toB; exact mySorry
  guard_target = a.c = b.c; exact mySorry

open Std.Tactic.Ext
example (f g : Nat × Nat → Nat) : f = g := by
  ext ⟨x, y⟩
  guard_target = f (x, y) = g (x, y); exact mySorry

-- Check that we generate a warning if there are too many patterns.
example (f g : Nat → Nat) (h : f = g) : f = g := by
  ext i j
  exact h ▸ rfl

-- allow more specific ext theorems
declare_ext_theorems_for Fin
@[ext high] theorem Fin.zero_ext (a b : Fin 0) : True → a = b := by cases a.isLt
example (a b : Fin 0) : a = b := by ext; exact True.intro

def Set (α : Type u) := α → Prop
@[ext] structure LocalEquiv (α : Type u) (β : Type v) where
  source : Set α
@[ext] structure Pretrivialization {F : Type u} (proj : Z → β) extends LocalEquiv Z (β × F) where
  baseSet : Set β
  source_eq : source = baseSet ∘ proj

structure MyUnit

@[ext high] theorem MyUnit.ext1 (x y : MyUnit) (_h : 0 = 1) : x = y := rfl
@[ext high] theorem MyUnit.ext2 (x y : MyUnit) (_h : 1 = 1) : x = y := rfl
@[ext] theorem MyUnit.ext3 (x y : MyUnit) (_h : 2 = 1) : x = y := rfl

example (x y : MyUnit) : x = y := by ext; rfl

-- Check that we don't generate a warning when `x` only uses a pattern in one branch:
example (f : ℕ × (ℕ → ℕ)) : f = f := by
  ext x
  · rfl
  · guard_target = (f.2) x = (f.2) x
    rfl

example (f : Empty → Empty) : f = f := by
  ext ⟨⟩

@[ext] theorem ext_intros {n m : Nat} (w : ∀ n m : Nat, n = m) : n = m := by apply w

example : 3 = 7 := by
  ext : 1
  rename_i n m
  guard_target = n = m
  admit

example : 3 = 7 := by
  ext n m : 1
  guard_target = n = m
  admit

section erasing_ext_attribute

def f (p : Int × Int) : Int × Int := (p.2, p.1)

example : f ∘ f = id := by
  ext ⟨a, b⟩
  · simp [f]
  · simp [f]

attribute [-ext] Prod.ext

example : f ∘ f = id := by
  ext ⟨a, b⟩
  simp [f]

end erasing_ext_attribute
```
