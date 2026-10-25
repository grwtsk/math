# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimproc.Variant756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `666933e78f13ff94b767ee6925a6b89bebb7a465` · SHA-256 `756b4c1a317130752e7207fc19214e567a7b85441d07fa482ef7b9541746b2aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.Result
namespace Lean.Meta.Sym.DSimp

public abbrev DSimproc.andThen (f g : DSimproc) : DSimproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .rfl  true | .step _ true  => return r
  | .rfl  false    => g e₁
  | .step e₂ false =>
    match (← g e₂) with
    | .rfl done     => return .step e₂ done
    | .step e₃ done => return .step e₃ done

public instance : AndThen DSimproc where
  andThen f g := DSimproc.andThen f (g ())

public abbrev DSimproc.orElse (f g : DSimproc) : DSimproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step .. | .rfl true => return r
  | .rfl false => g e₁

public instance : OrElse DSimproc where
  orElse f g := DSimproc.orElse f (g ())

/-- Wraps a `DSimproc` so that any exception is caught and treated as `.rfl` (no rewrite). -/
public abbrev DSimproc.tryCatch (f : DSimproc) : DSimproc := fun e => do
  try f e catch _ => return .rfl

end Lean.Meta.Sym.DSimp
```
