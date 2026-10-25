# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSLBuiltin.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1fa1e97e933bcca98c9360f7577241e149beccc` · SHA-256 `0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.DSimprocDSL
import Init.Sym.DSimp.DSimprocDSL
import Lean.Meta.Sym.DSimp.Reduce
import Lean.Meta.Sym.DSimp.DSimproc
import Lean.Meta.Sym.DSimp.EvalGround
namespace Lean.Elab.Tactic.Grind
open Meta Sym.DSimp

-- DSimproc elaborators

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.ground]
def elabGround : SymDSimprocElab := fun _ =>
  return evalGround

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zetaDelta]
def elabZetaDeltaAll : SymDSimprocElab := fun _ =>
  return zetaDeltaAll

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.zeta]
def elabZeta : SymDSimprocElab := fun _ =>
  return zeta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.beta]
def elabBeta : SymDSimprocElab := fun _ =>
  return beta

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.reduceMatch]
def elabReduceMatch : SymDSimprocElab := fun _ =>
  return dsimpMatch

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.proj]
def elabProj : SymDSimprocElab := fun _ =>
  return dsimpProj

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.none]
def elabNone : SymDSimprocElab := fun _ =>
  return fun _ => return .rfl

@[builtin_sym_dsimproc andThen]
def elabDSimprocAndThen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left >> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left >> right

@[builtin_sym_dsimproc Lean.Parser.Sym.DSimp.orElse]
def elabDSimprocOrElse : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| $left <|> $right) := stx | throwUnsupportedSyntax
  let left ← elabSymDSimproc left
  let right ← elabSymDSimproc right
  return left <|> right

@[builtin_sym_dsimproc dsimprocParen]
def elabDSimprocParen : SymDSimprocElab := fun stx => do
  let `(sym_dsimproc| ( $proc) ) := stx | throwUnsupportedSyntax
  elabSymDSimproc proc

end Lean.Elab.Tactic.Grind
```
