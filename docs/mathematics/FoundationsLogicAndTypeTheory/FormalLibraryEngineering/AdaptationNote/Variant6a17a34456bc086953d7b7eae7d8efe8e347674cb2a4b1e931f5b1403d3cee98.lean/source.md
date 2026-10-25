# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdaptationNote.Variant6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76c6b0df66e7924bdd9fa2a6cfede4ba24cbe6c9` · SHA-256 `6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Meta.Tactic.TryThis

/-!
# Adaptation notes

This file defines a `#adaptation_note` command.
Adaptation notes are comments that are used to indicate that a piece of code
has been changed to accommodate a change in Lean core.
They typically require further action/maintenance to be taken in the future.
-/

open Lean

initialize registerTraceClass `adaptationNote

/-- General function implementing adaptation notes. -/
def reportAdaptationNote (f : Syntax → Meta.Tactic.TryThis.Suggestion) : MetaM Unit := do
  let stx ← getRef
  if let some doc := stx[1].getOptional? then
    trace[adaptationNote] (Lean.TSyntax.getDocString ⟨doc⟩)
  else
    logError "Adaptation notes must be followed by a /-- comment -/"
    let trailing := if let .original (trailing := s) .. := stx[0].getTailInfo then s else default
    let doc : Syntax :=
      Syntax.node2 .none ``Parser.Command.docComment (mkAtom "/--") (mkAtom "comment -/")
    -- Optional: copy the original whitespace after the `#adaptation_note` token
    -- to after the docstring comment
    let doc := doc.updateTrailing trailing
    let stx' := (← getRef)
    let stx' := stx'.setArg 0 stx'[0].unsetTrailing
    let stx' := stx'.setArg 1 (mkNullNode #[doc])
    Meta.Tactic.TryThis.addSuggestion (← getRef) (f stx') (origSpan? := ← getRef)

/-- Adaptation notes are comments that are used to indicate that a piece of code
has been changed to accommodate a change in Lean core.
They typically require further action/maintenance to be taken in the future. -/
elab (name := adaptationNoteCmd) "#adaptation_note " (docComment)? : command => do
  Elab.Command.liftTermElabM <| reportAdaptationNote (fun s => (⟨s⟩ : TSyntax `tactic))

@[inherit_doc adaptationNoteCmd]
elab "#adaptation_note " (docComment)? : tactic =>
  reportAdaptationNote (fun s => (⟨s⟩ : TSyntax `tactic))

@[inherit_doc adaptationNoteCmd]
syntax (name := adaptationNoteTermStx) "#adaptation_note " (docComment)? term : term

/-- Elaborator for adaptation notes. -/
@[term_elab adaptationNoteTermStx]
def adaptationNoteTermElab : Elab.Term.TermElab
  | `(#adaptation_note $[$_]? $t) => fun expectedType? => do
    reportAdaptationNote (fun s => (⟨s⟩ : Term))
    Elab.Term.elabTerm t expectedType?
  | _ => fun _ => Elab.throwUnsupportedSyntax


#adaptation_note /-- This is a test -/

example : True := by
  #adaptation_note /-- This is a test -/
  trivial

example : True :=
  #adaptation_note /-- This is a test -/
  trivial
```
