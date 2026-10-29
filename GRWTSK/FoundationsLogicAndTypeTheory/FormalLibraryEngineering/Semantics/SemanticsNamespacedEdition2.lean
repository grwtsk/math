-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","mathematical_subject":"Foundations.Unclassified","original_sha256":"6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Formula/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula.Eval


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529

namespace Boolean

universe u

namespace Formula

variable {α : Type u}

/-- Satisfaction under a valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- A formula true under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- A formula true under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- A formula false under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Formula

end Boolean
