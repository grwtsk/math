# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmlTorsionScatteringBoundary.Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5202d6d52efac57654be6dc093068c66196939` · SHA-256 `1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.EmlKakeyaMedoidBoundary

set_option autoImplicit false

namespace Think.Arithmetic.EmlTorsionScatteringBoundary

open Think.Arithmetic.EmlFunctionalRhBoundary
open Think.Arithmetic.EmlKakeyaMedoidBoundary

inductive TorsionScatteringResidue where
  | non_admissible_torsion_data
  | torsion_not_forced_into_ring_algebra
  | zero_polarity_refusal_residue
  | missing_ordered_torsion_class
  | theorem_authority_not_claimed
deriving Repr, DecidableEq

def TorsionScatteringResidue.token :
    TorsionScatteringResidue -> String
  | .non_admissible_torsion_data => "non_admissible_torsion_data"
  | .torsion_not_forced_into_ring_algebra =>
      "torsion_not_forced_into_ring_algebra"
  | .zero_polarity_refusal_residue =>
      "zero_polarity_refusal_residue"
  | .missing_ordered_torsion_class =>
      "missing_ordered_torsion_class"
  | .theorem_authority_not_claimed =>
      "theorem_authority_not_claimed"

structure TorsionClass where
  classId : String
  orderIndex : Nat
  declaredPolarity : EmlResiduePolarity
  admissible : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def torsionPhiResidues (tau : TorsionClass) :
    List TorsionScatteringResidue :=
  if tau.admissible then
    if tau.declaredPolarity = EmlResiduePolarity.none then
      [TorsionScatteringResidue.zero_polarity_refusal_residue]
    else
      []
  else
    [ TorsionScatteringResidue.non_admissible_torsion_data
    , TorsionScatteringResidue.torsion_not_forced_into_ring_algebra
    ]

structure EmlTorsionPacket where
  sourceClassId : String
  polarity : EmlResiduePolarity
  finitePacket : Bool
  admissible : Bool
  residues : List TorsionScatteringResidue
  theoremAuthority : Bool
deriving Repr, DecidableEq

def PhiTorsion (tau : TorsionClass) : EmlTorsionPacket :=
  if tau.admissible then
    { sourceClassId := tau.classId
      polarity := tau.declaredPolarity
      finitePacket := true
      admissible := true
      residues := torsionPhiResidues tau
      theoremAuthority := false }
  else
    { sourceClassId := tau.classId
      polarity := EmlResiduePolarity.none
      finitePacket := true
      admissible := false
      residues := torsionPhiResidues tau
      theoremAuthority := false }

inductive ScatteringProgression where
  | positive_progression
  | negative_progression
  | refusal_residue
deriving Repr, DecidableEq

def monomialScatteringOperator
    (packet : EmlTorsionPacket) :
    ScatteringProgression :=
  match packet.polarity with
  | EmlResiduePolarity.positive =>
      ScatteringProgression.positive_progression
  | EmlResiduePolarity.negative =>
      ScatteringProgression.negative_progression
  | EmlResiduePolarity.none =>
      ScatteringProgression.refusal_residue

def scatteringIsRingProgression :
    ScatteringProgression -> Bool
  | ScatteringProgression.positive_progression => true
  | ScatteringProgression.negative_progression => true
  | ScatteringProgression.refusal_residue => false

def scatterTorsionClass (tau : TorsionClass) :
    ScatteringProgression :=
  monomialScatteringOperator (PhiTorsion tau)

def scatterTorsionClasses :
    List TorsionClass -> List ScatteringProgression
  | [] => []
  | tau :: rest => scatterTorsionClass tau :: scatterTorsionClasses rest

def signedRingProgressions :
    List ScatteringProgression -> List ScatteringProgression
  | [] => []
  | step :: rest =>
      if scatteringIsRingProgression step then
        step :: signedRingProgressions rest
      else
        signedRingProgressions rest

def torsionResidues :
    List TorsionClass -> List TorsionScatteringResidue
  | [] => []
  | tau :: rest => (PhiTorsion tau).residues ++ torsionResidues rest

def strictlyOrderedTorsionClasses :
    List TorsionClass -> Bool
  | [] => true
  | [_] => true
  | left :: right :: rest =>
      decide (left.orderIndex < right.orderIndex) &&
        strictlyOrderedTorsionClasses (right :: rest)

def nonAdmissibleForcedIntoRingAlgebra
    (classes : List TorsionClass) : Bool :=
  classes.any (fun tau =>
    !tau.admissible &&
      scatteringIsRingProgression (scatterTorsionClass tau))

structure AdmissibleEllipticCurveWithTorsion where
  curve : Think.Arithmetic.EllipticCurveSurface
  torsionSurface : Think.Arithmetic.MordellWeilSurface
  torsionClasses : List TorsionClass
  admissible : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def torsionCurveSurface : Think.Arithmetic.EllipticCurveSurface :=
  { curveId := "E"
    baseField := "Q" }

def torsionMordellWeilSurface :
    Think.Arithmetic.MordellWeilSurface :=
  { curve := torsionCurveSurface
    rationalPointGroup := "E(Q)"
    torsionSubgroup := "E_tors"
    rankSymbol := "r" }

def positiveTorsionClass : TorsionClass :=
  { classId := "tau_positive"
    orderIndex := 0
    declaredPolarity := EmlResiduePolarity.positive
    admissible := true
    theoremAuthority := false }

def negativeTorsionClass : TorsionClass :=
  { classId := "tau_negative"
    orderIndex := 1
    declaredPolarity := EmlResiduePolarity.negative
    admissible := true
    theoremAuthority := false }

