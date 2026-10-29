-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Formula.Variant5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Formula.Variant5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Bool.Basic

/-!
# Propositional formula carrier

The `ideas.md` formula neighborhood has no matching elementary carrier in
Mathlib.  This is the free finite propositional syntax over an atom type.
Evaluation and semantic relations remain separate leaves.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Formula.Variant5938ef015f19152fda9b70c3bae92a7f1b5d6eb734b89bc39d41043bb506981f

namespace Mathematics.Boolean

universe u

/-- A Boolean valuation assigns one truth value to every atom. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Free finite propositional formulas over atoms of type `α`. -/
inductive Formula (α : Type u) : Type u where
  | var : α → Formula α
  | falsum : Formula α
  | truth : Formula α
  | neg : Formula α → Formula α
  | conj : Formula α → Formula α → Formula α
  | disj : Formula α → Formula α → Formula α
  | impl : Formula α → Formula α → Formula α
  | eqv : Formula α → Formula α → Formula α
  deriving Repr, DecidableEq

namespace Formula

variable {α : Type u}

/-- Embed one Boolean constant into propositional syntax. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

end Formula

end Mathematics.Boolean
