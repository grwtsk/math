import GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing
import GRWTSK.Analysis.Complex.HolomorphicSectionRing
import Mathlib.Analysis.Calculus.FDeriv.Congr

/-!
# Holomorphic descent on an exact binary open cover

The historical domain type permits arbitrary subsets of `ℂ`. This module adds openness as an
explicit hypothesis, not as a replacement domain definition. Local witnesses construct the
holomorphy proof of the existing ordinary glue. No global holomorphy premise is assumed.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicRestriction

noncomputable section

/-- An ambient representative with arbitrary zero values off the selected domain.
Only its values and differentiability on the selected domain are used. -/
def ambientRepresentative (A : Domain) (f : Section A) : ℂ → ℂ := by
  classical
  exact fun z => if hz : z ∈ A.carrier then f ⟨z, hz⟩ else 0

@[simp]
theorem ambientRepresentative_apply (A : Domain) (f : Section A)
    (z : ℂ) (hz : z ∈ A.carrier) :
    ambientRepresentative A f z = f ⟨z, hz⟩ := by
  classical
  simp [ambientRepresentative, hz]

namespace BinaryDomainCover

/-- Both members are open in the ambient complex plane. Coverage and inclusions remain the
separate, exact fields of `D`; this certificate cannot supply missing coverage. -/
structure IsOpenCover (D : BinaryDomainCover) : Prop where
  left_open : IsOpen D.U.carrier
  right_open : IsOpen D.V.carrier

