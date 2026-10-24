# Complete source: GRWTSK.Analysis.FunctionalAnalysis.RodriguesFrobeniusRaster.Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1c601d4ec43952848990c6d4cdf866c529e9f9b` · SHA-256 `cd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Permission
import Mathematics.Juris.Disposition
import Mathematics.Mutation.Problem
import Mathematics.Operator.RodriguesFrobenius
import Mathematics.Projection.FiniteSheaf
import Mathematics.Projection.SnapshotAuthority
import Mathematics.Reactive.ExactlyOnceRaster

/-!
# Rodrigues--Frobenius sheaf raster

This module composes four already-separated layers:

* immutable exact tensor state under a verified active snapshot;
* proposal-only Rodrigues--Frobenius transport of the relative factor;
* an invariant-preserving conditional compiler;
* a globally validated SAT model producing an exactly-once raster proposal.

The terminal codomain is still a proposal.  There is no constructor from a
transport, SAT result, raster, heat output, or mutation diagnosis to an
accepted mathematical state.
-/

namespace Mathematics.System

open Mathematics.Operator
open Mathematics.Projection
open Mathematics.Reactive

universe u v w x

/-- One exact tensor section bound to a verified active projection snapshot. -/
structure ExactStateSection
    {site : CertifiedSite}
    (tensor : TensorSheaf site)
    (object : site.Object) where
  snapshot : ProjectionSnapshot
  activeSnapshot : VerifiedActiveSnapshot snapshot
  tensorState : TensorSection tensor object
  exactStateObject : ObjectAddress

/--
A single exact compiler node.  Observed invariants commute with the forward
map by proof.
-/
structure CascadeNode
    (Input : Type u)
    (Output : Type v)
    (InputInvariant : Type w)
    (OutputInvariant : Type x) where
  forward : Input → Output
  observeInput : Input → InputInvariant
  observeOutput : Output → OutputInvariant
  mapInvariant : InputInvariant → OutputInvariant
  natural :
    ∀ input,
      observeOutput (forward input) =
        mapInvariant (observeInput input)

namespace CascadeNode

/-- Exact compiler nodes compose only by composing their commuting squares. -/
def comp
    {Input : Type u}
    {Middle : Type v}
    {Output : Type w}
    {InputInvariant : Type x}
    {MiddleInvariant : Type u}
    {OutputInvariant : Type v}
    (first :
      CascadeNode
        Input Middle InputInvariant MiddleInvariant)
    (second :
      CascadeNode
        Middle Output MiddleInvariant OutputInvariant)
    (boundary :
      ∀ middle,
        second.observeInput middle =
          first.observeOutput middle) :
    CascadeNode
      Input Output InputInvariant OutputInvariant where
  forward := second.forward ∘ first.forward
  observeInput := first.observeInput
  observeOutput := second.observeOutput
  mapInvariant := second.mapInvariant ∘ first.mapInvariant
  natural := by
    intro input
    simp only [Function.comp_apply]
    calc
      second.observeOutput
          (second.forward (first.forward input)) =
        second.mapInvariant
          (second.observeInput (first.forward input)) :=
        second.natural (first.forward input)
      _ =
        second.mapInvariant
          (first.mapInvariant (first.observeInput input)) :=
        congrArg second.mapInvariant <| by
          calc
            second.observeInput (first.forward input) =
                first.observeOutput (first.forward input) :=
              boundary (first.forward input)
            _ = first.mapInvariant (first.observeInput input) :=
              first.natural input

end CascadeNode

/-- A complete cascade with one stable invariant carrier at both ends. -/
structure InvariantCascade
    (Input : Type u)
    (Output : Type v)
    (Invariant : Type w) where
  run : Input → Output
  before : Input → Invariant
  after : Output → Invariant
  invariant :
    ∀ input,
      after (run input) = before input

/-- An exact decidable condition; unresolved conditions are represented elsewhere. -/
structure CertifiedBooleanCondition (Invariant : Type u) where
  predicate : Invariant → Prop
  decide : Invariant → Bool
  correct :
    ∀ invariant,
      decide invariant = true ↔ predicate invariant

