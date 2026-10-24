-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRelatedDecl.Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddRelatedDecl.Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/AddRelatedDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Floris van Doorn
-/
import Mathlib.Init
import Lean.Elab.DeclarationRange
import Lean.Elab.Term

/-!
# `addRelatedDecl`

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRelatedDecl.Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46

open Lean Meta Elab

namespace Mathlib.Tactic

/-- A helper function for constructing a related declaration from an existing one.

This is currently used by the attributes `reassoc` and `elementwise`,
and has been factored out to avoid code duplication.
Feel free to add features as needed for other applications.

This helper:
* calls `addDeclarationRangesFromSyntax`, so jump-to-definition works,
* copies the `protected` status of the existing declaration, and
* supports copying attributes.

Arguments:
* `src : Name` is the existing declaration that we are modifying.
* `suffix : String` will be appended to `src` to form the name of the new declaration.
* `ref : Syntax` is the syntax where the user requested the related declaration.
* `construct type value levels : MetaM (Expr × List Name)`
  given the type, value, and universe variables of the original declaration,
  should construct the value of the new declaration,
  along with the names of its universe variables.
* `attrs` is the attributes that should be applied to both the new and the original declaration,
  e.g. in the usage `@[reassoc (attr := simp)]`.
  We apply it to both declarations, to have the same behavior as `to_additive`, and to shorten some
  attribute commands. Note that `@[elementwise (attr := simp), reassoc (attr := simp)]` will try
  to apply `simp` twice to the current declaration, but that causes no issues.
-/
def addRelatedDecl (src : Name) (suffix : String) (ref : Syntax)
    (attrs? : Option (Syntax.TSepArray `Lean.Parser.Term.attrInstance ","))
    (construct : Expr → Expr → List Name → MetaM (Expr × List Name)) :
    MetaM Unit := do
  let tgt := match src with
    | Name.str n s => Name.mkStr n <| s ++ suffix
    | x => x
  addDeclarationRangesFromSyntax tgt (← getRef) ref
  let info ← getConstInfo src
  let (newValue, newLevels) ← construct info.type info.value! info.levelParams
  let newValue ← instantiateMVars newValue
  let newType ← instantiateMVars (← inferType newValue)
  match info with
  | ConstantInfo.thmInfo info =>
    addAndCompile <| .thmDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
  | ConstantInfo.defnInfo info =>
    -- Structure fields are created using `def`, even when they are propositional,
    -- so we don't rely on this to decided whether we should be constructing a `theorem` or a `def`.
    addAndCompile <| if ← isProp newType then .thmDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
      else .defnDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
  | _ => throwError "Constant {src} is not a theorem or definition."
  if isProtected (← getEnv) src then
    setEnv <| addProtected (← getEnv) tgt
  let attrs := match attrs? with | some attrs => attrs | none => #[]
  _ ← Term.TermElabM.run' <| do
    let attrs ← elabAttrs attrs
    Term.applyAttributes src attrs
    Term.applyAttributes tgt attrs

end Mathlib.Tactic
