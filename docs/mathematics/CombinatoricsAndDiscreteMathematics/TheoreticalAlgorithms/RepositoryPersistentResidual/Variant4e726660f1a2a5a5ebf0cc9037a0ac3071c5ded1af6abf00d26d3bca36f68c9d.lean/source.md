# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RepositoryPersistentResidual.Variant4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef78556f358fb196beaac204f303a4d2d3b6ac8e` · SHA-256 `4e726660f1a2a5a5ebf0cc9037a0ac3071c5ded1af6abf00d26d3bca36f68c9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledComplex
import FCRS.TheoremTransfer

/-!
Total repository-theorem to persistent-residual bridge classification.

Every cell has one constructor of `BridgeClassification`.  Positive forward
and reverse laws are independent typed functions; counterboundaries contain a
counterexample; not-applicable cells require a rationale; open obligations
contain no mathematical evidence and cannot enter a closed positive path.
-/

namespace FCRS.RepositoryPersistentResidual

open FCRS.TheoremTransfer
open FCRS.TheoremGraph
open FCRS.PersistentResidual
open FCRS.CyclotomicTraversal
open FCRS.ControlledPlane

/-- BR-01--BR-20 catalog. -/
inductive BRIdentifier where
  | br01SourceTheoremInstantiation | br02TheoremToConstraintTranslation
  | br03AssumptionTransport | br04ForwardPreservation
  | br05IndependentReflection | br06EquivalenceFromTwoDirections
  | br07BridgeComposition | br08InformationLossComposition
  | br09ScopeContinuity | br10FoundationCompatibility
  | br11ChoiceDependenceRetention | br12CounterboundaryTransport
  | br13NotApplicableCertificate | br14OpenObligationIsNotEvidence
  | br15ExactVersionValidation | br16CompleteDerivationRetention
  | br17NoSemanticManufacture | br18AllPairsClassification
  | br19PositiveForwardSubgraphAcyclicity | br20LicensedReflectiveSubgraph
deriving Repr, DecidableEq

/-- Exact closed disposition vocabulary. -/
inductive BridgeDisposition where
  | forwardPreservation
  | independentReflection
  | equivalence
  | structuralPremise
  | counterboundary
  | notApplicable
  | openResearchObligation
deriving Repr, DecidableEq

/-- Actual source-to-target implication with immutable evidence identity. -/
structure ForwardPreservationCertificate where
  sourceStatement : Prop
  targetStatement : Prop
  translationVersion : VersionId
  preservationEvidenceVersion : VersionId
  law : sourceStatement → targetStatement

/-- Reverse evidence is independently typed and independently versioned. -/
structure IndependentReflectionCertificate where
  sourceStatement : Prop
  targetStatement : Prop
  translationVersion : VersionId
  reflectionEvidenceVersion : VersionId
  law : targetStatement → sourceStatement

/-- Equivalence contains both independently typed directions. -/
structure EquivalenceCertificate where
  forward : ForwardPreservationCertificate
  reflection : IndependentReflectionCertificate
  sourceExact : reflection.sourceStatement = forward.sourceStatement
  targetExact : reflection.targetStatement = forward.targetStatement

structure StructuralPremiseCertificate where
  premiseVersion : VersionId
  premise : Prop
  premiseEvidence : premise

/-- A negative cell contains a real source witness and target refutation. -/
structure CounterboundaryCertificate where
  sourceStatement : Prop
  targetStatement : Prop
  counterexampleVersion : VersionId
  sourceHolds : sourceStatement
  targetFails : ¬ targetStatement

structure NotApplicableCertificate where
  certificateVersion : VersionId
  rationale : String
  rationaleNonempty : rationale ≠ ""
  checkedFamilyRuleVersion : VersionId

/-- An open obligation deliberately has no `law`, proof, or evidence field. -/
structure OpenBridgeObligation where
  obligationVersion : VersionId
  statement : String
  requiredEvidence : List String
  requiredEvidenceNonempty : requiredEvidence ≠ []

/-- Exactly one constructor classifies every matrix cell. -/
inductive BridgeClassification : BridgeDisposition → Type where
  | forward (certificate : ForwardPreservationCertificate) :
      BridgeClassification .forwardPreservation
  | reflection (certificate : IndependentReflectionCertificate) :
      BridgeClassification .independentReflection
  | equivalent (certificate : EquivalenceCertificate) :
      BridgeClassification .equivalence
  | premise (certificate : StructuralPremiseCertificate) :
      BridgeClassification .structuralPremise
  | counterboundary (certificate : CounterboundaryCertificate) :
      BridgeClassification .counterboundary
  | notApplicable (certificate : NotApplicableCertificate) :
      BridgeClassification .notApplicable
  | openObligation (obligation : OpenBridgeObligation) :
      BridgeClassification .openResearchObligation

/-- Complete exact metadata retained by every source/target row. -/
structure BridgeCellMetadata where
  cellVersion : VersionId
  sourceTheorem : TheoremOccurrence
  targetTheorem : PRDIdentifier
  targetVersion : VersionId
  sourceTheoryVersion : VersionId
  targetTheoryVersion : VersionId
  sourceAssumptionSetVersion : VersionId
  targetAssumptionSetVersion : VersionId
  sourceScopeVersion : VersionId
  targetScopeVersion : VersionId
  quantifierProfileVersion : VersionId
  foundationPath : List VersionId
  informationLoss : List InformationLossProfile
  rationale : String
  validationResultVersion : VersionId

