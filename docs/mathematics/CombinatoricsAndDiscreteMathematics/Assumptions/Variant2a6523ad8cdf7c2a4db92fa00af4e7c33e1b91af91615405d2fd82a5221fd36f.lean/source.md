# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Assumptions.Variant2a6523ad8cdf7c2a4db92fa00af4e7c33e1b91af91615405d2fd82a5221fd36f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbd886ebda039ad80b423a27d8c611ffce5c5913` · SHA-256 `c7f40c5e2bd8edb0bb4e69536ac6c491ce6ba746e066e85e97f1ffdd0eb3555b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.JudgmentLanguage.Variant9d10d31acdf1e34a03bec6d847ef220ff18462efca7eef9229325a4488b104b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d10d31acdf1e34a03bec6d847ef220ff18462efca7eef9229325a4488b104b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.JudgmentLanguage.Variant9d10d31acdf1e34a03bec6d847ef220ff18462efca7eef9229325a4488b104b8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9d10d31acdf1e34a03bec6d847ef220ff18462efca7eef9229325a4488b104b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Assumptions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import Mathlib.Data.Finset.Basic

/-!
# Exact assumption discharge and dependent replay

Proposals contain identities and a complete finite premise inventory, not proofs.
Discharges contain actual proofs of interpreted, source- and scope-indexed
judgments. Replay applies a separately checked dependent derivation to every
discharged or remaining premise. Logical event order records freshness; runtime
source binding, proof execution and transitive axiom audit remain separate duties.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.JudgmentLanguage.Variant9d10d31acdf1e34a03bec6d847ef220ff18462efca7eef9229325a4488b104b8

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions

/-- Typed identities acquire mathematical meaning through a fixed interpretation. -/
structure JudgmentLanguage where
  /-- Exact source identity domain, supplied by the audited source adapter. -/
  Source : Type
  /-- Scope may contain domains, parameters, conventions and assumption contexts. -/
  Scope : Type
  /-- Statement schema identities are distinct from source or scope identities. -/
  Statement : Type
  /-- The actual proposition at each complete identity; labels alone are not authority. -/
  interpret : Source → Scope → Statement → Prop

/-- An assumption obligation has an exact source, mathematical scope and statement. -/
structure AssumptionObligation (language : JudgmentLanguage) where
  /-- Source whose content gives the intended meaning. -/
  source : language.Source
  /-- Full intended mathematical scope. -/
  scope : language.Scope
  /-- Statement interpreted in that source and scope. -/
  statement : language.Statement

/-- The actual proof obligation, rather than a success flag. -/
def AssumptionObligation.Holds {language : JudgmentLanguage}
    (obligation : AssumptionObligation language) : Prop :=
  language.interpret obligation.source obligation.scope obligation.statement

/-- A candidate declares every premise position before its consequence is checked. -/
structure ConditionalProposal (language : JudgmentLanguage) (count : ℕ) where
  /-- Exact target judgment; no proof of it is stored in the proposal. -/
  target : AssumptionObligation language
  /-- The entire ordered inventory; repeated positions are not silently discarded. -/
  assumptions : Fin count → AssumptionObligation language
  /-- Source-bound logical submission event. It is not a wall-clock claim. -/
  proposedAt : ℕ

/-- All declared premise positions, including source and scope at every position. -/
def InventoryPremises {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) : Prop :=
  ∀ index, (proposal.assumptions index).Holds

/-- A Lean-checked conditional derivation is separate from the original proposal. -/
structure ConditionalDerivation {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) : Prop where
  /-- Every mathematical premise is exposed in the input type. Axiom audit is additional. -/
  derive : InventoryPremises proposal → proposal.target.Holds

/-- Discharge requires a proof of this exact obligation and records a new proof event. -/
structure DischargedAssumption {language : JudgmentLanguage}
    (obligation : AssumptionObligation language) where
  /-- Source-bound proof event, distinct from the proposal or dependent replay. -/
  provedAt : ℕ
  /-- The accepted Lean proof is the certificate; a Boolean cannot populate this field. -/
  proof : obligation.Holds

/-- Every declared discharged position has its own exactly indexed proof. -/
def DischargeInventory {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count)) : Type :=
  ∀ index, index ∈ completed → DischargedAssumption (proposal.assumptions index)

/-- The exact complement of discharged positions remains a mathematical premise. -/
def RemainingPremises {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count)) : Prop :=
  ∀ index, index ∉ completed → (proposal.assumptions index).Holds

