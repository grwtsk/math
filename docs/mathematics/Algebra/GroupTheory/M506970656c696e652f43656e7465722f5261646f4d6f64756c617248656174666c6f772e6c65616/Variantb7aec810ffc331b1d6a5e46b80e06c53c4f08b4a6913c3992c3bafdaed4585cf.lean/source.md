# Complete source: GRWTSK.Algebra.GroupTheory.M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616.Variantb7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f59ed55948fcdef5e4037fa96f5f4a362e3adc` · SHA-256 `b7aec810ffc331b1d6a5e46b80e06c53c4f08b4a6913c3992c3bafdaed4585cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=10010010|role=proof_code_atom|slug=pipeline-center-radomodularheatflow|owner=canonical_owner|core=Pipeline/Center/RadoModularHeatflow.lean|leaf=M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoModularHeatflow

/-
Rado-projected modular heatflow algorithm.

This file formalizes the algorithm as a finite residue-facing interface.  The
local bit-coded Rado finite-extension theorem is proved in
`Think.Pipeline.Center.RadoExtension`; this file does not prove any heat-kernel
convergence theorem, modular-form theorem, elliptic-curve theorem, or
Montgomery pair-correlation authority.  Those analytic and arithmetic surfaces
remain typed boundary obligations for an algorithmic carrier.

The intended use is JEPA-facing: a stable finite run may become a conjecture
seed, but the seed is still returned as `Checked.residue`.
-/

universe u v w x y

inductive SubsetMode where
  | finite
  | countableExhaustion
  | induced
  | noninducedMasked
  | witnessAugmented
  | boundaryClosed
  | orbitClosed
deriving DecidableEq, Repr

inductive ProjectionOption where
  | identitySpanning
  | bfsRooted
  | dfsRooted
  | heatGeodesic
  | mst
  | radialShell
  | quotient
  | orbitQuotient
  | residueDirected
  | phaseLine
  | steiner
  | witnessAugmented
  | hybrid
deriving DecidableEq, Repr

inductive HeatKernelOption where
  | laplacianExp
  | lazyRandomWalk
  | personalizedPagerank
  | greenKernel
  | waveKernel
  | chebyshevAccelerated
deriving DecidableEq, Repr

inductive HeatGraphOption where
  | radoOnly
  | treeOnly
  | fiberOnly
  | hybrid
deriving DecidableEq, Repr

inductive GroupOption where
  | none
  | treeAut
  | fiberSymmetric
  | radoLocal
  | radoAmbient
  | orbitQuotient
  | wreath
  | typed
  | residuePreserving
deriving DecidableEq, Repr

inductive ModularRepresentationOption where
  | trivial
  | stGenerators
  | cyclic
  | dihedralProjection
  | congruenceLabel
  | nonfaithfulSL2ZLabel
  | custom
deriving DecidableEq, Repr

inductive WeightRuleOption where
  | constant
  | depth
  | heat
  | degree
  | centrality
  | residuePressure
  | phaseSymmetric
  | orbitAverage
  | learned
  | hybrid
deriving DecidableEq, Repr

inductive QCoefficientOption where
  | structural
  | radoAdjacencyBits
  | treeDepth
  | heatSignature
  | residueSignature
  | spectralSignature
  | ellipticTrace
  | hybrid
deriving DecidableEq, Repr

inductive ResidueModelOption where
  | additive
  | weightedAdditive
  | modularCongruence
  | sheaf
  | cosheaf
  | boundaryCorrected
  | witnessResolved
deriving DecidableEq, Repr

inductive PairCorrelationOption where
  | off
  | montgomeryGUE
  | poisson
  | goe
  | customKernel
deriving DecidableEq, Repr

inductive LayoutOption where
  | annular
  | spectral
  | hyperbolicDisk
  | treeLayered
  | radialTree
  | orbitRings
  | residueShells
deriving DecidableEq, Repr

inductive WitnessPolicyOption where
  | off
  | onResidueThreshold
  | onSpectralClump
  | onSymmetryBreak
  | onBoundaryDefect
  | alwaysCloseFiniteConstraints
deriving DecidableEq, Repr

inductive WitnessAttachmentOption where
  | sameParent
  | newChild
  | residueChild
  | orbitChild
  | boundaryChild
  | minimalHeat
  | maxResidueDrop
deriving DecidableEq, Repr

inductive CoordinateOption where
  | treeDepth
  | heatDepth
  | radoDistance
  | hybrid
  | spectral
  | annular
deriving DecidableEq, Repr

structure Options where
  subsetMode : SubsetMode
  projection : ProjectionOption
  heatKernel : HeatKernelOption
  heatGraph : HeatGraphOption
  group : GroupOption
  modularRepresentation : ModularRepresentationOption
  weightRule : WeightRuleOption
  qCoefficients : QCoefficientOption
  residue : ResidueModelOption
  pairCorrelation : PairCorrelationOption
  layout : LayoutOption
  witnessPolicy : WitnessPolicyOption
  witnessAttachment : WitnessAttachmentOption
  coordinate : CoordinateOption
  alphaR : Nat
  alphaT : Nat
  alphaQ : Nat
  alphaF : Nat
