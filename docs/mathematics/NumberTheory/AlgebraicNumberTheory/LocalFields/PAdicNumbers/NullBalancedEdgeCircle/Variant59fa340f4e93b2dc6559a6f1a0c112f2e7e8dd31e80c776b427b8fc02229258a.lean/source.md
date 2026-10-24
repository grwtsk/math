# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.NullBalancedEdgeCircle.Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1c5f3fced35f66b4b5f0f7630cde9a9ce18379e` · SHA-256 `59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.DirectionalChain
import Boolean.Cube.EdgeRelaxation.Tree
import Boolean.Cube.CountableBooleanCylinder
import Boolean.Cube.ArithmeticAuthorities

/-!
# The Null-Balanced Prismatic Edge-Circle Limit theorem object

Target theorem, in exact form: a balanced binary null point, together with
its directed `[0,1]`/`[1,0]` relaxation and a proof-carrying δ-ring
realization, produces a nontrivial closed prismatic edge-circle class in the
analytic limit.

This is a local theorem object. It does not prove RH, global trace formulas,
analytic continuation, or named prismatic comparison; those require separate
bridge certificates whose proof fields explicitly map the local class to the
global statement. Balanced frequencies alone do not produce nontrivial
homology, finite edge relaxation alone does not produce analytic completion,
and a δ-ring label alone does not produce prismatic comparison: every such
step is an explicit certificate below.

Object index:

* `BalancedBinaryNullPoint`, `DirectionalNullBalance`
* `DirectedEdgeRelaxation`, `BinaryDirectedEdgeRelaxation`
* `LocalAnalyticLimitCertificate`
* `DeltaRingDirectionalRealization`
* `PrismaticEdgeCircleClass`
* `NullBalancedPrismaticEdgeCircleLimit`
* `null_balanced_prismatic_edge_circle_limit_sound`
* `binary_null_balanced_prismatic_edge_circle_limit_sound`
* `NullCircleToPrismaticComparisonBridge`,
  `null_circle_yields_prismatic_comparison` (and the trace-formula,
  analytic-continuation, and Riemann-hypothesis bridge shells)
* `null_balanced_edge_circle_boundary_summary`

Local versus global: the local prismatic edge-circle class is exposed by the
main theorem object through its proof fields; global prismatic comparison is
available only through `NullCircleToPrismaticComparisonBridge`; RH, trace
formulas, and analytic continuation are available only through their own
bridge certificates.
-/

universe u v w

namespace Boolean
namespace Cube
namespace NullBalancedEdgeCircle

open DirectionalChain

/-! ## B1. The balanced binary null point -/

/-- A minimal dyadic mass `numerator / 2^exponent`. -/
structure DyadicMass where
  numerator : Int
  exponent : Nat
deriving Repr, DecidableEq

/-- One half. -/
def halfMass : DyadicMass := { numerator := 1, exponent := 1 }

/-- One quarter. -/
def quarterMass : DyadicMass := { numerator := 1, exponent := 2 }

/-- Binary cylinder tags: the two endpoints and the two ordered transitions. -/
inductive BinaryCylinder where
  | zero
  | one
  | zeroOne
  | oneZero
deriving Repr, DecidableEq

/--
A balanced binary null point: half mass on each endpoint, quarter mass on
each ordered transition, together with explicit centered-balance and
directed-transition-balance propositions and their proofs.
-/
structure BalancedBinaryNullPoint where
  mass : BinaryCylinder → DyadicMass
  zeroHalf : mass BinaryCylinder.zero = halfMass
  oneHalf : mass BinaryCylinder.one = halfMass
  zeroOneQuarter : mass BinaryCylinder.zeroOne = quarterMass
  oneZeroQuarter : mass BinaryCylinder.oneZero = quarterMass
  /-- Centered balance: interpreting 0 as negative and 1 as positive gives
  zero barycentric mass. This is the formal null-point proposition. -/
  centeredBalance : Prop
  centeredBalanceProof : centeredBalance
  /-- Directed balance: the two opposite directed transitions have equal
  mass. -/
  directedTransitionBalance : Prop
  directedTransitionBalanceProof : directedTransitionBalance

