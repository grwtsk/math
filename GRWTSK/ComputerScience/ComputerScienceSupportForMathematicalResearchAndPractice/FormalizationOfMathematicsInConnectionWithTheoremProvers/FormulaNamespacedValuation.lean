-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variantf2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Formula.Variantf2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467","mathematical_subject":"Foundations.Unclassified","original_sha256":"f2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Formula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Boolean formulas

Object nucleus for propositional formulas and Boolean valuations. Evaluation,
semantics, normal forms, traversal, and laws are provided by
`Boolean.Formula.*` leaves.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variantf2c47135ffe0461533115ed6545dd24a859b7bccdbc1f55e993f4f03b77f9467

namespace Boolean

universe u

/-- A Boolean valuation for atoms of type `α`. -/
abbrev Valuation (α : Type u) := α → Bool

/-- Propositional Boolean formulae over atoms of type `α`. -/
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

/-- The constant Boolean formula determined by a Boolean value. -/
def const : Bool → Formula α
  | false => .falsum
  | true => .truth

end Formula

end Boolean
