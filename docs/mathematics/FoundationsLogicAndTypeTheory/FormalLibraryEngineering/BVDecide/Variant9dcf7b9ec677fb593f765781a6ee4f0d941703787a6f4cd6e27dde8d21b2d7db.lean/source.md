# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVDecide.Variant9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc3b89735a1746ed9e62cda5efbe06c234db8136` · SHA-256 `9dcf7b9ec677fb593f765781a6ee4f0d941703787a6f4cd6e27dde8d21b2d7db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Meta.Tactic.BVDecide.Main

public section

/-!
This module provides the implementation of the `bv_decide` frontend itself.
-/

namespace Lean.Elab.Tactic.BVDecide

open Meta.Tactic.BVDecide

@[builtin_tactic Lean.Parser.Tactic.bvDecide]
def evalBvDecide : Tactic := fun
  | `(tactic| bv_decide $cfg:optConfig) => do
    let cfg ← elabBVDecideConfig cfg
    IO.FS.withTempFile fun _ lratFile => do
      let cfg ← TacticContext.new lratFile cfg
      liftMetaFinishingTactic fun g => do
        discard <| bvDecide g cfg
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.BVDecide
```
