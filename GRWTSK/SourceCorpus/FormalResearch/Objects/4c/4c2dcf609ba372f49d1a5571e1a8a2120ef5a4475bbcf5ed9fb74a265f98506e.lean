import Think.Kernel.Checked
import Think.Targets.Basic

set_option autoImplicit false

namespace Think.Arithmetic

/-
Applied-to-pure arithmetic bridge surfaces.

These structures are mathematical surfaces. They encode finite or symbolic
arithmetic data and record the bridge obligations required before pure theorem
authority is claimed.
-/

structure EllipticCurveSurface where
  curveId : String
  baseField : String
deriving Repr, DecidableEq

structure MordellWeilSurface where
  curve : EllipticCurveSurface
  rationalPointGroup : String
  torsionSubgroup : String
  rankSymbol : String
deriving Repr, DecidableEq

structure HasseWeilLFunctionSurface where
  curve : EllipticCurveSurface
  lFunctionSymbol : String
  criticalPoint : String
  analyticContinuationImported : Bool
deriving Repr, DecidableEq

inductive BridgeAuthority where
  | finiteAppliedWitness
  | statementSurface
  | externalTheoremMetadata
  | bridgeObligation
  | importedPureTheorem
  | checkedPureBridge
deriving Repr, DecidableEq

structure ArithmeticBridgeSurface where
  appliedSurface : String
  pureTarget : String
  authority : BridgeAuthority
  residueAtoms : List String
deriving Repr, DecidableEq

def mordellWeilStatement (_mw : MordellWeilSurface) : Prop := True

def hasseWeilLFunctionStatement (_L : HasseWeilLFunctionSurface) : Prop := True

def finiteWitnessBridgePending (surface : ArithmeticBridgeSurface) : Prop :=
  surface.authority = BridgeAuthority.finiteAppliedWitness →
    surface.residueAtoms ≠ []

end Think.Arithmetic
