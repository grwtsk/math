import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CivilSystemsResilience
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.CareAccessErrorNotification

/-!
# Exact scope of the healthcare-to-civil-system specialization

Attribution: grwtsk contributors.

The existing healthcare predicates are transported into the *listed* civil
obligations. No new clinical, legal, privacy, dispute, or consent facts are
inferred. In particular, a care example does NOT cover all possible civil
review, correction and appellate rights; additional obligations can be attached
as `Finding.unknown` until independent evidence supports them.
-/

namespace GRWTSK.CivilSystems

open GRWTSK.CareAccessResilience

/-- Source-specific healthcare dimensions, exactly the prior concern kinds. -/
def careDimensions : List ConcernKind :=
  [.accessibility, .privacyPermission, .clinicalAuthority,
   .administrativeOwnership, .traceability]

/-- Translate five tested healthcare conditions to evidence claims. -/
def careFinding (r : Needs) (p : Pathway) : ConcernKind → Finding
  | .accessibility =>
      if Accommodates r p.services then .satisfied else .contradicted
  | .privacyPermission =>
      if p.privacyPermitted && p.privacyBasisRecorded then
        .satisfied else .contradicted
  | .clinicalAuthority =>
      if p.clinicalDecision.isSome then .satisfied else .contradicted
  | .administrativeOwnership =>
      if p.administrativeOwner.isSome then .satisfied else .contradicted
  | .traceability =>
      if p.traceable && p.consentCheckpoint then
        .satisfied else .contradicted

def fromCare (r : Needs) (p : Pathway) (claimed : Bool) :
    Assessment ConcernKind :=
  { obligations := careDimensions
    obligations_nonempty := by decide
    observed := careFinding r p
    claimedComplete := claimed }

/-- A healthcare pathway satisfying its *original* Valid predicate satisfies
precisely the five transported criteria; this is not legal adjudication. -/
theorem care_valid_implies_supported {r : Needs} {p : Pathway}
    (h : Valid r p) (claimed : Bool) :
    FullySupported (fromCare r p claimed) := by
  rcases h with ⟨haccess, hprivacy, hbasis, hclinical, howner, htrace, hconsent⟩
  intro o _
  cases o <;>
    simp [fromCare, careFinding, haccess, hprivacy, hbasis,
      hclinical, howner, htrace, hconsent]

/-- No spurious civil review-intent arises from a healthcare pathway satisfying
all *five* corresponding claims in this source model. -/
theorem care_valid_no_generic_notice {r : Needs} {p : Pathway}
    (h : Valid r p) (claimed : Bool) (gate : NoticeGate) :
    screen gate (fromCare r p claimed) = none := by
  exact screen_none_of_supported gate _ (care_valid_implies_supported h claimed)

/-- The additional right-to-review obligation is deliberately not inferred. -/
inductive ExtendedCareDuty where
  | careConcern (c : ConcernKind)
  | remedyAndAppeal
  deriving DecidableEq, Repr

def extendedCareAssessment (r : Needs) (p : Pathway) (claimed : Bool) :
    Assessment ExtendedCareDuty :=
  { obligations := (careDimensions.map ExtendedCareDuty.careConcern) ++ [.remedyAndAppeal]
    obligations_nonempty := by simp
    observed := fun d => match d with
      | .careConcern c => careFinding r p c
      | .remedyAndAppeal => .unknown
    claimedComplete := claimed }

/-- Even valid medical criteria leave the separately added right-to-remedy
unassessed; `unknown` is not a finding of an institutional violation. -/
theorem extended_care_remedy_unknown (r : Needs) (p : Pathway)
    (claimed : Bool) :
    (extendedCareAssessment r p claimed).observed
      ExtendedCareDuty.remedyAndAppeal = .unknown := rfl

end GRWTSK.CivilSystems