structure BridgeMatrixCell where
  metadata : BridgeCellMetadata
  disposition : BridgeDisposition
  classification : BridgeClassification disposition

/-- A total function gives every pair exactly one typed cell. -/
structure RepositoryBridgeMatrix where
  matrixVersion : VersionId
  sourceInventoryVersion : VersionId
  targetCatalogVersion : VersionId
  classify : TheoremOccurrence → PRDIdentifier → BridgeMatrixCell
  sourceExact : ∀ source target,
    ((classify source target).metadata.sourceTheorem = source)
  targetExact : ∀ source target,
    ((classify source target).metadata.targetTheorem = target)

/-- BR-18/RTH-11: totality is definitional and has no unclassified branch. -/
theorem br18_allPairsClassification
    (matrix : RepositoryBridgeMatrix)
    (source : TheoremOccurrence) (target : PRDIdentifier) :
    ∃ cell : BridgeMatrixCell,
      cell = matrix.classify source target ∧
      cell.metadata.sourceTheorem = source ∧
      cell.metadata.targetTheorem = target := by
  exact ⟨matrix.classify source target, rfl,
    matrix.sourceExact source target, matrix.targetExact source target⟩

/-- Only a source-to-target preservation law can discharge a target theorem.
Reverse-only evidence and structural premises remain useful graph records, but
cannot themselves close a PRD target. -/
def TargetDischargingDisposition : BridgeDisposition → Prop
  | .forwardPreservation | .equivalence => True
  | .independentReflection | .structuralPremise | .counterboundary |
      .notApplicable | .openResearchObligation => False

/-- BR-14: an open obligation is not positive evidence. -/
theorem br14_openObligationIsNotEvidence :
    ¬ TargetDischargingDisposition .openResearchObligation := by
  simp [TargetDischargingDisposition]

/-- Counterboundary and positive preservation are exclusive constructors. -/
theorem bridgeDisposition_exclusive :
    BridgeDisposition.counterboundary ≠ .forwardPreservation := by
  simp

/-- A closed path can contain only separately evidenced positive cells. -/
structure ClosedPRDPath where
  pathVersion : VersionId
  cells : List BridgeMatrixCell
  nonempty : cells ≠ []
  everyCellDischargesTarget : ∀ cell, cell ∈ cells →
    TargetDischargingDisposition cell.disposition

theorem openCell_not_mem_closedPath
    (path : ClosedPRDPath) (cell : BridgeMatrixCell)
    (openExact : cell.disposition = .openResearchObligation) :
    cell ∈ path.cells → False := by
  intro member
  have discharges := path.everyCellDischargesTarget cell member
  rw [openExact] at discharges
  exact br14_openObligationIsNotEvidence discharges

/-- Adapter from the repository's generic preservation primitive. -/
def ofTheoremTransferPreservation
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation)
    (proposition : source.Proposition)
    (inScope : PropositionWithinScope source sourceScope proposition) :
    ForwardPreservationCertificate where
  sourceStatement := sourceAssumptions.Holds → source.Holds proposition
  targetStatement := targetAssumptions.Holds →
    target.Holds (translation.mapProposition proposition)
  translationVersion := translation.artifact
  preservationEvidenceVersion := preservation.evidenceArtifact
  law := fun sourceProof targetAssumptionsHold =>
    preservation.law.sound proposition inScope sourceProof targetAssumptionsHold

/-- Adapter from the independently typed generic reflection primitive. -/
def ofTheoremTransferReflection
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (reflection : ReflectionTheorem translation)
    (proposition : source.Proposition)
    (inScope : PropositionWithinScope source sourceScope proposition) :
    IndependentReflectionCertificate where
  sourceStatement := sourceAssumptions.Holds → source.Holds proposition
  targetStatement := targetAssumptions.Holds →
    target.Holds (translation.mapProposition proposition)
  translationVersion := translation.artifact
  reflectionEvidenceVersion := reflection.evidenceArtifact
  law := fun targetProof sourceAssumptionsHold =>
    reflection.law.sound proposition inScope targetProof sourceAssumptionsHold

/-- Existing CF decoder yields paired observation injectivity only. -/
theorem controlledPlaneDecoder_to_pairedObservability
    {Entity Control Point : Type}
    {observation : ControlledObservation Entity Control Point}
    (decoder : LosslessDecoder observation) :
    Function.Injective (combinedObservation observation) :=
  controlled_observation_injective decoder

/-- Existing TT-01 is reused through the exact cyclotomic capacity adapter. -/
theorem transportTT01_to_primeCapacity (threshold : Nat) (large : 1 < threshold) :
    ∃ prime, Nat.Prime prime ∧ threshold < prime ∧ prime < 2 * threshold :=
  tt01_bertrandCapacityAdapter threshold large

/-- Closed family inventory for conservative adapter classification. -/
inductive RepositoryTheoremFamily where
  | comparisonTheorems | algebraization | henselian | moduli | tannakian
  | controlledPlane | controlledSpherical | topologicalGraph
  | theoremTransport | helperLemma
deriving Repr, DecidableEq

end FCRS.RepositoryPersistentResidual
```
