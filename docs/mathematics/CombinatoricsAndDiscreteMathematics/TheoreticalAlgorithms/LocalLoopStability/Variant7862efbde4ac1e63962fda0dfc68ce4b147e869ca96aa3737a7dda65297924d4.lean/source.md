# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocalLoopStability.Variant7862efbde4ac1e63962fda0dfc68ce4b147e869ca96aa3737a7dda65297924d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d54b2cae0a69991509de62e5de0fb2c0f98463c` · SHA-256 `7862efbde4ac1e63962fda0dfc68ce4b147e869ca96aa3737a7dda65297924d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.EmlKakeyaMedoidBoundary
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryMedoid
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Torsion

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.LocalLoopStability

open Think.Arithmetic.EmlKakeyaMedoidBoundary
open Think.RadoProjectedModularHeatflow.MemoryCore
open Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

abbrev Phase := Think.PhaseId
abbrev HeatflowMemoryVertex :=
  Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev BoundaryMemoryVertex :=
  Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex
abbrev ResidueAtom :=
  Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom

structure RadoHeatflowMemorySurface where
  memory : WeightedMemory
  support : List HeatflowMemoryVertex
  projection : HeatflowMemoryVertex -> Nat
  distance : Nat -> Phase -> Nat
  finiteSupport : Bool
  centerTieBreaking : Bool
  theoremAuthority : Bool

def projectedDistance
    (M : RadoHeatflowMemorySurface)
    (v : HeatflowMemoryVertex)
    (p : Phase) : Nat :=
  M.distance (M.projection v) p

def finiteKakeyaObjective
    (M : RadoHeatflowMemorySurface)
    (p : Phase) : Nat :=
  (M.support.map
    (fun v => M.memory.coeff v * projectedDistance M v p)).foldl
      Nat.add 0

def selectKakeyaMedoid
    (M : RadoHeatflowMemorySurface) : Phase :=
  Think.Pipeline.Center.KakeyaMedoid.medoidK
    (projectedDistance M)
    M.memory
    M.support

structure KakeyaTubeSheafWitnessSurface where
  center : Phase
  selectedByFiniteObjective : Bool
  finiteTubeWitness : Bool
  finiteSheafWitness : Bool
  centeredAtMedoid : Bool
  kakeyaTheoremClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def kakeyaTubeSheafWitnessAt
    (M : RadoHeatflowMemorySurface) :
    KakeyaTubeSheafWitnessSurface :=
  { center := selectKakeyaMedoid M
    selectedByFiniteObjective := true
    finiteTubeWitness := true
    finiteSheafWitness := true
    centeredAtMedoid := true
    kakeyaTheoremClaim := false
    theoremAuthority := false }

structure CompactBoundaryTorsionPacket where
  compactBoundary : CompactPatch
  torsion : CompactTorsion
  restriction : TorsionRestriction
  naturalRestrictionWitnessed : Bool
  restrictionAdmitted : Bool
  theoremAuthority : Bool

def compactBoundaryTorsionPacket
    (torsion : CompactTorsion)
    (restriction : TorsionRestriction)
    (naturalRestrictionWitnessed : Bool) :
    CompactBoundaryTorsionPacket :=
  { compactBoundary := torsion.compact
    torsion := torsion
    restriction := restriction
    naturalRestrictionWitnessed := naturalRestrictionWitnessed
    restrictionAdmitted := naturalRestrictionWitnessed
    theoremAuthority := false }

def restrictionResidue
    (tau : CompactBoundaryTorsionPacket) : Int :=
  if tau.restrictionAdmitted then 0 else 1

def totalBoundaryResidue
    (tau : CompactBoundaryTorsionPacket) : Int :=
  tau.torsion.residueValue + restrictionResidue tau

def locallyStableFromResidue (R : Int) : Bool :=
  decide (R = 0)

inductive LoopStabilityKind where
  | null_residue_local_loop_stability
  | explicit_residue_packet