theorem balanced_null_zero_half
    (B : BalancedBinaryNullPoint) :
    B.mass .zero = halfMass :=
  B.zeroHalf

theorem balanced_null_one_half
    (B : BalancedBinaryNullPoint) :
    B.mass .one = halfMass :=
  B.oneHalf

theorem balanced_null_directed_transitions
    (B : BalancedBinaryNullPoint) :
    B.directedTransitionBalance :=
  B.directedTransitionBalanceProof

/-! ## B2. Generalized directional balance -/

/--
Direction-generic null balance: directions need not be only `0→1` and
`1→0`; the opposite relation is carried by `D.reverse`, and polarity can
encode positive/negative, phase, filtration, p-adic, Frobenius, or other
directional grades.
-/
structure DirectionalNullBalance
    (D : DirectionSystem.{u, v}) where
  edgeMass : D.Edge → DyadicMass
  vertexMassLabel : D.Vertex → String
  nullStatement : Prop
  nullProof : nullStatement
  reverseBalance :
    ∀ _e : D.Edge, Prop
  reverseBalanceProof :
    ∀ e : D.Edge, reverseBalance e
  polarityCancellation : Prop
  polarityCancellationProof : polarityCancellation

/-- The binary null point induces a directional null balance on the binary
direction system. -/
def binaryDirectionalNullBalance
    (B : BalancedBinaryNullPoint) :
    DirectionalNullBalance DirectionalChain.binaryDirectionSystem where
  edgeMass := fun e =>
    match e with
    | BinaryEdge.zeroToOne => quarterMass
    | BinaryEdge.oneToZero => quarterMass
  vertexMassLabel := fun v =>
    match v with
    | BinaryVertex.zero => "negative/zero endpoint"
    | BinaryVertex.one => "positive/one endpoint"
  nullStatement := B.centeredBalance
  nullProof := B.centeredBalanceProof
  reverseBalance := fun _ => B.directedTransitionBalance
  reverseBalanceProof := fun _ => B.directedTransitionBalanceProof
  polarityCancellation := B.centeredBalance
  polarityCancellationProof := B.centeredBalanceProof

/-! ## B3. Edge relaxation over the null point -/

/--
Directed edge relaxation data over a direction system: a finite Boolean tree
per edge, its relaxed density evaluation, and explicit relaxation
propositions. Finite edge relaxation alone does not produce analytic
completion.
-/
structure DirectedEdgeRelaxation
    (D : DirectionSystem.{u, v}) where
  edgeTree : D.Edge → Tree D.Edge
  relaxedTree :
    D.Edge → EdgeRelaxation.DensityExpr
  relaxedAtNull : Prop
  relaxedAtNullProof : relaxedAtNull
  nonCrispAtNull : Prop
  nonCrispAtNullProof : nonCrispAtNull
  compatibleWithLine3 : Prop
  compatibleWithLine3Proof : compatibleWithLine3

/-- The binary relaxation record, carrying the two existing non-crisp facts
from the edge-relaxation layer. -/
structure BinaryDirectedEdgeRelaxation where
  activeRootSoftens :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.activeRootTree)
  boundedUnarySoftens :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.boundedUnaryTree)

/-- The binary relaxation facts, supplied by the existing finite theorems. -/
def binaryDirectedEdgeRelaxation : BinaryDirectedEdgeRelaxation where
  activeRootSoftens :=
    EdgeRelaxation.activeRootTree_relaxed_not_crisp_from_finite_tree
  boundedUnarySoftens :=
    EdgeRelaxation.boundedUnaryTree_relaxed_not_crisp_from_finite_tree

/-! ## B4. Local analytic limit certificate -/

/--
A local analytic limit certificate, independent of any global RH or trace
claim. Completion semantics are explicit certificate data, mirroring the
countable-cylinder `AnalyticCompletionCertificate` design.
-/
structure LocalAnalyticLimitCertificate
    (D : DirectionSystem.{u, v}) where
  Completion : Type w
  limitObject : Completion
  embedsEdgeCircle :
    DirectionalChain.Chain1 D → Completion
  limitExists : Prop
  limitProof : limitExists
  edgeRelaxationConverges : Prop
  edgeRelaxationConvergesProof : edgeRelaxationConverges
  compatibleWithExistingCompletionInterface : Prop
  compatibleWithExistingCompletionProof :
    compatibleWithExistingCompletionInterface