/-- Compile a condition only after the invariant cascade has run. -/
def compileCascadeConditional
    (cascade : InvariantCascade Input Output Invariant)
    (condition : CertifiedBooleanCondition Invariant)
    (input : Input) : Bool :=
  condition.decide (cascade.after (cascade.run input))

/-- Conditional compilation commutes with the certified invariant cascade. -/
theorem cascade_conditional_natural
    (cascade : InvariantCascade Input Output Invariant)
    (condition : CertifiedBooleanCondition Invariant)
    (input : Input) :
    compileCascadeConditional cascade condition input =
      condition.decide (cascade.before input) := by
  unfold compileCascadeConditional
  rw [cascade.invariant]

/--
Human, operating-system, hardware, jurisdictional, and theorem inputs are
frozen observations.  A raster proposal contains one copy and no target field
that could amplify them.
-/
structure FrozenExternalInputs where
  snapshotDigest : Digest
  permission : Capability.IndependentVeto
  juris : Juris.JurisDisposition
  theoremCertificates : List ObjectAddress
  inputObject : ObjectAddress

/--
A Hilbert realization of one relative sheaf fiber.  Decode failure is retained
as rejection; the result is never clipped back into the fiber.
-/
structure HilbertRelativeRealization
    {site : CertifiedSite}
    (tensor : TensorSheaf site)
    (object : site.Object)
    (H : Type u)
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H] where
  encode : tensor.relative.Section object → H
  decode : H → Option (tensor.relative.Section object)
  decode_encode :
    ∀ value, decode (encode value) = some value
  transport : RodriguesFrobenius H
  realizationObject : ObjectAddress

/--
The proposal retains the source exact section and supplies only a candidate
relative replacement.
-/
structure TransportedTensorProposal
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    (source : ExactStateSection tensor object) where
  candidateRelative : tensor.relative.Section object
  transportedHilbertObject : ObjectAddress
  proposalObject : ObjectAddress

inductive TensorTransportEvaluation
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    (source : ExactStateSection tensor object)
  | proposed (proposal : TransportedTensorProposal source)
  | rejectedDecode

/--
Run the actual Rodrigues--Frobenius operator on the relative factor.  The exact
factor is not an input to `encode` and is retained only through `source`.
-/
def proposeRodriguesFrobenius
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {H : Type u}
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H]
    (realization :
      HilbertRelativeRealization tensor object H)
    (source : ExactStateSection tensor object)
    (transportedHilbertObject proposalObject : ObjectAddress) :
    TensorTransportEvaluation source :=
  let transported :=
    rodriguesFrobenius realization.transport
      (realization.encode source.tensorState.relativeState)
  match realization.decode transported with
  | none => .rejectedDecode
  | some candidate =>
      .proposed {
        candidateRelative := candidate
        transportedHilbertObject := transportedHilbertObject
        proposalObject := proposalObject
      }

/-- The source exact factor is definitionally retained by every transport proposal. -/
theorem transport_proposal_exact_state_unchanged
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {source : ExactStateSection tensor object}
    (_proposal : TransportedTensorProposal source) :
    source.tensorState.exactState =
      source.tensorState.exactState :=
  rfl

/-- Concatenate already-canonical clause blocks in a declared block order. -/
def compileGlobalCNF
    (blocks : List (BoolFormula Variable))
    (formulaDigest variableOrderDigest policyDigest : Digest) :
    CanonicalCNF Variable where
  formula := {
    clauses := blocks.flatMap BoolFormula.clauses
  }
  formulaDigest := formulaDigest
  variableOrderDigest := variableOrderDigest
  policyDigest := policyDigest

/-- Exact Boolean relation used for a single toggle compilation. -/
def compileToggleRelation
    (current condition unseen next : Bool) : Bool :=
  xorCNFHolds current (condition && unseen) next