deriving Repr, DecidableEq

def stabilityKindOfResidue (R : Int) : LoopStabilityKind :=
  if locallyStableFromResidue R then
    LoopStabilityKind.null_residue_local_loop_stability
  else
    LoopStabilityKind.explicit_residue_packet

inductive LoopResidue where
  | non_natural_torsion_restriction
  | nonzero_boundary_residue
  | local_loop_stability_refused
deriving Repr, DecidableEq

def explicitLoopResidues
    (tau : CompactBoundaryTorsionPacket)
    (R : Int) :
    List LoopResidue :=
  (if tau.restrictionAdmitted then
    []
  else
    [LoopResidue.non_natural_torsion_restriction]) ++
    (if locallyStableFromResidue R then
      []
    else
      [ LoopResidue.nonzero_boundary_residue
      , LoopResidue.local_loop_stability_refused
      ])

structure ForbiddenAuthorityFlags where
  rhClaim : Bool
  bsdClaim : Bool
  analyticContinuationClaim : Bool
  spectralAuthority : Bool
  primePredictionClaim : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def noForbiddenAuthorityFlags : ForbiddenAuthorityFlags :=
  { rhClaim := false
    bsdClaim := false
    analyticContinuationClaim := false
    spectralAuthority := false
    primePredictionClaim := false
    theoremAuthority := false }

def ForbiddenAuthorityFlags.noneAsserted
    (flags : ForbiddenAuthorityFlags) : Bool :=
  !flags.rhClaim &&
    !flags.bsdClaim &&
    !flags.analyticContinuationClaim &&
    !flags.spectralAuthority &&
    !flags.primePredictionClaim &&
    !flags.theoremAuthority

structure EmlLoopBoundaryPacket where
  prose : ProseInput
  emlPacket : EmlArithmeticPacket
  memorySurface : RadoHeatflowMemorySurface
  medoid : Phase
  kakeyaWitness : KakeyaTubeSheafWitnessSurface
  torsionPacket : CompactBoundaryTorsionPacket
  totalResidue : Int
  output : LoopStabilityKind
  explicitResidues : List LoopResidue
  finiteBoundaryPacket : Bool
  authorityFlags : ForbiddenAuthorityFlags
  theoremAuthority : Bool

def lowerProseToLoopBoundaryPacket
    (p : ProseInput)
    (M : RadoHeatflowMemorySurface)
    (tau : CompactBoundaryTorsionPacket) :
    EmlLoopBoundaryPacket :=
  let emlPacket := lowerProseToEmlArithmeticPacket p true
  let K_mu := kakeyaTubeSheafWitnessAt M
  let R := totalBoundaryResidue tau
  { prose := p
    emlPacket := emlPacket
    memorySurface := M
    medoid := K_mu.center
    kakeyaWitness := K_mu
    torsionPacket := tau
    totalResidue := R
    output := stabilityKindOfResidue R
    explicitResidues := explicitLoopResidues tau R
    finiteBoundaryPacket :=
      p.finiteInput &&
        emlPacket.finitePacket &&
        K_mu.finiteTubeWitness &&
        K_mu.finiteSheafWitness
    authorityFlags := noForbiddenAuthorityFlags
    theoremAuthority := false }

def compactBoundaryMemoryVertex : BoundaryMemoryVertex :=
  { id := 0
    kind := Think.RadoProjectedModularHeatflow.MemoryCore.MemoryKind.workflowStep
    side := BoundarySide.bridge
    text := "compact_boundary_vertex"
    time? := none
    validAt? := none
    invalidAt? := none
    heat := 0
    weight := 1
    residueClass := "zero" }

def compactBoundaryPatch : CompactPatch :=
  { id := 0
    label := "compact_boundary"
    vertices := [compactBoundaryMemoryVertex]
    poleLabels := ["inner", "bridge", "outer"] }

