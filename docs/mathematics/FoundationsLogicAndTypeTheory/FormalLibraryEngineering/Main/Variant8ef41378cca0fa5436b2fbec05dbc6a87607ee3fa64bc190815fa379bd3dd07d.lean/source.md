# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `265bc84c8cc7b596ff4b04f35b23eb6b889e414a` · SHA-256 `8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude

public import Lean.Meta.Tactic.BVDecide.Prover.Bitblast
import Lean.Meta.Tactic.BVDecide.Normalize


/-!
This module provides the implementation of the `bv_decide` frontend itself.
-/
namespace Lean.Meta.Tactic.BVDecide

def bvUnsat (g : MVarId) (ctx : TacticContext) : MetaM (Except CounterExample LratCert) := M.run do
  closeWithBVReflection g (lratBitblaster ctx)

/--
The result of calling `bv_decide`.
-/
public structure Result where
  /--
  If the normalization step was not enough to solve the goal this contains the LRAT proof
  certificate.
  -/
  lratCert : Option LratCert

/--
Try to close `g` using a bitblaster. Return either a `CounterExample` if one is found or a `Result`
if `g` is proven.
-/
public def bvDecide' (g : MVarId) (ctx : TacticContext) : MetaM (Except CounterExample Result) := do
  let g? ← Normalize.bvNormalize g ctx.config
  let some g := g? | return .ok ⟨none⟩
  match ← bvUnsat g ctx with
  | .ok lratCert => return .ok ⟨some lratCert⟩
  | .error counterExample => return .error counterExample

/--
Call `bvDecide'` and throw a pretty error if a counter example ends up being produced.
-/
public def bvDecide (g : MVarId) (ctx : TacticContext) : MetaM Result := do
  match ← bvDecide' g ctx with
  | .ok result => return result
  | .error counterExample =>
    counterExample.goal.withContext do
      let error ← explainCounterExampleQuality counterExample
      throwError (← addMessageContextFull error)


end Lean.Meta.Tactic.BVDecide
```