theorem local_analytic_limit_certificate_sound
    {D : DirectionSystem.{u, v}}
    (L : LocalAnalyticLimitCertificate.{u, v, w} D) :
    L.limitExists ∧ L.edgeRelaxationConverges :=
  ⟨L.limitProof, L.edgeRelaxationConvergesProof⟩

/-! ## B5. δ-ring / prismatic realization -/

/--
A proof-carrying δ-ring / prismatic realization of directional chains,
wrapping the existing `PrismaticSiteAuthority`. A δ-ring label alone does
not produce prismatic comparison; all prismatic content is carried by the
wrapped authority's proof fields.
-/
structure DeltaRingDirectionalRealization
    (D : DirectionSystem.{u, v})
    (R : Type w) where
  prismaticAuthority :
    ArithmeticAuthorities.PrismaticSiteAuthority
  delta : R → R
  frobeniusLift : R → R
  realizeVertex : D.Vertex → R
  realizeEdge : D.Edge → R
  realizeChain :
    DirectionalChain.Chain1 D → R
  deltaRingStructure :
    prismaticAuthority.deltaRingStructure
  boundedPrism :
    prismaticAuthority.boundedPrism
  frobeniusLiftSound :
    prismaticAuthority.frobeniusLift
  siteConstructed :
    prismaticAuthority.siteConstructed
  realizesClosedCycle :
    ∀ _c : DirectionalChain.Chain1 D, Prop
  realizesClosedCycleProof :
    ∀ c : DirectionalChain.Chain1 D,
      [DecidableEq D.Vertex] → c.Closed → realizesClosedCycle c
  compatibleWithDirection :
    ∀ _e : D.Edge, Prop
  compatibleWithDirectionProof :
    ∀ e : D.Edge, compatibleWithDirection e

theorem delta_realization_authority_sound
    {D : DirectionSystem.{u, v}} {R : Type w}
    (A : DeltaRingDirectionalRealization D R) :
    A.prismaticAuthority.deltaRingStructure ∧
      A.prismaticAuthority.boundedPrism ∧
      A.prismaticAuthority.frobeniusLift ∧
      A.prismaticAuthority.siteConstructed :=
  ⟨A.deltaRingStructure,
    A.boundedPrism,
    A.frobeniusLiftSound,
    A.siteConstructed⟩

/-! ## B6. Nontrivial prismatic edge-circle class -/

/-- A realized closed edge-circle class with explicit non-boundary and
nontriviality proof fields. -/
structure PrismaticEdgeCircleClass
    (D : DirectionSystem.{u, v})
    (R : Type w)
    [DecidableEq D.Vertex] where
  cycle : DirectionalChain.Chain1 D
  closed : cycle.Closed
  realizedValue : R
  realized : Prop
  realizedProof : realized
  nonBoundary : Prop
  nonBoundaryProof : nonBoundary
  nontrivialClass : Prop
  nontrivialClassProof : nontrivialClass

theorem prismatic_edge_circle_class_sound
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (C : PrismaticEdgeCircleClass D R) :
    C.cycle.Closed ∧ C.realized ∧ C.nonBoundary ∧ C.nontrivialClass :=
  ⟨C.closed, C.realizedProof, C.nonBoundaryProof, C.nontrivialClassProof⟩

/-! ## B7. The main theorem object -/

