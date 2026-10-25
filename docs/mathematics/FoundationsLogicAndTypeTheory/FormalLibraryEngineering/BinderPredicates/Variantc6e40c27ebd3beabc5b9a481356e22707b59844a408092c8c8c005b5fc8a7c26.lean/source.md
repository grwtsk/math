# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinderPredicates.Variantc6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `019df5ef1290f46c38d1196e3c0eb0f707d78aaa` · SHA-256 `c6e40c27ebd3beabc5b9a481356e22707b59844a408092c8c8c005b5fc8a7c26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public meta import Init.Grind.Tactics
public import Init.Notation
import Init.Meta.Defs
import Init.NotationExtra

public section

namespace Lean

/--
The syntax category of binder predicates contains predicates like `> 0`, `∈ s`, etc.
(`: t` should not be a binder predicate because it would clash with the built-in syntax for ∀/∃.)
-/
declare_syntax_cat binderPred

/--
`satisfies_binder_pred% t pred` expands to a proposition expressing that `t` satisfies `pred`.
-/
syntax "satisfies_binder_pred% " term:max binderPred : term

-- Extend ∀ and ∃ to binder predicates.

/--
The notation `∃ x < 2, p x` is shorthand for `∃ x, x < 2 ∧ p x`,
and similarly for other binary operators.
-/
syntax "∃ " binderIdent binderPred ", " term : term
/--
The notation `∀ x < 2, p x` is shorthand for `∀ x, x < 2 → p x`,
and similarly for other binary operators.
-/
syntax "∀ " binderIdent binderPred ", " term : term

macro_rules
  | `(∃ $x:ident $pred:binderPred, $p) =>
    `(∃ $x:ident, satisfies_binder_pred% $x $pred ∧ $p)
  | `(∃ _ $pred:binderPred, $p) =>
    `(∃ x, satisfies_binder_pred% x $pred ∧ $p)

macro_rules
  | `(∀ $x:ident $pred:binderPred, $p) =>
    `(∀ $x:ident, satisfies_binder_pred% $x $pred → $p)
  | `(∀ _ $pred:binderPred, $p) =>
    `(∀ x, satisfies_binder_pred% x $pred → $p)

/-- Declare `∃ x > y, ...` as syntax for `∃ x, x > y ∧ ...` -/
binder_predicate x " > " y:term => `($x > $y)
/-- Declare `∃ x ≥ y, ...` as syntax for `∃ x, x ≥ y ∧ ...` -/
binder_predicate x " ≥ " y:term => `($x ≥ $y)
/-- Declare `∃ x < y, ...` as syntax for `∃ x, x < y ∧ ...` -/
binder_predicate x " < " y:term => `($x < $y)
/-- Declare `∃ x ≤ y, ...` as syntax for `∃ x, x ≤ y ∧ ...` -/
binder_predicate x " ≤ " y:term => `($x ≤ $y)
/-- Declare `∃ x ≠ y, ...` as syntax for `∃ x, x ≠ y ∧ ...` -/
binder_predicate x " ≠ " y:term => `($x ≠ $y)

/-- Declare `∀ x ∈ y, ...` as syntax for `∀ x, x ∈ y → ...` and `∃ x ∈ y, ...` as syntax for
`∃ x, x ∈ y ∧ ...` -/
binder_predicate x " ∈ " y:term => `($x ∈ $y)

/-- Declare `∀ x ∉ y, ...` as syntax for `∀ x, x ∉ y → ...` and `∃ x ∉ y, ...` as syntax for
`∃ x, x ∉ y ∧ ...` -/
binder_predicate x " ∉ " y:term => `($x ∉ $y)

/-- Declare `∀ x ⊆ y, ...` as syntax for `∀ x, x ⊆ y → ...` and `∃ x ⊆ y, ...` as syntax for
`∃ x, x ⊆ y ∧ ...` -/
binder_predicate x " ⊆ " y:term => `($x ⊆ $y)

/-- Declare `∀ x ⊂ y, ...` as syntax for `∀ x, x ⊂ y → ...` and `∃ x ⊂ y, ...` as syntax for
`∃ x, x ⊂ y ∧ ...` -/
binder_predicate x " ⊂ " y:term => `($x ⊂ $y)

/-- Declare `∀ x ⊇ y, ...` as syntax for `∀ x, x ⊇ y → ...` and `∃ x ⊇ y, ...` as syntax for
`∃ x, x ⊇ y ∧ ...` -/
binder_predicate x " ⊇ " y:term => `($x ⊇ $y)

/-- Declare `∀ x ⊃ y, ...` as syntax for `∀ x, x ⊃ y → ...` and `∃ x ⊃ y, ...` as syntax for
`∃ x, x ⊃ y ∧ ...` -/
binder_predicate x " ⊃ " y:term => `($x ⊃ $y)

end Lean
```
