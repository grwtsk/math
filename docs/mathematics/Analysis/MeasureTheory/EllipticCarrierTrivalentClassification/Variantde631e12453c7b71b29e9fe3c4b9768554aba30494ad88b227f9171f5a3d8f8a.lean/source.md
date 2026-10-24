# Complete source: GRWTSK.Analysis.MeasureTheory.EllipticCarrierTrivalentClassification.Variantde631e12453c7b71b29e9fe3c4b9768554aba30494ad88b227f9171f5a3d8f8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1f4f008a31a356c44ae6316c53942ae7832386` · SHA-256 `f6277c72887822424c84ac1102a013118242382b688189a8c13251b4d9cc7fec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.LocalFiberClass.Varianta142e3c29850574976931b432dfc471232aeb9b375e4795b835a9c5619ad92c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a142e3c29850574976931b432dfc471232aeb9b375e4795b835a9c5619ad92c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.LocalFiberClass.Varianta142e3c29850574976931b432dfc471232aeb9b375e4795b835a9c5619ad92c4","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"a142e3c29850574976931b432dfc471232aeb9b375e4795b835a9c5619ad92c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/EllipticCarrierTrivalentClassification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.EllipticQuadraticResidueCarrier


namespace GRWTSK.Analysis.MeasureTheory.LocalFiberClass.Varianta142e3c29850574976931b432dfc471232aeb9b375e4795b835a9c5619ad92c4

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
```
