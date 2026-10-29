-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Eval.Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe","mathematical_subject":"Foundations.Unclassified","original_sha256":"377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Formula/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant377f2778b8d0ad14acad622894f9af43951d9ccd74f9b1966f1273bb1965c3fe

namespace Boolean

universe u

namespace Formula

variable {α : Type u}

/-- Evaluate a formula under a valuation. -/
def eval (ν : Valuation α) : Formula α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(eval ν p)
  | .conj p q => eval ν p && eval ν q
  | .disj p q => eval ν p || eval ν q
  | .impl p q => !(eval ν p) || eval ν q
  | .eqv p q => eval ν p == eval ν q

@[simp] theorem eval_var (ν : Valuation α) (a : α) :
    eval ν (.var a) = ν a := rfl

@[simp] theorem eval_falsum (ν : Valuation α) :
    eval ν (Formula.falsum : Formula α) = false := rfl

@[simp] theorem eval_truth (ν : Valuation α) :
    eval ν (Formula.truth : Formula α) = true := rfl

@[simp] theorem eval_neg (ν : Valuation α) (p : Formula α) :
    eval ν (.neg p) = !(eval ν p) := rfl

@[simp] theorem eval_conj (ν : Valuation α) (p q : Formula α) :
    eval ν (.conj p q) = (eval ν p && eval ν q) := rfl

@[simp] theorem eval_disj (ν : Valuation α) (p q : Formula α) :
    eval ν (.disj p q) = (eval ν p || eval ν q) := rfl

@[simp] theorem eval_impl (ν : Valuation α) (p q : Formula α) :
    eval ν (.impl p q) = (!(eval ν p) || eval ν q) := rfl

@[simp] theorem eval_eqv (ν : Valuation α) (p q : Formula α) :
    eval ν (.eqv p q) = (eval ν p == eval ν q) := rfl

@[simp] theorem eval_const (ν : Valuation α) (b : Bool) :
    eval ν (const (α := α) b) = b := by
  cases b <;> rfl

/-- Evaluation is extensional in the valuation. -/
theorem eval_congr {ν μ : Valuation α} (h : ∀ a, ν a = μ a) (p : Formula α) :
    eval ν p = eval μ p := by
  induction p with
  | var a => exact h a
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [eval, ih]
  | conj p q ihp ihq => simp [eval, ihp, ihq]
  | disj p q ihp ihq => simp [eval, ihp, ihq]
  | impl p q ihp ihq => simp [eval, ihp, ihq]
  | eqv p q ihp ihq => simp [eval, ihp, ihq]

end Formula

end Boolean
