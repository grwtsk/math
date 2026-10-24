import Think.SourceTree.Legacy.Arithmetic.EllipticQuadraticResidueCarrier

set_option autoImplicit false

namespace Think.Arithmetic.EllipticCarrierTrivalentClassification

open Think.Arithmetic.EllipticQuadraticResidueCarrier

inductive LocalFiberClass where
  | squareAdmitted
  | nonsquareObstruction
  | zeroIdentityBoundary
  | irreducibleResidual
deriving Repr, DecidableEq

structure NonnegativeWeight where
  numerator : Nat
  denominator : Nat
  denominatorPositive : Bool
deriving Repr, DecidableEq

def unitWeight : NonnegativeWeight :=
  { numerator := 1
    denominator := 1
    denominatorPositive := true }

structure LocalFiber where
  fiberId : String
  fiberClass : LocalFiberClass
  residualWeight : NonnegativeWeight
deriving Repr, DecidableEq

structure FiniteFieldEllipticCarrier where
  fieldLabel : String
  q : Nat
  qModFour : Nat
  curveEquation : String
  pointCount : Nat
  pointSetFinite : Bool
  groupLawAvailable : Bool
  allPointsTorsion : Bool
deriving Repr, DecidableEq

def exampleCarrier : FiniteFieldEllipticCarrier :=
  { fieldLabel := "F_27"
    q := 27
    qModFour := 3
    curveEquation := "y^2=x^3-x"
    pointCount := 28
    pointSetFinite := true
    groupLawAvailable := true
    allPointsTorsion := true }

structure CarrierPoint where
  pointId : String
  fieldLabel : String
  torsionRoutable : Bool
deriving Repr, DecidableEq

structure TrivalentOneByOneBitMatrix where
  width : Nat
  height : Nat
  token : OneByOneBitMatrixTruthToken
deriving Repr, DecidableEq

def oneByOneMatrix (token : OneByOneBitMatrixTruthToken) :
    TrivalentOneByOneBitMatrix :=
  { width := 1
    height := 1
    token := token }

inductive ClassifierOutput where
  | reduced (matrix : TrivalentOneByOneBitMatrix) (route : CarrierPoint)
  | residual (residueLabel : String) (route : CarrierPoint) (weight : NonnegativeWeight)
deriving Repr, DecidableEq

def routeFiber (carrier : FiniteFieldEllipticCarrier) (fiber : LocalFiber) :
    CarrierPoint :=
  { pointId := carrier.fieldLabel ++ ":" ++ fiber.fiberId
    fieldLabel := carrier.fieldLabel
    torsionRoutable := carrier.allPointsTorsion }

def classifyFiber
    (carrier : FiniteFieldEllipticCarrier)
    (fiber : LocalFiber) : ClassifierOutput :=
  let route := routeFiber carrier fiber
  match fiber.fiberClass with
  | LocalFiberClass.squareAdmitted =>
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.trueToken)
        route
  | LocalFiberClass.nonsquareObstruction =>
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.falseToken)
        route
  | LocalFiberClass.zeroIdentityBoundary =>
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.nullToken)
        route
  | LocalFiberClass.irreducibleResidual =>
      ClassifierOutput.residual
        "irreducible_residual_fiber"
        route
        fiber.residualWeight

def outputRouteTorsion : ClassifierOutput -> Bool
  | ClassifierOutput.reduced _ route => route.torsionRoutable
  | ClassifierOutput.residual _ route _ => route.torsionRoutable

structure ClassificationSurface where
  windowIndex : Nat
  fiberCount : Nat
  finiteSurface : Bool
  uniformRule : Bool
  asymptoticTheoremClaim : Bool
deriving Repr, DecidableEq

def classificationSurface (windowIndex : Nat) (fibers : List LocalFiber) :
    ClassificationSurface :=
  { windowIndex := windowIndex
    fiberCount := fibers.length
    finiteSurface := true
    uniformRule := true
    asymptoticTheoremClaim := false }

def surfaceIsFiniteUniformWitness (surface : ClassificationSurface) : Prop :=
  surface.finiteSurface = true ∧
    surface.uniformRule = true ∧
    surface.asymptoticTheoremClaim = false

def squareFiber : LocalFiber :=
  { fiberId := "s0"
    fiberClass := LocalFiberClass.squareAdmitted
    residualWeight := unitWeight }

def nonsquareFiber : LocalFiber :=
  { fiberId := "n0"
    fiberClass := LocalFiberClass.nonsquareObstruction
    residualWeight := unitWeight }

def zeroBoundaryFiber : LocalFiber :=
  { fiberId := "z0"
    fiberClass := LocalFiberClass.zeroIdentityBoundary
    residualWeight := unitWeight }

def residualFiber : LocalFiber :=
  { fiberId := "r0"
    fiberClass := LocalFiberClass.irreducibleResidual
    residualWeight := { numerator := 3, denominator := 2, denominatorPositive := true } }

def exampleFibers : List LocalFiber :=
  [squareFiber, nonsquareFiber, zeroBoundaryFiber, residualFiber]

theorem trivalentOneByOneAlphabet_exact :
    oneByOneBitMatrixTruthAlphabet = ["true", "false", "null"] := by
  rfl

theorem squareFiber_reduces_true :
    classifyFiber exampleCarrier squareFiber =
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.trueToken)
        (routeFiber exampleCarrier squareFiber) := by
  rfl

theorem nonsquareFiber_reduces_false :
    classifyFiber exampleCarrier nonsquareFiber =
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.falseToken)
        (routeFiber exampleCarrier nonsquareFiber) := by
  rfl

theorem zeroBoundaryFiber_reduces_null :
    classifyFiber exampleCarrier zeroBoundaryFiber =
      ClassifierOutput.reduced
        (oneByOneMatrix OneByOneBitMatrixTruthToken.nullToken)
        (routeFiber exampleCarrier zeroBoundaryFiber) := by
  rfl

theorem residualFiber_preserves_weighted_record :
    classifyFiber exampleCarrier residualFiber =
      ClassifierOutput.residual
        "irreducible_residual_fiber"
        (routeFiber exampleCarrier residualFiber)
        residualFiber.residualWeight := by
  rfl

theorem every_example_route_is_torsion :
    (exampleFibers.map (fun f => outputRouteTorsion (classifyFiber exampleCarrier f))) =
      [true, true, true, true] := by
  rfl

theorem example_surface_finite_uniform :
    surfaceIsFiniteUniformWitness (classificationSurface 0 exampleFibers) := by
  exact ⟨rfl, rfl, rfl⟩

theorem residual_weight_is_measurable_finite_surface :
    residualFiber.residualWeight.denominatorPositive = true := by
  rfl

end Think.Arithmetic.EllipticCarrierTrivalentClassification
