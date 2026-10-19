import Mathematics.MobiusOntology.ContractiveBoundary
import Mathematics.Attention.Residual

/-!
# Perturbed contractive traversal

Local implementation defects remain explicit.  They propagate through the
same affine error monoid `e ↦ q e + δ`; convergence requires a separately
certified vanishing perturbation tail.
-/

namespace Mathematics.MobiusOntology

open Filter Set
open scoped NNReal Topology

universe u v

structure PerturbedBoundaryCertificate
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule) where
  implementedStep : ℕ → Schedule → State → State
  perturbation : ℕ → Schedule → ℝ≥0
  implementedInvariant :
    ∀ depth schedule {state},
      state ∈ exact.basin →
      implementedStep depth schedule state ∈ exact.basin
  localDefect :
    ∀ depth schedule {state},
      state ∈ exact.basin →
      nndist
          (implementedStep depth schedule state)
          (exact.step schedule state) ≤
        perturbation depth schedule

/--
Robust basin custody derives implemented invariance from the declared local
error budget.  Direct `implementedInvariant` remains the stronger primitive
form accepted by `PerturbedBoundaryCertificate`.
-/
structure RobustPerturbationCertificate
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (exact :
      ContractiveBoundaryCertificate State Schedule) where
  errorBound : ℕ → Schedule → ℝ≥0
  robustInvariant :
    ∀ depth schedule {exactState implementedState},
      exactState ∈ exact.basin →
      nndist
          implementedState
          (exact.step schedule exactState) ≤
        errorBound depth schedule →
      implementedState ∈ exact.basin

def PerturbedBoundaryCertificate.ofRobust
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (robust : RobustPerturbationCertificate exact)
    (implementedStep : ℕ → Schedule → State → State)
    (localDefect :
      ∀ depth schedule {state},
        state ∈ exact.basin →
        nndist
            (implementedStep depth schedule state)
            (exact.step schedule state) ≤
          robust.errorBound depth schedule) :
    PerturbedBoundaryCertificate exact where
  implementedStep := implementedStep
  perturbation := robust.errorBound
  implementedInvariant := fun depth schedule state_mem =>
    robust.robustInvariant
      depth schedule state_mem
      (localDefect depth schedule state_mem)
  localDefect := localDefect

/--
Replay stability is admitted only when both the implemented transition and
its time-indexed defect sequence refine the same certified profile.
-/
structure PerturbedReplayRefinement
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (source replay :
      PerturbedBoundaryCertificate exact) : Prop where
  stepPreserved :
    ∀ depth schedule state,
      replay.implementedStep depth schedule state =
        source.implementedStep depth schedule state
  defectPreserved :
    ∀ depth schedule,
      replay.perturbation depth schedule =
        source.perturbation depth schedule

def iteratePerturbed
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) :
    ℕ → State → State
  | 0, state => state
  | depth + 1, state =>
      perturbed.implementedStep
        depth
        (schedule depth)
        (iteratePerturbed perturbed schedule depth state)

namespace PerturbedBoundaryCertificate

variable {State : Type u} {Schedule : Type v}
variable [PseudoMetricSpace State]
variable
  {exact :
    ContractiveBoundaryCertificate State Schedule}

theorem replay_iterate_eq
    {source replay :
      PerturbedBoundaryCertificate exact}
    (refinement :
      PerturbedReplayRefinement source replay)
    (schedule : ℕ → Schedule)
    (depth : ℕ)
    (initial : State) :
    iteratePerturbed replay schedule depth initial =
      iteratePerturbed source schedule depth initial := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      simp only [iteratePerturbed]
      rw [refinement.stepPreserved, inductionHypothesis]

/-- One perturbed step, projected into the shared affine error monoid. -/
def errorTransform
    (perturbed : PerturbedBoundaryCertificate exact)
    (depth : ℕ)
    (schedule : Schedule) :
    ErrorTransform where
  gain := exact.contraction
  offset := perturbed.perturbation depth schedule

@[simp]
theorem errorTransform_apply
    (perturbed : PerturbedBoundaryCertificate exact)
    (depth : ℕ)
    (schedule : Schedule)
    (incoming : ℝ≥0) :
    perturbed.errorTransform depth schedule incoming =
      exact.contraction * incoming +
        perturbed.perturbation depth schedule :=
  rfl

