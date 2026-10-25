# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Evaluation.Variant7edbd0ed9e24b4b1c512e954a3d2f440d223c50fd028dc834601228f8c883980

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddd8c438d332c2cca648f528476165594f09eb6f` · SHA-256 `586e2d338351c268bbcad7a9e70d20ab32bc4618de517ef9cbb6bf37e0f72b17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Eval.Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b","mathematical_subject":"Foundations.Unclassified","original_sha256":"a44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/Evaluation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Carrier

/-!
# Propositional evaluation

Evaluation is the unique structural fold from the free formula carrier into
`Bool` under a supplied valuation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Evaluate a formula under a Boolean valuation. -/
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

/-- Formula evaluation is extensional in the valuation. -/
theorem eval_congr
    {ν μ : Valuation α}
    (h : ∀ a, ν a = μ a)
    (p : Formula α) :
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

end Mathematics.Boolean.Formula
```