deriving DecidableEq, Repr

def defaultOptions : Options :=
  { subsetMode := SubsetMode.finite
    projection := ProjectionOption.residueDirected
    heatKernel := HeatKernelOption.laplacianExp
    heatGraph := HeatGraphOption.hybrid
    group := GroupOption.typed
    modularRepresentation := ModularRepresentationOption.nonfaithfulSL2ZLabel
    weightRule := WeightRuleOption.orbitAverage
    qCoefficients := QCoefficientOption.structural
    residue := ResidueModelOption.weightedAdditive
    pairCorrelation := PairCorrelationOption.montgomeryGUE
    layout := LayoutOption.radialTree
    witnessPolicy := WitnessPolicyOption.onResidueThreshold
    witnessAttachment := WitnessAttachmentOption.residueChild
    coordinate := CoordinateOption.hybrid
    alphaR := 1
    alphaT := 1
    alphaQ := 1
    alphaF := 0 }

def allSubsetModes : List SubsetMode :=
  [ SubsetMode.finite
  , SubsetMode.countableExhaustion
  , SubsetMode.induced
  , SubsetMode.noninducedMasked
  , SubsetMode.witnessAugmented
  , SubsetMode.boundaryClosed
  , SubsetMode.orbitClosed
  ]

def allProjectionOptions : List ProjectionOption :=
  [ ProjectionOption.identitySpanning
  , ProjectionOption.bfsRooted
  , ProjectionOption.dfsRooted
  , ProjectionOption.heatGeodesic
  , ProjectionOption.mst
  , ProjectionOption.radialShell
  , ProjectionOption.quotient
  , ProjectionOption.orbitQuotient
  , ProjectionOption.residueDirected
  , ProjectionOption.phaseLine
  , ProjectionOption.steiner
  , ProjectionOption.witnessAugmented
  , ProjectionOption.hybrid
  ]

def allWitnessPolicies : List WitnessPolicyOption :=
  [ WitnessPolicyOption.off
  , WitnessPolicyOption.onResidueThreshold
  , WitnessPolicyOption.onSpectralClump
  , WitnessPolicyOption.onSymmetryBreak
  , WitnessPolicyOption.onBoundaryDefect
  , WitnessPolicyOption.alwaysCloseFiniteConstraints
  ]

def allHeatKernelOptions : List HeatKernelOption :=
  [ HeatKernelOption.laplacianExp
  , HeatKernelOption.lazyRandomWalk
  , HeatKernelOption.personalizedPagerank
  , HeatKernelOption.greenKernel
  , HeatKernelOption.waveKernel
  , HeatKernelOption.chebyshevAccelerated
  ]

def allHeatGraphOptions : List HeatGraphOption :=
  [ HeatGraphOption.radoOnly
  , HeatGraphOption.treeOnly
  , HeatGraphOption.fiberOnly
  , HeatGraphOption.hybrid
  ]

def allGroupOptions : List GroupOption :=
  [ GroupOption.none
  , GroupOption.treeAut
  , GroupOption.fiberSymmetric
  , GroupOption.radoLocal
  , GroupOption.radoAmbient
  , GroupOption.orbitQuotient
  , GroupOption.wreath
  , GroupOption.typed
  , GroupOption.residuePreserving
  ]

def allModularRepresentationOptions : List ModularRepresentationOption :=
  [ ModularRepresentationOption.trivial
  , ModularRepresentationOption.stGenerators
  , ModularRepresentationOption.cyclic
  , ModularRepresentationOption.dihedralProjection
  , ModularRepresentationOption.congruenceLabel
  , ModularRepresentationOption.nonfaithfulSL2ZLabel
  , ModularRepresentationOption.custom
  ]

def allWeightRuleOptions : List WeightRuleOption :=
  [ WeightRuleOption.constant
  , WeightRuleOption.depth
  , WeightRuleOption.heat
  , WeightRuleOption.degree
  , WeightRuleOption.centrality
  , WeightRuleOption.residuePressure
  , WeightRuleOption.phaseSymmetric
  , WeightRuleOption.orbitAverage
  , WeightRuleOption.learned
  , WeightRuleOption.hybrid
  ]

def allQCoefficientOptions : List QCoefficientOption :=
  [ QCoefficientOption.structural
  , QCoefficientOption.radoAdjacencyBits
  , QCoefficientOption.treeDepth
  , QCoefficientOption.heatSignature
  , QCoefficientOption.residueSignature
  , QCoefficientOption.spectralSignature
  , QCoefficientOption.ellipticTrace
  , QCoefficientOption.hybrid
  ]