def compactBoundaryTorsionClass : TorsionClass :=
  { modulus := 2
    representative := 0
    label := "tau_compact_boundary" }

def zeroCompactBoundaryTorsion : CompactTorsion :=
  { compact := compactBoundaryPatch
    torsion := compactBoundaryTorsionClass
    coboundaryResidue := 0
    poleResidue := 0 }

def nonzeroCompactBoundaryTorsion : CompactTorsion :=
  { compact := compactBoundaryPatch
    torsion := compactBoundaryTorsionClass
    coboundaryResidue := 1
    poleResidue := 0 }

def naturalCompactTorsionRestriction : TorsionRestriction :=
  { source := compactBoundaryPatch
    target := compactBoundaryPatch
    sourceTorsion := compactBoundaryTorsionClass
    targetTorsion := compactBoundaryTorsionClass
    naturalUnderRestriction := True }

def nonNaturalCompactTorsionRestriction : TorsionRestriction :=
  { source := compactBoundaryPatch
    target := compactBoundaryPatch
    sourceTorsion := compactBoundaryTorsionClass
    targetTorsion := compactBoundaryTorsionClass
    naturalUnderRestriction := False }

def stableCompactBoundaryTorsionPacket :
    CompactBoundaryTorsionPacket :=
  compactBoundaryTorsionPacket
    zeroCompactBoundaryTorsion
    naturalCompactTorsionRestriction
    true

def nonzeroCompactBoundaryTorsionPacket :
    CompactBoundaryTorsionPacket :=
  compactBoundaryTorsionPacket
    nonzeroCompactBoundaryTorsion
    naturalCompactTorsionRestriction
    true

def nonNaturalCompactBoundaryTorsionPacket :
    CompactBoundaryTorsionPacket :=
  compactBoundaryTorsionPacket
    zeroCompactBoundaryTorsion
    nonNaturalCompactTorsionRestriction
    false

def radoProjectedHeatflowMemorySurface :
    RadoHeatflowMemorySurface :=
  { memory := WeightedMemory.one
    support :=
      [Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.noopVertex]
    projection := fun _ =>
      Think.Pipeline.Center.KakeyaMedoid.centerPhase.index
    distance := fun _ p =>
      Think.Pipeline.Center.KakeyaMedoid.centerDistance p
    finiteSupport := true
    centerTieBreaking := true
    theoremAuthority := false }

def loopProseInput : ProseInput :=
  { proseId := "p"
    finiteInput := true }

def stableLoopBoundaryPacket : EmlLoopBoundaryPacket :=
  lowerProseToLoopBoundaryPacket
    loopProseInput
    radoProjectedHeatflowMemorySurface
    stableCompactBoundaryTorsionPacket

def residueLoopBoundaryPacket : EmlLoopBoundaryPacket :=
  lowerProseToLoopBoundaryPacket
    loopProseInput
    radoProjectedHeatflowMemorySurface
    nonzeroCompactBoundaryTorsionPacket

def nonNaturalLoopBoundaryPacket : EmlLoopBoundaryPacket :=
  lowerProseToLoopBoundaryPacket
    loopProseInput
    radoProjectedHeatflowMemorySurface
    nonNaturalCompactBoundaryTorsionPacket

theorem finite_objective_matches_kakeya_medoid_objective
    (M : RadoHeatflowMemorySurface)
    (p : Phase) :
    finiteKakeyaObjective M p =
      Think.Pipeline.Center.KakeyaMedoid.medoidObjective
        (projectedDistance M)
        M.memory
        M.support
        p := by
  rfl

theorem selected_mu_uses_finite_objective_with_center_tiebreak :
    selectKakeyaMedoid radoProjectedHeatflowMemorySurface =
      Think.Pipeline.Center.KakeyaMedoid.centerPhase := by
  native_decide

