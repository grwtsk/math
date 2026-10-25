# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterSymSimp.Variant323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19292a3d0aa0bebfc1ead06b7da9e0f08d442d84` · SHA-256 `323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Sym.Simp.SimprocDSL
import Lean.Meta.Sym.Simp.Variant
import Lean.Elab.Tactic.Grind.SimprocDSL
import Lean.Elab.Tactic.Grind.WithGrindTacticM
namespace Lean.Elab.Command
open Meta Sym.Simp

def validateOptionSimprocSyntax (proc? : Option Syntax) : CommandElabM Unit := do
  let some proc := proc? | return ()
  discard <| withGrindTacticM <| Tactic.Grind.elabSymSimproc proc

@[builtin_command_elab Lean.Parser.Command.registerSymSimp]
def elabRegisterSymSimp : CommandElab := fun stx => do
  let id := stx[1]
  let name := id.getId
  -- Check for duplicate variant
  if (getSymSimpVariant? (← getEnv) name).isSome then
    throwErrorAt id "Sym.simp variant `{name}` is already registered"
  let fields := stx[3].getArgs
  let mut pre? : Option Syntax := none
  let mut post? : Option Syntax := none
  let mut maxSteps? : Option Nat := none
  let mut maxDischargeDepth? : Option Nat := none
  for field in fields do
    match field with
    | `(sym_simp_field| maxSteps := $val:num) =>
      unless maxSteps?.isNone do throwErrorAt field "duplicate `maxSteps` field"
      maxSteps? := some val.getNat
    | `(sym_simp_field| maxDischargeDepth := $val:num) =>
      unless maxDischargeDepth?.isNone do throwErrorAt field "duplicate `maxDischargeDepth` field"
      maxDischargeDepth? := some val.getNat
    | `(sym_simp_field| pre := $proc) =>
      unless pre?.isNone do throwErrorAt field "duplicate `pre` field"
      pre? := some proc
    | `(sym_simp_field| post := $proc) =>
      unless post?.isNone do throwErrorAt field "duplicate `post` field"
      post? := some proc
    | _ => throwErrorAt field "unexpected field"
  -- Validate pre/post by elaborating them
  validateOptionSimprocSyntax pre?
  validateOptionSimprocSyntax post?
  let config := { maxSteps := maxSteps?.getD 100_000, maxDischargeDepth := maxDischargeDepth?.getD 2 }
  let variant : SymSimpVariant := { pre?, post?, config }
  modifyEnv fun env => symSimpVariantExtension.addEntry env { name, variant }

end Lean.Elab.Command
```