def allResidueModelOptions : List ResidueModelOption :=
  [ ResidueModelOption.additive
  , ResidueModelOption.weightedAdditive
  , ResidueModelOption.modularCongruence
  , ResidueModelOption.sheaf
  , ResidueModelOption.cosheaf
  , ResidueModelOption.boundaryCorrected
  , ResidueModelOption.witnessResolved
  ]

def allPairCorrelationOptions : List PairCorrelationOption :=
  [ PairCorrelationOption.off
  , PairCorrelationOption.montgomeryGUE
  , PairCorrelationOption.poisson
  , PairCorrelationOption.goe
  , PairCorrelationOption.customKernel
  ]

def allLayoutOptions : List LayoutOption :=
  [ LayoutOption.annular
  , LayoutOption.spectral
  , LayoutOption.hyperbolicDisk
  , LayoutOption.treeLayered
  , LayoutOption.radialTree
  , LayoutOption.orbitRings
  , LayoutOption.residueShells
  ]

def allWitnessAttachmentOptions : List WitnessAttachmentOption :=
  [ WitnessAttachmentOption.sameParent
  , WitnessAttachmentOption.newChild
  , WitnessAttachmentOption.residueChild
  , WitnessAttachmentOption.orbitChild
  , WitnessAttachmentOption.boundaryChild
  , WitnessAttachmentOption.minimalHeat
  , WitnessAttachmentOption.maxResidueDrop
  ]

def allCoordinateOptions : List CoordinateOption :=
  [ CoordinateOption.treeDepth
  , CoordinateOption.heatDepth
  , CoordinateOption.radoDistance
  , CoordinateOption.hybrid
  , CoordinateOption.spectral
  , CoordinateOption.annular
  ]

structure RadoGraph (Omega : Type u) where
  edge : Omega -> Omega -> Prop
  symmetric : Prop
  irreflexive : Prop
  extensionProperty : Prop

def centerBitRadoGraph : RadoGraph Nat :=
  { edge := Think.Pipeline.Center.RadoExtension.bitRadoEdge
    symmetric :=
      ∀ a b : Nat,
        Think.Pipeline.Center.RadoExtension.bitRadoEdge a b ->
          Think.Pipeline.Center.RadoExtension.bitRadoEdge b a
    irreflexive :=
      ∀ n : Nat, ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge n n
    extensionProperty :=
      Think.Kernel.Theorems.RadoFiniteExtension.ExtensionProperty
        Think.Pipeline.Center.RadoExtension.bitRadoGraph }

theorem centerBitRadoGraph_symmetric :
    centerBitRadoGraph.symmetric := by
  intro a b h
  exact Think.Pipeline.Center.RadoExtension.bitRadoEdge_symmetric h

theorem centerBitRadoGraph_irreflexive :
    centerBitRadoGraph.irreflexive := by
  exact Think.Pipeline.Center.RadoExtension.bitRadoEdge_irreflexive

theorem centerBitRadoGraph_extensionProperty :
    centerBitRadoGraph.extensionProperty := by
  exact Think.Pipeline.Center.RadoExtension.bitRado_extensionProperty

theorem centerBitRadoExtension_has_no_residue :
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem.checked.hasResidue =
      false := by
  exact
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem_has_no_residue

structure RootedTree (Node : Type u) where
  root : Node
  parent : Node -> Option Node
  treeEdge : Node -> Node -> Prop
  acyclic : Prop
  connectedToRoot : Prop

structure Projection
    (Vertex : Type u) (Node : Type v) where
  toTree : Vertex -> Node
  fiberNonempty : Node -> Prop
  fibersPartition : Prop

def sameFiber
    {Vertex : Type u} {Node : Type v}
    (projection : Projection Vertex Node)
    (a b : Vertex) : Prop :=
  projection.toTree a = projection.toTree b

structure WeightedHybridGraph
    (Vertex : Type u) (Node : Type v) (Scalar : Type w) where
  radoWeight : Vertex -> Vertex -> Scalar
  liftedTreeWeight : Vertex -> Vertex -> Scalar
  fiberWeight : Vertex -> Vertex -> Scalar
  featureWeight : Vertex -> Vertex -> Scalar
  totalWeight : Vertex -> Vertex -> Scalar
  normalizedLaplacian : Vertex -> Vertex -> Scalar
  hasRadoTerm : Prop
  hasLiftedTreeTerm : Prop
  hasFiberTerm : Prop
  totalMatchesMixingPolicy : Prop

structure HeatState
    (Vertex : Type u) (Node : Type v) (Scalar : Type w) where
  rawMass : Vertex -> Scalar
  diffusedMass : Vertex -> Scalar
  treeMass : Node -> Scalar
  heatKernelApplied : Prop
  pushforwardMatchesProjection : Prop

structure Embedding
    (Carrier : Type u) (Coord : Type v) where
  coord : Carrier -> Coord
  distanceSquared : Coord -> Coord -> Nat

