# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentResidual.Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef33b3529f6513f9a08045056f8b648c60d9ac5` · SHA-256 `02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import FCRS.TheoremGraph

/-!
Finite-dimensional persistent-residual reference calculus.

The core nonlinear mechanism is a bilinear residual/state interaction.  No
pointwise activation constructor occurs in `ActivationFreeExpr`.  Stability,
convergence, observability, reachability, learning, finite precision, and
generation are exposed through proof-bearing primitive certificates.
-/

namespace FCRS.PersistentResidual

open scoped BigOperators

universe uRole

/-- Closed catalog PRD-01--PRD-20. -/
inductive PRDIdentifier where
  | prd01TypeSeparation
  | prd02ActivationFreeNormalForm
  | prd03AffinePersistentSystemCollapse
  | prd04GenuineResidualStateNonlinearity
  | prd05NoncircularPredictionBootstrap
  | prd06TypedResidualPersistence
  | prd07ResidualEnergyNonCancellation
  | prd08PersistentExcitation
  | prd09EffectiveResidualCausesStateMotion
  | prd10ForwardInvariance
  | prd11DynamicalStability
  | prd12RealizableConstraintConvergence
  | prd13InconsistentConstraintBoundedness
  | prd14Observability
  | prd15ControllabilityOrReachability
  | prd16LearningDescent
  | prd17GenerativeKernelWellFormedness
  | prd18FinitePrecisionRefinement
  | prd19CapabilityAdapterPreservation
  | prd20CapabilityScopedCompleteness
deriving Repr, DecidableEq

/-- Exact dimensions of the initial finite-dimensional reference theory. -/
structure ReferenceDimensions where
  state : Nat
  residual : Nat
  input : Nat
  output : Nat
  constraint : Nat
  parameter : Nat
deriving Repr, DecidableEq

/-- Explicit, bounded, and non-interchangeable coordinate-index roles. -/
structure StateIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.state
deriving Repr, DecidableEq
structure ResidualIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.residual
deriving Repr, DecidableEq
structure InputIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.input
deriving Repr, DecidableEq
structure OutputIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.output
deriving Repr, DecidableEq
structure ConstraintIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.constraint
deriving Repr, DecidableEq
structure ParameterIndex (dimensions : ReferenceDimensions) where
  value : Fin dimensions.parameter
deriving Repr, DecidableEq

/-- Residual kinds do not collapse heterogeneous discrepancies. -/
inductive ResidualKind where
  | predictionMismatch
  | constraintViolation
  | contradiction
  | uncertainty
  | novelty
  | goalDiscrepancy
  | actionResultMismatch
  | crossModalInconsistency
  | formalProofObligation
deriving Repr, DecidableEq

/-- A closed role witness makes the type separation executable. -/
inductive PrincipalModelRole where
  | state | input | output | residual | memory | energy | parameter | checkpoint
deriving Repr, DecidableEq

/-- Each principal role indexes its own carrier, so values cannot be exchanged
without an explicit, typed map. -/
inductive PrincipalCarrier : PrincipalModelRole → Type where
  | state (value : Nat) : PrincipalCarrier .state
  | input (value : Nat) : PrincipalCarrier .input
  | output (value : Nat) : PrincipalCarrier .output
  | residual (value : Nat) : PrincipalCarrier .residual
  | memory (value : Nat) : PrincipalCarrier .memory
  | energy (value : Nat) : PrincipalCarrier .energy
  | parameter (value : Nat) : PrincipalCarrier .parameter
  | checkpoint (value : Nat) : PrincipalCarrier .checkpoint
deriving Repr, DecidableEq

/-- PRD-01: all principal role indices, and therefore their indexed carrier
types, are pairwise distinct. -/
theorem prd01_principalRolesDistinct :
    List.Pairwise (fun left right : PrincipalModelRole => left ≠ right)
      [.state, .input, .output, .residual, .memory, .energy, .parameter,
        .checkpoint] := by
  simp

/-- A model-level witness prevents the eight principal carrier parameters from
being instantiated as one collapsed Lean type. -/
structure PrincipalRoleTypeSeparation
    (State Input Output ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole)
    (ResidualSpace : ResidualKind → Type uRole) where
  carrier : PrincipalModelRole → Type uRole
  carrierInjective : Function.Injective carrier
  stateExact : carrier .state = State
  inputExact : carrier .input = Input
  outputExact : carrier .output = Output
  residualExact : carrier .residual = Sigma ResidualSpace
  memoryExact : carrier .memory = ResidualMemory
  energyExact : carrier .energy = ResidualEnergy
  parameterExact : carrier .parameter = Parameter
  checkpointExact : carrier .checkpoint = DurableCheckpoint

