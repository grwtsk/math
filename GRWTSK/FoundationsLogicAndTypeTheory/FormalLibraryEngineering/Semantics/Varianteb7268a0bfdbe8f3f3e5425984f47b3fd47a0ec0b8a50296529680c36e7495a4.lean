-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","mathematical_subject":"Foundations.Unclassified","original_sha256":"c2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Boolean/Formula/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Boolean.Formula.Evaluation

/-!
# Propositional semantic relations

These predicates are transparent definitions over executable evaluation.
They carry no theorem authority by themselves.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variantc2fcfb02a2f7df179034d00143dde15d8b8e34b970056d7f8e45060b730d7a3b

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Satisfaction under one valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- Truth under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- Truth under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- Falsity under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Mathematics.Boolean.Formula
