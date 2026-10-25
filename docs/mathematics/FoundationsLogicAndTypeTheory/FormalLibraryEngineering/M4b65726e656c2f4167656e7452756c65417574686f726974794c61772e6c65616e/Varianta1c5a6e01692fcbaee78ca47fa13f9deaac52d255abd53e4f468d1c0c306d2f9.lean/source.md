# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e.Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f904bb66a5e19cbdec5226624a55115bdd877092` · SHA-256 `5e9cedaaa247ea75dcd687356c77a11690c172822833cdb5bc48e4eeea584526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgentRuleFileKind.Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AgentRuleFileKind.Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514","mathematical_subject":"Foundations.Unclassified","original_sha256":"9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e


/- source-tree-label: STL1|L|addr=11001101|role=proof_code_atom|slug=kernel-agentruleauthoritylaw|owner=canonical_owner|core=Kernel/AgentRuleAuthorityLaw.lean|leaf=M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgentRuleFileKind.Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514

set_option autoImplicit false

namespace Think.Kernel

/-
Agent rule authority law.

This file attaches Zed-style AI rules to the normalized flip/spin law. A rule is
prompt/instruction context inserted automatically from project files, manually
from a rule library, or migrated into skills/AGENTS.md. A rule can affect
routing and instruction context, but it cannot by itself create checked proof or
trusted import authority.
-/

/-- Supported rule filenames and compatibility aliases. -/
inductive AgentRuleFileKind where
  | dotRules
  | cursorRules
  | windsurfRules
  | clineRules
  | githubCopilotInstructions
  | agentMd
  | agentsMd
  | claudeMd
  | geminiMd
deriving Repr, DecidableEq

/-- Rule insertion mode. -/
inductive AgentRuleInsertionMode where
  | autoIncluded
  | onDemandMention
  | defaultRule
  | migratedToSkill
  | migratedToAgentsMd
deriving Repr, DecidableEq

/-- Whether the rule library path is still current or has migrated to skills. -/
inductive AgentRuleGeneration where
  | legacyRulesLibrary
  | skillMigration
deriving Repr, DecidableEq

/-- Minimal Zed-compatible rule surface. -/
structure AgentRuleSurface where
  fileKind : AgentRuleFileKind
  insertionMode : AgentRuleInsertionMode
  generation : AgentRuleGeneration
  trust : AgentSkillTrustState
  permission : AgentSkillPermissionState
  content : String
deriving Repr, DecidableEq

/-- Rules are instruction context, so their own authority state is definition-only. -/
def AgentRuleSurface.authorityState
    (_R : AgentRuleSurface) : AuthorityState :=
  AuthorityState.definitionOnly

/-- Rules have inert structure spin. -/
theorem agent_rule_authority_spin
    (R : AgentRuleSurface) :
    R.authorityState.toSpin = AuthoritySpin.inertStructure := by
  rfl

/-- Rules do not have proof-positive authority spin. -/
theorem agent_rule_authority_spin_sector
    (R : AgentRuleSurface) :
    R.authorityState.toSpinSector = AuthoritySpinSector.inert := by
  rfl

/-- Rules do not supply checkedProof or trustedImport authority. -/
theorem agent_rule_authority_not_checked_or_trusted
    (R : AgentRuleSurface) :
    R.authorityState ≠ AuthorityState.checkedProof ∧
      R.authorityState ≠ AuthorityState.trustedImport := by
  constructor <;> intro h <;> contradiction

/-- A project rule is loadable only when trusted and permission is granted. -/
def AgentRuleSurface.mayLoad
    (R : AgentRuleSurface) : Prop :=
  R.trust = AgentSkillTrustState.trusted ∧
    R.permission = AgentSkillPermissionState.granted

/-- Default rules are auto-included rule context. -/
def AgentRuleSurface.isDefaultRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.defaultRule

/-- On-demand rules are manually mentioned legacy rule context. -/
def AgentRuleSurface.isOnDemandRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.onDemandMention

/-- Auto-included project rules are automatic context. -/
def AgentRuleSurface.isAutoIncludedRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.autoIncluded

/-- Migrated non-default rules become slash/manual skills. -/
def AgentRuleSurface.isMigratedSkillRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.migratedToSkill

/-- Migrated default rules become global AGENTS.md context. -/
def AgentRuleSurface.isMigratedAgentsMdRule
    (R : AgentRuleSurface) : Prop :=
  R.insertionMode = AgentRuleInsertionMode.migratedToAgentsMd

