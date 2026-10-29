-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTerm.Variant173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleTerm.Variant173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/RuleTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import Aesop.Rule.Name


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTerm.Variant173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961

public section

open Lean Lean.Meta

namespace Aesop

inductive RuleTerm
  | const (decl : Name)
  | term (term : Term)
  deriving Inhabited

instance : ToMessageData RuleTerm where
  toMessageData
    | .const decl => m!"{decl}"
    | .term tm => m!"{tm}"

inductive ElabRuleTerm
  | const (decl : Name)
  | term (term : Term) (expr : Expr)
  deriving Inhabited

namespace ElabRuleTerm

instance : ToMessageData ElabRuleTerm where
  toMessageData
    | .const decl => m!"{decl}"
    | .term tm _ => m!"{tm}"

def expr : ElabRuleTerm → MetaM Expr
  | const decl => mkConstWithFreshMVarLevels decl
  | term _ e => return e

def scope : ElabRuleTerm → ScopeName
  | const .. => .global
  | term .. => .local

def name : ElabRuleTerm → MetaM Name
  | const decl => return decl
  | term _ e => getRuleNameForExpr e

def toRuleTerm : ElabRuleTerm → RuleTerm
  | const decl => .const decl
  | term t _ => .term t

def ofElaboratedTerm (tm : Term) (expr : Expr) : ElabRuleTerm :=
  if let some decl := expr.constName? then
    .const decl
  else
    .term tm expr

end Aesop.ElabRuleTerm
