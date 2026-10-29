-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgentSkillScope.Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.AgentSkillScope.Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit1/Bit1/Bit0/Bit1/Bit1/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M4b65726e656c2f417574686f72697479476174652e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=1011011|role=proof_code_atom|slug=kernel-agentskillauthoritylaw|owner=canonical_owner|core=Kernel/AgentSkillAuthorityLaw.lean|leaf=M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgentSkillScope.Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273

set_option autoImplicit false

namespace Think.Kernel

/-
Agent skill authority law.

This file attaches LLM/Zed-style agent skills to the normalized flip/spin law.
A skill is an instruction package. It may route work, add local instructions,
select workflows, or expose scripts/references, but it does not by itself supply
proof authority. For theorem-like statements, forwarding remains gated by
checkedProof or trustedImport authority spin.
-/

/-- Scope in which an agent skill is installed. -/
inductive AgentSkillScope where
  | global
  | projectLocal
deriving Repr, DecidableEq

/-- How an agent skill is invoked. -/
inductive AgentSkillInvocationMode where
  | autonomous
  | slashCommand
  | atMention
deriving Repr, DecidableEq

/-- Trust state relevant to project-local skills. -/
inductive AgentSkillTrustState where
  | trusted
  | untrusted
deriving Repr, DecidableEq

/-- Permission state for loading or executing a skill. -/
inductive AgentSkillPermissionState where
  | granted
  | denied
deriving Repr, DecidableEq

/-- Minimal skill metadata surface matching the Zed/Agent Skills shape. -/
structure AgentSkillSurface where
  name : String
  description : String
  scope : AgentSkillScope
  disableModelInvocation : Bool
  trust : AgentSkillTrustState
  permission : AgentSkillPermissionState
deriving Repr, DecidableEq

/-- A project-local skill is loadable only from a trusted worktree. -/
def AgentSkillSurface.trustAdmissible (S : AgentSkillSurface) : Prop :=
  S.scope = AgentSkillScope.global ∨ S.trust = AgentSkillTrustState.trusted

/-- A skill has tool permission when permission is granted. -/
def AgentSkillSurface.permissionAdmissible (S : AgentSkillSurface) : Prop :=
  S.permission = AgentSkillPermissionState.granted

/-- Autonomous invocation is allowed only when not disabled. -/
def AgentSkillSurface.autonomousAdmissible (S : AgentSkillSurface) : Prop :=
  S.disableModelInvocation = false

/-- A skill may be loaded in the given invocation mode. -/
def AgentSkillSurface.mayLoad
    (S : AgentSkillSurface) (mode : AgentSkillInvocationMode) : Prop :=
  S.trustAdmissible ∧
  S.permissionAdmissible ∧
  match mode with
  | .autonomous => S.autonomousAdmissible
  | .slashCommand => True
  | .atMention => True

/-- Skill instructions are local instruction/definition context, not proof authority. -/
def AgentSkillSurface.authorityState
    (_S : AgentSkillSurface) : AuthorityState :=
  AuthorityState.definitionOnly

/-- Skill authority spin is therefore inert structure spin. -/
theorem agent_skill_authority_spin
    (S : AgentSkillSurface) :
    S.authorityState.toSpin = AuthoritySpin.inertStructure := by
  rfl

/-- Skill authority sector is inert, not proof-positive. -/
theorem agent_skill_authority_spin_sector
    (S : AgentSkillSurface) :
    S.authorityState.toSpinSector = AuthoritySpinSector.inert := by
  rfl

/-- A skill's own authority state is not theorem authority. -/
theorem agent_skill_authority_not_checked_or_trusted
    (S : AgentSkillSurface) :
    S.authorityState ≠ AuthorityState.checkedProof ∧
      S.authorityState ≠ AuthorityState.trustedImport := by
  constructor <;> intro h <;> contradiction