/--
The Null-Balanced Prismatic Edge-Circle Limit object: a directional null
balance, an opposite pair with a closed two-edge circle, directed edge
relaxation, a local analytic limit certificate, a δ-ring realization, a
non-boundary certificate, and the resulting class object.
-/
structure NullBalancedPrismaticEdgeCircleLimit
    (D : DirectionSystem.{u, v})
    (R : Type w)
    [DecidableEq D.Vertex] where
  balance : DirectionalNullBalance D
  oppositePair : DirectionalChain.OppositeDirectionPair D
  closure :
    DirectionalChain.EdgeCircleClosureCertificate oppositePair
  relaxation : DirectedEdgeRelaxation D
  analyticLimit : LocalAnalyticLimitCertificate.{u, v, w} D
  realization : DeltaRingDirectionalRealization D R
  nonBoundary :
    DirectionalChain.NonBoundaryCertificate oppositePair.edgeCircle
  nontrivialClassStatement : Prop
  nontrivialClassProof : nontrivialClassStatement
  classObject :
    PrismaticEdgeCircleClass D R
  classObjectSound :
    classObject.cycle = oppositePair.edgeCircle ∧
      classObject.nonBoundary = nonBoundary.nonBoundary ∧
      classObject.nontrivialClass = nontrivialClassStatement

/--
Main local theorem: the supplied proof fields yield exactly the local
components — null balance, closed edge cycle, relaxed and non-crisp
behaviour at the null point, analytic limit, δ-ring/prismatic realization,
non-boundary, and nontriviality. No global analytic conclusion is drawn.
-/
theorem null_balanced_prismatic_edge_circle_limit_sound
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) :
    T.balance.nullStatement ∧
      T.oppositePair.edgeCircle.Closed ∧
      T.relaxation.relaxedAtNull ∧
      T.relaxation.nonCrispAtNull ∧
      T.analyticLimit.limitExists ∧
      T.analyticLimit.edgeRelaxationConverges ∧
      T.realization.prismaticAuthority.deltaRingStructure ∧
      T.realization.prismaticAuthority.frobeniusLift ∧
      T.realization.prismaticAuthority.siteConstructed ∧
      T.nonBoundary.nonBoundary ∧
      T.nontrivialClassStatement :=
  ⟨T.balance.nullProof,
    T.closure.closed,
    T.relaxation.relaxedAtNullProof,
    T.relaxation.nonCrispAtNullProof,
    T.analyticLimit.limitProof,
    T.analyticLimit.edgeRelaxationConvergesProof,
    T.realization.deltaRingStructure,
    T.realization.frobeniusLiftSound,
    T.realization.siteConstructed,
    T.nonBoundary.proof,
    T.nontrivialClassProof⟩

/-! ## B8. Binary specialization -/

/-- The binary `[0,1]`/`[1,0]` specialization of the theorem object. -/
abbrev BinaryNullBalancedPrismaticEdgeCircleLimit
    (R : Type w) :=
  NullBalancedPrismaticEdgeCircleLimit
    DirectionalChain.binaryDirectionSystem R

theorem binary_null_balanced_edge_circle_closed :
    DirectionalChain.binaryOppositePair.edgeCircle.Closed :=
  DirectionalChain.binary_edgeCircle_closed

theorem binary_null_balanced_prismatic_edge_circle_limit_sound
    {R : Type w}
    (T : BinaryNullBalancedPrismaticEdgeCircleLimit R) :
    T.balance.nullStatement ∧
      DirectionalChain.binaryOppositePair.edgeCircle.Closed ∧
      T.analyticLimit.limitExists ∧
      T.realization.prismaticAuthority.deltaRingStructure ∧
      T.nonBoundary.nonBoundary ∧
      T.nontrivialClassStatement :=
  ⟨T.balance.nullProof,
    binary_null_balanced_edge_circle_closed,
    T.analyticLimit.limitProof,
    T.realization.deltaRingStructure,
    T.nonBoundary.proof,
    T.nontrivialClassProof⟩

/-! ## B9. Optional global bridge interfaces

Each global consequence requires a bridge whose proof field explicitly maps
the local components to the global statement. No bridge is instantiated
here.
-/

/-- Bridge from the local class to a named prismatic comparison statement. -/
structure NullCircleToPrismaticComparisonBridge
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) where
  comparisonStatement : Prop
  comparisonProof :
    T.balance.nullStatement →
    T.oppositePair.edgeCircle.Closed →
    T.analyticLimit.limitExists →
    T.realization.prismaticAuthority.deltaRingStructure →
    T.nonBoundary.nonBoundary →
    T.nontrivialClassStatement →
    comparisonStatement