structure HeatCentroid
    (Vertex : Type u) (Node : Type v) (Coord : Type w) where
  treeEmbedding : Embedding Node Coord
  vertexEmbedding : Embedding Vertex Coord
  treeCentroid : Coord
  vertexCentroid : Coord
  coreNode : Node
  coreFiber : Vertex -> Prop
  coreVertex : Option Vertex
  coreNodeMinimizesDistance : Prop
  coreFiberMatchesProjection : Prop

structure UpperHalfPlanePoint where
  realPart : Int
  imagNumerator : Nat
  imagPositive : 0 < imagNumerator
deriving DecidableEq, Repr

structure EvenWeight where
  half : Nat
deriving DecidableEq, Repr

def EvenWeight.value (k : EvenWeight) : Nat :=
  2 * k.half

theorem EvenWeight.value_mod_two (k : EvenWeight) :
    k.value % 2 = 0 := by
  unfold EvenWeight.value
  exact Nat.mul_mod_right 2 k.half

structure QExpansion (Coeff : Type u) where
  truncation : Nat
  coeff : Nat -> Coeff
  coefficientPolicy : String

structure SL2ZLabel where
  a : Int
  b : Int
  c : Int
  d : Int
  determinantOne : Prop

structure GroupAction
    (Vertex : Type u) (Node : Type v) (Group : Type w) where
  actVertex : Group -> Vertex -> Vertex
  actTree : Group -> Node -> Node
  matrixLabel : Group -> SL2ZLabel
  preservesRadoAdjacency : Prop
  preservesTreeProjection : Prop
  preservesTypes : Prop
  matrixLabelMayBeNonfaithful : Prop

structure ModularData
    (Vertex : Type u) (Group : Type v) (Coeff : Type w) where
  coordinate : Vertex -> UpperHalfPlanePoint
  weight : Vertex -> EvenWeight
  qExpansion : Vertex -> QExpansion Coeff
  orbit : Vertex -> List Vertex
  modularConsistency : Group -> Vertex -> Prop
  orbitWeightsEqual : Prop
  modularConsistencyChecked : Prop

structure ParentResidue
    (Node : Type u) (CoeffVector : Type v) where
  node : Node
  targetVector : CoeffVector
  selfContribution : CoeffVector
  childContribution : CoeffVector
  lateralContribution : CoeffVector
  additiveResidue : CoeffVector
  congruenceModulus : Option Nat
  residueEquationDeclared : Prop

structure RadoWitnessRequest
    (Vertex : Type u) (Node : Type v) where
  parent : Node
  connectTo : List Vertex
  avoid : List Vertex
  finiteConstraints : Prop
  disjointConstraints : Prop
  unresolvedResidue : Prop

structure RadoWitness
    (Vertex : Type u) (Node : Type v) (CoeffVector : Type w) where
  request : RadoWitnessRequest Vertex Node
  witness : Vertex
  attachment : WitnessAttachmentOption
  attachedNode : Node
  coefficientVector : CoeffVector
  satisfiesConnectConstraints : Prop
  satisfiesAvoidConstraints : Prop
  reducesDominantResidue : Prop

structure PairCorrelationRegularizer
    (Scalar : Type u) where
  eigenvalue : Nat -> Scalar
  unfoldedEigenvalue : Nat -> Scalar
  empiricalPairCorrelation : Scalar -> Scalar
  montgomeryKernel : Scalar -> Scalar
  loss : Scalar
  spectralOnlyRegularizer : Prop
  exactSymmetryComesFromGroupOrbits : Prop

structure EllipticCurveShadow
    (Vertex : Type u) (Coeff : Type v) where
  A : Vertex -> Coeff
  B : Vertex -> Coeff
  nonsingular : Vertex -> Prop
  traceLikeCoefficient : Vertex -> Nat -> Coeff
  insertedIntoQExpansion : Prop
  theoremAuthorityNotImported : Prop

structure ObjectiveComponents
    (Scalar : Type u) where
  heatLoss : Scalar
  residueLoss : Scalar
  modularLoss : Scalar
  pairCorrelationLoss : Scalar
  layoutLoss : Scalar
  witnessLoss : Scalar
  regularizationLoss : Scalar
  totalObjective : Scalar
  declaredWeights : List Nat
  totalMatchesComponents : Prop

structure AlgorithmState
    (Vertex : Type u)
    (Node : Type v)
    (Group : Type w)
    (Scalar : Type x)
    (Coord : Type y)
    (Coeff : Type u)
    (CoeffVector : Type v) where
  options : Options
  radoGraph : RadoGraph Vertex
  subset : Vertex -> Prop
  inducedGraphDeclared : Prop
  tree : RootedTree Node
  projection : Projection Vertex Node
  hybridGraph : WeightedHybridGraph Vertex Node Scalar
  heat : HeatState Vertex Node Scalar
  centroid : HeatCentroid Vertex Node Coord
  groupAction : GroupAction Vertex Node Group
  modularData : ModularData Vertex Group Coeff
  parentResidues : Node -> ParentResidue Node CoeffVector
  pairRegularizer : PairCorrelationRegularizer Scalar
  objective : ObjectiveComponents Scalar
  ellipticCurveShadow : Option (EllipticCurveShadow Vertex Coeff)
  finiteOrExhausted : Prop
  countableLimitStableIfUsed : Prop

