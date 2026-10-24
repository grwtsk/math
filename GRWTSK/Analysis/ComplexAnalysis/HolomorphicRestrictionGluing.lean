import GRWTSK.Topology.PortFiber.Gluing
import GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

open GRWTSK.Topology.PortFiber

/-- Two selected subdomains covering one ambient complex domain. -/
structure BinaryDomainCover where
  X : Domain
  U : Domain
  V : Domain
  u_subset : U.carrier ⊆ X.carrier
  v_subset : V.carrier ⊆ X.carrier
  cover : X.carrier ⊆ U.carrier ∪ V.carrier

namespace BinaryDomainCover

/-- Exact overlap domain. -/
def overlap (D : BinaryDomainCover) : Domain :=
  ⟨D.U.carrier ∩ D.V.carrier⟩

/-- Ambient-to-left restriction. -/
def xToU (D : BinaryDomainCover) : Port D.X D.U :=
  ⟨D.u_subset⟩

/-- Ambient-to-right restriction. -/
def xToV (D : BinaryDomainCover) : Port D.X D.V :=
  ⟨D.v_subset⟩

/-- Left-to-overlap restriction. -/
def uToOverlap (D : BinaryDomainCover) : Port D.U D.overlap :=
  ⟨fun _ h => h.1⟩

/-- Right-to-overlap restriction. -/
def vToOverlap (D : BinaryDomainCover) : Port D.V D.overlap :=
  ⟨fun _ h => h.2⟩

/-- The set-theoretic cover as a binary port-fiber cover. -/
def toPortCover (D : BinaryDomainCover) :
    GRWTSK.Topology.PortFiber.BinaryCover system where
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
    funext z
    exact congrArg f (Subtype.ext rfl)

/-- Pointwise form of overlap compatibility. -/
theorem matching_apply (D : BinaryDomainCover)
    {sU : Section D.U} {sV : Section D.V}
    (h : D.toPortCover.MatchingPair sU sV)
    (z : D.overlap.carrier) :
    sU ⟨z.1, z.2.1⟩ = sV ⟨z.1, z.2.2⟩ := by
  exact congrFun h z

/-- Glue two compatible local functions. No holomorphy conclusion is implicit. -/
noncomputable def glue (D : BinaryDomainCover)
    (sU : Section D.U) (sV : Section D.V)
    (_h : D.toPortCover.MatchingPair sU sV) :
    Section D.X := by
  classical
  intro x
  by_cases hx : x.1 ∈ D.U.carrier
  · exact sU ⟨x.1, hx⟩
  · exact sV ⟨x.1, (D.cover x.2).resolve_left hx⟩

/-- The glued function restricts to the left input. -/
theorem restrict_glue_left (D : BinaryDomainCover)
    (sU : Section D.U) (sV : Section D.V)
    (h : D.toPortCover.MatchingPair sU sV) :
    system.map D.xToU (D.glue sU sV h) = sU := by
  classical
  funext z
  simp [glue, restrict, system, z.2]

/-- The glued function restricts to the right input. -/
theorem restrict_glue_right (D : BinaryDomainCover)
    (sU : Section D.U) (sV : Section D.V)
    (h : D.toPortCover.MatchingPair sU sV) :
    system.map D.xToV (D.glue sU sV h) = sV := by
  classical
  funext z
  by_cases hzU : z.1 ∈ D.U.carrier
  · have hmatch :=
      D.matching_apply h
        (⟨z.1, ⟨hzU, z.2⟩⟩ : D.overlap.carrier)
    simpa [glue, restrict, system, hzU] using hmatch
  · simp [glue, restrict, system, hzU]

/-- Ordinary complex-valued functions satisfy the binary sheaf condition on this exact cover. -/
noncomputable def functionSheafCertificate (D : BinaryDomainCover) :
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate D.toPortCover where
  hasGluing := by
    intro sU sV h
    exact ⟨
      { global := D.glue sU sV h
        restrictU := D.restrict_glue_left sU sV h
        restrictV := D.restrict_glue_right sU sV h }⟩
  separated := by
    intro f g hU hV
    funext x
    rcases D.cover x.2 with hxU | hxV
    · have hpoint := congrFun hU (⟨x.1, hxU⟩ : D.U.carrier)
      simpa [xToU, restrict, system] using hpoint
    · have hpoint := congrFun hV (⟨x.1, hxV⟩ : D.V.carrier)
      simpa [xToV, restrict, system] using hpoint

/-- A matching local pair with its overlap proof. -/
abbrev MatchingData (D : BinaryDomainCover) :=
  { s : Section D.U × Section D.V //
      D.toPortCover.MatchingPair s.1 s.2 }

/-- Canonical ordinary-function gluing map. -/
noncomputable def glueMap (D : BinaryDomainCover) :
    MatchingData D → Section D.X :=
  fun s => D.glue s.1.1 s.1.2 s.2

/-- The canonical gluing map recovers the left local section. -/
theorem glueMap_left (D : BinaryDomainCover) (s : MatchingData D) :
    system.map D.xToU (D.glueMap s) = s.1.1 :=
  D.restrict_glue_left s.1.1 s.1.2 s.2

/-- The canonical gluing map recovers the right local section. -/
theorem glueMap_right (D : BinaryDomainCover) (s : MatchingData D) :
    system.map D.xToV (D.glueMap s) = s.1.2 :=
  D.restrict_glue_right s.1.1 s.1.2 s.2

/-- Local sections known to extend holomorphically on their separate domains. -/
structure HolomorphicMatchingData (D : BinaryDomainCover) where
  local : MatchingData D
  leftHolomorphic : ExtendsHolomorphically D.U local.1.1
  rightHolomorphic : ExtendsHolomorphically D.V local.1.2

/-- Additional theorem required before ordinary function gluing may be called holomorphic. -/
structure HolomorphicGlueCertificate
    (D : BinaryDomainCover) (s : HolomorphicMatchingData D) : Prop where
  globalHolomorphic :
    ExtendsHolomorphically D.X (D.glueMap s.local)

/-- An explicit global gluing certificate yields exactly the global holomorphy conclusion. -/
theorem global_holomorphic_of_certificate
    (D : BinaryDomainCover) (s : HolomorphicMatchingData D)
    (h : HolomorphicGlueCertificate D s) :
    ExtendsHolomorphically D.X (D.glueMap s.local) :=
  h.globalHolomorphic

end BinaryDomainCover

namespace Fixtures

/-- Closed lower half-plane. -/
def lower : Domain := ⟨{z : ℂ | z.im ≤ 0}⟩

/-- The upper and lower closed half-planes cover the whole plane. -/
def halfPlaneCover : BinaryDomainCover where
  X := whole
  U := upper
  V := lower
  u_subset := fun z _ => Set.mem_univ z
  v_subset := fun z _ => Set.mem_univ z
  cover := by
    intro z _
    exact le_total 0 z.im

/-- Ordinary complex-valued functions glue uniquely across the half-plane cover. -/
noncomputable def halfPlaneFunctionSheaf :
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate
      halfPlaneCover.toPortCover :=
  halfPlaneCover.functionSheafCertificate

end Fixtures

end GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