theorem PrincipalRoleTypeSeparation.state_ne_input
    {State Input Output ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    (separation : PrincipalRoleTypeSeparation State Input Output ResidualMemory
      ResidualEnergy Parameter DurableCheckpoint ResidualSpace) :
    State ≠ Input := by
  intro collapsed
  have carrierCollapsed : separation.carrier .state =
      separation.carrier .input :=
    separation.stateExact.trans (collapsed.trans separation.inputExact.symm)
  have roleCollapsed := separation.carrierInjective carrierCollapsed
  simp at roleCollapsed

/-- Sampling is an explicitly versioned finite probability-kernel boundary.
The selected value must be a positive-mass member of the declared finite
support; no undeclared randomness or arbitrary function can enter here. -/
structure ProbabilityKernelSamplingPrimitive (State : Type*) where
  kernelVersion : FCRS.TheoremTransfer.VersionId
  selectionVersion : FCRS.TheoremTransfer.VersionId
  outcomes : List State
  outcomesNonempty : outcomes ≠ []
  mass : State → State → ℝ
  nonnegative : ∀ state outcome, 0 ≤ mass state outcome
  normalized : ∀ state, (outcomes.map (mass state)).sum = 1
  sample : State → State
  sampleInSupport : ∀ state, sample state ∈ outcomes
  samplePositive : ∀ state, 0 < mass state (sample state)

/-- A barycentric primitive is exact linear centering by an idempotent
projection.  This excludes arbitrary idempotent pointwise maps while retaining
an explicit fixed-locus theorem. -/
structure ActivationFreeBarycentricRetraction (State : Type*)
    [AddCommGroup State] [Module ℝ State] where
  normalizationVersion : FCRS.TheoremTransfer.VersionId
  barycenterProjection : State →ₗ[ℝ] State
  projectionIdempotent : ∀ state,
    barycenterProjection (barycenterProjection state) =
      barycenterProjection state

def ActivationFreeBarycentricRetraction.normalize
    {State : Type*} [AddCommGroup State] [Module ℝ State]
    (retraction : ActivationFreeBarycentricRetraction State) (state : State) : State :=
  state - retraction.barycenterProjection state

theorem ActivationFreeBarycentricRetraction.idempotent
    {State : Type*} [AddCommGroup State] [Module ℝ State]
    (retraction : ActivationFreeBarycentricRetraction State) (state : State) :
    retraction.normalize (retraction.normalize state) =
      retraction.normalize state := by
  simp only [ActivationFreeBarycentricRetraction.normalize, map_sub,
    retraction.projectionIdempotent]
  abel

theorem ActivationFreeBarycentricRetraction.fixed_iff_zeroBarycenter
    {State : Type*} [AddCommGroup State] [Module ℝ State]
    (retraction : ActivationFreeBarycentricRetraction State) (state : State) :
    retraction.normalize state = state ↔
      retraction.barycenterProjection state = 0 := by
  simp [ActivationFreeBarycentricRetraction.normalize]

/-- Closed activation-free primitive inventory.  The constructors advertised
as linear or bilinear carry genuine Lean linear maps, so a threshold or ReLU
cannot be hidden behind a suggestive field name. -/
inductive ActivationFreeExpr (State : Type*)
    [AddCommGroup State] [Module ℝ State] where
  | constant (value : State)
  | identity
  | linear (map : State →ₗ[ℝ] State)
  | affineOffset (map : State →ₗ[ℝ] State) (offset : State)
  | finiteSum (terms : List (ActivationFreeExpr State))
  | scalarMultiplication (scalar : ℝ) (term : ActivationFreeExpr State)
  | matrixMultiplication (map : State →ₗ[ℝ] State)
      (term : ActivationFreeExpr State)
  | tensorContraction (map : State →ₗ[ℝ] State)
      (term : ActivationFreeExpr State)
  | bilinearInteraction (map : State →ₗ[ℝ] State →ₗ[ℝ] State)
      (left right : ActivationFreeExpr State)
  | outerProductUpdate (map : State →ₗ[ℝ] State →ₗ[ℝ] State)
      (left right : ActivationFreeExpr State)
  | residualAccumulation (map : State →ₗ[ℝ] State)
      (term : ActivationFreeExpr State)
  | operatorModulation (map : State →ₗ[ℝ] State →ₗ[ℝ] State)
      (operatorState argument : ActivationFreeExpr State)
  | composition (outer inner : ActivationFreeExpr State)
  | probabilityKernelSampling (kernel : ProbabilityKernelSamplingPrimitive State)
      (term : ActivationFreeExpr State)
  | barycentricNormalization (retraction : ActivationFreeBarycentricRetraction State)
      (term : ActivationFreeExpr State)

/-- Exact denotation of the closed activation-free grammar. -/
def ActivationFreeExpr.evaluate {State : Type*}
    [AddCommGroup State] [Module ℝ State] :
    ActivationFreeExpr State → State → State
  | .constant value => fun _ => value
  | .identity => id
  | .linear map => map
  | .affineOffset map offset => fun state =>
      map state + offset
  | .finiteSum terms => fun state =>
      (terms.map fun term => term.evaluate state).sum
  | .scalarMultiplication scalar term => fun state =>
      scalar • term.evaluate state
  | .matrixMultiplication map term => fun state =>
      map (term.evaluate state)
  | .tensorContraction map term => fun state =>
      map (term.evaluate state)
  | .bilinearInteraction map left right => fun state =>
      map (left.evaluate state) (right.evaluate state)
  | .outerProductUpdate map left right => fun state =>
      map (left.evaluate state) (right.evaluate state)
  | .residualAccumulation map term => fun state =>
      map (term.evaluate state)
  | .operatorModulation map operatorState argument => fun state =>
      map (operatorState.evaluate state) (argument.evaluate state)
  | .composition outer inner => fun state =>
      outer.evaluate (inner.evaluate state)
  | .probabilityKernelSampling kernel term => fun state =>
      kernel.sample (term.evaluate state)
  | .barycentricNormalization retraction term => fun state =>
      retraction.normalize (term.evaluate state)

/-- An exact transition together with a term in the closed grammar and a
proof that the term denotes that transition. -/
structure ActivationFreeNormalForm (State : Type*)
    [AddCommGroup State] [Module ℝ State] where
  transition : State → State
  expression : ActivationFreeExpr State
  transition_eq_evaluate : transition = expression.evaluate

/-- The reference model keeps all principal carriers in separate fields and
requires its actual state update, for every fixed input/memory/energy context,
to agree with a term in the closed activation-free grammar. -/
structure PersistentResidualModel
    (State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole)
    (ResidualSpace : ResidualKind → Type uRole)
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy] where
  roleSeparation : PrincipalRoleTypeSeparation State Input Output
    ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace
  predict : Parameter → State → Input → Output
  residual : (kind : ResidualKind) →
    Constraint → Output → Output → State → ResidualSpace kind
  memoryUpdate : ResidualMemory →
    ((kind : ResidualKind) → ResidualSpace kind) → ResidualMemory
  energyUpdate : ResidualEnergy →
    ((kind : ResidualKind) → ResidualSpace kind) → ResidualEnergy
  baseOperator : State →ₗ[ℝ] State
  memoryModulation : ResidualMemory →ₗ[ℝ] State →ₗ[ℝ] State
  energyModulation : ResidualEnergy →ₗ[ℝ] State →ₗ[ℝ] State
  memoryDrive : ResidualMemory →ₗ[ℝ] State
  inputDrive : Input →ₗ[ℝ] State
  deterministicDrive : Input → ResidualMemory → ResidualEnergy → State
  stateUpdate : State → Input → ResidualMemory → ResidualEnergy → State
  stateUpdate_formula : ∀ state input memory energy,
    stateUpdate state input memory energy =
      baseOperator state + memoryModulation memory state +
        energyModulation energy state + memoryDrive memory +
        inputDrive input + deterministicDrive input memory energy
  transitionNormalForm :
    Input → ResidualMemory → ResidualEnergy → ActivationFreeNormalForm State
  stateUpdate_hasNormalForm : ∀ state input memory energy,
    stateUpdate state input memory energy =
      (transitionNormalForm input memory energy).transition state