theorem iterate_mem
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin) :
    ∀ depth,
      iteratePerturbed perturbed schedule depth initial ∈
        exact.basin := by
  intro depth
  induction depth with
  | zero =>
      simpa [iteratePerturbed] using initial_mem
  | succ depth inductionHypothesis =>
      simpa [iteratePerturbed] using
        perturbed.implementedInvariant
          depth (schedule depth) inductionHypothesis

theorem one_step_boundary_error
    (perturbed : PerturbedBoundaryCertificate exact)
    (depth : ℕ)
    (schedule : Schedule)
    {state : State}
    (state_mem : state ∈ exact.basin) :
    nndist
        (perturbed.implementedStep depth schedule state)
        exact.boundary ≤
      exact.contraction * nndist state exact.boundary +
        perturbed.perturbation depth schedule := by
  calc
    nndist
        (perturbed.implementedStep depth schedule state)
        exact.boundary =
      nndist
        (perturbed.implementedStep depth schedule state)
        (exact.step schedule exact.boundary) := by
          rw [exact.boundary_fixed]
    _ ≤
      nndist
          (perturbed.implementedStep depth schedule state)
          (exact.step schedule state) +
        nndist
          (exact.step schedule state)
          (exact.step schedule exact.boundary) :=
      nndist_triangle _ _ _
    _ ≤
      perturbed.perturbation depth schedule +
        exact.contraction *
          nndist state exact.boundary :=
      add_le_add
        (perturbed.localDefect depth schedule state_mem)
        (exact.contractive
          schedule state_mem exact.boundary_mem)
    _ =
      exact.contraction * nndist state exact.boundary +
        perturbed.perturbation depth schedule :=
      add_comm _ _

def transportedError
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) :
    ℕ → ℝ≥0 → ℝ≥0
  | 0, initial => initial
  | depth + 1, initial =>
      exact.contraction *
          transportedError perturbed schedule depth initial +
        perturbed.perturbation depth (schedule depth)

theorem replay_transportedError_eq
    {source replay :
      PerturbedBoundaryCertificate exact}
    (refinement :
      PerturbedReplayRefinement source replay)
    (schedule : ℕ → Schedule)
    (depth : ℕ)
    (initial : ℝ≥0) :
    replay.transportedError schedule depth initial =
      source.transportedError schedule depth initial := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      simp only [transportedError]
      rw [refinement.defectPreserved, inductionHypothesis]

theorem iterate_error_le
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin) :
    ∀ depth,
      nndist
          (iteratePerturbed
            perturbed schedule depth initial)
          exact.boundary ≤
        perturbed.transportedError
          schedule depth
          (nndist initial exact.boundary) := by
  intro depth
  induction depth with
  | zero =>
      simp [iteratePerturbed, transportedError]
  | succ depth inductionHypothesis =>
      calc
        nndist
            (iteratePerturbed
              perturbed schedule (depth + 1) initial)
            exact.boundary ≤
          exact.contraction *
              nndist
                (iteratePerturbed
                  perturbed schedule depth initial)
                exact.boundary +
            perturbed.perturbation depth (schedule depth) := by
              simpa [iteratePerturbed] using
                perturbed.one_step_boundary_error
                  depth
                  (schedule depth)
                  (perturbed.iterate_mem
                    schedule initial_mem depth)
        _ ≤
          exact.contraction *
              perturbed.transportedError
                schedule depth
                (nndist initial exact.boundary) +
            perturbed.perturbation depth (schedule depth) :=
          add_le_add_right
            (mul_le_mul_left'
              inductionHypothesis exact.contraction)
            _
        _ =
          perturbed.transportedError
            schedule (depth + 1)
            (nndist initial exact.boundary) := rfl

def residualBounds
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule) :
    ℕ → List (Mathematics.Attention.ResidualBound Unit)
  | 0 => []
  | depth + 1 =>
      residualBounds perturbed schedule depth ++
        [{ kind :=
              .reproductiveBehavior
           localError :=
              perturbed.perturbation depth (schedule depth)
           lipschitz := exact.contraction
           proofRef := () }]

