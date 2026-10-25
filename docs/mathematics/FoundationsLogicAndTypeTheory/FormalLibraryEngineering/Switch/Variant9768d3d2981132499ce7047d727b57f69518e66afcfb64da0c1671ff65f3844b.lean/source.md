# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Switch.Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfa36fae918931acfb1905fd21734db068d592ea` · SHA-256 `9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Term.TermElabM
import Lean.Elab.Do.Basic
import Lean.Elab.Do.Legacy

public section

namespace Lean.Elab.Term

register_builtin_option backward.do.legacy : Bool := {
  defValue := false
  descr    := "Use the legacy `do` elaborator instead of the new, extensible implementation."
}

private def toDoElem (newKind : SyntaxNodeKind) : Macro := fun stx => do
  let stx := stx.setKind newKind
  withRef stx `(do $(⟨stx⟩):doElem)

@[builtin_macro Lean.Parser.Term.termFor]
def expandTermFor : Macro := toDoElem ``Parser.Term.doFor

@[builtin_macro Lean.Parser.Term.termTry]
def expandTermTry : Macro := toDoElem ``Parser.Term.doTry

@[builtin_macro Lean.Parser.Term.termUnless]
def expandTermUnless : Macro := toDoElem ``Parser.Term.doUnless

@[builtin_macro Lean.Parser.Term.termReturn]
def expandTermReturn : Macro := toDoElem ``Parser.Term.doReturn

@[builtin_term_elab «do»]
def elabDo : TermElab := fun stx expectedType? => do
  if backward.do.legacy.get (← getOptions) then
    Term.Do.elabDo stx expectedType?
  else
    Elab.Do.elabDo stx expectedType?

@[builtin_term_elab nestedAction] def elabTermNestedAction : TermElab := fun stx ty => do
  if backward.do.legacy.get (← getOptions) then
    Term.elabNestedAction stx ty
  else
    Elab.Do.elabNestedAction stx ty
```
