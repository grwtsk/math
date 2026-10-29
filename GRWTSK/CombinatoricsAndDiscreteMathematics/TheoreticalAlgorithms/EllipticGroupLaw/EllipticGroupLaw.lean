import Think.SourceTree.Legacy.Arithmetic.Basic
import Think.SourceTree.Legacy.Arithmetic.PrimeVerbField

set_option autoImplicit false

namespace Think.Arithmetic.EllipticGroupLaw

structure EllipticCurveGroupLawSurface where
  curve : Think.Arithmetic.EllipticCurveSurface
  identityLabel : String
  operationLabel : String
  inverseLabel : String
  commutativitySurface : String
  associativitySurface : String
deriving Repr, DecidableEq

structure PrimeVerbFieldAbelianGroupSurface where
  carrierLabel : String
  additiveLawLabel : String
  zeroLabel : String
  nonzeroMultiplicativeLawLabel : String
  bridgeImported : Bool
deriving Repr, DecidableEq

structure EllipticCurveBitMatrixDnaSurface where
  curve : Think.Arithmetic.EllipticCurveSurface
  coefficientAtoms : List String
  discriminantAtom : String
  groupLawAtom : String
  goodPrimeTraceAtoms : List String
  mordellTotalityAtom : String
deriving Repr, DecidableEq

def shortWeierstrassSurface : Think.Arithmetic.EllipticCurveSurface :=
  { curveId := "E_short"
    baseField := "Q_surface" }

def chordTangentGroupLawSurface : EllipticCurveGroupLawSurface :=
  { curve := shortWeierstrassSurface
    identityLabel := "point_at_infinity"
    operationLabel := "chord_tangent_addition_surface"
    inverseLabel := "vertical_reflection_inverse_surface"
    commutativitySurface := "elliptic_curve_addition_commutative_surface"
    associativitySurface := "elliptic_curve_addition_associative_bridge" }

def standardPrimeVerbFieldAbelianGroupSurface :
    PrimeVerbFieldAbelianGroupSurface :=
  { carrierLabel := "Q_surface"
    additiveLawLabel := "Q_surface_addition"
    zeroLabel := "0"
    nonzeroMultiplicativeLawLabel := "Q_surface_nonzero_multiplication"
    bridgeImported := false }

def bitMatrixDnaSurface : EllipticCurveBitMatrixDnaSurface :=
  { curve := shortWeierstrassSurface
    coefficientAtoms := ["a1=0", "a2=0", "a3=0", "a4=-1", "a6=0"]
    discriminantAtom := "discriminant=64"
    groupLawAtom := "elliptic_curve.group_law.chord_tangent"
    goodPrimeTraceAtoms := ["p=3:a_p=0"]
    mordellTotalityAtom := "mordell_theorem.totality_bridge_pending" }

def groupLawClaim (_s : EllipticCurveGroupLawSurface) : Prop := True

def mordellTotalityResidue (s : EllipticCurveGroupLawSurface) : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "mordell_theorem.totality_bridge_pending:" ++ s.curve.curveId
    kind := FWR.ResidueKind.externalTheoremNotImported
    blocks :=
      "elliptic curve group-law and Mordell totality surfaces are available, but the Mordell theorem proof/import is not checked here"
    clearsBy :=
      "checked Lean import/proof of Mordell-Weil finite generation and the required group-law adapter" }

def mordellTotalityChecked (s : EllipticCurveGroupLawSurface) :
    Think.Checked (groupLawClaim s) :=
  FWR.Checked.residue [mordellTotalityResidue s]

theorem chordTangent_identity_is_point_at_infinity :
    chordTangentGroupLawSurface.identityLabel = "point_at_infinity" := by
  rfl

theorem primeVerbField_additive_surface_is_abelian_statement :
    standardPrimeVerbFieldAbelianGroupSurface.additiveLawLabel =
      "Q_surface_addition" := by
  rfl

theorem primeVerbField_nonzero_multiplicative_surface_is_abelian_statement :
    standardPrimeVerbFieldAbelianGroupSurface.nonzeroMultiplicativeLawLabel =
      "Q_surface_nonzero_multiplication" := by
  rfl

theorem dnaSurface_has_group_law_atom :
    bitMatrixDnaSurface.groupLawAtom =
      "elliptic_curve.group_law.chord_tangent" := by
  rfl

theorem dnaSurface_has_mordell_bridge_atom :
    bitMatrixDnaSurface.mordellTotalityAtom =
      "mordell_theorem.totality_bridge_pending" := by
  rfl

theorem mordellTotality_hasResidue :
    (mordellTotalityChecked chordTangentGroupLawSurface).hasResidue = true := by
  rfl

end Think.Arithmetic.EllipticGroupLaw
