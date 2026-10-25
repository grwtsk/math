# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e80a01eac2e6766374df370829919b5bf30c8daa` · SHA-256 `ecafde1a6cccc5c1b1696cb92e1a5f392f3c9aa9786bf9f8ef19aa70e5957ba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Control.ForInStep.Basic

/-! # Additional theorems on `ForInStep` -/

@[simp] theorem ForInStep.bind_done [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.done a).bind (m := m) f = pure (.done a) := rfl
@[simp] theorem ForInStep.bind_yield [Monad m] (a : α) (f : α → m (ForInStep α)) :
    (ForInStep.yield a).bind (m := m) f = f a := rfl

attribute [simp] ForInStep.bindM

@[simp] theorem ForInStep.run_done : (ForInStep.done a).run = a := rfl
@[simp] theorem ForInStep.run_yield : (ForInStep.yield a).run = a := rfl

@[simp] theorem ForInStep.bindList_nil [Monad m] (f : α → β → m (ForInStep β))
    (s : ForInStep β) : s.bindList f [] = pure s := rfl

@[simp] theorem ForInStep.bindList_cons [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind fun b => f a b >>= (·.bindList f l) := rfl

@[simp] theorem ForInStep.done_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (a l) :
    (ForInStep.done a).bindList f l = pure (.done a) := by cases l <;> simp

@[simp] theorem ForInStep.bind_yield_bindList [Monad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    (s.bind fun a => (yield a).bindList f l) = s.bindList f l := by cases s <;> simp

@[simp] theorem ForInStep.bind_bindList_assoc [Monad m] [LawfulMonad m]
    (f : β → m (ForInStep β)) (g : α → β → m (ForInStep β)) (s : ForInStep β) (l) :
    s.bind f >>= (·.bindList g l) = s.bind fun b => f b >>= (·.bindList g l)  := by
  cases s <;> simp

theorem ForInStep.bindList_cons' [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (a l) :
    s.bindList f (a::l) = s.bind (f a) >>= (·.bindList f l) := by simp

@[simp] theorem ForInStep.bindList_append [Monad m] [LawfulMonad m]
    (f : α → β → m (ForInStep β)) (s : ForInStep β) (l₁ l₂) :
    s.bindList f (l₁ ++ l₂) = s.bindList f l₁ >>= (·.bindList f l₂) := by
  induction l₁ generalizing s <;> simp [*]
```