inductive TerminationCriterion where
  | residueBelowThreshold
  | modularLossBelowThreshold
  | pairCorrelationLossBelowThreshold
  | iterationBudgetReached
deriving DecidableEq, Repr

structure CountableExhaustionReceipt
    (Vertex : Type u) (Node : Type v) where
  stageSubset : Nat -> Vertex -> Prop
  stageCore : Nat -> Node
  coversSubset : Prop
  coreEventuallyStable : Prop
  residueLimitDeclared : Prop
  stableWeightsDeclared : Prop

structure AlgorithmOutput
    (Vertex : Type u)
    (Node : Type v)
    (Group : Type w)
    (Scalar : Type x)
    (Coord : Type y)
    (Coeff : Type u)
    (CoeffVector : Type v)
    (Layout : Type w) where
  finalState :
    AlgorithmState
      Vertex Node Group Scalar Coord Coeff CoeffVector
  layout : Layout
  insertedWitnesses : List Vertex
  residualProfile : List Think.Residue
  terminationCriterion : TerminationCriterion
  quotientProjectionStable : Prop
  returnedFieldsMatchSpecification : Prop
  noTheoremAuthority : Prop

inductive Atom where
  | ambientRadoGraph
  | radoExtensionProperty
  | subsetAndInducedGraph
  | treeProjection
  | quotientFiberPartition
  | hybridWeightGraph
  | normalizedLaplacianHeatflow
  | countableExhaustionLimit
  | heatCentroidCore
  | upperHalfPlaneCoordinates
  | qExpansionCarrier
  | orbitSymmetricEvenWeights
  | modularRepresentationLabel
  | modularTransformationConsistency
  | parentResidueEquation
  | witnessInsertion
  | montgomeryPairRegularizer
  | ellipticCurveTraceShadow
  | finiteTerminationCriterion
  | algorithmOutputAssembly
  | totalObjectiveAndConvergence
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .ambientRadoGraph => "ambient_rado_graph"
  | .radoExtensionProperty => "rado_extension_property"
  | .subsetAndInducedGraph => "subset_and_induced_graph"
  | .treeProjection => "tree_projection"
  | .quotientFiberPartition => "quotient_fiber_partition"
  | .hybridWeightGraph => "hybrid_weight_graph"
  | .normalizedLaplacianHeatflow => "normalized_laplacian_heatflow"
  | .countableExhaustionLimit => "countable_exhaustion_limit"
  | .heatCentroidCore => "heat_centroid_core"
  | .upperHalfPlaneCoordinates => "upper_half_plane_coordinates"
  | .qExpansionCarrier => "q_expansion_carrier"
  | .orbitSymmetricEvenWeights => "orbit_symmetric_even_weights"
  | .modularRepresentationLabel => "modular_representation_label"
  | .modularTransformationConsistency => "modular_transformation_consistency"
  | .parentResidueEquation => "parent_residue_equation"
  | .witnessInsertion => "witness_insertion"
  | .montgomeryPairRegularizer => "montgomery_pair_regularizer"
  | .ellipticCurveTraceShadow => "elliptic_curve_trace_shadow"
  | .finiteTerminationCriterion => "finite_termination_criterion"
  | .algorithmOutputAssembly => "algorithm_output_assembly"
  | .totalObjectiveAndConvergence => "total_objective_and_convergence"

def Atom.kind : Atom -> FWR.ResidueKind
  | .ambientRadoGraph => FWR.ResidueKind.missingDefinition
  | .radoExtensionProperty => FWR.ResidueKind.externalTheoremNotImported
  | .subsetAndInducedGraph => FWR.ResidueKind.missingFiniteWitness
  | .treeProjection => FWR.ResidueKind.missingDecode
  | .quotientFiberPartition => FWR.ResidueKind.missingTraceQuotient
  | .hybridWeightGraph => FWR.ResidueKind.missingDefinition
  | .normalizedLaplacianHeatflow => FWR.ResidueKind.missingPDEEstimate
  | .countableExhaustionLimit => FWR.ResidueKind.missingContinuumLimit
  | .heatCentroidCore => FWR.ResidueKind.missingUniformBound
  | .upperHalfPlaneCoordinates => FWR.ResidueKind.missingDefinition
  | .qExpansionCarrier => FWR.ResidueKind.missingDefinition
  | .orbitSymmetricEvenWeights => FWR.ResidueKind.missingSection
  | .modularRepresentationLabel => FWR.ResidueKind.missingAutomorphicAuthority
  | .modularTransformationConsistency =>
      FWR.ResidueKind.missingFunctionalEquation
  | .parentResidueEquation => FWR.ResidueKind.missingTransition
  | .witnessInsertion => FWR.ResidueKind.missingFiniteWitness
  | .montgomeryPairRegularizer =>
      FWR.ResidueKind.externalTheoremNotImported
  | .ellipticCurveTraceShadow => FWR.ResidueKind.missingDefinition
  | .finiteTerminationCriterion => FWR.ResidueKind.missingUniformBound
  | .algorithmOutputAssembly => FWR.ResidueKind.missingDecode
  | .totalObjectiveAndConvergence =>
      FWR.ResidueKind.missingAsymptoticTransfer

