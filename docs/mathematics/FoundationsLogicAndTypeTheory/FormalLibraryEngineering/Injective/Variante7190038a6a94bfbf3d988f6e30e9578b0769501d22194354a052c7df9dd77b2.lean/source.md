# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injective.Variante7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14a220e49dbf7c5a698386ee54e3dc904447d126` · SHA-256 `e7190038a6a94bfbf3d988f6e30e9578b0769501d22194354a052c7df9dd77b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Function
public import Init.NotationExtra
import Init.Classical
public section
namespace Lean.Grind
open Function

noncomputable def leftInv {α : Sort u} {β : Sort v} (f : α → β) (hf : Injective f) [Nonempty α] : β → α :=
  Classical.choose hf.exists_leftInverse

theorem leftInv_eq {α : Sort u} {β : Sort v} (f : α → β) (hf : Injective f) [Nonempty α] (a : α) : leftInv f hf (f a) = a :=
  Classical.choose_spec hf.exists_leftInverse a

@[app_unexpander leftInv]
meta def leftInvUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $f:term $_) => `($f⁻¹)
  | `($_ $f:term $_ $a:term) => `($f⁻¹ $a)
  | _ => throw ()

end Lean.Grind
```