/-- PRD-01 applied to an actual reference-model instance. -/
theorem prd01_modelStateInputDistinct
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace) :
    State ≠ Input :=
  model.roleSeparation.state_ne_input

/-- PRD-02: the model's declared transition, rather than a detached identity
example, has an exact activation-free normal form in every fixed context. -/
theorem prd02_activationFreeIdentityNormalForm
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace)
    (input : Input) (memory : ResidualMemory) (energy : ResidualEnergy) :
    ∃ normalForm : ActivationFreeNormalForm State,
      ∀ state, model.stateUpdate state input memory energy =
        normalForm.expression.evaluate state := by
  let normalForm := model.transitionNormalForm input memory energy
  refine ⟨normalForm, fun state => ?_⟩
  calc
    model.stateUpdate state input memory energy =
        normalForm.transition state :=
      model.stateUpdate_hasNormalForm state input memory energy
    _ = normalForm.expression.evaluate state :=
      congrFun normalForm.transition_eq_evaluate state

/-- The actual reference-model update has exactly the declared
`A₀s + A_m(m)s + A_G(G)s + Bm + Uu + ξ` form. -/
theorem persistentResidualModel_stateUpdate_formula
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace)
    (state : State) (input : Input) (memory : ResidualMemory)
    (energy : ResidualEnergy) :
    model.stateUpdate state input memory energy =
      model.baseOperator state + model.memoryModulation memory state +
        model.energyModulation energy state + model.memoryDrive memory +
        model.inputDrive input + model.deterministicDrive input memory energy :=
  model.stateUpdate_formula state input memory energy

/-- The mixed state/memory difference of the actual model update isolates the
declared residual-conditioned operator modulation. -/
theorem persistentResidualModel_memoryMixedDifference_eq
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace)
    (input : Input) (energy : ResidualEnergy)
    (state₁ state₀ : State) (memory₁ memory₀ : ResidualMemory) :
    model.stateUpdate state₁ input memory₁ energy -
        model.stateUpdate state₁ input memory₀ energy -
        model.stateUpdate state₀ input memory₁ energy +
        model.stateUpdate state₀ input memory₀ energy =
      model.memoryModulation (memory₁ - memory₀) (state₁ - state₀) := by
  rw [model.memoryModulation.map_sub, LinearMap.sub_apply,
    (model.memoryModulation memory₁).map_sub,
    (model.memoryModulation memory₀).map_sub]
  simp only [model.stateUpdate_formula]
  abel

/-- PRD-04 for the actual reference model, under an explicit nonzero
residual/state interaction witness. -/
theorem prd04_modelResidualStateNonlinearity
    {State Input Output Constraint ResidualMemory ResidualEnergy Parameter
      DurableCheckpoint : Type uRole}
    {ResidualSpace : ResidualKind → Type uRole}
    [AddCommGroup State] [Module ℝ State] [FiniteDimensional ℝ State]
    [AddCommGroup Input] [Module ℝ Input] [FiniteDimensional ℝ Input]
    [AddCommGroup ResidualMemory] [Module ℝ ResidualMemory]
    [FiniteDimensional ℝ ResidualMemory]
    [AddCommGroup ResidualEnergy] [Module ℝ ResidualEnergy]
    [FiniteDimensional ℝ ResidualEnergy]
    (model : PersistentResidualModel State Input Output Constraint
      ResidualMemory ResidualEnergy Parameter DurableCheckpoint ResidualSpace)
    (input : Input) (energy : ResidualEnergy)
    (state₁ state₀ : State) (memory₁ memory₀ : ResidualMemory)
    (nonzeroInteraction :
      model.memoryModulation (memory₁ - memory₀) (state₁ - state₀) ≠ 0) :
    model.stateUpdate state₁ input memory₁ energy -
        model.stateUpdate state₁ input memory₀ energy -
        model.stateUpdate state₀ input memory₁ energy +
        model.stateUpdate state₀ input memory₀ energy ≠ 0 := by
  rw [persistentResidualModel_memoryMixedDifference_eq]
  exact nonzeroInteraction

