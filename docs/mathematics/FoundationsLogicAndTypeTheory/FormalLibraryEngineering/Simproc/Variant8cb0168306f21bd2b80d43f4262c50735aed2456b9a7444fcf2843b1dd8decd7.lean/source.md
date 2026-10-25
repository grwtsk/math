# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Variant8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5252a3bd3266ec2bec97ea1a303e27371d1c0e6c` · SHA-256 `8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Result
namespace Lean.Meta.Sym.Simp

public abbrev Simproc.andThen (f g : Simproc) : Simproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step _ _ true _ | .rfl true _  => return r
  -- Propagate cd₁: if `f` was context-dependent but returned `.rfl`, in another
  -- context `f` might succeed and the whole `andThen` would take a different path.
  | .rfl false cd₁ =>
    let r₂ ← g e₁
    return if cd₁ && !r₂.isContextDependent then r₂.withContextDependent else r₂
  -- `cd₁` from `f` is threaded into `mkEqTransResult` so the combined result
  -- is context-dependent if either `f` or `g` was.
  | .step e₂ h₁ false cd₁ => mkEqTransResult e₁ e₂ h₁ (← g e₂) cd₁

public instance : AndThen Simproc where
  andThen f g := Simproc.andThen f (g ())

public abbrev Simproc.orElse (f g : Simproc) : Simproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step _ _ _ _ | .rfl true _  => return r
  -- Propagate cd₁: if `f` was context-dependent but returned `.rfl`, in another
  -- context `f` might succeed and the `orElse` would return `f`'s result instead.
  | .rfl false cd₁ =>
    let r₂ ← g e₁
    return if cd₁ && !r₂.isContextDependent then r₂.withContextDependent else r₂

public instance : OrElse Simproc where
  orElse f g := Simproc.orElse f (g ())

/-- Wraps a simproc so that any exception is caught and treated as `.rfl` (no rewrite). -/
public abbrev Simproc.tryCatch (f : Simproc) : Simproc := fun e => do
  try f e catch _ => return .rfl

end Lean.Meta.Sym.Simp
```