theorem transportedError_eq_residualPropagation
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    (depth : ℕ)
    (initial : ℝ≥0) :
    perturbed.transportedError schedule depth initial =
      Mathematics.Attention.Residual.propagateFrom
        initial
        (perturbed.residualBounds schedule depth) := by
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      rw [residualBounds,
        Mathematics.Attention.Residual.propagateFrom_append]
      simp only
        [Mathematics.Attention.Residual.propagateFrom,
          Mathematics.Attention.Residual.advance,
          transportedError, inductionHypothesis]

theorem transportedError_closedForm
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    (depth : ℕ)
    (initial : ℝ≥0) :
    perturbed.transportedError schedule depth initial =
      initial *
          Mathematics.Attention.Residual.downstreamGain
            (perturbed.residualBounds schedule depth) +
        Mathematics.Attention.Residual.weightedResidual
          (perturbed.residualBounds schedule depth) := by
  rw [perturbed.transportedError_eq_residualPropagation]
  exact
    Mathematics.Attention.Residual.propagateFrom_closedForm
      initial
      (perturbed.residualBounds schedule depth)

end PerturbedBoundaryCertificate

structure ExactTransportedErrorCertificate
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    (initialError : ℝ≥0) where
  vanishes :
    Tendsto
      (fun depth =>
        perturbed.transportedError
          schedule depth initialError)
      atTop
      (𝓝 0)

theorem perturbed_traversal_tendsto_boundary
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin)
    (tail :
      ExactTransportedErrorCertificate
        perturbed schedule
        (nndist initial exact.boundary)) :
    Tendsto
      (fun depth =>
        iteratePerturbed perturbed schedule depth initial)
      atTop
      (𝓝 exact.boundary) := by
  apply tendsto_iff_dist_tendsto_zero.mpr
  have nonnegativeDistance :
      Tendsto
        (fun depth =>
          nndist
            (iteratePerturbed
              perturbed schedule depth initial)
            exact.boundary)
        atTop
        (𝓝 0) :=
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      tendsto_const_nhds
      tail.vanishes
      (fun _ => bot_le)
      (perturbed.iterate_error_le
        schedule initial_mem)
  have realDistance :=
    (NNReal.continuous_coe.tendsto 0).comp
      nonnegativeDistance
  simpa [coe_nndist] using realDistance

structure UniformPerturbationFloor
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact) where
  localBound : ℝ≥0
  errorFloor : ℝ≥0
  perturbation_bounded :
    ∀ depth schedule,
      perturbed.perturbation depth schedule ≤ localBound
  floor_invariant :
    exact.contraction * errorFloor + localBound ≤
      errorFloor

theorem error_floor_preserved
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    {perturbed : PerturbedBoundaryCertificate exact}
    (floor : UniformPerturbationFloor perturbed)
    {error : ℝ≥0}
    (below : error ≤ floor.errorFloor)
    (depth : ℕ)
    (schedule : Schedule) :
    exact.contraction * error +
        perturbed.perturbation depth schedule ≤
      floor.errorFloor := by
  exact le_trans
    (add_le_add
      (mul_le_mul_left' below exact.contraction)
      (floor.perturbation_bounded depth schedule))
    floor.floor_invariant

/--
A supplied Lipschitz observable transports the entire perturbed boundary
budget.  This certifies readout stability, not the interpretation of the
observable.
-/
theorem perturbed_observable_nndist_le
    {State : Type u}
    {Schedule : Type v}
    {Observation : Type*}
    [PseudoMetricSpace State]
    [PseudoMetricSpace Observation]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (observable :
      ContractiveBoundaryObservable exact Observation)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ exact.basin)
    (depth : ℕ) :
    nndist
        (observable.observe
          (iteratePerturbed
            perturbed schedule depth initial))
        (observable.observe exact.boundary) ≤
      observable.lipschitz *
        perturbed.transportedError
          schedule depth
          (nndist initial exact.boundary) := by
  exact le_trans
    (observable.controlled.nndist_le _ _)
    (mul_le_mul_left'
      (perturbed.iterate_error_le
        schedule initial_mem depth)
      observable.lipschitz)

end Mathematics.MobiusOntology
