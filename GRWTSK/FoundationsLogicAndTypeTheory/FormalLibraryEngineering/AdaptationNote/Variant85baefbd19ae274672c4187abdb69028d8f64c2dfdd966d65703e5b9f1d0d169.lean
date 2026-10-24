-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReportAdaptationNote.Variantebff5bcc6eac4ecb0c845e0388ff9bccb341dc9df4254b04cac8da26f638c5b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebff5bcc6eac4ecb0c845e0388ff9bccb341dc9df4254b04cac8da26f638c5b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReportAdaptationNote.Variantebff5bcc6eac4ecb0c845e0388ff9bccb341dc9df4254b04cac8da26f638c5b7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ebff5bcc6eac4ecb0c845e0388ff9bccb341dc9df4254b04cac8da26f638c5b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/AdaptationNote.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

public meta import Lean.Meta.Tactic.TryThis
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
public meta import Mathlib.Tactic.Linter.Header  -- shake: keep
public import Lean.Meta.TryThis

/-!
# Adaptation notes

This file defines a `#adaptation_note` command.
Adaptation notes are comments that are used to indicate that a piece of code
has been changed to accommodate a change in Lean core.
They typically require further action/maintenance to be taken in the future.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReportAdaptationNote.Variantebff5bcc6eac4ecb0c845e0388ff9bccb341dc9df4254b04cac8da26f638c5b7

public meta section

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

/-- `#adaptation_note /-- comment -/` adds an adaptation note to the current file.
Adaptation notes are comments that are used to indicate that a piece of code
has been changed to accommodate a change in Lean core.
They typically require further action/maintenance to be taken in the future.

This syntax works as a command, or inline in tactic or term mode.
-/
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