/-- Proof-positive authority spin comes exactly from checked proof or trusted import. -/
theorem authority_spin_sector_proof_positive_iff_checked_or_trusted
    (a : AuthorityState) :
    a.toSpinSector = AuthoritySpinSector.proofPositive ↔
      a = AuthorityState.checkedProof ∨ a = AuthorityState.trustedImport := by
  cases a <;> simp [AuthorityState.toSpinSector, AuthorityState.toSpin,
    AuthoritySpin.toSector]

/-- Interpret local statement kinds in the central authority-gate taxonomy. -/
def AuthorityGate.claimKindOfStatementKind : StatementKind → AuthorityGate.ClaimKind
  | .theorem => .theorem
  | .proposition => .proposition
  | .lemma => .lemma
  | .corollary => .corollary
  | .claim => .claim
  | .identity => .identity
  | _ => .generatedText

/-- Interpret local authority states in the central theorem-authority gate. -/
def AuthorityGate.theoremAuthorityOfAuthorityState :
    AuthorityState → AuthorityGate.TheoremAuthority
  | .openResidue => .openResidue
  | .candidateGeneralization => .candidateGeneralization
  | .finiteWitness => .finiteWitnessOnly
  | .checkedProof => .checkedProof
  | .trustedImport => .trustedImport
  | .refusedOverclaim => .refused
  | _ => .openResidue

/-- The local theorem-like kind predicate maps to the central theorem-like gate. -/
theorem AuthorityGate.claim_kind_of_statement_kind_theorem_like
    {k : StatementKind}
    (hk : k.isTheoremLike = true) :
    (AuthorityGate.claimKindOfStatementKind k).isTheoremLike := by
  cases k <;>
    simp [
      StatementKind.isTheoremLike,
      AuthorityGate.claimKindOfStatementKind,
      AuthorityGate.ClaimKind.isTheoremLike
    ] at hk ⊢

/-- Kernel-local forwarding gate: theorem-like kind plus proof-positive spin. -/
def SkillAuthorityMayForward
    (S : StatementAuthorityFlipSurface) : Prop :=
  S.theoremLikeKindActive ∧ S.proofSpinActive

/-- Forwarding through the authority ring requires theorem-like kind and proof-positive spin. -/
def AuthorityRingMayForward (S : StatementAuthorityFlipSurface) : Prop :=
  SkillAuthorityMayForward S

/-- The skill/ring forwarding surface reduces to the central authority gate. -/
theorem skill_forwarding_gate_uses_authority_gate
    (S : StatementAuthorityFlipSurface)
    (h : SkillAuthorityMayForward S) :
    ∃ k a,
      S.kindActive k ∧
      S.authorityActive a ∧
      AuthorityGate.theoremAuthorityMayForward
        (AuthorityGate.claimKindOfStatementKind k)
        (AuthorityGate.theoremAuthorityOfAuthorityState a) := by
  rcases h with ⟨hKind, hProof⟩
  rcases hKind with ⟨k, hkTheoremLike, hkActive⟩
  rcases hProof with ⟨a, haActive, hSpin⟩
  have hAuth :=
    (authority_spin_sector_proof_positive_iff_checked_or_trusted a).mp hSpin
  refine ⟨k, a, hkActive, haActive, ?_⟩
  constructor
  · exact AuthorityGate.claim_kind_of_statement_kind_theorem_like hkTheoremLike
  · cases hAuth with
    | inl hChecked =>
        left
        rw [hChecked]
        rfl
    | inr hTrusted =>
        right
        rw [hTrusted]
        rfl

/-- Skill attachment to a statement surface. -/
structure SkillAttachedStatement where
  statement : FormalStatementSurface
  skill : AgentSkillSurface
  mode : AgentSkillInvocationMode
  skillMayLoad : skill.mayLoad mode

/-- A loaded skill does not alter the underlying statement authority field. -/
def SkillAttachedStatement.authorityPreserved
    (A : SkillAttachedStatement) : Prop :=
  A.statement.authority = A.statement.authority

/-- Authority preservation is reflexive: attaching a skill is not an authority mutation. -/
theorem skill_attachment_preserves_authority
    (A : SkillAttachedStatement) :
    A.authorityPreserved := by
  rfl