/-- Activity is an observation of motion, never an execution gate. -/
def ActiveAt {State : Type} (trajectory : Nat → State) (time : Nat) : Prop :=
  trajectory (time + 1) ≠ trajectory time

section LinearRecurrence

variable {Z V : Type*} [AddCommGroup Z] [AddCommGroup V]
variable [Module ℝ Z] [Module ℝ V]

/-- One affine persistent recurrence `zₜ₊₁ = M zₜ + N vₜ + q`. -/
structure AffinePersistentSystem (Z V : Type*)
    [AddCommGroup Z] [AddCommGroup V] [Module ℝ Z] [Module ℝ V] where
  stateOperator : Module.End ℝ Z
  inputOperator : V →ₗ[ℝ] Z
  offset : Z

/-- Exact finite-horizon trajectory of an affine persistent system. -/
def affineTrajectory (system : AffinePersistentSystem Z V)
    (initial : Z) (input : Nat → V) : Nat → Z
  | 0 => initial
  | time + 1 =>
      system.stateOperator (affineTrajectory system initial input time) +
        system.inputOperator (input time) + system.offset

/-- Closed-form finite-horizon affine expansion. -/
def affineClosedForm (system : AffinePersistentSystem Z V)
    (initial : Z) (input : Nat → V) (horizon : Nat) : Z :=
  (system.stateOperator ^ horizon) initial +
    ∑ time ∈ Finset.range horizon,
      (system.stateOperator ^ (horizon - (time + 1)))
        (system.inputOperator (input time) + system.offset)

