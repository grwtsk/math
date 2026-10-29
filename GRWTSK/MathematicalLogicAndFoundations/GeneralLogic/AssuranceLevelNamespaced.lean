-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AssuranceLevel.Variant6bc45b79884db30df68ca2b858a1546c089f7a2a104e2ae85c3d1c8445a8545e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bc45b79884db30df68ca2b858a1546c089f7a2a104e2ae85c3d1c8445a8545e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AssuranceLevel.Variant6bc45b79884db30df68ca2b858a1546c089f7a2a104e2ae85c3d1c8445a8545e","mathematical_subject":"Logic.Foundations","original_sha256":"6bc45b79884db30df68ca2b858a1546c089f7a2a104e2ae85c3d1c8445a8545e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/AssuranceLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Authority

/-!
# Progressive assurance levels

Assurance level records how far evidence has progressed through the assurance
workflow.  It is deliberately independent of `AuthorityClass`: moving from a
development report to a release or audit record does not turn external data
into a kernel proof.

Wall-clock compliance is not represented by these definitions.  Deadlines and
process cancellation are executable-conformance obligations.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AssuranceLevel.Variant6bc45b79884db30df68ca2b858a1546c089f7a2a104e2ae85c3d1c8445a8545e

namespace Surface.ContinuousAssurance

/-- Ordered assurance levels, from interactive feedback to formal audit. -/
inductive AssuranceLevel
  | development
  | localConformance
  | integration
  | release
  | formalAudit
  deriving DecidableEq, Repr

namespace AssuranceLevel

/-- Numeric rank used only for the declared progressive ordering. -/
def rank : AssuranceLevel → Nat
  | .development => 0
  | .localConformance => 1
  | .integration => 2
  | .release => 3
  | .formalAudit => 4

/-- `AtMost earlier later` means that `later` is no weaker as a stage. -/
def AtMost (earlier later : AssuranceLevel) : Prop :=
  earlier.rank ≤ later.rank

instance (earlier later : AssuranceLevel) : Decidable (AtMost earlier later) :=
  inferInstanceAs (Decidable (earlier.rank ≤ later.rank))

/-- Development is the lowest assurance level. -/
theorem development_is_lowest (level : AssuranceLevel) :
    AtMost .development level := by
  cases level <;> decide

/-- Every assurance level is at most itself. -/
theorem atMost_refl (level : AssuranceLevel) : AtMost level level :=
  Nat.le_refl _

/-- Progressive ordering is transitive. -/
theorem atMost_trans
    {first second third : AssuranceLevel}
    (firstSecond : AtMost first second)
    (secondThird : AtMost second third) :
    AtMost first third :=
  Nat.le_trans firstSecond secondThird

/-- A level cannot be strictly below itself. -/
theorem no_strict_self_advance (level : AssuranceLevel) :
    ¬ level.rank < level.rank :=
  Nat.lt_irrefl _

end AssuranceLevel

/-- Canonical adjacent progress edges. -/
inductive AssuranceAdvance : AssuranceLevel → AssuranceLevel → Prop
  | developmentToLocal : AssuranceAdvance .development .localConformance
  | localToIntegration : AssuranceAdvance .localConformance .integration
  | integrationToRelease : AssuranceAdvance .integration .release
  | releaseToAudit : AssuranceAdvance .release .formalAudit

/-- Every canonical assurance edge is monotone. -/
theorem assuranceAdvance_monotone
    {earlier later : AssuranceLevel}
    (edge : AssuranceAdvance earlier later) :
    earlier.AtMost later := by
  cases edge <;> decide

end Surface.ContinuousAssurance
