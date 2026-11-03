import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsPeriodScopedEvidence
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.CivilSystemsObservationRevisionBridge

/-!
# Time-scoped civil rule and finite-observation review

Attribution: grwtsk contributors.

This module connects the maintained legal rule research gate to a distinct
version-at-event window and to the maintained finite-observation interpretation.
A Boolean review input is not independent professional evidence, a source
checksum is not authorship authentication, and a rule catalogue is not a
complete representation of every law. These are pure *candidate review* gates.
No civil violation, contractual invalidity, medical conclusion, religious
classification or prosecutorial action is inferred here.
-/

namespace GRWTSK.CivilSystems.VersionedReview

open GRWTSK.CivilSystems
open GRWTSK.CivilSystems.CrossSector

/-- Dates are validated chronological ordinals supplied by the caller.
    An application must validate its real calendar source and jurisdiction. -/
structure EffectiveWindow where
  starts : Nat
  endsBefore : Option Nat
  deriving Repr

/-- When an end is present, the half-open interval must not be reversed. -/
def EffectiveWindow.wellFormed (w : EffectiveWindow) : Bool :=
  match w.endsBefore with
  | none => true
  | some bound => decide (w.starts < bound)

/-- An event is in the selected rule revision's effective interval. -/
def EffectiveWindow.contains (w : EffectiveWindow) (eventDate : Nat) : Bool :=
  decide (w.starts ≤ eventDate) &&
    (match w.endsBefore with
      | none => true
      | some bound => decide (eventDate < bound))

/-- No inference from an event preceding this source version. -/
theorem EffectiveWindow.before_start_not_applicable
    (w : EffectiveWindow) (date : Nat) (h : date < w.starts) :
    w.contains date = false := by
  have hn : ¬ w.starts ≤ date := Nat.not_le_of_gt h
  simp [EffectiveWindow.contains, hn]

/-- No inference from an event at or after a specified end. -/
theorem EffectiveWindow.at_or_after_end_not_applicable
    (w : EffectiveWindow) (date stop : Nat)
    (hw : w.endsBefore = some stop) (h : stop ≤ date) :
    w.contains date = false := by
  have hn : ¬ date < stop := Nat.not_lt.mpr h
  simp [EffectiveWindow.contains, hw, hn]

/-- Existing four-way finite observations are kept separate from the law. -/
abbrev FiniteOutcome :=
  GRWTSK.CivilSystems.ObservationRevisionBridge.FiniteOutcome

structure EvidenceInterpretation where
  finiteOutcome : FiniteOutcome
  coverageIndependentlyReviewed : Bool
  obligationMeaningReviewed : Bool
  deriving Repr

/-- The existing finite-observation bridge supplies the ONLY interpretation. -/
def EvidenceInterpretation.finding (e : EvidenceInterpretation) : Finding :=
  GRWTSK.CivilSystems.ObservationRevisionBridge.reviewedFinding
    e.coverageIndependentlyReviewed e.obligationMeaningReviewed e.finiteOutcome

/-- Unreviewed observation coverage cannot become a documented contradiction. -/
theorem EvidenceInterpretation.no_unreviewed_coverage
    (e : EvidenceInterpretation)
    (h : e.coverageIndependentlyReviewed = false) :
    e.finding = .unknown := by
  simp [EvidenceInterpretation.finding, h,
    GRWTSK.CivilSystems.ObservationRevisionBridge.reviewedFinding]

/-- Unknown or ambiguous finite models remain unknown even after review. -/
theorem EvidenceInterpretation.ambiguous_ne_breach
    (e : EvidenceInterpretation) (h : e.finiteOutcome = .ambiguous) :
    e.finding = .unknown := by
  cases hc : e.coverageIndependentlyReviewed <;>
    cases hm : e.obligationMeaningReviewed <;>
    simp [EvidenceInterpretation.finding,
      GRWTSK.CivilSystems.ObservationRevisionBridge.reviewedFinding, hc, hm, h]

/-- A source-specific legal assessment and its independent evidence gates. -/
structure RuleApplication where
  base : LegalReview
  evidence : EvidenceInterpretation
  effective : EffectiveWindow
  eventDate : Nat
  originalSourceVerified : Bool
  sourceRevisionVerified : Bool
  legalCatalogueInScope : Bool
  independentReviewerAttested : Bool
  deriving Repr

/-- This replaces only the evidence field of the existing legal research object;
    the source, sector, norm, actor and applicability gates are not rewritten. -/
def RuleApplication.reviewWithEvidence (a : RuleApplication) : LegalReview :=
  { a.base with evidence := a.evidence.finding }

/-- Every joint prerequisite is kept; outputs only a question for a reviewer. -/
def RuleApplication.mayRaiseReview (a : RuleApplication) : Bool :=
  decide (a.originalSourceVerified = true ∧
    a.sourceRevisionVerified = true ∧
    a.legalCatalogueInScope = true ∧
    a.independentReviewerAttested = true ∧
    a.effective.wellFormed = true ∧
    a.effective.contains a.eventDate = true ∧
    a.reviewWithEvidence.potentialDutyGap = true)

/-- Source certification remains necessary even with a contradiction. -/
theorem RuleApplication.no_review_without_source (a : RuleApplication)
    (h : a.originalSourceVerified = false) :
    a.mayRaiseReview = false := by
  simp [RuleApplication.mayRaiseReview, h]

/-- An expired source version cannot authorize a new research flag. -/
theorem RuleApplication.expired_source_blocks_review (a : RuleApplication)
    (stop : Nat) (he : a.effective.endsBefore = some stop)
    (ht : stop ≤ a.eventDate) : a.mayRaiseReview = false := by
  have htime := a.effective.at_or_after_end_not_applicable a.eventDate stop he ht
  simp [RuleApplication.mayRaiseReview, htime]

/-- Unreviewed observation coverage does not become a contradicted legal duty. -/
theorem RuleApplication.unreviewed_coverage_blocks_review
    (a : RuleApplication) (h : a.evidence.coverageIndependentlyReviewed = false) :
    a.mayRaiseReview = false := by
  have hu := a.evidence.no_unreviewed_coverage h
  simp [RuleApplication.mayRaiseReview, RuleApplication.reviewWithEvidence,
    LegalReview.potentialDutyGap, hu]

/-- A permission does not become a breached *affirmative duty* by changing
    the observation, legal version, or catalogue flags. -/
theorem RuleApplication.permission_never_flags (a : RuleApplication)
    (h : a.base.rule.norm = .permission) : a.mayRaiseReview = false := by
  simp [RuleApplication.mayRaiseReview, RuleApplication.reviewWithEvidence,
    LegalReview.potentialDutyGap, h]

/-- An emitted question preserves every explicit review/scope prerequisite.
    It is never a judicial, medical or regulatory determination. -/
theorem RuleApplication.flag_requires_source_gates (a : RuleApplication)
    (h : a.mayRaiseReview = true) :
    a.originalSourceVerified = true ∧
    a.sourceRevisionVerified = true ∧
    a.legalCatalogueInScope = true ∧
    a.independentReviewerAttested = true ∧
    a.effective.wellFormed = true ∧
    a.effective.contains a.eventDate = true ∧
    a.reviewWithEvidence.potentialDutyGap = true := by
  simpa [RuleApplication.mayRaiseReview] using h

end GRWTSK.CivilSystems.VersionedReview
