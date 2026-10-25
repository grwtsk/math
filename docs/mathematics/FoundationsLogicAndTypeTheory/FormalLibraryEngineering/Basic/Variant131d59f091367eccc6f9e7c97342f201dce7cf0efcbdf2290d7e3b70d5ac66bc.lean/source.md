# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15de5b9574ea68836ca2f8b7f530b902477046e6` · SHA-256 `131d59f091367eccc6f9e7c97342f201dce7cf0efcbdf2290d7e3b70d5ac66bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.Tactic.CategoryTheory.Coherence.Basic
import Mathlib.Tactic.CategoryTheory.Monoidal.Normalize
import Mathlib.Tactic.CategoryTheory.Monoidal.PureCoherence

/-!
# `monoidal` tactic

This file provides `monoidal` tactic, which solves equations in a monoidal category, where
the two sides only differ by replacing strings of monoidal structural morphisms (that is,
associators, unitors, and identities) with different strings of structural morphisms with the same
source and target. In other words, `monoidal` solves equalities where both sides have the same
string diagrams.

The core function for the `monoidal` tactic is provided in
`Mathlib/Tactic/CategoryTheory/Coherence/Basic.lean`. See this file for more details about the
implementation.

-/

open Lean Meta Elab Tactic
open CategoryTheory Mathlib.Tactic.BicategoryLike

namespace Mathlib.Tactic.Monoidal

/-- Normalize the both sides of an equality. -/
def monoidalNf (mvarId : MVarId) : MetaM (List MVarId) := do
  BicategoryLike.normalForm Monoidal.Context `monoidal mvarId

@[inherit_doc monoidalNf]
elab "monoidal_nf" : tactic => withMainContext do
  replaceMainGoal (← monoidalNf (← getMainGoal))

/--
Use the coherence theorem for monoidal categories to solve equations in a monoidal category,
where the two sides only differ by replacing strings of monoidal structural morphisms
(that is, associators, unitors, and identities)
with different strings of structural morphisms with the same source and target.

That is, `monoidal` can handle goals of the form
`a ≫ f ≫ b ≫ g ≫ c = a' ≫ f ≫ b' ≫ g ≫ c'`
where `a = a'`, `b = b'`, and `c = c'` can be proved using `monoidal_coherence`.
-/
def monoidal (mvarId : MVarId) : MetaM (List MVarId) :=
  BicategoryLike.main Monoidal.Context `monoidal mvarId

@[inherit_doc monoidal]
elab "monoidal" : tactic => withMainContext do
  replaceMainGoal <| ← monoidal <| ← getMainGoal

end Mathlib.Tactic.Monoidal
```
