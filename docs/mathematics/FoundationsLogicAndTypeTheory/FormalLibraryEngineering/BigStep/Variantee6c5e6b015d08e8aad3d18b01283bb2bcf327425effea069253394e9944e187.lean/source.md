# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BigStep.Variantee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab2100605607491087f73494cdbae2be2d1289e6` · SHA-256 `ee6c5e6b015d08e8aad3d18b01283bb2bcf327425effea069253394e9944e187`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Asei Inoue. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asei Inoue, Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

abbrev Variable := String

def State := Variable → Nat

inductive Stmt : Type where
  | skip : Stmt
  | assign : Variable → (State → Nat) → Stmt
  | seq : Stmt → Stmt → Stmt
  | ifThenElse : (State → Prop) → Stmt → Stmt → Stmt
  | whileDo : (State → Prop) → Stmt → Stmt

infix:60 ";; " => Stmt.seq

export Stmt (skip assign seq ifThenElse whileDo)

set_option quotPrecheck false in
notation s:70 "[" x:70 "↦" n:70 "]" => (fun v ↦ if v = x then n else s v)

inductive BigStep : Stmt → State → State → Prop where
  | protected skip (s : State) : BigStep skip s s
  | protected assign (x : Variable) (a : State → Nat) (s : State) : BigStep (assign x a) s (s[x ↦ a s])
  | protected seq {S T : Stmt} {s t u : State} (hS : BigStep S s t) (hT : BigStep T t u) :
    BigStep (S;; T) s u
  | protected if_true {B : State → Prop} {s t : State} (hcond : B s) (S T : Stmt) (hbody : BigStep S s t) :
    BigStep (ifThenElse B S T) s t
  | protected if_false {B : State → Prop} {s t : State} (hcond : ¬ B s) (S T : Stmt) (hbody : BigStep T s t) :
    BigStep (ifThenElse B S T) s t
  | while_true {B S s t u} (hcond : B s) (hbody : BigStep S s t) (hrest : BigStep (whileDo B S) t u) :
    BigStep (whileDo B S) s u
  | while_false {B S s} (hcond : ¬ B s) : BigStep (whileDo B S) s s

notation:55 "(" S:55 "," s:55 ")" " ==> " t:55 => BigStep S s t

add_aesop_rules safe [BigStep.skip, BigStep.assign, BigStep.seq, BigStep.while_false]
add_aesop_rules 50% [apply BigStep.while_true]
add_aesop_rules safe [
  (by apply BigStep.if_true (hcond := by assumption) (hbody := by assumption)),
  (by apply BigStep.if_false (hcond := by assumption) (hbody := by assumption))
]

namespace BigStep

@[aesop safe destruct]
theorem cases_if_of_true {B S T s t} (hcond : B s) : (ifThenElse B S T, s) ==> t → (S, s) ==> t := by
  intro h; cases h <;> aesop

@[aesop safe destruct]
theorem cases_if_of_false {B S T s t} (hcond : ¬ B s) : (ifThenElse B S T, s) ==> t → (T, s) ==> t := by
  intro h; cases h <;> aesop

@[aesop 30%]
theorem and_excluded {P Q R : Prop} (hQ : P → Q) (hR : ¬ P → R) : (P ∧ Q ∨ ¬ P ∧ R) := by
  by_cases h : P <;> aesop

theorem if_iff {B S T s t} : (ifThenElse B S T, s) ==> t ↔
    (B s ∧ (S, s) ==> t) ∨ (¬ B s ∧ (T, s) ==> t) := by
  aesop

end BigStep
```