def Atom.blocks : Atom -> String
  | .ambientRadoGraph =>
      "ambient countable Rado graph carrier and adjacency relation"
  | .radoExtensionProperty =>
      "use of the Rado extension property to insert finite witnesses"
  | .subsetAndInducedGraph =>
      "finite or exhausted subset S and its induced or masked graph"
  | .treeProjection =>
      "projection from Rado vertices to the rooted tree"
  | .quotientFiberPartition =>
      "fiber partition for quotient and orbit-quotient projections"
  | .hybridWeightGraph =>
      "mixed Rado, tree, fiber, and feature weighted graph"
  | .normalizedLaplacianHeatflow =>
      "normalized Laplacian, heat kernel, and diffused heat mass"
  | .countableExhaustionLimit =>
      "stable limiting behavior for countable subset exhaustions"
  | .heatCentroidCore =>
      "tree heat centroid, core node, core fiber, and optional core vertex"
  | .upperHalfPlaneCoordinates =>
      "assignment of vertex coordinates in the upper half-plane"
  | .qExpansionCarrier =>
      "formal q-expansion carrier and coefficient policy per vertex"
  | .orbitSymmetricEvenWeights =>
      "even modular weights constant on declared group orbits"
  | .modularRepresentationLabel =>
      "chosen SL2Z labels for group elements, possibly nonfaithful"
  | .modularTransformationConsistency =>
      "modular transformation law for orbit-related vertex q-expansions"
  | .parentResidueEquation =>
      "self, child, and lateral Rado boundary contributions at tree parents"
  | .witnessInsertion =>
      "finite witness insertion and attachment policy for unresolved residue"
  | .montgomeryPairRegularizer =>
      "Montgomery pair-correlation kernel used only as spectral regularizer"
  | .ellipticCurveTraceShadow =>
      "optional elliptic-curve shadow and nonsingular trace-like coefficients"
  | .finiteTerminationCriterion =>
      "finite stopping criterion for residue, modular, pair-correlation, or budget thresholds"
  | .algorithmOutputAssembly =>
      "assembled returned artifact containing subset, induced graph, tree, projection, heat, weights, q-coefficients, layout, and objective"
  | .totalObjectiveAndConvergence =>
      "total objective, optimization loop, and convergence or budget stopping"

def Atom.clearsBy : Atom -> String
  | .ambientRadoGraph =>
      "Lean graph structure plus countable random-graph model selection"
  | .radoExtensionProperty =>
      "checked center bit-Rado finite-extension theorem plus any requested finite witness oracle"
  | .subsetAndInducedGraph =>
      "finite graph data or exhaustion certificate for S"
  | .treeProjection =>
      "checked rooted tree plus projection map and selected projection policy"
  | .quotientFiberPartition =>
      "proof that projection fibers partition the selected subset"
  | .hybridWeightGraph =>
      "typed scalar semiring and proof that total weights follow the mixing policy"
  | .normalizedLaplacianHeatflow =>
      "formal matrix/operator construction and heat-kernel application proof"
  | .countableExhaustionLimit =>
      "stability theorem for finite exhaustion outputs"
  | .heatCentroidCore =>
      "finite minimization certificate for the selected core"
  | .upperHalfPlaneCoordinates =>
      "coordinate construction with positive imaginary part"
  | .qExpansionCarrier =>
      "truncated formal q-expansion data with coefficient map"
  | .orbitSymmetricEvenWeights =>
      "orbit computation plus proof of even weight equality on orbits"
  | .modularRepresentationLabel =>
      "declared matrix labels and determinant-one certificates"
  | .modularTransformationConsistency =>
      "checked modular consistency equations for all declared group moves"
  | .parentResidueEquation =>
      "typed coefficient-vector algebra and checked residue equations"
  | .witnessInsertion =>
      "Rado witness object satisfying connect and avoid constraints"
  | .montgomeryPairRegularizer =>
      "spectral computation with explicit non-authority regularizer status"
  | .ellipticCurveTraceShadow =>
      "nonsingular curve construction and finite-field point-count interface"
  | .finiteTerminationCriterion =>
      "checked finite receipt for the selected stopping condition"
  | .algorithmOutputAssembly =>
      "typed output record whose fields match the algorithm return specification"
  | .totalObjectiveAndConvergence =>
      "finite optimization receipt or countable-limit theorem"

