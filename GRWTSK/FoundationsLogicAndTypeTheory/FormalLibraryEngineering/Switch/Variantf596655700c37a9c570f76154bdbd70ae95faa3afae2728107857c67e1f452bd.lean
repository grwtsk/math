-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDoElem.Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ToDoElem.Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Do/Switch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDoElem.Variant9768d3d2981132499ce7047d727b57f69518e66afcfb64da0c1671ff65f3844b

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