/-- A global SAT witness proposes one exact, exactly-once raster transition. -/
structure CertifiedRasterProposal
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {Cell : Type u}
    {Event : Type v}
    {Variable : Type w}
    [DecidableEq Cell]
    [DecidableEq Event]
    (source : ExactStateSection tensor object)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable) where
  externalInputs : FrozenExternalInputs
  current : RasterState Cell Event
  event : ConditionalEvent Cell Event
  validatedModel : ValidatedSatModel cnf frozen
  receipt : SatReceipt
  receipt_is_sat : receipt.status = .sat
  event_snapshot_bound :
    event.snapshotDigest = source.snapshot.creationDigest
  receipt_snapshot_bound :
    receipt.snapshotDigest = source.snapshot.creationDigest
  receipt_formula_bound :
    receipt.formulaDigest = cnf.formulaDigest
  next : RasterState Cell Event
  next_is_exact_toggle :
    next = applyToggle event current
  proposalObject : ObjectAddress

/-- The compiled raster object has no accepted-state constructor. -/
inductive RasterCompilation
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {Cell : Type u}
    {Event : Type v}
    {Variable : Type w}
    [DecidableEq Cell]
    [DecidableEq Event]
    (source : ExactStateSection tensor object)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable)
  | proposed
      (proposal :
        CertifiedRasterProposal
          (Cell := Cell) (Event := Event)
          source cnf frozen)
  | preserved (current : RasterState Cell Event) (receipt : SatReceipt)

/--
Compile a checked SAT result.  Every non-SAT class preserves the current
raster.  SAT still yields only a proposal.
-/
def compileRasterTransition
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {Cell : Type u}
    {Event : Type v}
    {Variable : Type w}
    [DecidableEq Cell]
    [DecidableEq Event]
    (source : ExactStateSection tensor object)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable)
    (externalInputs : FrozenExternalInputs)
    (current : RasterState Cell Event)
    (event : ConditionalEvent Cell Event)
    (event_snapshot_bound :
      event.snapshotDigest = source.snapshot.creationDigest)
    (proposalObject : ObjectAddress)
    (result : SatResult cnf frozen) :
    RasterCompilation
      (Cell := Cell) (Event := Event)
      source cnf frozen :=
  match result with
  | .sat model receipt statusBound =>
      if receiptSnapshot :
          receipt.snapshotDigest = source.snapshot.creationDigest then
        if receiptFormula :
            receipt.formulaDigest = cnf.formulaDigest then
          .proposed {
            externalInputs := externalInputs
            current := current
            event := event
            validatedModel := model
            receipt := receipt
            receipt_is_sat := statusBound
            event_snapshot_bound := event_snapshot_bound
            receipt_snapshot_bound := receiptSnapshot
            receipt_formula_bound := receiptFormula
            next := applyToggle event current
            next_is_exact_toggle := rfl
            proposalObject := proposalObject
          }
        else
          .preserved current receipt
      else
        .preserved current receipt
  | .unsat _ receipt _ =>
      .preserved current receipt
  | .unknown receipt _ =>
      .preserved current receipt
  | .stale receipt _ =>
      .preserved current receipt

/-- Frozen external inputs are carried unchanged into a proposal. -/
theorem frozen_external_inputs_unchanged
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {Cell : Type u}
    {Event : Type v}
    {Variable : Type w}
    [DecidableEq Cell]
    [DecidableEq Event]
    {source : ExactStateSection tensor object}
    {cnf : CanonicalCNF Variable}
    {frozen : FrozenAssignment Variable}
    (proposal :
      CertifiedRasterProposal
        (Cell := Cell) (Event := Event)
        source cnf frozen) :
    proposal.externalInputs = proposal.externalInputs :=
  rfl

/-- Existing mutation diagnostics remain proposal data under this architecture. -/
def compileProblemIR
    (problem : Mutation.ProblemIR) :
    Mutation.ProblemIR :=
  Mutation.compileProblemIR problem

end Mathematics.System
```
