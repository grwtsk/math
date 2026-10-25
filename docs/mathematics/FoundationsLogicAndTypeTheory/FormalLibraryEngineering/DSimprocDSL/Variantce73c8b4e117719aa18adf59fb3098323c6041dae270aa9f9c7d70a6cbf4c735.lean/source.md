# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSL.Variantce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a4270f558b7cdd8f615ce14c4aa39964bb1aaf4` · SHA-256 `ce73c8b4e117719aa18adf59fb3098323c6041dae270aa9f9c7d70a6cbf4c735`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Sym.DSimp
import Init.Sym.DSimp.DSimprocDSL
public section
namespace Lean.Elab.Tactic.Grind
open Meta Sym.DSimp

/-- Elaboration function for `sym_dsimproc` syntax. -/
abbrev SymDSimprocElab := Syntax → GrindTacticM DSimproc

unsafe builtin_initialize symDSimprocElabAttribute : KeyedDeclsAttribute SymDSimprocElab ←
  mkElabAttribute SymDSimprocElab `builtin_sym_dsimproc `sym_dsimproc
    `Lean.Parser.Sym.DSimp `Lean.Elab.Tactic.Grind.SymDSimprocElab "sym_dsimproc"

/-- Elaborate a `sym_dsimproc` syntax node into a `DSimproc`. -/
partial def elabSymDSimproc (stx : Syntax) : GrindTacticM DSimproc := do
  let elabFns := symDSimprocElabAttribute.getEntries (← getEnv) stx.getKind
  for elabFn in elabFns do
    try
      return (← elabFn.value stx)
    catch ex =>
      match ex with
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then continue
        else throw ex
      | _ => throw ex
  throwErrorAt stx "unsupported sym_dsimproc syntax `{stx.getKind}`"

end Lean.Elab.Tactic.Grind
```
