# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gadget.Variant412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92ed594a0d311d89bebf648f15e7f189f60dd669` · SHA-256 `412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Gladshtein, Sebastian Graf
-/
module

prelude
public import Std.Internal.Do.Triple.Basic
public import Std.Internal.Do.Order.Heyting

@[expose] public section

set_option linter.missingDocs true

open Lean Order Std.Internal.Do Lean.Order

namespace Std.Internal.Do

universe u v
variable {m : Type u → Type v} {Pred : Type u} {EPred : Type u} [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]

set_option linter.unusedVariables false in

/-- A no-op computation used as a verification gadget to inject assertions into the program.

The `name` parameter is used by VCGen to name the introduced hypothesis. The `as` parameter
is the assertion to be checked. At runtime, `assertGadget` is simply `pure ⟨⟩`. -/
def assertGadget [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred] (name : Name) (as : Pred) : m PUnit := pure ⟨⟩

/-- Specification for `assertGadget`: the precondition requires both the assertion `as` and
the Heyting implication `as ⇨ post ⟨⟩`, ensuring the assertion holds and the postcondition
follows from it. -/
theorem Spec.assertGadget (name : Name) (as : Pred) [∀ a : Pred, PreservesSup (meet a)] :
  Triple (Std.Internal.Do.assertGadget (m := m) name as) (as ⊓ (as ⇨ post ⟨⟩)) post epost := by
  simpa [Std.Internal.Do.assertGadget] using
    (Triple.pure (m := m) (pre := as ⊓ (as ⇨ post ⟨⟩)) (post := post) (epost := epost)
      (a := ⟨⟩) (h := meet_himp_le))

end Std.Internal.Do

end -- public section
```
