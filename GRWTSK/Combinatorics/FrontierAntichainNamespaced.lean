-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Requirement.Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Requirement.Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ProofStrategy/FrontierAntichain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Prod

/-!
# Antichain algebra of unresolved route leaves

`zero` means no represented finite route. `one` means a complete route with no
unresolved leaves.  They are deliberately distinct.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Requirement.Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc

namespace Mathematics.ProofStrategy

universe u

abbrev Requirement (Obligation : Type u) :=
  Finset Obligation

abbrev FrontierFamily (Obligation : Type u) :=
  Finset (Requirement Obligation)

def frontierZero
    (Obligation : Type u) :
    FrontierFamily Obligation :=
  ∅

def frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    FrontierFamily Obligation :=
  {∅}

def InclusionMinimal
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation)
    (candidate : Requirement Obligation) : Prop :=
  candidate ∈ family ∧
    ∀ other ∈ family, other ⊆ candidate → candidate ⊆ other

noncomputable def normalizeFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact family.filter (InclusionMinimal family)

noncomputable def frontierOr
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation :=
  normalizeFrontier (left ∪ right)

noncomputable def frontierAnd
    {Obligation : Type u}
    [DecidableEq Obligation]
    (left right : FrontierFamily Obligation) :
    FrontierFamily Obligation := by
  classical
  exact normalizeFrontier
    ((left.product right).image fun pair => pair.1 ∪ pair.2)

theorem frontierZero_ne_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    frontierZero Obligation ≠ frontierOne Obligation := by
  simp [frontierZero, frontierOne]

@[simp] theorem empty_mem_frontierOne
    (Obligation : Type u)
    [DecidableEq Obligation] :
    (∅ : Requirement Obligation) ∈ frontierOne Obligation := by
  simp [frontierOne]

end Mathematics.ProofStrategy
