# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdaptationNote.Variant58b47bac84f8b527904fe308b23aef9ea20f593644bfb319ffa67e8bd793adc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `425a7b7c7e36099611f992cc2a6b24712977b1c6` · SHA-256 `4d0724acf88956a930b435d9a881e40a0994edd5bfb08f81a20545b843a1b78e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReportAdaptationNote.Variant6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReportAdaptationNote.Variant6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/AdaptationNote.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReportAdaptationNote.Variant6a17a34456bc086953d7b7eae7d8efe8e347674cb2a4b1e931f5b1403d3cee98

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
