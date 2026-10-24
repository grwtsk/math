# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6.Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a42d7371cedf242903040ad0af6642d2d3a52d1` · SHA-256 `6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- source-tree-label: STL1|L|addr=0011111010|role=proof_code_atom|slug=sourcetree-carrierfullbalancealgorithm|owner=canonical_owner|core=SourceTree/CarrierFullBalanceAlgorithm.lean|leaf=M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

inductive SourceResidueKind where
  | duplicateOwner
  | missingCover
  | staleBarrel
  | siblingImport
  | monolith
  | quarantineLeak
  | unownedAstLeaf
  | binomialArity
  | labelInconsistency
  | archimedeanRoot
deriving DecidableEq, Repr

inductive SourcePlace where
  | finite : SourceResidueKind -> SourcePlace
  | archimedean : SourcePlace
deriving DecidableEq, Repr

inductive RootClass where
  | canonicalRoot
  | coverRoot
  | leafFamily
  | glueFamily
  | validationSurface
  | reportSurface
  | generatedSurface
  | targetSurface
  | quarantine
  | legacyToMigrate
  | rejectedResidue
deriving DecidableEq, Repr

structure SourceTreePolicy where
  rootClasses : List RootClass
  maxNodeArity : Nat
  maxLeafGroupSize : Nat
  quarantineImportsLive : Bool
  placeholderOwnsConcept : Bool
deriving Repr

structure SourceTreeState where
  dirCount : Nat
  fileCount : Nat
  atomCount : Nat
  importCount : Nat
  conceptCount : Nat
  labelCount : Nat
  quarantineLeakCount : Nat
  duplicateOwnerCount : Nat
  missingCoverCount : Nat
  staleBarrelCount : Nat
  monolithCount : Nat
  binomialArityExcess : Nat
  labelInconsistencyCount : Nat
  explicitFormulaDefectCount : Nat
  unaccountedOddDriftCount : Nat
  unaccountedCumulantCount : Nat
  newtonDegenerateFaceCount : Nat
  carrierCurvatureCount : Nat
  carrierTorsionCount : Nat
  physicalPathMismatchCount : Nat
  fixedPointReached : Bool
deriving Repr

structure FormalProduct where
  factorCount : Nat
deriving Repr

structure FormalSeries where
  termCount : Nat
deriving Repr

def SourceEulerProduct (T : SourceTreeState) : FormalProduct :=
  { factorCount := T.atomCount }

def SourceLog (T : SourceTreeState) : FormalSeries :=
  { termCount := T.atomCount }

def MidpointEvenized (T : SourceTreeState) : Prop :=
  T.unaccountedOddDriftCount = 0

def ExplicitFormulaClosed (T : SourceTreeState) : Prop :=
  T.explicitFormulaDefectCount = 0

def NewtonNondegenerate (T : SourceTreeState) : Prop :=
  T.newtonDegenerateFaceCount = 0

def CarrierInvolutive (T : SourceTreeState) : Prop :=
  T.carrierCurvatureCount = 0

def CarrierCurvatureClosed (T : SourceTreeState) : Prop :=
  T.carrierCurvatureCount = 0

def CarrierTorsionClosed (T : SourceTreeState) : Prop :=
  T.carrierTorsionCount = 0

def SourceBSDLocal (T : SourceTreeState) : SourcePlace -> Prop
  | SourcePlace.finite SourceResidueKind.duplicateOwner => T.duplicateOwnerCount = 0
  | SourcePlace.finite SourceResidueKind.missingCover => T.missingCoverCount = 0
  | SourcePlace.finite SourceResidueKind.staleBarrel => T.staleBarrelCount = 0
  | SourcePlace.finite SourceResidueKind.siblingImport => T.importCount = T.importCount
  | SourcePlace.finite SourceResidueKind.monolith => T.monolithCount = 0
  | SourcePlace.finite SourceResidueKind.quarantineLeak => T.quarantineLeakCount = 0
  | SourcePlace.finite SourceResidueKind.unownedAstLeaf => T.conceptCount = T.conceptCount
  | SourcePlace.finite SourceResidueKind.binomialArity => T.binomialArityExcess = 0
  | SourcePlace.finite SourceResidueKind.labelInconsistency => T.labelInconsistencyCount = 0
  | SourcePlace.finite SourceResidueKind.archimedeanRoot => T.physicalPathMismatchCount = 0
  | SourcePlace.archimedean => T.physicalPathMismatchCount = 0

def SourceTreeBalanced (T : SourceTreeState) : Prop :=
  T.quarantineLeakCount = 0
    /\ T.duplicateOwnerCount = 0
    /\ T.missingCoverCount = 0
    /\ T.staleBarrelCount = 0
    /\ T.monolithCount = 0
    /\ T.binomialArityExcess = 0
    /\ T.labelInconsistencyCount = 0
    /\ T.explicitFormulaDefectCount = 0
    /\ T.unaccountedOddDriftCount = 0
    /\ T.unaccountedCumulantCount = 0
    /\ T.newtonDegenerateFaceCount = 0
    /\ T.carrierCurvatureCount = 0
    /\ T.carrierTorsionCount = 0
    /\ T.physicalPathMismatchCount = 0
    /\ T.fixedPointReached = true

structure CarrierBalancedReport (T : SourceTreeState) where
  sourceTreeBalanced : SourceTreeBalanced T
  sourceBSDLocal : forall nu : SourcePlace, SourceBSDLocal T nu
  explicitFormulaClosed : ExplicitFormulaClosed T
  carrierInvolutive : CarrierInvolutive T
  carrierCurvatureClosed : CarrierCurvatureClosed T
  carrierTorsionClosed : CarrierTorsionClosed T

theorem carrier_balanced_sound
    (T : SourceTreeState)
    (h : CarrierBalancedReport T) :
    SourceTreeBalanced T
      /\ (forall nu : SourcePlace, SourceBSDLocal T nu)
      /\ ExplicitFormulaClosed T
      /\ CarrierInvolutive T
      /\ CarrierCurvatureClosed T
      /\ CarrierTorsionClosed T := by
  exact And.intro h.sourceTreeBalanced
    (And.intro h.sourceBSDLocal
      (And.intro h.explicitFormulaClosed
        (And.intro h.carrierInvolutive
          (And.intro h.carrierCurvatureClosed h.carrierTorsionClosed))))

end Think.SourceTree
```
