-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Env.Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b","mathematical_subject":"Foundations.Unclassified","original_sha256":"95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Boolean.Syntax

/-!
# Folder.Boolean.Semantics

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.semantics
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Env.Variant95f40e53db04aff4b44490114d080e4650e5ea3f860c180b90473ead3e927a5b

namespace Folder
namespace Boolean

def Env := Nat → Bool

namespace BoolExpr

def eval : BoolExpr → Env → Bool
  | var n, ρ => ρ n
  | tru, _ => true
  | fls, _ => false
  | not e, ρ => ! eval e ρ
  | and a b, ρ => eval a ρ && eval b ρ
  | or a b, ρ => eval a ρ || eval b ρ
  | xor a b, ρ => Bool.xor (eval a ρ) (eval b ρ)

@[simp]
theorem eval_var (n : Nat) (ρ : Env) :
    (var n).eval ρ = ρ n :=
  rfl

@[simp]
theorem eval_tru (ρ : Env) :
    tru.eval ρ = true :=
  rfl

@[simp]
theorem eval_fls (ρ : Env) :
    fls.eval ρ = false :=
  rfl

@[simp]
theorem eval_not (e : BoolExpr) (ρ : Env) :
    (not e).eval ρ = ! e.eval ρ :=
  rfl

@[simp]
theorem eval_and (a b : BoolExpr) (ρ : Env) :
    (and a b).eval ρ = (a.eval ρ && b.eval ρ) :=
  rfl

@[simp]
theorem eval_or (a b : BoolExpr) (ρ : Env) :
    (or a b).eval ρ = (a.eval ρ || b.eval ρ) :=
  rfl

@[simp]
theorem eval_xor (a b : BoolExpr) (ρ : Env) :
    (xor a b).eval ρ = Bool.xor (a.eval ρ) (b.eval ρ) :=
  rfl

end BoolExpr

end Boolean
end Folder