/-- Holomorphy of a section is local on this exact binary open cover. -/
theorem holomorphic_iff_restrictions (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (f : Section D.X) :
    ExtendsHolomorphically D.X f ↔
      ExtendsHolomorphically D.U (system.map D.xToU f) ∧
      ExtendsHolomorphically D.V (system.map D.xToV f) := by
  constructor
  · intro hf
    exact ⟨(HolomorphicRestrictionCertificate.canonical D.xToU).preserves f hf,
      (HolomorphicRestrictionCertificate.canonical D.xToV).preserves f hf⟩
  · rintro ⟨⟨F, hF, hF_eq⟩, ⟨G, hG, hG_eq⟩⟩
    have hFU : DifferentiableOn ℂ (ambientRepresentative D.X f) D.U.carrier := by
      apply hF.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.u_subset hz⟩ :=
          ambientRepresentative_apply D.X f z (D.u_subset hz)
        _ = F z := (hF_eq ⟨z, hz⟩).symm
    have hGV : DifferentiableOn ℂ (ambientRepresentative D.X f) D.V.carrier := by
      apply hG.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.v_subset hz⟩ :=
          ambientRepresentative_apply D.X f z (D.v_subset hz)
        _ = G z := (hG_eq ⟨z, hz⟩).symm
    refine ⟨ambientRepresentative D.X f,
      (hFU.union_of_isOpen hGV hOpen.left_open hOpen.right_open).mono D.cover, ?_⟩
    intro z
    exact ambientRepresentative_apply D.X f z.1 z.2

/-- The analytic certificate is derived from the local witnesses and openness; it is not an
extra assumption or an alias for its own global conclusion. -/
def holomorphicGlueCertificate_of_openCover (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (s : D.HolomorphicMatchingData) :
    HolomorphicGlueCertificate D s where
  globalHolomorphic := by
    apply (D.holomorphic_iff_restrictions hOpen (D.glueMap s.local)).mpr
    constructor
    · rw [D.glueMap_left s.local]
      exact s.leftHolomorphic
    · rw [D.glueMap_right s.local]
      exact s.rightHolomorphic

/-- The historical canonical function glue is holomorphic on a binary open cover. -/
theorem global_holomorphic_of_openCover (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (s : D.HolomorphicMatchingData) :
    ExtendsHolomorphically D.X (D.glueMap s.local) :=
  (D.holomorphicGlueCertificate_of_openCover hOpen s).globalHolomorphic

/-- The same exact cover, now with actual holomorphic-section rings as fibers. -/
def holomorphicPortCover (D : BinaryDomainCover) :
    GRWTSK.Topology.PortFiber.BinaryCover
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.system where
  X := D.X
  U := D.U
  V := D.V
  W := D.overlap
  xToU := D.xToU
  xToV := D.xToV
  uToW := D.uToOverlap
  vToW := D.vToOverlap
  commute := by
    intro f
    apply Subtype.ext
    funext z
    exact congrArg (f : Section D.X) (Subtype.ext rfl)

open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)

/-- Forget only the proof wrappers of a matching holomorphic pair; retain its exact overlap
identity and both local holomorphy witnesses. -/
def toHolomorphicMatchingData (D : BinaryDomainCover)
    (sU : HolomorphicSection D.U) (sV : HolomorphicSection D.V)
    (h : D.holomorphicPortCover.MatchingPair sU sV) :
    D.HolomorphicMatchingData where
  local := ⟨((sU : Section D.U), (sV : Section D.V)), by
    exact congrArg (fun s : HolomorphicSection D.overlap => (s : Section D.overlap)) h⟩
  leftHolomorphic := sU.property
  rightHolomorphic := sV.property

/-- Glue in the holomorphic-section fiber without choosing a different underlying function. -/
def holomorphicGlue (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (sU : HolomorphicSection D.U) (sV : HolomorphicSection D.V)
    (h : D.holomorphicPortCover.MatchingPair sU sV) : HolomorphicSection D.X :=
  ⟨D.glueMap (D.toHolomorphicMatchingData sU sV h).local,
    D.global_holomorphic_of_openCover hOpen (D.toHolomorphicMatchingData sU sV h)⟩

/-- Forgetting the new glue returns exactly the historical ordinary function glue. -/
theorem holomorphicGlue_coe (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (sU : HolomorphicSection D.U) (sV : HolomorphicSection D.V)
    (h : D.holomorphicPortCover.MatchingPair sU sV) :
    (D.holomorphicGlue hOpen sU sV h : Section D.X) =
      D.glueMap (D.toHolomorphicMatchingData sU sV h).local := rfl

@[simp]
theorem restrict_holomorphicGlue_left (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (sU : HolomorphicSection D.U) (sV : HolomorphicSection D.V)
    (h : D.holomorphicPortCover.MatchingPair sU sV) :
    GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToU
        (D.holomorphicGlue hOpen sU sV h) = sU := by
  apply Subtype.ext
  exact D.glueMap_left (D.toHolomorphicMatchingData sU sV h).local

@[simp]
theorem restrict_holomorphicGlue_right (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (sU : HolomorphicSection D.U) (sV : HolomorphicSection D.V)
    (h : D.holomorphicPortCover.MatchingPair sU sV) :
    GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToV
        (D.holomorphicGlue hOpen sU sV h) = sV := by
  apply Subtype.ext
  exact D.glueMap_right (D.toHolomorphicMatchingData sU sV h).local

/-- Exact coverage gives uniqueness even before openness is used for analytic existence. -/
theorem holomorphic_ext (D : BinaryDomainCover) {f g : HolomorphicSection D.X}
    (hU : GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToU f =
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToU g)
    (hV : GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToV f =
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToV g) :
    f = g := by
  apply Subtype.ext
  apply D.functionSheafCertificate.separated
  · exact congrArg (fun s : HolomorphicSection D.U => (s : Section D.U)) hU
  · exact congrArg (fun s : HolomorphicSection D.V => (s : Section D.V)) hV

/-- Existence and uniqueness in the actual holomorphic-section fiber, at the declared open cover. -/
def holomorphicSheafCertificate (D : BinaryDomainCover) (hOpen : D.IsOpenCover) :
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate D.holomorphicPortCover where
  hasGluing := by
    intro sU sV h
    exact ⟨{
      global := D.holomorphicGlue hOpen sU sV h
      restrictU := D.restrict_holomorphicGlue_left hOpen sU sV h
      restrictV := D.restrict_holomorphicGlue_right hOpen sU sV h }⟩
  separated := by
    intro f g hU hV
    exact D.holomorphic_ext hU hV

namespace OpenCoverFixtures

/-- Two proper, genuinely overlapping open sets covering the plane. -/
def awayZero : Domain := ⟨{(0 : ℂ)}ᶜ⟩
def awayOne : Domain := ⟨{(1 : ℂ)}ᶜ⟩

def puncturedPlaneCover : BinaryDomainCover where
  X := GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  U := awayZero
  V := awayOne
  u_subset := fun z _ => Set.mem_univ z
  v_subset := fun z _ => Set.mem_univ z
  cover := by
    intro z _
    by_cases hz : z = 0
    · right
      simp [awayOne, hz]
    · left
      simpa [awayZero] using hz

def puncturedPlane_isOpen : puncturedPlaneCover.IsOpenCover where
  left_open := isClosed_singleton.isOpen_compl
  right_open := isClosed_singleton.isOpen_compl

/-- The nontrivial punctured-plane cover has analytic, not merely ordinary-function, gluing. -/
def puncturedPlane_holomorphicSheaf :
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate
      puncturedPlaneCover.holomorphicPortCover :=
  puncturedPlaneCover.holomorphicSheafCertificate puncturedPlane_isOpen

/-- Negative control: openness does not dispense with matching on the nonempty overlap. -/
theorem zero_one_do_not_match :
    ¬ puncturedPlaneCover.holomorphicPortCover.MatchingPair
      (0 : HolomorphicSection puncturedPlaneCover.U)
      (1 : HolomorphicSection puncturedPlaneCover.V) := by
  intro h
  have hz : (2 : ℂ) ∈ puncturedPlaneCover.overlap.carrier := by
    norm_num [overlap, puncturedPlaneCover, awayZero, awayOne]
  have h01 := congrArg
    (fun f : HolomorphicSection puncturedPlaneCover.overlap =>
      (f : Section puncturedPlaneCover.overlap) ⟨2, hz⟩) h
  change (0 : ℂ) = 1 at h01
  exact zero_ne_one h01

/-- Negative control: two open empty domains cannot certify coverage of the plane. -/
theorem empty_domains_do_not_cover :
    ¬ (Set.univ : Set ℂ) ⊆ (∅ : Set ℂ) ∪ ∅ := by
  intro h
  have h0 := h (Set.mem_univ (0 : ℂ))
  simpa using h0

end OpenCoverFixtures
end BinaryDomainCover
end
end GRWTSK.Analysis.Complex.HolomorphicRestriction
