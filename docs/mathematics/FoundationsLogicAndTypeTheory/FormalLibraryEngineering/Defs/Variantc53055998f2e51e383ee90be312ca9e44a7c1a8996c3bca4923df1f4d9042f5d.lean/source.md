# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variantc53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d4f32d8eec4d35d8a700b6f4376034f98a2b5a7` · SHA-256 `c53055998f2e51e383ee90be312ca9e44a7c1a8996c3bca4923df1f4d9042f5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Batteries.Tactic.Alias

/-!
# Extra definitions on `Option`

This file defines more operations involving `Option α`. Lemmas about them are located in other
files under `Mathlib/Data/Option.lean`.
Other basic operations on `Option` are defined in the core library.
-/

namespace Option

/-- Traverse an object of `Option α` with a function `f : α → F β` for an applicative `F`. -/
protected def traverse.{u, v}
    {F : Type u → Type v} [Applicative F] {α : Type*} {β : Type u} (f : α → F β) :
    Option α → F (Option β) := Option.mapA f

variable {α : Type*} {β : Type*}

/-- An elimination principle for `Option`. It is a nondependent version of `Option.rec`. -/
protected def elim' (b : β) (f : α → β) : Option α → β
  | some a => f a
  | none => b

@[simp]
theorem elim'_none (b : β) (f : α → β) : Option.elim' b f none = b := rfl

@[simp]
theorem elim'_some {a : α} (b : β) (f : α → β) : Option.elim' b f (some a) = f a := rfl

@[simp]
theorem elim'_none_some (f : Option α → β) : (Option.elim' (f none) (f ∘ some)) = f :=
  funext fun o ↦ by cases o <;> rfl

lemma elim'_eq_elim {α β : Type*} (b : β) (f : α → β) (a : Option α) :
    Option.elim' b f a = Option.elim a b f := by
  cases a <;> rfl

/-- Inhabited `get` function. Returns `a` if the input is `some a`, otherwise returns `default`. -/
abbrev iget [Inhabited α] : Option α → α
  | some x => x
  | none => default

theorem iget_some [Inhabited α] {a : α} : (some a).iget = a :=
  rfl

instance merge_isCommutative (f : α → α → α) [Std.Commutative f] :
    Std.Commutative (merge f) :=
  ⟨fun a b ↦ by cases a <;> cases b <;> simp [merge, Std.Commutative.comm]⟩

instance merge_isAssociative (f : α → α → α) [Std.Associative f] :
    Std.Associative (merge f) :=
  ⟨fun a b c ↦ by cases a <;> cases b <;> cases c <;> simp [merge, Std.Associative.assoc]⟩

instance merge_isIdempotent (f : α → α → α) [Std.IdempotentOp f] :
    Std.IdempotentOp (merge f) :=
  ⟨fun a ↦ by cases a <;> simp [merge, Std.IdempotentOp.idempotent]⟩

instance merge_isId (f : α → α → α) : Std.LawfulIdentity (merge f) none where
  left_id a := by cases a <;> simp [merge]
  right_id a := by cases a <;> simp [merge]

@[deprecated (since := "2025-04-04")] alias liftOrGet_isCommutative :=
  merge_isCommutative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isAssociative :=
  merge_isAssociative
@[deprecated (since := "2025-04-04")] alias liftOrGet_isIdempotent :=
  merge_isIdempotent
@[deprecated (since := "2025-04-04")] alias liftOrGet_isId := merge_isId

end Option
```
