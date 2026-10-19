import Think.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f466f756e646174696f6e2e6c65616e

/- source-tree-label: STL1|L|addr=001001|role=proof_code_atom|slug=pipeline-authorityboundary|owner=canonical_owner|core=Pipeline/AuthorityBoundary.lean|leaf=M506970656c696e652f417574686f72697479426f756e646172792e6c65616e.lean -/

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