/-- Rule attachment to a statement surface. -/
structure RuleAttachedStatement where
  statement : FormalStatementSurface
  rule : AgentRuleSurface
  ruleMayLoad : rule.mayLoad

/-- A loaded rule does not alter the underlying statement authority field. -/
def RuleAttachedStatement.authorityPreserved
    (A : RuleAttachedStatement) : Prop :=
  A.statement.authority = A.statement.authority

/-- Authority preservation is reflexive: attaching a rule is not an authority mutation. -/
theorem rule_attachment_preserves_authority
    (A : RuleAttachedStatement) :
    A.authorityPreserved := by
  rfl

/-- A rule-attached statement may forward exactly under the same normalized skill/kernel gate. -/
def RuleAttachedStatement.mayForward
    (A : RuleAttachedStatement) : Prop :=
  SkillAuthorityMayForward A.statement.toFlipSurface

/-- Rule attachment does not replace the normalized forwarding gate. -/
theorem rule_attachment_forwarding_gate
    (A : RuleAttachedStatement) :
    A.mayForward ↔ SkillAuthorityMayForward A.statement.toFlipSurface := by
  rfl

/-- A checked theorem-like statement remains forwardable after rule attachment. -/
theorem rule_attached_checked_theorem_like_may_forward
    (A : RuleAttachedStatement)
    (hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.checkedProof) :
    A.mayForward := by
  unfold RuleAttachedStatement.mayForward
  unfold SkillAuthorityMayForward
  constructor
  · unfold StatementAuthorityFlipSurface.theoremLikeKindActive
    refine ⟨A.statement.kind, hk, ?_⟩
    exact formal_statement_kind_flip_active A.statement
  · apply checked_proof_authority_gives_proof_spin
    rw [← ha]
    exact formal_statement_authority_flip_active A.statement

/-- A trusted-import theorem-like statement remains forwardable after rule attachment. -/
theorem rule_attached_trusted_import_theorem_like_may_forward
    (A : RuleAttachedStatement)
    (hk : A.statement.kind.isTheoremLike = true)
    (ha : A.statement.authority = AuthorityState.trustedImport) :
    A.mayForward := by
  unfold RuleAttachedStatement.mayForward
  unfold SkillAuthorityMayForward
  constructor
  · unfold StatementAuthorityFlipSurface.theoremLikeKindActive
    refine ⟨A.statement.kind, hk, ?_⟩
    exact formal_statement_kind_flip_active A.statement
  · apply trusted_import_authority_gives_proof_spin
    rw [← ha]
    exact formal_statement_authority_flip_active A.statement

/-- A rule attached to an open-residue theorem-like statement does not make it forwardable. -/
theorem rule_attached_open_residue_theorem_like_not_may_forward
    (A : RuleAttachedStatement)
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

/-- Non-default rule migration targets skill invocation. -/
structure RuleToSkillMigration where
  sourceRule : AgentRuleSurface
  targetSkill : AgentSkillSurface
  sourceMigrated : sourceRule.insertionMode = AgentRuleInsertionMode.migratedToSkill
  targetManualOnly : targetSkill.disableModelInvocation = true

/-- Migrated non-default rules become manual-only skills. -/
theorem rule_to_skill_migration_manual_only
    (M : RuleToSkillMigration) :
    M.targetSkill.disableModelInvocation = true :=
  M.targetManualOnly

/-- Default rule migration targets AGENTS.md-style always-included context. -/
structure DefaultRuleToAgentsMdMigration where
  sourceRule : AgentRuleSurface
  sourceDefault : sourceRule.insertionMode = AgentRuleInsertionMode.defaultRule
  targetAgentsMd : AgentRuleSurface
  targetMigrated : targetAgentsMd.insertionMode = AgentRuleInsertionMode.migratedToAgentsMd

/-- Default rules migrate to AGENTS.md context. -/
theorem default_rule_migrates_to_agents_md
    (M : DefaultRuleToAgentsMdMigration) :
    M.targetAgentsMd.insertionMode = AgentRuleInsertionMode.migratedToAgentsMd :=
  M.targetMigrated

/-- Rule attachment and skill attachment have the same forwarding gate. -/
theorem rule_and_skill_attachment_same_forwarding_gate
    (R : RuleAttachedStatement)
    (S : SkillAttachedStatement)
    (h : R.statement = S.statement) :
    R.mayForward ↔ S.mayForward := by
  unfold RuleAttachedStatement.mayForward
  unfold SkillAttachedStatement.mayForward
  rw [h]

end Think.Kernel
```