theorem null_circle_yields_prismatic_comparison
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R)
    (B : NullCircleToPrismaticComparisonBridge T) :
    B.comparisonStatement :=
  B.comparisonProof
    T.balance.nullProof
    T.closure.closed
    T.analyticLimit.limitProof
    T.realization.deltaRingStructure
    T.nonBoundary.proof
    T.nontrivialClassProof

/-- Bridge shell to a trace-formula statement. -/
structure NullCircleToTraceFormulaBridge
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) where
  traceFormulaStatement : Prop
  traceFormulaProof :
    T.balance.nullStatement →
    T.oppositePair.edgeCircle.Closed →
    T.analyticLimit.limitExists →
    T.nontrivialClassStatement →
    traceFormulaStatement

theorem null_circle_yields_trace_formula
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R)
    (B : NullCircleToTraceFormulaBridge T) :
    B.traceFormulaStatement :=
  B.traceFormulaProof
    T.balance.nullProof
    T.closure.closed
    T.analyticLimit.limitProof
    T.nontrivialClassProof

/-- Bridge shell to an analytic-continuation statement. -/
structure NullCircleToAnalyticContinuationBridge
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) where
  analyticContinuationStatement : Prop
  analyticContinuationProof :
    T.balance.nullStatement →
    T.analyticLimit.limitExists →
    T.analyticLimit.edgeRelaxationConverges →
    T.nontrivialClassStatement →
    analyticContinuationStatement

theorem null_circle_yields_analytic_continuation
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R)
    (B : NullCircleToAnalyticContinuationBridge T) :
    B.analyticContinuationStatement :=
  B.analyticContinuationProof
    T.balance.nullProof
    T.analyticLimit.limitProof
    T.analyticLimit.edgeRelaxationConvergesProof
    T.nontrivialClassProof

/-- Bridge shell to a Riemann-hypothesis-facing statement. -/
structure NullCircleToRiemannHypothesisBridge
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) where
  riemannHypothesisStatement : Prop
  riemannHypothesisProof :
    T.balance.nullStatement →
    T.oppositePair.edgeCircle.Closed →
    T.analyticLimit.limitExists →
    T.realization.prismaticAuthority.deltaRingStructure →
    T.nonBoundary.nonBoundary →
    T.nontrivialClassStatement →
    riemannHypothesisStatement

theorem null_circle_yields_riemann_hypothesis_statement
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R)
    (B : NullCircleToRiemannHypothesisBridge T) :
    B.riemannHypothesisStatement :=
  B.riemannHypothesisProof
    T.balance.nullProof
    T.closure.closed
    T.analyticLimit.limitProof
    T.realization.deltaRingStructure
    T.nonBoundary.proof
    T.nontrivialClassProof

/-! ## B10. Firewalls -/

/-- A local theorem object owns no global analytic theorem. -/
def NullBalancedEdgeCircleLimitOwnsGlobalAnalyticTheorem
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (_T : NullBalancedPrismaticEdgeCircleLimit D R) : Prop :=
  False

theorem null_balanced_edge_circle_not_global_analytic_authority
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) :
    ¬ NullBalancedEdgeCircleLimitOwnsGlobalAnalyticTheorem T := by
  intro h
  exact h

theorem null_balanced_edge_circle_boundary_summary
    {D : DirectionSystem.{u, v}} {R : Type w}
    [DecidableEq D.Vertex]
    (T : NullBalancedPrismaticEdgeCircleLimit D R) :
    T.balance.nullStatement ∧
      T.oppositePair.edgeCircle.Closed ∧
      T.nonBoundary.nonBoundary ∧
      T.nontrivialClassStatement ∧
      ¬ NullBalancedEdgeCircleLimitOwnsGlobalAnalyticTheorem T :=
  ⟨T.balance.nullProof,
    T.closure.closed,
    T.nonBoundary.proof,
    T.nontrivialClassProof,
    null_balanced_edge_circle_not_global_analytic_authority T⟩

end NullBalancedEdgeCircle
end Cube
end Boolean
```
