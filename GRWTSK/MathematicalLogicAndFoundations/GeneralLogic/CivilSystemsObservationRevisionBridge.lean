import GRWTSK.ProbabilityTheoryAndStochasticProcesses.CivilSystemsSourceEvidenceBridge
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.FiniteClassification
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RevisionEvidence

/-!
# Civil evidence from finite observations and revision-scoped records

Attribution: grwtsk contributors.

Finite support is relative to the supplied finite inventory. Only independent
coverage and semantic interpretation can authorize an abstract duty finding.
The Boolean flags below are inputs from an external trusted review; they are
not proofs of those real-world premises. Missing evidence and multiple records
are intentionally projected to `Finding.unknown`, not failure or success.
An unchanged historical revision never becomes the current revised evidence.
-/

namespace GRWTSK.CivilSystems.ObservationRevisionBridge

abbrev FiniteOutcome :=
  GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.FiniteClassification.Outcome

/-- A finite-model result has no civil-system meaning without BOTH coverage
and a separately reviewed interpretation of the relevant obligation. -/
def reviewedFinding (coverageAccepted meaningReviewed : Bool)
    (outcome : FiniteOutcome) : GRWTSK.CivilSystems.Finding :=
  if coverageAccepted && meaningReviewed then
    match outcome with
    | .supported => .satisfied
    | .refuted => .contradicted
    | .ambiguous => .unknown
    | .model_mismatch => .unknown
  else .unknown

theorem unreviewed_coverage_is_unknown (meaning : Bool) (o : FiniteOutcome) :
    reviewedFinding false meaning o = .unknown := by
  cases o <;> simp [reviewedFinding]

theorem unreviewed_meaning_is_unknown (coverage : Bool) (o : FiniteOutcome) :
    reviewedFinding coverage false o = .unknown := by
  cases o <;> simp [reviewedFinding]

theorem finite_ambiguity_remains_unknown (coverage meaning : Bool) :
    reviewedFinding coverage meaning .ambiguous = .unknown := by
  cases coverage <;> cases meaning <;> decide

theorem finite_mismatch_remains_unknown (coverage meaning : Bool) :
    reviewedFinding coverage meaning .model_mismatch = .unknown := by
  cases coverage <;> cases meaning <;> decide

/-- A supported status only arises with both explicit gates and finite support;
this remains a *model statement*, not a declaration of lawful conduct. -/
theorem satisfied_requires_two_reviews (coverage meaning : Bool)
    (o : FiniteOutcome) (h : reviewedFinding coverage meaning o = .satisfied) :
    coverage = true ∧ meaning = true ∧ o = .supported := by
  cases coverage <;> cases meaning <;> cases o <;>
    simp_all [reviewedFinding]

abbrev RevisionState (Kind Payload : Type*) :=
  GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.State Kind Payload

/-- An exact revision-kind read, retaining ALL its candidate outcomes. -/
def revisionFindings (state : RevisionState Unit GRWTSK.CivilSystems.Finding)
    (revision : Nat) : List GRWTSK.CivilSystems.Finding :=
  ((GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.query
      state revision ()).map (fun row => row.payload))

/-- No evidence and conflicting/multiple entries remain unknown.
In particular, this does not use the latest clock time as a silent tie-breaker. -/
def uniqueRevisionFinding (state : RevisionState Unit GRWTSK.CivilSystems.Finding)
    (revision : Nat) : GRWTSK.CivilSystems.Finding :=
  match revisionFindings state revision with
  | [f] => f
  | _ => .unknown

theorem absent_revision_remains_unknown
    (state : RevisionState Unit GRWTSK.CivilSystems.Finding) (revision : Nat)
    (h : revisionFindings state revision = []) :
    uniqueRevisionFinding state revision = .unknown := by
  simp [uniqueRevisionFinding, h]

theorem multiple_records_remain_unknown
    (state : RevisionState Unit GRWTSK.CivilSystems.Finding)
    (revision : Nat) (f g : GRWTSK.CivilSystems.Finding)
    (rest : List GRWTSK.CivilSystems.Finding)
    (h : revisionFindings state revision = f :: g :: rest) :
    uniqueRevisionFinding state revision = .unknown := by
  simp [uniqueRevisionFinding, h]

/-- The published revision ledger proves newly confirmed revisions inherit no
outcomes; its `WellFormed` premise is explicit and cannot be elided. -/
theorem correction_requires_fresh_evidence
    (state : RevisionState Unit GRWTSK.CivilSystems.Finding)
    (h : GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.WellFormed state) :
    uniqueRevisionFinding
      (GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.correct state)
      state.issued = .unknown := by
  have hnone :=
    (GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.fresh_confirmation_separates_evidence
      state h ()).2.1
  exact absent_revision_remains_unknown _ _ (by simp [revisionFindings, hnone])

/-- Correction also preserves historical exact-revision findings. -/
theorem correction_keeps_historical_outcomes
    (state : RevisionState Unit GRWTSK.CivilSystems.Finding)
    (revision : Nat) :
    uniqueRevisionFinding
      (GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.correct state)
      revision = uniqueRevisionFinding state revision := by
  have hq :=
    GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence.correction_preserves_historical_queries
      state revision ()
  simp [uniqueRevisionFinding, revisionFindings, hq]

end GRWTSK.CivilSystems.ObservationRevisionBridge