def zeroTorsionClass : TorsionClass :=
  { classId := "tau_zero"
    orderIndex := 2
    declaredPolarity := EmlResiduePolarity.none
    admissible := true
    theoremAuthority := false }

def nonAdmissibleTorsionClass : TorsionClass :=
  { classId := "tau_non_admissible"
    orderIndex := 3
    declaredPolarity := EmlResiduePolarity.positive
    admissible := false
    theoremAuthority := false }

def orderedTorsionClasses : List TorsionClass := [
  positiveTorsionClass,
  negativeTorsionClass,
  zeroTorsionClass
]

def torsionCurveWithOrderedClasses :
    AdmissibleEllipticCurveWithTorsion :=
  { curve := torsionCurveSurface
    torsionSurface := torsionMordellWeilSurface
    torsionClasses := orderedTorsionClasses
    admissible := true
    theoremAuthority := false }

structure TorsionRingAlgebraProgression where
  curve : AdmissibleEllipticCurveWithTorsion
  ordered : Bool
  scatteringOutputs : List ScatteringProgression
  signedProgressions : List ScatteringProgression
  residues : List TorsionScatteringResidue
  nonAdmissibleForced : Bool
  theoremAuthority : Bool
deriving Repr, DecidableEq

def torsionRingAlgebraProgression
    (curve : AdmissibleEllipticCurveWithTorsion) :
    TorsionRingAlgebraProgression :=
  let outputs := scatterTorsionClasses curve.torsionClasses
  { curve := curve
    ordered := strictlyOrderedTorsionClasses curve.torsionClasses
    scatteringOutputs := outputs
    signedProgressions := signedRingProgressions outputs
    residues := torsionResidues curve.torsionClasses
    nonAdmissibleForced :=
      nonAdmissibleForcedIntoRingAlgebra curve.torsionClasses
    theoremAuthority := false }

def defaultTorsionRingAlgebraProgression :
    TorsionRingAlgebraProgression :=
  torsionRingAlgebraProgression torsionCurveWithOrderedClasses

def nonAdmissibleTorsionProgression :
    TorsionRingAlgebraProgression :=
  torsionRingAlgebraProgression
    { curve := torsionCurveSurface
      torsionSurface := torsionMordellWeilSurface
      torsionClasses := [nonAdmissibleTorsionClass]
      admissible := true
      theoremAuthority := false }

theorem torsion_classes_are_naturally_ordered :
    strictlyOrderedTorsionClasses orderedTorsionClasses = true := by
  native_decide

theorem phi_torsion_positive_maps_to_positive_progression :
    monomialScatteringOperator (PhiTorsion positiveTorsionClass) =
      ScatteringProgression.positive_progression := by
  native_decide

theorem phi_torsion_negative_maps_to_negative_progression :
    monomialScatteringOperator (PhiTorsion negativeTorsionClass) =
      ScatteringProgression.negative_progression := by
  native_decide

theorem phi_torsion_zero_maps_to_refusal_residue :
    monomialScatteringOperator (PhiTorsion zeroTorsionClass) =
        ScatteringProgression.refusal_residue ∧
      TorsionScatteringResidue.zero_polarity_refusal_residue ∈
        (PhiTorsion zeroTorsionClass).residues := by
  native_decide

theorem nonadmissible_torsion_emits_residue :
    (PhiTorsion nonAdmissibleTorsionClass).admissible = false ∧
      (PhiTorsion nonAdmissibleTorsionClass).polarity =
        EmlResiduePolarity.none ∧
      TorsionScatteringResidue.non_admissible_torsion_data ∈
        (PhiTorsion nonAdmissibleTorsionClass).residues ∧
      TorsionScatteringResidue.torsion_not_forced_into_ring_algebra ∈
        (PhiTorsion nonAdmissibleTorsionClass).residues := by
  native_decide

theorem ring_algebra_progresses_by_signed_eml_polarity :
    defaultTorsionRingAlgebraProgression.ordered = true ∧
      defaultTorsionRingAlgebraProgression.scatteringOutputs =
        [ ScatteringProgression.positive_progression
        , ScatteringProgression.negative_progression
        , ScatteringProgression.refusal_residue
        ] ∧
      defaultTorsionRingAlgebraProgression.signedProgressions =
        [ ScatteringProgression.positive_progression
        , ScatteringProgression.negative_progression
        ] ∧
      defaultTorsionRingAlgebraProgression.nonAdmissibleForced = false ∧
      defaultTorsionRingAlgebraProgression.theoremAuthority = false := by
  native_decide

theorem nonadmissible_torsion_not_forced_into_ring_algebra :
    nonAdmissibleTorsionProgression.scatteringOutputs =
        [ScatteringProgression.refusal_residue] ∧
      nonAdmissibleTorsionProgression.signedProgressions = [] ∧
      nonAdmissibleTorsionProgression.nonAdmissibleForced = false ∧
      TorsionScatteringResidue.torsion_not_forced_into_ring_algebra ∈
        nonAdmissibleTorsionProgression.residues := by
  native_decide

theorem torsion_scattering_has_no_theorem_authority :
    torsionCurveWithOrderedClasses.theoremAuthority = false ∧
      positiveTorsionClass.theoremAuthority = false ∧
      (PhiTorsion positiveTorsionClass).theoremAuthority = false ∧
      defaultTorsionRingAlgebraProgression.theoremAuthority = false := by
  native_decide

end Think.Arithmetic.EmlTorsionScatteringBoundary
```
