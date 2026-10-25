# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f417574686f72697479426f756e646172792e6c65616e.Variant7428e00b2dc13a9f6996bdb618239ae543aa5c590453edfaa43075a012e9e082

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a280c29cf7cfe1f3aa93f91e2b0e3729104270a` · SHA-256 `25e477ab4fa243b6c07fd2831a104a7f8e22ad996b462ea44d112c4f9dea5d5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimRecord.Varianta696521921044ca262f03219dc1f9d2f095a86de0661be288f32012ae328cb8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a696521921044ca262f03219dc1f9d2f095a86de0661be288f32012ae328cb8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClaimRecord.Varianta696521921044ca262f03219dc1f9d2f095a86de0661be288f32012ae328cb8f","mathematical_subject":"Foundations.Unclassified","original_sha256":"a696521921044ca262f03219dc1f9d2f095a86de0661be288f32012ae328cb8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit0/Bit0/Bit1/M506970656c696e652f417574686f72697479426f756e646172792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f466f756e646174696f6e2e6c65616e

/- source-tree-label: STL1|L|addr=001001|role=proof_code_atom|slug=pipeline-authorityboundary|owner=canonical_owner|core=Pipeline/AuthorityBoundary.lean|leaf=M506970656c696e652f417574686f72697479426f756e646172792e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimRecord.Varianta696521921044ca262f03219dc1f9d2f095a86de0661be288f32012ae328cb8f

set_option autoImplicit false

namespace Think.Codex.Authority

abbrev AdmissionStatus := Think.Codex.Foundation.StatusConstant

structure ClaimRecord where
  status : AdmissionStatus
  checkedProofImported : Bool
  externalHypothesesDischarged : Bool

def Authority (claim : ClaimRecord) : Prop :=
  (claim.status = .checked_theorem
    /\ claim.checkedProofImported = true)
  \/
  (claim.status = .externally_theorem_supported
    /\ claim.externalHypothesesDischarged = true)

theorem checked_theorem_authority_requires_import
    (claim : ClaimRecord) :
    Authority claim ->
      claim.status = .checked_theorem ->
        claim.checkedProofImported = true := by
  intro hAuthority hStatus
  cases hAuthority with
  | inl hChecked =>
      exact hChecked.right
  | inr hExternal =>
      rw [hStatus] at hExternal
      cases hExternal.left

theorem external_authority_requires_discharge
    (claim : ClaimRecord) :
    Authority claim ->
      claim.status = .externally_theorem_supported ->
        claim.externalHypothesesDischarged = true := by
  intro hAuthority hStatus
  cases hAuthority with
  | inl hChecked =>
      rw [hStatus] at hChecked
      cases hChecked.left
  | inr hExternal =>
      exact hExternal.right

theorem finite_witness_only_has_no_authority
    (checkedProofImported externalHypothesesDischarged : Bool) :
    Not (Authority
      { status := .finite_witness_only,
        checkedProofImported := checkedProofImported,
        externalHypothesesDischarged := externalHypothesesDischarged }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.left
  | inr hExternal =>
      cases hExternal.left

theorem candidate_generalization_has_no_authority
    (checkedProofImported externalHypothesesDischarged : Bool) :
    Not (Authority
      { status := .candidate_generalization,
        checkedProofImported := checkedProofImported,
        externalHypothesesDischarged := externalHypothesesDischarged }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.left
  | inr hExternal =>
      cases hExternal.left

theorem refused_has_no_authority
    (checkedProofImported externalHypothesesDischarged : Bool) :
    Not (Authority
      { status := .refused,
        checkedProofImported := checkedProofImported,
        externalHypothesesDischarged := externalHypothesesDischarged }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.left
  | inr hExternal =>
      cases hExternal.left

theorem checked_theorem_without_import_has_no_authority
    (externalHypothesesDischarged : Bool) :
    Not (Authority
      { status := .checked_theorem,
        checkedProofImported := false,
        externalHypothesesDischarged := externalHypothesesDischarged }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.right
  | inr hExternal =>
      cases hExternal.left

theorem external_without_discharge_has_no_authority
    (checkedProofImported : Bool) :
    Not (Authority
      { status := .externally_theorem_supported,
        checkedProofImported := checkedProofImported,
        externalHypothesesDischarged := false }) := by
  intro hAuthority
  cases hAuthority with
  | inl hChecked =>
      cases hChecked.left
  | inr hExternal =>
      cases hExternal.right

end Think.Codex.Authority
```