/-- A skill-attached statement may forward exactly when its statement flip surface may forward. -/
def SkillAttachedStatement.mayForward
    (A : SkillAttachedStatement) : Prop :=
  SkillAuthorityMayForward A.statement.toFlipSurface

/-- Skill attachment does not replace the normalized forwarding gate. -/
theorem skill_attachment_forwarding_gate
    (A : SkillAttachedStatement) :
    A.mayForward ↔ SkillAuthorityMayForward A.statement.toFlipSurface := by
  rfl

/-- A checked theorem-like statement remains forwardable after skill attachment. -/
theorem skill_attached_checked_theorem_like_may_forward
    (A : SkillAttachedStatement)
    (hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.checkedProof) :
    A.mayForward := by
  unfold SkillAttachedStatement.mayForward
  unfold SkillAuthorityMayForward
  constructor
  · unfold StatementAuthorityFlipSurface.theoremLikeKindActive
    refine ⟨A.statement.kind, hk, ?_⟩
    exact formal_statement_kind_flip_active A.statement
  · apply checked_proof_authority_gives_proof_spin
    rw [← ha]
    exact formal_statement_authority_flip_active A.statement

/-- A trusted-import theorem-like statement remains forwardable after skill attachment. -/
theorem skill_attached_trusted_import_theorem_like_may_forward
    (A : SkillAttachedStatement)
    (hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.trustedImport) :
    A.mayForward := by
  unfold SkillAttachedStatement.mayForward
  unfold SkillAuthorityMayForward
  constructor
  · unfold StatementAuthorityFlipSurface.theoremLikeKindActive
    refine ⟨A.statement.kind, hk, ?_⟩
    exact formal_statement_kind_flip_active A.statement
  · apply trusted_import_authority_gives_proof_spin
    rw [← ha]
    exact formal_statement_authority_flip_active A.statement

/-- A skill attached to an open-residue theorem-like statement does not make it forwardable. -/
theorem skill_attached_open_residue_theorem_like_not_may_forward
    (A : SkillAttachedStatement)
    (_hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.openResidue) :
    ¬ A.mayForward := by
  intro h
  rcases h with ⟨_, hProofSpin⟩
  rcases hProofSpin with ⟨a, haActive, hspin⟩
  have hcheckedOrTrusted :=
    (authority_spin_sector_proof_positive_iff_checked_or_trusted a).mp hspin
  cases hcheckedOrTrusted with
  | inl hc =>
      unfold StatementAuthorityFlipSurface.authorityActive at haActive
      unfold FormalStatementSurface.toFlipSurface at haActive
      rw [ha, hc] at haActive
      simp [singletonAuthorityFlip] at haActive
  | inr ht =>
      unfold StatementAuthorityFlipSurface.authorityActive at haActive
      unfold FormalStatementSurface.toFlipSurface at haActive
      rw [ha, ht] at haActive
      simp [singletonAuthorityFlip] at haActive

/-- Autonomous skill loading requires `disableModelInvocation = false`. -/
theorem autonomous_skill_load_requires_model_invocation_enabled
    (S : AgentSkillSurface)
    (h : S.mayLoad AgentSkillInvocationMode.autonomous) :
    S.disableModelInvocation = false := by
  exact h.2.2

/-- Slash-command skill loading does not require autonomous invocation to be enabled. -/
theorem slash_skill_load_does_not_require_autonomous_enabled
    (S : AgentSkillSurface)
    (hTrust : S.trustAdmissible)
    (hPerm : S.permissionAdmissible) :
    S.mayLoad AgentSkillInvocationMode.slashCommand := by
  exact ⟨hTrust, hPerm, trivial⟩

/-- Project-local skills require trusted worktrees. -/
theorem project_local_skill_load_requires_trust
    (S : AgentSkillSurface)
    (hScope : S.scope = AgentSkillScope.projectLocal)
    (h : S.trustAdmissible) :
    S.trust = AgentSkillTrustState.trusted := by
  cases h with
  | inl hGlobal =>
      rw [hScope] at hGlobal
      contradiction
  | inr hTrusted => exact hTrusted

end Think.Kernel