def atomResidue (a : Atom) : Think.Residue :=
  { target := FWR.Target.RadoProjectedModularHeatflow
    atomId := "rado-modular-heatflow:" ++ a.id
    kind := a.kind
    blocks := a.blocks
    clearsBy := a.clearsBy }

def allAtoms : List Atom :=
  [ Atom.ambientRadoGraph
  , Atom.radoExtensionProperty
  , Atom.subsetAndInducedGraph
  , Atom.treeProjection
  , Atom.quotientFiberPartition
  , Atom.hybridWeightGraph
  , Atom.normalizedLaplacianHeatflow
  , Atom.countableExhaustionLimit
  , Atom.heatCentroidCore
  , Atom.upperHalfPlaneCoordinates
  , Atom.qExpansionCarrier
  , Atom.orbitSymmetricEvenWeights
  , Atom.modularRepresentationLabel
  , Atom.modularTransformationConsistency
  , Atom.parentResidueEquation
  , Atom.witnessInsertion
  , Atom.montgomeryPairRegularizer
  , Atom.ellipticCurveTraceShadow
  , Atom.finiteTerminationCriterion
  , Atom.algorithmOutputAssembly
  , Atom.totalObjectiveAndConvergence
  ]

structure Context where
  Vertex : Type u
  Node : Type v
  Group : Type w
  Scalar : Type x
  Coord : Type y
  Coeff : Type u
  CoeffVector : Type v
  Layout : Type w
  hasInput : Prop
  hasProjectedTree : Prop
  hasHybridHeatGraph : Prop
  hasHeatCentroid : Prop
  hasModularCoordinateAndQExpansion : Prop
  hasOrbitSymmetricWeights : Prop
  hasParentResidueModel : Prop
  hasWitnessPolicy : Prop
  hasPairCorrelationRegularizer : Prop
  hasObjective : Prop
  hasFiniteTerminationCriterion : Prop
  hasAlgorithmOutputAssembly : Prop
  noExternalAuthorityUpgrade : Prop

def finalClaim (ctx : Context) : Prop :=
  ∃ state :
      AlgorithmState
        ctx.Vertex ctx.Node ctx.Group ctx.Scalar ctx.Coord
        ctx.Coeff ctx.CoeffVector,
    ∃ output :
        AlgorithmOutput
          ctx.Vertex ctx.Node ctx.Group ctx.Scalar ctx.Coord
          ctx.Coeff ctx.CoeffVector ctx.Layout,
    ctx.hasInput ∧
      ctx.hasProjectedTree ∧
      ctx.hasHybridHeatGraph ∧
      ctx.hasHeatCentroid ∧
      ctx.hasModularCoordinateAndQExpansion ∧
      ctx.hasOrbitSymmetricWeights ∧
      ctx.hasParentResidueModel ∧
      ctx.hasWitnessPolicy ∧
      ctx.hasPairCorrelationRegularizer ∧
      ctx.hasObjective ∧
      ctx.hasFiniteTerminationCriterion ∧
      ctx.hasAlgorithmOutputAssembly ∧
      ctx.noExternalAuthorityUpgrade ∧
      output.finalState = state ∧
      output.returnedFieldsMatchSpecification ∧
      output.noTheoremAuthority ∧
      state.groupAction.matrixLabelMayBeNonfaithful ∧
      state.pairRegularizer.spectralOnlyRegularizer ∧
      state.pairRegularizer.exactSymmetryComesFromGroupOrbits

def finalResidues (_ctx : Context) : List Think.Residue :=
  allAtoms.map atomResidue

def finalWitness (ctx : Context) : Think.Checked (finalClaim ctx) :=
  FWR.Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 21 := by
  rfl

theorem allAtoms_count :
    allAtoms.length = 21 := by
  rfl

theorem allSubsetModes_count :
    allSubsetModes.length = 7 := by
  rfl

theorem allProjectionOptions_count :
    allProjectionOptions.length = 13 := by
  rfl

theorem allWitnessPolicies_count :
    allWitnessPolicies.length = 6 := by
  rfl

theorem allHeatKernelOptions_count :
    allHeatKernelOptions.length = 6 := by
  rfl

theorem allHeatGraphOptions_count :
    allHeatGraphOptions.length = 4 := by
  rfl

theorem allGroupOptions_count :
    allGroupOptions.length = 9 := by
  rfl

theorem allModularRepresentationOptions_count :
    allModularRepresentationOptions.length = 7 := by
  rfl

theorem allWeightRuleOptions_count :
    allWeightRuleOptions.length = 10 := by
  rfl

theorem allQCoefficientOptions_count :
    allQCoefficientOptions.length = 8 := by
  rfl

theorem allResidueModelOptions_count :
    allResidueModelOptions.length = 7 := by
  rfl