private theorem apply_succ_sub
    (operator : Module.End ℝ Z) (horizon time : Nat)
    (timeBefore : time < horizon) (value : Z) :
    operator
        ((operator ^ (horizon - (time + 1))) value) =
      (operator ^ (horizon + 1 - (time + 1))) value := by
  have exponent :
      horizon + 1 - (time + 1) = (horizon - (time + 1)) + 1 := by
    omega
  rw [exponent, pow_succ']
  rfl

/-- PRD-03: temporal depth plus affine residual persistence stays affine. -/
theorem prd03_affinePersistentSystemIsAffine
    (system : AffinePersistentSystem Z V)
    (initial : Z) (input : Nat → V) (horizon : Nat) :
    affineTrajectory system initial input horizon =
      affineClosedForm system initial input horizon := by
  induction horizon with
  | zero => simp [affineTrajectory, affineClosedForm]
  | succ horizon inductionHypothesis =>
      rw [affineTrajectory, inductionHypothesis]
      simp only [affineClosedForm, map_add, map_sum]
      have initialStep :
          system.stateOperator ((system.stateOperator ^ horizon) initial) =
            (system.stateOperator ^ (horizon + 1)) initial := by
        rw [pow_succ']
        rfl
      have historyStep :
          (∑ time ∈ Finset.range horizon,
              (system.stateOperator
                  ((system.stateOperator ^ (horizon - (time + 1)))
                    (system.inputOperator (input time))) +
                system.stateOperator
                  ((system.stateOperator ^ (horizon - (time + 1)))
                    system.offset))) =
            ∑ time ∈ Finset.range horizon,
              ((system.stateOperator ^ (horizon + 1 - (time + 1)))
                  (system.inputOperator (input time)) +
                (system.stateOperator ^ (horizon + 1 - (time + 1)))
                  system.offset) := by
        apply Finset.sum_congr rfl
        intro time timeMem
        rw [apply_succ_sub system.stateOperator horizon time
              (Finset.mem_range.mp timeMem) (system.inputOperator (input time)),
          apply_succ_sub system.stateOperator horizon time
              (Finset.mem_range.mp timeMem) system.offset]
      rw [initialStep, historyStep, Finset.sum_range_succ]
      simp only [Nat.sub_self, pow_zero, Module.End.one_apply]
      abel_nf

/-- The finite-horizon trajectory is affine jointly in the initial state and
the complete input sequence.  This is the operative non-expressivity result:
temporal depth does not turn an affine pipeline into a nonlinear map. -/
theorem affineTrajectory_affineCombination
    (system : AffinePersistentSystem Z V)
    (initial₁ initial₀ : Z) (input₁ input₀ : Nat → V)
    (leftWeight rightWeight : ℝ)
    (normalized : leftWeight + rightWeight = 1) (horizon : Nat) :
    affineTrajectory system
        (leftWeight • initial₁ + rightWeight • initial₀)
        (fun time => leftWeight • input₁ time + rightWeight • input₀ time)
        horizon =
      leftWeight • affineTrajectory system initial₁ input₁ horizon +
        rightWeight • affineTrajectory system initial₀ input₀ horizon := by
  induction horizon with
  | zero => rfl
  | succ horizon inductionHypothesis =>
      simp only [affineTrajectory, inductionHypothesis, map_add, map_smul]
      have offsetSplit : system.offset =
          leftWeight • system.offset + rightWeight • system.offset := by
        rw [← add_smul, normalized, one_smul]
      nth_rewrite 1 [offsetSplit]
      module

/-- An affine readout is kept explicit rather than hidden in the state. -/
structure AffinePersistentReadout (Z Y : Type*)
    [AddCommGroup Z] [AddCommGroup Y] [Module ℝ Z] [Module ℝ Y] where
  linear : Z →ₗ[ℝ] Y
  offset : Y

def affinePersistentOutput
    {Y : Type*} [AddCommGroup Y] [Module ℝ Y]
    (system : AffinePersistentSystem Z V)
    (readout : AffinePersistentReadout Z Y)
    (initial : Z) (input : Nat → V) (horizon : Nat) : Y :=
  readout.linear (affineTrajectory system initial input horizon) + readout.offset

/-- PRD-03 in input/output form: an affine recurrence followed by an affine
readout is an affine finite-horizon map of the initial state and input history. -/
theorem prd03_affinePersistentInputOutputMap
    {Y : Type*} [AddCommGroup Y] [Module ℝ Y]
    (system : AffinePersistentSystem Z V)
    (readout : AffinePersistentReadout Z Y)
    (initial₁ initial₀ : Z) (input₁ input₀ : Nat → V)
    (leftWeight rightWeight : ℝ)
    (normalized : leftWeight + rightWeight = 1) (horizon : Nat) :
    affinePersistentOutput system readout
        (leftWeight • initial₁ + rightWeight • initial₀)
        (fun time => leftWeight • input₁ time + rightWeight • input₀ time)
        horizon =
      leftWeight • affinePersistentOutput system readout initial₁ input₁ horizon +
        rightWeight • affinePersistentOutput system readout initial₀ input₀ horizon := by
  simp only [affinePersistentOutput,
    affineTrajectory_affineCombination system initial₁ initial₀ input₁ input₀
      leftWeight rightWeight normalized horizon,
    map_add, map_smul]
  have offsetSplit : readout.offset =
      leftWeight • readout.offset + rightWeight • readout.offset := by
    rw [← add_smul, normalized, one_smul]
  nth_rewrite 1 [offsetSplit]
  module

/-- Typed directional residual memory recurrence. -/
def residualMemoryTrajectory
    (retention : Module.End ℝ Z) (injection : V →ₗ[ℝ] Z)
    (initial : Z) (residual : Nat → V) : Nat → Z
  | 0 => initial
  | time + 1 =>
      retention (residualMemoryTrajectory retention injection initial residual time) +
        injection (residual time)

/-- PRD-06: exact finite-history expansion of persistent residual memory. -/
theorem prd06_typedResidualPersistence
    (retention : Module.End ℝ Z) (injection : V →ₗ[ℝ] Z)
    (initial : Z) (residual : Nat → V) (horizon : Nat) :
    residualMemoryTrajectory retention injection initial residual horizon =
      (retention ^ horizon) initial +
        ∑ time ∈ Finset.range horizon,
          (retention ^ (horizon - (time + 1))) (injection (residual time)) := by
  let system : AffinePersistentSystem Z V := {
    stateOperator := retention
    inputOperator := injection
    offset := 0
  }
  have trajectoryAgreement :
      residualMemoryTrajectory retention injection initial residual horizon =
        affineTrajectory system initial residual horizon := by
    induction horizon with
    | zero => rfl
    | succ horizon inductionHypothesis =>
        simp only [residualMemoryTrajectory, affineTrajectory]
        rw [inductionHypothesis]
        simp [system]
  rw [trajectoryAgreement,
    prd03_affinePersistentSystemIsAffine system initial residual horizon]
  simp [affineClosedForm, system]

end LinearRecurrence

section Bilinear

variable {State Residual : Type*}
variable [AddCommGroup State] [AddCommGroup Residual]
variable [Module ℝ State] [Module ℝ Residual]

/-- Residual-conditioned transition with one explicit bilinear interaction. -/
def bilinearResidualTransition
    (base : State →ₗ[ℝ] State)
    (interaction : State →ₗ[ℝ] Residual →ₗ[ℝ] State)
    (residualDrive : Residual →ₗ[ℝ] State)
    (state : State) (residual : Residual) : State :=
  base state + interaction state residual + residualDrive residual

/-- The mixed difference isolates exactly the bilinear interaction. -/
theorem bilinearMixedDifference_eq
    (base : State →ₗ[ℝ] State)
    (interaction : State →ₗ[ℝ] Residual →ₗ[ℝ] State)
    (residualDrive : Residual →ₗ[ℝ] State)
    (state₁ state₀ : State) (residual₁ residual₀ : Residual) :
    bilinearResidualTransition base interaction residualDrive state₁ residual₁ -
        bilinearResidualTransition base interaction residualDrive state₁ residual₀ -
        bilinearResidualTransition base interaction residualDrive state₀ residual₁ +
        bilinearResidualTransition base interaction residualDrive state₀ residual₀ =
      interaction (state₁ - state₀) (residual₁ - residual₀) := by
  rw [interaction.map_sub, LinearMap.sub_apply,
    (interaction state₁).map_sub, (interaction state₀).map_sub]
  simp only [bilinearResidualTransition]
  abel

/-- PRD-04: a nonzero mixed interaction proves genuine joint nonlinearity. -/
theorem prd04_genuineResidualStateNonlinearity
    (base : State →ₗ[ℝ] State)
    (interaction : State →ₗ[ℝ] Residual →ₗ[ℝ] State)
    (residualDrive : Residual →ₗ[ℝ] State)
    (state₁ state₀ : State) (residual₁ residual₀ : Residual)
    (nonzeroInteraction :
      interaction (state₁ - state₀) (residual₁ - residual₀) ≠ 0) :
    bilinearResidualTransition base interaction residualDrive state₁ residual₁ -
        bilinearResidualTransition base interaction residualDrive state₁ residual₀ -
        bilinearResidualTransition base interaction residualDrive state₀ residual₁ +
        bilinearResidualTransition base interaction residualDrive state₀ residual₀ ≠ 0 := by
  rw [bilinearMixedDifference_eq]
  exact nonzeroInteraction

end Bilinear

/-- Scalar second-moment update, separate from signed directional memory. -/
def scalarResidualEnergyStep (decay energy residual : ℝ) : ℝ :=
  decay * energy + residual ^ 2

/-- Alternating signed residuals cancel directionally. -/
theorem alternatingResiduals_cancel (residual : ℝ) :
    residual + (-residual) = 0 := by ring

/-- PRD-07: the same alternating residuals cannot cancel accumulated energy. -/
theorem prd07_residualEnergyNonCancellation
    {decay residual : ℝ} (decayNonnegative : 0 ≤ decay)
    (residualNonzero : residual ≠ 0) :
    0 < scalarResidualEnergyStep decay
      (scalarResidualEnergyStep decay 0 residual) (-residual) := by
  have squarePositive : 0 < residual ^ 2 := sq_pos_of_ne_zero residualNonzero
  simp only [scalarResidualEnergyStep, mul_zero, zero_add, neg_sq]
  nlinarith [mul_nonneg decayNonnegative (le_of_lt squarePositive)]

/-- PRD-05 input: the initial prediction has no residual field. -/
structure PredictionBootstrap (State Input Context Seed Output : Type) where
  priorState : State
  input : Input
  exactTheoremContext : Context
  cyclotomicSeed : Seed
  initializationVersion : FCRS.TheoremTransfer.VersionId
  predictFirst : State → Input → Context → Seed → Output

theorem prd05_noncircularPredictionBootstrap
    {State Input Context Seed Output : Type}
    (bootstrap : PredictionBootstrap State Input Context Seed Output) :
    Nonempty Output :=
  ⟨bootstrap.predictFirst bootstrap.priorState bootstrap.input
    bootstrap.exactTheoremContext bootstrap.cyclotomicSeed⟩

/-- A genuine finite-window excitation inequality. -/
structure PersistentExcitationCertificate
    (State : Type*) [NormedAddCommGroup State] [NormedSpace ℝ State]
    (trajectory : Nat → State) where
  horizon : Nat
  horizonPositive : 0 < horizon
  lowerBound : ℝ
  lowerBoundPositive : 0 < lowerBound
  energyLowerBound : ∀ start,
    lowerBound ≤ ∑ offset ∈ Finset.range horizon,
      ‖trajectory (start + offset)‖ ^ 2

/-- PRD-08: the certificate exports its genuine finite-window sum inequality. -/
theorem prd08_persistentExcitationLowerBound
    {State : Type*} [NormedAddCommGroup State] [NormedSpace ℝ State]
    {trajectory : Nat → State}
    (certificate : PersistentExcitationCertificate State trajectory)
    (start : Nat) :
    certificate.lowerBound ≤ ∑ offset ∈ Finset.range certificate.horizon,
      ‖trajectory (start + offset)‖ ^ 2 :=
  certificate.energyLowerBound start

/-- Motion certificate with kernel directions made explicit. -/
structure EffectiveResidualMotionCertificate
    (State Residual : Type*) [NormedAddCommGroup State]
    [NormedAddCommGroup Residual] where
  transition : State → Residual → State
  effectiveProjection : Residual → Residual
  kernelDirection : Residual → Prop
  gain : ℝ
  gainPositive : 0 < gain
  lowerMotion : ∀ state residual,
    gain * ‖effectiveProjection residual‖ ≤
      ‖transition state residual - state‖
  kernelCharacterization : ∀ residual,
    effectiveProjection residual = 0 ↔ kernelDirection residual

/-- PRD-09: a fixed transition can only arise from an effective null direction. -/
theorem prd09_fixedTransition_impliesEffectiveNull
    {State Residual : Type*} [NormedAddCommGroup State]
    [NormedAddCommGroup Residual]
    (certificate : EffectiveResidualMotionCertificate State Residual)
    (state : State) (residual : Residual)
    (fixed : certificate.transition state residual = state) :
    certificate.effectiveProjection residual = 0 := by
  have motionUpper :
      certificate.gain * ‖certificate.effectiveProjection residual‖ ≤ 0 := by
    simpa [fixed] using certificate.lowerMotion state residual
  have effectiveNormZero : ‖certificate.effectiveProjection residual‖ = 0 := by
    nlinarith [certificate.gainPositive,
      norm_nonneg (certificate.effectiveProjection residual)]
  exact norm_eq_zero.mp effectiveNormZero

/-- PRD-09: an effective residual necessarily causes state motion. -/
theorem prd09_effectiveResidualCausesStateMotion
    {State Residual : Type*} [NormedAddCommGroup State]
    [NormedAddCommGroup Residual]
    (certificate : EffectiveResidualMotionCertificate State Residual)
    (state : State) (residual : Residual)
    (effective : certificate.effectiveProjection residual ≠ 0) :
    certificate.transition state residual ≠ state := by
  intro fixed
  exact effective (prd09_fixedTransition_impliesEffectiveNull
    certificate state residual fixed)

/-- The same null conclusion is identified with the declared kernel direction. -/
theorem prd09_fixedTransition_impliesKernelDirection
    {State Residual : Type*} [NormedAddCommGroup State]
    [NormedAddCommGroup Residual]
    (certificate : EffectiveResidualMotionCertificate State Residual)
    (state : State) (residual : Residual)
    (fixed : certificate.transition state residual = state) :
    certificate.kernelDirection residual :=
  (certificate.kernelCharacterization residual).mp
    (prd09_fixedTransition_impliesEffectiveNull certificate state residual fixed)

/-- Forward invariance derives from an actual closure law. -/
structure ForwardInvarianceCertificate (State : Type) where
  admissible : State → Prop
  transition : State → State
  closed : ∀ state, admissible state → admissible (transition state)

theorem prd10_forwardInvariance
    {State : Type} (certificate : ForwardInvarianceCertificate State)
    {state : State} (admissible : certificate.admissible state) :
    certificate.admissible (certificate.transition state) :=
  certificate.closed state admissible

/-- Primitive Lyapunov hypotheses; stability is not stored as a Boolean/projection. -/
structure LyapunovDecreaseCertificate
    (State : Type*) [NormedAddCommGroup State] where
  transition : State → State
  lyapunov : State → ℝ
  lowerGain : ℝ
  decreaseGain : ℝ
  lowerGainPositive : 0 < lowerGain
  decreaseGainPositive : 0 < decreaseGain
  lowerBound : ∀ state, lowerGain * ‖state‖ ^ 2 ≤ lyapunov state
  oneStepDecrease : ∀ state,
    lyapunov (transition state) - lyapunov state ≤
      -decreaseGain * ‖state‖ ^ 2

theorem prd11_lyapunovStrictDecrease
    {State : Type*} [NormedAddCommGroup State]
    (certificate : LyapunovDecreaseCertificate State)
    {state : State} (stateNonzero : state ≠ 0) :
    certificate.lyapunov (certificate.transition state) <
      certificate.lyapunov state := by
  have normPositive : 0 < ‖state‖ := norm_pos_iff.mpr stateNonzero
  have squarePositive : 0 < ‖state‖ ^ 2 := sq_pos_of_pos normPositive
  have positiveProduct : 0 < certificate.decreaseGain * ‖state‖ ^ 2 :=
    mul_pos certificate.decreaseGainPositive squarePositive
  have negative : -certificate.decreaseGain * ‖state‖ ^ 2 < 0 := by
    linarith
  linarith [certificate.oneStepDecrease state]

/-- Realizable constraints and convergence stay explicit hypotheses. -/
structure RealizableConvergenceCertificate (State Constraint : Type)
    [TopologicalSpace State] where
  trajectory : Constraint → Nat → State
  realizes : Constraint → State → Prop
  limit : Constraint → State
  realizableLimit : ∀ constraint, realizes constraint (limit constraint)
  converges : ∀ constraint, Filter.Tendsto (trajectory constraint)
    Filter.atTop (nhds (limit constraint))

/-- Inconsistent constraints receive a bound, never a fabricated zero residual. -/
structure InconsistentConstraintBoundCertificate (Constraint : Type) where
  inconsistent : Constraint → Prop
  residualEnergy : Constraint → Nat → ℝ
  bound : Constraint → ℝ
  bounded : ∀ constraint, inconsistent constraint →
    ∀ time, residualEnergy constraint time ≤ bound constraint

/-- Observability is relative to an output map and state equivalence. -/
structure ObservabilityCertificate (State Output : Type) where
  observe : State → Output
  equivalent : State → State → Prop
  observable : ∀ {left right}, observe left = observe right → equivalent left right

/-- Reachability is relative to actions and a declared target predicate. -/
structure ReachabilityCertificate (State Action : Type) where
  step : State → Action → State
  target : State → Prop
  reachable : ∀ initial, ∃ actions : List Action,
    target (actions.foldl step initial)

/-- Slow learning update and descent remain separate from fast state motion. -/
inductive LearningMethod where
  | backpropagationThroughTime
  | truncatedBackpropagation
  | implicitDifferentiation
  | localPredictiveCoding
  | eligibilityTrace
  | derivativeFree
deriving Repr, DecidableEq

structure LearningDescentCertificate (Parameter : Type) where
  method : LearningMethod
  update : Parameter → Parameter
  objective : Parameter → ℝ
  descent : ∀ parameter, objective (update parameter) ≤ objective parameter

/-- Finite deterministic probability kernel with exact normalization evidence. -/
structure FiniteProbabilityKernel (State Output : Type) where
  outcomes : List Output
  mass : State → Output → ℝ
  nonnegative : ∀ state output, 0 ≤ mass state output
  normalized : ∀ state, (outcomes.map (mass state)).sum = 1

theorem prd17_finiteKernelNormalized
    {State Output : Type} (kernel : FiniteProbabilityKernel State Output)
    (state : State) :
    (kernel.outcomes.map (kernel.mass state)).sum = 1 :=
  kernel.normalized state

/-- Exact/formal and finite-precision trajectories are related only by a bound. -/
structure FinitePrecisionSimulation
    (State : Type*) [NormedAddCommGroup State] where
  exactTrajectory : Nat → State
  approximateTrajectory : Nat → State
  errorBound : Nat → ℝ
  simulationBound : ∀ time,
    ‖approximateTrajectory time - exactTrajectory time‖ ≤ errorBound time

inductive CapabilityClass where
  | naturalLanguageGeneration | languageTransformation
  | structuredDataGeneration | codeGeneration | formalOrSymbolicGeneration
  | reasonedGeneration | planning | researchSynthesis | documentGeneration
  | uiOrApplicationGeneration | syntheticDataGeneration
  | imageGeneration | imageTransformation | graphicOrDesignGeneration
  | videoGeneration | videoTransformation | characterOrPerformanceGeneration
  | speechGeneration | voiceTransformation | speechToSpeechGeneration
  | soundGeneration | musicGeneration | musicTransformation
  | object3DGeneration | scene3DGeneration | worldGeneration
  | futureStatePrediction
  | toolCallGeneration | computerUseActionGeneration | agenticExecution
  | multiAgentCoordination | roboticActionGeneration
  | proteinGeneration | molecularGeneration | genomicDesign
  | engineeringDesign
  | interactiveGeneration | personalizedGeneration | constrainedGeneration
  | crossModalGeneration
deriving Repr, DecidableEq

inductive CapabilitySystemLayer where
  | representation | generation | reasoningOrCognition | agency | persistence
deriving Repr, DecidableEq

inductive CapabilityModality where
  | text | structuredData | code | formalSymbol | image | video | speech
  | audio | music | object3D | scene3D | action | molecule | protein
  | genome | engineeringDesign | worldState
deriving Repr, DecidableEq

/-- Services that must not be relabeled as generation. -/
inductive NonGenerativeService where
  | perception | embedding | reranking | moderation | retrieval
  | toolExecution | memoryStore
deriving Repr, DecidableEq

/-- Capability adapters name their exact semantic preservation obligation. -/
structure CapabilityAdapter (State Output : Type) where
  capability : CapabilityClass
  layer : CapabilitySystemLayer
  inputModalities : List CapabilityModality
  outputModalities : List CapabilityModality
  residualKindsConsumed : List ResidualKind
  adapterVersion : FCRS.TheoremTransfer.VersionId
  modelVersion : FCRS.TheoremTransfer.VersionId
  decode : State → Output
  constraint : Output → Prop
  sourceProperty : State → Prop
  targetProperty : Output → Prop
  knownLosses : List String
  preserves : ∀ state, sourceProperty state → targetProperty (decode state)

theorem prd19_capabilityAdapterPreservation
    {State Output : Type} (adapter : CapabilityAdapter State Output)
    {state : State} (source : adapter.sourceProperty state) :
    adapter.targetProperty (adapter.decode state) :=
  adapter.preserves state source

/-- Validation is a separate evidence layer from enum presence and the
mathematical preservation law. -/
inductive CapabilityValidationOutcome where
  | passed | failed | inconclusive
deriving Repr, DecidableEq

structure CapabilityValidation
    {State Output : Type} (adapter : CapabilityAdapter State Output) where
  validationVersion : FCRS.TheoremTransfer.VersionId
  validatedAdapterVersion : FCRS.TheoremTransfer.VersionId
  adapterExact : validatedAdapterVersion = adapter.adapterVersion
  outcome : CapabilityValidationOutcome

structure AcceptedCapabilityValidation
    {State Output : Type} {adapter : CapabilityAdapter State Output}
    (validation : CapabilityValidation adapter) where
  passedExact : validation.outcome = .passed
  evidenceVersions : List FCRS.TheoremTransfer.VersionId
  evidenceNonempty : evidenceVersions ≠ []

/-- PRD-20 partitions the complete 40-kind vocabulary into independently
validated implementations and representable-only open obligations. -/
structure CapabilityScopedCompleteness where
  implemented : List CapabilityClass
  representableOnly : List CapabilityClass
  classificationTotal : ∀ capability,
    capability ∈ implemented ∨ capability ∈ representableOnly
  classificationExclusive : ∀ capability,
    capability ∈ implemented → capability ∈ representableOnly → False
  adapterVersion : CapabilityClass → Option FCRS.TheoremTransfer.VersionId
  validationVersion : CapabilityClass → Option FCRS.TheoremTransfer.VersionId
  openObligationVersion :
    CapabilityClass → Option FCRS.TheoremTransfer.VersionId
  implementedHasAdapter : ∀ capability, capability ∈ implemented →
    ∃ adapter validation,
      adapterVersion capability = some adapter ∧
      validationVersion capability = some validation
  representableHasOpenObligation : ∀ capability,
    capability ∈ representableOnly →
      ∃ obligation, openObligationVersion capability = some obligation

/-- Open mathematical work is a typed obligation and supplies no proof field. -/
structure OpenResearchObligation where
  identifier : PRDIdentifier
  obligationVersion : FCRS.TheoremTransfer.VersionId
  statement : String
  requiredEvidence : List String

end FCRS.PersistentResidual
```