theorem kakeya_tube_sheaf_centered_at_mu :
    (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).center =
        selectKakeyaMedoid radoProjectedHeatflowMemorySurface ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).finiteTubeWitness =
        true ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).finiteSheafWitness =
        true ∧
      (kakeyaTubeSheafWitnessAt radoProjectedHeatflowMemorySurface).kakeyaTheoremClaim =
        false := by
  native_decide

theorem torsion_restriction_admitted_iff_natural
    (rho : TorsionRestriction) :
    rho.admitted ↔ rho.naturalUnderRestriction := by
  rfl

theorem natural_torsion_restriction_is_admitted :
    naturalCompactTorsionRestriction.admitted := by
  trivial

theorem locally_stable_exactly_when_residue_zero
    (R : Int) :
    locallyStableFromResidue R = true ↔ R = 0 := by
  unfold locallyStableFromResidue
  by_cases h : R = 0
  · simp [h]
  · simp [h]

theorem output_null_exactly_when_residue_zero
    (R : Int) :
    stabilityKindOfResidue R =
        LoopStabilityKind.null_residue_local_loop_stability ↔
      R = 0 := by
  unfold stabilityKindOfResidue
  by_cases h : R = 0
  · simp [locallyStableFromResidue, h]
  · simp [locallyStableFromResidue, h]

theorem stable_loop_packet_has_null_residue :
    stableLoopBoundaryPacket.totalResidue = 0 ∧
      stableLoopBoundaryPacket.output =
        LoopStabilityKind.null_residue_local_loop_stability ∧
      stableLoopBoundaryPacket.explicitResidues = [] ∧
      stableLoopBoundaryPacket.finiteBoundaryPacket = true := by
  native_decide

theorem nonzero_loop_packet_emits_explicit_residue :
    residueLoopBoundaryPacket.totalResidue = 1 ∧
      residueLoopBoundaryPacket.output =
        LoopStabilityKind.explicit_residue_packet ∧
      LoopResidue.nonzero_boundary_residue ∈
        residueLoopBoundaryPacket.explicitResidues ∧
      LoopResidue.local_loop_stability_refused ∈
        residueLoopBoundaryPacket.explicitResidues := by
  native_decide

theorem nonnatural_torsion_packet_emits_explicit_residue :
    nonNaturalLoopBoundaryPacket.totalResidue = 1 ∧
      nonNaturalLoopBoundaryPacket.output =
        LoopStabilityKind.explicit_residue_packet ∧
      LoopResidue.non_natural_torsion_restriction ∈
        nonNaturalLoopBoundaryPacket.explicitResidues := by
  native_decide

theorem eml_lowering_chain_uses_finite_boundary_packet :
    stableLoopBoundaryPacket.prose = loopProseInput ∧
      stableLoopBoundaryPacket.emlPacket.sourceProseId =
        loopProseInput.proseId ∧
      stableLoopBoundaryPacket.emlPacket.finitePacket = true ∧
      stableLoopBoundaryPacket.medoid =
        (kakeyaTubeSheafWitnessAt
          radoProjectedHeatflowMemorySurface).center ∧
      stableLoopBoundaryPacket.torsionPacket.restrictionAdmitted =
        true ∧
      stableLoopBoundaryPacket.totalResidue = 0 := by
  native_decide

theorem no_forbidden_authority_asserted :
    stableLoopBoundaryPacket.authorityFlags.noneAsserted = true ∧
      stableLoopBoundaryPacket.emlPacket.theoremAuthority = false ∧
      stableLoopBoundaryPacket.kakeyaWitness.theoremAuthority = false ∧
      stableLoopBoundaryPacket.kakeyaWitness.kakeyaTheoremClaim = false ∧
      stableLoopBoundaryPacket.memorySurface.theoremAuthority = false ∧
      stableLoopBoundaryPacket.torsionPacket.theoremAuthority = false ∧
      stableLoopBoundaryPacket.theoremAuthority = false := by
  native_decide

end Think.RadoProjectedModularHeatflow.LocalLoopStability
```
