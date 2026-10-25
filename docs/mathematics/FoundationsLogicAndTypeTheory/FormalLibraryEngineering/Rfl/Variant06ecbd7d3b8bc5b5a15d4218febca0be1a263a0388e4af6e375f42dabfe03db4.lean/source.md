# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26650837ddae11ebd8a69d2d52a60c6ee102e565` · SHA-256 `06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Newell Jensen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Newell Jensen, Thomas Murrills
-/
module

prelude
public import Lean.Meta.Tactic.Rfl

public section

/-!
# `rfl` tactic extension for reflexive relations

This extends the `rfl` tactic so that it works on reflexive relations other than `=`,
provided the reflexivity lemma has been marked as `@[refl]`.
-/

namespace Lean.Elab.Tactic.Rfl

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
@[builtin_tactic Lean.Parser.Tactic.applyRfl] def evalApplyRfl : Tactic := fun stx =>
  match stx with
  | `(tactic| apply_rfl) => withMainContext do liftMetaFinishingTactic (·.applyRfl)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Rfl
```