theorem allPairCorrelationOptions_count :
    allPairCorrelationOptions.length = 5 := by
  rfl

theorem allLayoutOptions_count :
    allLayoutOptions.length = 7 := by
  rfl

theorem allWitnessAttachmentOptions_count :
    allWitnessAttachmentOptions.length = 7 := by
  rfl

theorem allCoordinateOptions_count :
    allCoordinateOptions.length = 6 := by
  rfl

structure JepaHeatflowSeed where
  seedId : String
  question : String
  options : Options
  residueAtomIds : List String
  phasePath : List FWR.Pipeline.CenterWeighted.Phase
  stabilityStatus : Think.RoundtripStabilizer.RoundtripStabilityStatus
  nonclaimLabels : List String
deriving Repr, DecidableEq

def JepaHeatflowSeed.statusAllowed (seed : JepaHeatflowSeed) : Bool :=
  seed.stabilityStatus =
      Think.RoundtripStabilizer.RoundtripStabilityStatus.stableResidueFree ||
    seed.stabilityStatus =
      Think.RoundtripStabilizer.RoundtripStabilityStatus.stableWithResidue

def JepaHeatflowSeed.nonclaimsPresent (seed : JepaHeatflowSeed) : Bool :=
  !seed.nonclaimLabels.isEmpty

def JepaHeatflowSeed.acceptedForJepa (seed : JepaHeatflowSeed) : Bool :=
  seed.statusAllowed &&
    seed.nonclaimsPresent &&
    !seed.residueAtomIds.isEmpty

def JepaHeatflowSeed.toResidue (seed : JepaHeatflowSeed) :
    Think.Residue :=
  { target := FWR.Target.RadoProjectedModularHeatflow
    atomId := seed.seedId
    kind := FWR.ResidueKind.conjecturalAtom
    blocks :=
      "Rado-projected modular heatflow seed is a conjecture interface, not theorem authority"
    clearsBy :=
      "finite run receipt, explicit residue ledger, and kernel-checked theorem artifacts for every mathematical bridge" }

def JepaHeatflowSeed.admissionResidue (seed : JepaHeatflowSeed) :
    Think.Residue :=
  { target := FWR.Target.RadoProjectedModularHeatflow
    atomId := seed.seedId ++ ":interface"
    kind := FWR.ResidueKind.missingFiniteWitness
    blocks :=
      "JEPA heatflow seed lacks stable status, nonclaims, or active residue atoms"
    clearsBy :=
      "stable residue status with explicit nonclaims and active residue profile" }

def JepaHeatflowSeed.residues (seed : JepaHeatflowSeed) :
    List Think.Residue :=
  if seed.acceptedForJepa then
    [seed.toResidue]
  else
    [seed.toResidue, seed.admissionResidue]

def jepaSeedClaim (seed : JepaHeatflowSeed) : Prop :=
  seed.acceptedForJepa = true

def checkedJepaSeed (seed : JepaHeatflowSeed) :
    Think.Checked (jepaSeedClaim seed) :=
  FWR.Checked.residue seed.residues

theorem checkedJepaSeed_hasResidue (seed : JepaHeatflowSeed) :
    (checkedJepaSeed seed).hasResidue = true := by
  unfold checkedJepaSeed JepaHeatflowSeed.residues
  by_cases h : seed.acceptedForJepa
  · simp [h]
    rfl
  · simp [h]
    rfl

def sampleSeed : JepaHeatflowSeed :=
  { seedId := "rado-modular-heatflow:sample"
    question :=
      "Which stable parent residues persist after orbit-symmetric modular heatflow?"
    options := defaultOptions
    residueAtomIds := allAtoms.map Atom.id
    phasePath :=
      [ FWR.Pipeline.CenterWeighted.Phase.finiteCarrierDeclaration
      , FWR.Pipeline.CenterWeighted.Phase.traceQuotienting
      , FWR.Pipeline.CenterWeighted.Phase.schedulerGuardCheck
      , FWR.Pipeline.CenterWeighted.Phase.fixedPointComparison
      ]
    stabilityStatus :=
      Think.RoundtripStabilizer.RoundtripStabilityStatus.stableWithResidue
    nonclaimLabels :=
      [ "rado_extension_not_proved"
      , "montgomery_kernel_is_regularizer"
      , "modular_consistency_not_authority"
      , "elliptic_curve_shadow_is_optional"
      ] }

theorem sampleSeed_acceptedForJepa :
    sampleSeed.acceptedForJepa = true := by
  rfl

theorem sampleSeed_checked_hasResidue :
    (checkedJepaSeed sampleSeed).hasResidue = true := by
  rfl

theorem sampleSeed_residue_target :
    sampleSeed.toResidue.target =
      FWR.Target.RadoProjectedModularHeatflow := by
  rfl

end Think.Pipeline.Center.RadoModularHeatflow
```