/-- Assemble all positions from discharges and the explicit complement; none can be dropped. -/
theorem assembleInventory {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (discharges : DischargeInventory proposal completed)
    (remaining : RemainingPremises proposal completed) : InventoryPremises proposal := by
  intro index
  by_cases present : index ∈ completed
  · exact (discharges index present).proof
  · exact remaining index present

/-- Replay is a new derivation event after both the proposal and every supplied proof event. -/
def FreshReplay {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (discharges : DischargeInventory proposal completed) (event : ℕ) : Prop :=
  proposal.proposedAt < event ∧ ∀ index present, (discharges index present).provedAt < event

/-- A rechecked object retains the checked derivation and exact proof inputs.
Its conclusion is computed by replay below, not stored as a mutable status bit. -/
structure RecheckedResult {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (discharges : DischargeInventory proposal completed) where
  /-- Independently checked dependent theorem for this precise proposal and inventory. -/
  derivation : ConditionalDerivation proposal
  /-- New source-bound logical replay event. -/
  replayedAt : ℕ
  /-- No replay event predates the proposal or any proof it consumes. -/
  fresh : FreshReplay proposal completed discharges replayedAt

/-- Construct a replay record only with a checked derivation, exact discharges and fresh event. -/
def recheck {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (discharges : DischargeInventory proposal completed)
    (derivation : ConditionalDerivation proposal) (event : ℕ)
    (fresh : FreshReplay proposal completed discharges event) :
    RecheckedResult proposal completed discharges :=
  ⟨derivation, event, fresh⟩

/-- Recompute the dependent proof from the bound derivation and complete proof inventory.
A partial discharge yields a conditional conclusion, with every remaining premise explicit. -/
theorem RecheckedResult.conclusion {language : JudgmentLanguage} {count : ℕ}
    {proposal : ConditionalProposal language count} {completed : Finset (Fin count)}
    {discharges : DischargeInventory proposal completed}
    (result : RecheckedResult proposal completed discharges)
    (remaining : RemainingPremises proposal completed) : proposal.target.Holds :=
  result.derivation.derive (assembleInventory proposal completed discharges remaining)

/-- Only an exhaustive discharge inventory removes every declared premise. -/
theorem RecheckedResult.closed_conclusion {language : JudgmentLanguage} {count : ℕ}
    {proposal : ConditionalProposal language count}
    {discharges : DischargeInventory proposal Finset.univ}
    (result : RecheckedResult proposal Finset.univ discharges) : proposal.target.Holds := by
  apply result.conclusion
  intro index missing
  exact False.elim (missing (Finset.mem_univ index))

/-- An impossible undisclosed remainder cannot be turned into a completed proof inventory. -/
theorem false_remaining_blocks_closure {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (index : Fin count) (missing : index ∉ completed)
    (falsePremise : ¬(proposal.assumptions index).Holds) :
    ¬RemainingPremises proposal completed :=
  fun remaining ↦ falsePremise (remaining index missing)

/-- No proof event can discharge a mathematically false assumption. -/
theorem false_obligation_has_no_discharge {language : JudgmentLanguage}
    (obligation : AssumptionObligation language) (hfalse : ¬obligation.Holds) :
    ¬Nonempty (DischargedAssumption obligation) := by
  rintro ⟨discharged⟩
  exact hfalse discharged.proof

/-- Source equality is required even when two labels purport to express the same proposition. -/
theorem wrong_source_blocks_binding {language : JudgmentLanguage}
    (actual expected : AssumptionObligation language) (wrong : actual.source ≠ expected.source) :
    actual ≠ expected := fun equal ↦ wrong (congrArg AssumptionObligation.source equal)

/-- A proof at one parameter/domain scope cannot be silently rebound to another. -/
theorem wrong_scope_blocks_binding {language : JudgmentLanguage}
    (actual expected : AssumptionObligation language) (wrong : actual.scope ≠ expected.scope) :
    actual ≠ expected := fun equal ↦ wrong (congrArg AssumptionObligation.scope equal)

/-- Different statement schemas require their own proof, not a status update. -/
theorem wrong_statement_blocks_binding {language : JudgmentLanguage}
    (actual expected : AssumptionObligation language)
    (wrong : actual.statement ≠ expected.statement) : actual ≠ expected :=
  fun equal ↦ wrong (congrArg AssumptionObligation.statement equal)

/-- Reusing a proof event as its dependent replay violates strict event order. -/
theorem discharge_event_cannot_be_replay {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count))
    (discharges : DischargeInventory proposal completed) (index : Fin count)
    (present : index ∈ completed) :
    ¬FreshReplay proposal completed discharges (discharges index present).provedAt := by
  intro fresh
  exact Nat.lt_irrefl _ (fresh.2 index present)

namespace ArithmeticFixture

/-- Two different audited source identities, even if a proposition happens to coincide. -/
inductive Source where
  | original
  | changed
  deriving DecidableEq

/-- Finite arithmetic statement schemas with actual parameter-dependent meaning. -/
inductive Statement where
  | square
  | positive
  | negative
  | squarePositive
  | squareNegative
  deriving DecidableEq

/-- The scope is a natural parameter; changing it can change the mathematical truth. -/
def language : JudgmentLanguage where
  Source := Source
  Scope := ℕ
  Statement := Statement
  interpret := fun _ parameter statement ↦ match statement with
    | .square => parameter ^ 2 = 49
    | .positive => 0 < parameter
    | .negative => parameter < 0
    | .squarePositive => parameter ^ 2 = 49 ∧ 0 < parameter ^ 2
    | .squareNegative => parameter ^ 2 = 49 ∧ parameter < 0

/-- Exact original-source arithmetic obligation. -/
def obligation (parameter : ℕ) (statement : Statement) : AssumptionObligation language :=
  ⟨.original, parameter, statement⟩

/-- A genuine finite arithmetic certificate independent of the dependent result. -/
theorem square_certificate : (obligation 7 .square).Holds := by
  change (7 : ℕ) ^ 2 = 49
  norm_num

/-- The second assumption has a separate proof. -/
theorem positive_certificate : (obligation 7 .positive).Holds := by
  change 0 < (7 : ℕ)
  norm_num

/-- A two-premise proposal contains no proof and has an exact fixed inventory. -/
def proposal : ConditionalProposal language 2 where
  target := obligation 7 .squarePositive
  assumptions := fun index ↦ if index = 0 then obligation 7 .square else obligation 7 .positive
  proposedAt := 10

/-- The conditional result uses both exposed assumptions. -/
theorem dependentDerivation : ConditionalDerivation proposal where
  derive := by
    intro premises
    have square := premises 0
    change (7 : ℕ) ^ 2 = 49 at square
    have positive := premises 1
    change 0 < (7 : ℕ) at positive
    exact ⟨square, pow_pos positive _⟩

/-- Proof events are distinct for both positions in the full inventory. -/
def discharges : DischargeInventory proposal Finset.univ := by
  intro index _
  by_cases equal : index = 0
  · subst index
    exact ⟨11, square_certificate⟩
  · have equalOne : index = 1 := by omega
    subst index
    exact ⟨12, positive_certificate⟩

/-- The accepted dependent replay is later than its proposal and both proofs. -/
def replay : RecheckedResult proposal Finset.univ discharges :=
  recheck proposal Finset.univ discharges dependentDerivation 13 (by
    constructor
    · norm_num [proposal]
    · intro index _
      fin_cases index <;> norm_num [discharges])

/-- The consequence is recomputed from the checked conditional derivation and both proof events. -/
theorem replayed_consequence : (7 : ℕ) ^ 2 = 49 ∧ 0 < (7 : ℕ) ^ 2 :=
  replay.closed_conclusion

/-- A correct certificate for `7` cannot discharge the false same-schema claim for `8`. -/
theorem wrong_scope_has_no_discharge : ¬Nonempty (DischargedAssumption (obligation 8 .square)) := by
  apply false_obligation_has_no_discharge
  change ¬(8 : ℕ) ^ 2 = 49
  norm_num

/-- Even a mathematically identical statement from a changed source does not bind implicitly. -/
theorem changed_source_is_not_original :
    ({ obligation 7 .square with source := .changed } : AssumptionObligation language) ≠
      obligation 7 .square := by
  apply wrong_source_blocks_binding
  change Source.changed ≠ Source.original
  decide

/-- A different statement in the same source/scope is still a different obligation. -/
theorem square_is_not_negative : obligation 7 .square ≠ obligation 7 .negative := by
  apply wrong_statement_blocks_binding
  change Statement.square ≠ Statement.negative
  decide

/-- An apparently similar proposal has a false second premise, which remains visible. -/
def blockedProposal : ConditionalProposal language 2 where
  target := obligation 7 .squareNegative
  assumptions := fun index ↦ if index = 0 then obligation 7 .square else obligation 7 .negative
  proposedAt := 10

/-- A conditional derivation may be valid even when one of its assumptions is false. -/
theorem blockedDerivation : ConditionalDerivation blockedProposal where
  derive := by
    intro premises
    constructor
    · exact premises 0
    · exact premises 1

/-- Only the first premise has been discharged. No entry is fabricated for the second. -/
def partialDischarges : DischargeInventory blockedProposal {0} := by
  intro index present
  have equal : index = 0 := by simpa using present
  subst index
  exact ⟨11, square_certificate⟩

/-- Partial replay is allowed, but its result remains conditional on the second position. -/
def partialReplay : RecheckedResult blockedProposal {0} partialDischarges :=
  recheck blockedProposal {0} partialDischarges blockedDerivation 12 (by
    constructor
    · norm_num [blockedProposal]
    · intro index present
      have equal : index = 0 := by simpa using present
      subst index
      norm_num [partialDischarges])

/-- A fresh replay cannot make the false leftover premise disappear. -/
theorem partial_replay_still_blocked : ¬RemainingPremises blockedProposal {0} := by
  apply false_remaining_blocks_closure blockedProposal {0} 1 (by decide)
  change ¬(7 : ℕ) < 0
  omega

/-- There is no completed proof inventory for the blocked proposal. -/
theorem blocked_proposal_has_no_full_discharge :
    ¬Nonempty (DischargeInventory blockedProposal Finset.univ) := by
  rintro ⟨complete⟩
  have impossible := (complete 1 (Finset.mem_univ 1)).proof
  change (7 : ℕ) < 0 at impossible
  omega

/-- In particular, the conditional derivation and partial replay do not prove the false target. -/
theorem partial_replay_is_not_unconditional : ¬blockedProposal.target.Holds := by
  change ¬((7 : ℕ) ^ 2 = 49 ∧ (7 : ℕ) < 0)
  omega

/-- A discharge event cannot be relabelled as a fresh dependent replay. -/
theorem stale_replay_rejected : ¬FreshReplay proposal Finset.univ discharges 12 := by
  intro fresh
  have bad := fresh.2 1 (Finset.mem_univ 1)
  norm_num [discharges] at bad

end ArithmeticFixture

namespace RHFixture

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The source adapter binds this typed identity to the exact checked Route A artifact. -/
inductive Source where
  | routeA
  deriving DecidableEq

/-- These two claims concern only the explicit supported test, not a full realization. -/
inductive Statement where
  | zeroExtension
  | valueAtThree
  deriving DecidableEq

/-- Actual source definitions at a real radius supply both propositions. -/
def language : JudgmentLanguage where
  Source := Source
  Scope := ℝ
  Statement := Statement
  interpret := fun _ radius statement ↦ match statement with
    | .zeroExtension => ∀ x, x ∉ Set.Icc (-radius) radius →
        dilationTest explicitSecondDerivative radius x = 0
    | .valueAtThree => dilationTest explicitSecondDerivative radius 3 = 0

/-- This fixture fixes the exact real radius to one in both obligation and target. -/
def obligation (statement : Statement) : AssumptionObligation language :=
  ⟨.routeA, (1 : ℝ), statement⟩

/-- A real source theorem discharges precisely the supported-test assumption.
It does not discharge normalization, a pole moment, or `DilationRealization`. -/
theorem zero_extension_certificate : (obligation .zeroExtension).Holds := by
  intro x outside
  exact explicit_dilationTest_zero_extension 1 (by norm_num) x outside

/-- A finite dependent consequence is proposed from the declared support assumption. -/
def proposal : ConditionalProposal language 1 where
  target := obligation .valueAtThree
  assumptions := fun _ ↦ obligation .zeroExtension
  proposedAt := 20

/-- This checked derivation explicitly consumes the support proof at the exact radius. -/
theorem dependentDerivation : ConditionalDerivation proposal where
  derive := by
    intro premises
    have support := premises 0
    exact support 3 (by
      change (3 : ℝ) ∉ Set.Icc (-1) 1
      norm_num [Set.mem_Icc])

/-- The proof event contains the actual Route A certificate. -/
def discharges : DischargeInventory proposal Finset.univ :=
  fun _ _ ↦ ⟨21, zero_extension_certificate⟩

/-- The dependent point-evaluation proof is replayed at a distinct later logical event. -/
def replay : RecheckedResult proposal Finset.univ discharges :=
  recheck proposal Finset.univ discharges dependentDerivation 22 (by
    constructor
    · norm_num [proposal]
    · intro index present
      norm_num [discharges])

/-- Concrete source-scoped positive fixture obtained through the complete discharge/replay chain. -/
theorem point_evaluation_replayed : dilationTest explicitSecondDerivative 1 3 = 0 :=
  replay.closed_conclusion

/-- A proved radius-one support claim is not the same scoped obligation at radius two. -/
theorem radius_change_requires_rebinding :
    obligation .zeroExtension ≠
      ({ obligation .zeroExtension with scope := (2 : ℝ) } : AssumptionObligation language) := by
  apply wrong_scope_blocks_binding
  change (1 : ℝ) ≠ 2
  norm_num

end RHFixture

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions
```
