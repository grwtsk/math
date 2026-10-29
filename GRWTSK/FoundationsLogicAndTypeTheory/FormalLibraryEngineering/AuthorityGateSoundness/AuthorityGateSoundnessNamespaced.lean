-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityPreservingStep.Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityPreservingStep.Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079","mathematical_subject":"Foundations.Unclassified","original_sha256":"4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/Bit0/M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f41646d697373696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=1111110|role=proof_code_atom|slug=validation-authoritygatesoundness|owner=canonical_owner|core=Validation/AuthorityGateSoundness.lean|leaf=M56616c69646174696f6e2f417574686f7269747947617465536f756e646e6573732e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityPreservingStep.Variant4087aa0df4a58b0ae0ac1fa17063c7f452b72491a9d4cda23d14895643d07079

set_option autoImplicit false

namespace Think.Validation.AuthorityGateSoundness

open Think.Kernel

/-
Authority-gate soundness.

This file packages the repository's repeated authority-boundary lemmas into a
single quantified surface. It proves a governance theorem about when a
theorem-like statement may be forwarded by the repository pipeline. It does not
prove any external mathematical target.
-/

/-- The theorem-forwarding predicate used by the formal authority gate. -/
def ForwardTheoremFiber (S : FormalStatementSurface) : Prop :=
  S.kind.isTheoremLike = true ∧ S.hasTheoremAuthority

/-- A finite pipeline step that preserves statement kind and authority state. -/
structure AuthorityPreservingStep where
  before : FormalStatementSurface
  after : FormalStatementSurface
  preservesKind : after.kind = before.kind
  preservesAuthority : after.authority = before.authority

/--
Main authority-gate soundness theorem.

If a theorem-like fiber forwards, then its authority field is exactly a checked
proof or a trusted import. The theorem-like kind is necessary but not sufficient.
-/
theorem authority_gate_sound
    (S : FormalStatementSurface) :
    ForwardTheoremFiber S →
      S.kind.isTheoremLike = true ∧
        (S.authority = AuthorityState.checkedProof ∨
          S.authority = AuthorityState.trustedImport) := by
  intro hForward
  exact hForward

/--
Completeness of the local gate for the two proof-positive authority states.

This is the converse direction for the gate itself, not a claim that any runtime
artifact can manufacture either authority state.
-/
theorem authority_gate_complete_for_checked_or_imported
    (S : FormalStatementSurface)
    (hk : S.kind.isTheoremLike = true)
    (ha :
      S.authority = AuthorityState.checkedProof ∨
        S.authority = AuthorityState.trustedImport) :
    ForwardTheoremFiber S := by
  exact ⟨hk, ha⟩

/-- Open, candidate, refused, and finite-witness states do not pass the theorem gate. -/
theorem residue_or_finite_witness_not_forwardable
    (S : FormalStatementSurface)
    (hResidueOrFinite : S.isResidueBearing ∨ S.isFiniteWitnessOnly) :
    ¬ ForwardTheoremFiber S := by
  intro hForward
  have hAuth := hForward.right
  cases hResidueOrFinite with
  | inl hResidue =>
      cases hResidue with
      | inl hOpen =>
          exact open_residue_not_theorem_authority S hOpen hAuth
      | inr hRest =>
          cases hRest with
          | inl hCandidate =>
              cases hAuth with
              | inl hChecked =>
                  rw [hCandidate] at hChecked
                  contradiction
              | inr hImport =>
                  rw [hCandidate] at hImport
                  contradiction
          | inr hRefused =>
              cases hAuth with
              | inl hChecked =>
                  rw [hRefused] at hChecked
                  contradiction
              | inr hImport =>
                  rw [hRefused] at hImport
                  contradiction
  | inr hFinite =>
      exact finite_witness_not_theorem_authority S hFinite hAuth

/--
Conservativity of finite authority-preserving pipeline steps.

A step that preserves the authority state cannot create theorem authority from a
non-authoritative input. Site routing, finite witnesses, receipts, and other
bookkeeping steps are expected to satisfy this kind of preservation contract.
-/
theorem authority_preserving_step_conservative
    (step : AuthorityPreservingStep)
    (hNoAuthority : ¬ step.before.hasTheoremAuthority) :
    ¬ step.after.hasTheoremAuthority := by
  intro hAfter
  apply hNoAuthority
  cases hAfter with
  | inl hChecked =>
      rw [step.preservesAuthority] at hChecked
      exact Or.inl hChecked
  | inr hImport =>
      rw [step.preservesAuthority] at hImport
      exact Or.inr hImport

/--
Conservativity for theorem forwarding.

If an authority-preserving step starts below theorem authority, the output
cannot become a forwarded theorem fiber, even if the statement kind remains
theorem-like.
-/
theorem residue_pipeline_conservative
    (step : AuthorityPreservingStep)
    (hNoAuthority : ¬ step.before.hasTheoremAuthority) :
    ¬ ForwardTheoremFiber step.after := by
  intro hForward
  exact
    authority_preserving_step_conservative step hNoAuthority hForward.right

/-- Proof-positive spin is equivalent to checked-proof or trusted-import authority. -/
theorem proof_positive_spin_exactly_checked_or_trusted
    (a : AuthorityState) :
    a.toSpinSector = AuthoritySpinSector.proofPositive ↔
      a = AuthorityState.checkedProof ∨ a = AuthorityState.trustedImport := by
  constructor
  · intro h
    cases a <;> simp [AuthorityState.toSpinSector, AuthorityState.toSpin,
      AuthoritySpin.toSector] at h
    · exact Or.inl rfl
    · exact Or.inr rfl
  · intro h
    cases h with
    | inl hChecked =>
        rw [hChecked]
        rfl
    | inr hImport =>
        rw [hImport]
        rfl

/-- The existing pipeline admission record exposes all three theorem-admission gates. -/
theorem admission_gate_sound
    (record : Think.Braid.Law.AdmissionRecord)
    (h : Think.Braid.Law.admittedAsTheorem record) :
    record.status = Think.Braid.Law.ClaimStatus.checkedTheorem ∧
      record.checkedLeanProof = true ∧
        record.externalDischarge = true := by
  exact h

end Think.Validation.AuthorityGateSoundness
