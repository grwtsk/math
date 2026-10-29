-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkIdBindFor.Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkIdBindFor.Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/ForLean/Do.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.Elab.Do.Legacy


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkIdBindFor.Variant136f260bcd0bce1793f24a5afb86e076a86340aebce0c406bbd760b5d807f556

public section

/-!
Make `Lean.Elab.Term.extractBind` public.
-/

open Lean Meta

namespace Lean.Elab.Term

def mkIdBindFor (type : Expr) : TermElabM ExtractMonadResult := do
  let u ← getDecLevel type
  let id        := Lean.mkConst ``Id [u]
  pure { m := id, returnType := type, expectedType := mkApp id type }

partial def extractBind (expectedType? : Option Expr) : TermElabM ExtractMonadResult := do
  match expectedType? with
  | none => throwError "invalid 'do' notation, expected type is not available"
  | some expectedType =>
    let extractStep? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match type with
      | .app m returnType =>
        return some { m, returnType, expectedType }
      | _ =>
        return none
    let rec extract? (type : Expr) : MetaM (Option ExtractMonadResult) := do
      match (← extractStep? type) with
      | some r => return r
      | none =>
        let typeNew ← whnfCore type
        if typeNew != type then
          extract? typeNew
        else
          if typeNew.getAppFn.isMVar then throwError "invalid 'do' notation, expected type is not available"
          match (← unfoldDefinition? typeNew) with
          | some typeNew => extract? typeNew
          | none => return none
    match (← extract? expectedType) with
    | some r => return r
    | none   => mkIdBindFor expectedType
