/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightMatrixExponential
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Finite height-time spectral tensor for prime-power diffusion

This module packages the existing three-state prime-power diffusion system into
a finite tensor whose coordinates separately retain:

* a bounded discrete graph height;
* a bounded positive integer time sample;
* the certified, candidate, or admissible Graph Sandwich layer;
* the transition, normalized-Laplacian, closed-semigroup, or literal Mathlib
  matrix-exponential operator;
* one of the three complete finite spectral modes;
* source and target states;
* edge-local and slice-level provenance.

The sampled real times are `1, ..., timeHorizon + 1`. They are deliberately
strictly positive, because positive-time semigroup support coincides exactly
with certified transition support. Time zero remains available through the
separate identity theorems in `PrimePowerHeightFiniteSemigroup` and
`PrimePowerHeightMatrixExponential`.

The Graph Sandwich relation is recorded independently of the selected operator.
For the transition, positive-time semigroup, and literal Mathlib exponential,
positive matrix support is exactly the certified relation. The normalized
Laplacian is a signed generator and is not treated as a nonnegative graph edge
weight. Candidate and admissible layers continue to cover the declared finite
vocabulary without becoming mathematical consequences.

The spectrum is complete only for the declared three-state finite operator.
The height is schedule time, not a zeta-zero ordinate. Nothing here constructs
an infinite-dimensional analytic heat semigroup, a Frobenius action, a
Hilbert--Polya operator, a Kim--Vu probabilistic coupling, Chowla cancellation,
a Riemann-hypothesis implication, or the proposed arithmetic compression bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Operator and time coordinates -/

/-- Operators retained by the finite height-time tensor. -/
inductive HeightTimeOperator where
  | transition
  | laplacian
  | finiteSemigroup
  | mathlibExponential
  deriving DecidableEq, Fintype, Repr

/-- Positive real time represented by a finite time coordinate. The value at
index `k` is `k + 1`, so zero time is intentionally excluded from this tensor. -/
def sampledTime
    {timeHorizon : Nat} (time : Fin (timeHorizon + 1)) : ℝ :=
  (time.val + 1 : Nat)

/-- Every selected tensor time is strictly positive. -/
theorem sampledTime_pos
    {timeHorizon : Nat} (time : Fin (timeHorizon + 1)) :
    0 < sampledTime time := by
  unfold sampledTime
  exact_mod_cast Nat.succ_pos time.val

/-- Matrix represented by one operator coordinate. -/
def operatorMatrixAt
    (operator : HeightTimeOperator)
    (height : Nat) (time : ℝ) : Matrix State State ℝ :=
  match operator with
  | .transition => transitionMatrixAt height
  | .laplacian => laplacianMatrixAt height
  | .finiteSemigroup => finiteSemigroupMatrixAt height time
  | .mathlibExponential => mathlibMatrixExponentialAt height time

/-- Spectral scalar represented by one operator coordinate. -/
def operatorSpectralValueAt
    (operator : HeightTimeOperator)
    (time : ℝ) (point : SpectralPoint) : ℝ :=
  match operator with
  | .transition => transitionEigenvalue point
  | .laplacian => laplacianEigenvalue point
  | .finiteSemigroup =>
      Real.exp (-time * laplacianEigenvalue point)
  | .mathlibExponential =>
      Real.exp (-time * laplacianEigenvalue point)

/-- Every retained operator acts diagonally on every mode in the complete finite
spectral enumeration. -/
theorem operatorMatrixAt_spectralMode
    (operator : HeightTimeOperator)
    (height : Nat) (time : ℝ) (mode : Fin 3) :
    matrixAction (operatorMatrixAt operator height time)
        (spectralModeVector height mode) =
      fun state =>
        operatorSpectralValueAt operator time
            (spectralPointOfMode mode) *
          spectralModeVector height mode state := by
  cases operator with
  | transition =>
      simpa [operatorMatrixAt, operatorSpectralValueAt,
        transitionActionAt] using
        transitionAction_spectralMode height mode
  | laplacian =>
      calc
        matrixAction (operatorMatrixAt .laplacian height time)
            (spectralModeVector height mode) =
          laplacianActionAt height
            (spectralModeVector height mode) := by
              simpa [operatorMatrixAt] using
                laplacianMatrix_action height
                  (spectralModeVector height mode)
        _ = fun state =>
            operatorSpectralValueAt .laplacian time
                (spectralPointOfMode mode) *
              spectralModeVector height mode state := by
              simpa [operatorSpectralValueAt] using
                laplacianAction_spectralMode height mode
  | finiteSemigroup =>
      calc
        matrixAction (operatorMatrixAt .finiteSemigroup height time)
            (spectralModeVector height mode) =
          finiteSemigroupActionAt height time
            (spectralModeVector height mode) := by
              simpa [operatorMatrixAt] using
                finiteSemigroupMatrix_action height time
                  (spectralModeVector height mode)
        _ = fun state =>
            operatorSpectralValueAt .finiteSemigroup time
                (spectralPointOfMode mode) *
              spectralModeVector height mode state := by
              simpa [operatorSpectralValueAt] using
                finiteSemigroupActionAt_spectralMode
                  height time mode
  | mathlibExponential =>
      simpa [operatorMatrixAt, operatorSpectralValueAt] using
        mathlibMatrixExponentialAt_mode height time mode

/-! ## Certified support and signed-generator controls -/

/-- Cross-class entries of the transition projection vanish. -/
theorem transitionMatrixAt_eq_zero_of_crossClass
    (height : Nat) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    transitionMatrixAt height target source = 0 := by
  change (schedule.realKernelAt height).transition source target = 0
  exact schedule.realTransition_eq_zero_of_class_ne
    height different

/-- A cross-class pair cannot be a diagonal identity entry. -/
theorem identityEntry_eq_zero_of_crossClass
    {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    identityEntry target source = 0 := by
  have target_ne_source : target ≠ source := by
    intro equal
    apply different
    simpa [equal]
  simp [identityEntry, target_ne_source]

/-- Cross-class entries of the closed finite semigroup vanish at every real
time. -/
theorem finiteSemigroupMatrixAt_eq_zero_of_crossClass
    (height : Nat) (time : ℝ) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    finiteSemigroupMatrixAt height time target source = 0 := by
  rw [finiteSemigroupMatrixAt_convex]
  simp [
    identityEntry_eq_zero_of_crossClass different,
    transitionMatrixAt_eq_zero_of_crossClass height different
  ]

/-- Cross-class entries of the literal Mathlib matrix exponential vanish at
every real time. -/
theorem mathlibMatrixExponentialAt_eq_zero_of_crossClass
    (height : Nat) (time : ℝ) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    mathlibMatrixExponentialAt height time target source = 0 := by
  rw [mathlibMatrixExponentialAt_eq_finiteSemigroup]
  exact finiteSemigroupMatrixAt_eq_zero_of_crossClass
    height time different

/-- Positive transition-matrix support is exactly the certified relation. -/
theorem transitionMatrixAt_pos_iff_certified
    (height : Nat) (source target : State) :
    0 < transitionMatrixAt height target source ↔
      layerRelationAt height .certified source target := by
  simpa [transitionMatrixAt, spectralHeightAt, layerRelationAt] using
    spectralHeightAt_positive_iff_certified
      height source target

/-- At positive time, closed-semigroup support is exactly the certified
relation. -/
theorem finiteSemigroupMatrixAt_pos_iff_certified
    (height : Nat) {time : ℝ}
    (time_positive : 0 < time)
    (source target : State) :
    0 < finiteSemigroupMatrixAt height time target source ↔
      layerRelationAt height .certified source target := by
  constructor
  · intro positive
    by_contra notCertified
    have different :
        family.classOf source ≠ family.classOf target := by
      intro sameClass
      apply notCertified
      exact (layerRelationAt_certified_iff
        height source target).2 sameClass
    have zeroEntry :=
      finiteSemigroupMatrixAt_eq_zero_of_crossClass
        height time different
    rw [zeroEntry] at positive
    exact (lt_irrefl 0) positive
  · intro certified
    rw [finiteSemigroupMatrixAt_convex]
    have transitionPositive :
        0 < transitionMatrixAt height target source :=
      (transitionMatrixAt_pos_iff_certified
        height source target).2 certified
    have decayStrict : decay time < 1 := by
      simpa [decay] using
        (Real.exp_lt_one_iff).2
          (neg_lt_zero.mpr time_positive)
    exact add_pos_of_nonneg_of_pos
      (mul_nonneg
        (decay_nonneg time)
        (identityEntry_nonnegative target source))
      (mul_pos
        (sub_pos.mpr decayStrict)
        transitionPositive)

/-- At positive time, literal Mathlib matrix-exponential support is exactly the
certified relation. -/
theorem mathlibMatrixExponentialAt_pos_iff_certified
    (height : Nat) {time : ℝ}
    (time_positive : 0 < time)
    (source target : State) :
    0 < mathlibMatrixExponentialAt height time target source ↔
      layerRelationAt height .certified source target := by
  rw [mathlibMatrixExponentialAt_eq_finiteSemigroup]
  exact finiteSemigroupMatrixAt_pos_iff_certified
    height time_positive source target

/-- The normalized Laplacian is a signed generator, not a nonnegative edge
weight. One explicit off-diagonal coefficient is negative. -/
theorem laplacianMatrixAt_has_negative_entry :
    laplacianMatrixAt 0 (1 : State) (2 : State) < 0 := by
  norm_num [
    laplacianMatrixAt,
    identityEntry,
    transitionMatrixAt_entry,
    firstFraction,
    secondFraction
  ]

/-! ## Tensor coordinates and canonical data -/

/-- One coordinate of a bounded height-time-layer-operator-mode tensor. -/
structure HeightTimeSpectralCoordinate
    (heightHorizon timeHorizon : Nat) where
  height : Fin (heightHorizon + 1)
  time : Fin (timeHorizon + 1)
  layer : ObservationLayer
  operator : HeightTimeOperator
  mode : Fin 3
  source : State
  target : State
  deriving DecidableEq, Fintype, Repr

/-- Canonical coordinate constructor. -/
def heightTimeSpectralCoordinate
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3)
    (source target : State) :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon where
  height := height
  time := time
  layer := layer
  operator := operator
  mode := mode
  source := source
  target := target

/-- Finite tensor retaining relation, operator, spectral-mode, and provenance
data at every selected coordinate. -/
structure FiniteHeightTimeSpectralTensor
    (heightHorizon timeHorizon : Nat) where
  relation :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → Prop
  matrixEntry :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → ℝ
  spectralValue :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → ℝ
  modeEntry :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → ℝ
  modeImageEntry :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → ℝ
  relationship :
    (coordinate : HeightTimeSpectralCoordinate
      heightHorizon timeHorizon) →
      RelationshipRecord coordinate.source coordinate.target
  proofProvenance :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → List SourceIdentity
  analogyProvenance :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → List SourceIdentity
  unresolvedSuppliers :
    HeightTimeSpectralCoordinate
      heightHorizon timeHorizon → List SourceIdentity

/-- Canonical finite tensor on all heights `0, ..., heightHorizon` and positive
integer times `1, ..., timeHorizon + 1`. -/
def heightTimeSpectralTensor
    (heightHorizon timeHorizon : Nat) :
    FiniteHeightTimeSpectralTensor
      heightHorizon timeHorizon where
  relation := fun coordinate =>
    layerRelationAt coordinate.height.val coordinate.layer
      coordinate.source coordinate.target
  matrixEntry := fun coordinate =>
    operatorMatrixAt coordinate.operator
        coordinate.height.val (sampledTime coordinate.time)
      coordinate.target coordinate.source
  spectralValue := fun coordinate =>
    operatorSpectralValueAt coordinate.operator
      (sampledTime coordinate.time)
      (spectralPointOfMode coordinate.mode)
  modeEntry := fun coordinate =>
    spectralModeVector coordinate.height.val
      coordinate.mode coordinate.target
  modeImageEntry := fun coordinate =>
    matrixAction
        (operatorMatrixAt coordinate.operator
          coordinate.height.val (sampledTime coordinate.time))
        (spectralModeVector coordinate.height.val coordinate.mode)
      coordinate.target
  relationship := fun coordinate =>
    layerRecordAt coordinate.height.val coordinate.layer
      coordinate.source coordinate.target
  proofProvenance := fun _ => [
    heightTensorSource,
    finiteSemigroupSource,
    mathlibMatrixExponentialSource,
    profileScheduleSource,
    certifiedSearchSource
  ]
  analogyProvenance := fun _ => [
    linearChainSpectrumAnalogy,
    hilbertPolyaAnalogy
  ]
  unresolvedSuppliers := fun _ => [
    analyticHeatSemigroupSupplier,
    chowlaPositiveWeightSupplier
  ]

/-- Explicit complete coordinate inventory for the selected finite horizons. -/
def heightTimeSpectralCoordinates
    (heightHorizon timeHorizon : Nat) :
    Finset (HeightTimeSpectralCoordinate
      heightHorizon timeHorizon) :=
  Finset.univ

@[simp]
theorem mem_heightTimeSpectralCoordinates
    (heightHorizon timeHorizon : Nat)
    (coordinate : HeightTimeSpectralCoordinate
      heightHorizon timeHorizon) :
    coordinate ∈
      heightTimeSpectralCoordinates
        heightHorizon timeHorizon := by
  simp [heightTimeSpectralCoordinates]

/-! ## Tensor laws -/

/-- Certified relation membership is exactly same collision class at every
height, time, operator, and mode coordinate. -/
theorem heightTimeSpectralTensor_certified_iff
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (operator : HeightTimeOperator) (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified operator mode source target) ↔
      family.classOf source = family.classOf target := by
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using
    layerRelationAt_certified_iff
      height.val source target

/-- Candidate and admissible coordinates cover every ordered pair in the
selected finite vocabulary. -/
theorem heightTimeSpectralTensor_candidate_admissible
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (operator : HeightTimeOperator) (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .candidate operator mode source target) ∧
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .admissible operator mode source target) := by
  constructor
  · simpa [heightTimeSpectralTensor,
      heightTimeSpectralCoordinate] using
      layerRelationAt_candidate
        height.val source target
  · simpa [heightTimeSpectralTensor,
      heightTimeSpectralCoordinate] using
      layerRelationAt_admissible
        height.val source target

/-- The stored mode image is exactly the stored spectral scalar times the
stored mode coordinate for every operator. -/
theorem heightTimeSpectralTensor_mode_equation
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator) (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).modeImageEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer operator mode source target) =
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer operator mode source target) *
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).modeEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer operator mode source target) := by
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using
    congrFun
      (operatorMatrixAt_spectralMode
        operator height.val (sampledTime time) mode)
      target

/-- Transition-operator tensor support is exactly the certified relation. -/
theorem heightTimeSpectralTensor_transition_support
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (mode : Fin 3) (source target : State) :
    0 < (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .transition mode source target) ↔
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .transition mode source target) := by
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using
    transitionMatrixAt_pos_iff_certified
      height.val source target

/-- Positive sampled-time closed-semigroup tensor support is exactly the
certified relation. -/
theorem heightTimeSpectralTensor_semigroup_support
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (mode : Fin 3) (source target : State) :
    0 < (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .finiteSemigroup mode source target) ↔
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .finiteSemigroup mode source target) := by
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using
    finiteSemigroupMatrixAt_pos_iff_certified
      height.val (sampledTime_pos time) source target

/-- Positive sampled-time literal Mathlib exponential support is exactly the
certified relation. -/
theorem heightTimeSpectralTensor_mathlib_support
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (mode : Fin 3) (source target : State) :
    0 < (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .mathlibExponential mode source target) ↔
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .mathlibExponential mode source target) := by
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using
    mathlibMatrixExponentialAt_pos_iff_certified
      height.val (sampledTime_pos time) source target

/-- Literal Mathlib exponential entries equal the closed finite-semigroup
entries at every tensor coordinate. -/
theorem heightTimeSpectralTensor_mathlib_eq_semigroup_entry
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer) (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer .mathlibExponential mode source target) =
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer .finiteSemigroup mode source target) := by
  have matrixEquality :=
    mathlibMatrixExponentialAt_eq_finiteSemigroup
      height.val (sampledTime time)
  have entryEquality :=
    congrArg
      (fun matrix : Matrix State State ℝ =>
        matrix target source)
      matrixEquality
  simpa [heightTimeSpectralTensor,
    heightTimeSpectralCoordinate] using entryEquality

/-- The finite-semigroup and literal-exponential spectral scalars agree
definitionally. -/
theorem heightTimeSpectralTensor_mathlib_eq_semigroup_value
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (layer : ObservationLayer) (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer .mathlibExponential mode source target) =
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time layer .finiteSemigroup mode source target) := by
  rfl

/-- Cross-class candidate/admissible scope remains unresolved and receives zero
literal-exponential weight. -/
theorem heightTimeSpectralTensor_crossClass_control
    (heightHorizon timeHorizon : Nat)
    (height : Fin (heightHorizon + 1))
    (time : Fin (timeHorizon + 1))
    (mode : Fin 3) {source target : State}
    (different :
      family.classOf source ≠ family.classOf target) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .candidate .mathlibExponential mode source target) ∧
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .admissible .mathlibExponential mode source target) ∧
    ¬ (heightTimeSpectralTensor
      heightHorizon timeHorizon).relation
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .certified .mathlibExponential mode source target) ∧
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .candidate .mathlibExponential mode source target) = 0 ∧
    (((heightTimeSpectralTensor
      heightHorizon timeHorizon).relationship
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height time .candidate .mathlibExponential mode source target)).relationship =
          RelationshipClass.unresolvedSupplier) := by
  have scope :=
    heightTimeSpectralTensor_candidate_admissible
      heightHorizon timeHorizon height time
      .mathlibExponential mode source target
  refine ⟨scope.1, scope.2, ?_, ?_, ?_⟩
  · intro certified
    apply different
    exact (heightTimeSpectralTensor_certified_iff
      heightHorizon timeHorizon height time
      .mathlibExponential mode source target).1 certified
  · simpa [heightTimeSpectralTensor,
      heightTimeSpectralCoordinate] using
      mathlibMatrixExponentialAt_eq_zero_of_crossClass
        height.val (sampledTime time) different
  · simpa [heightTimeSpectralTensor,
      heightTimeSpectralCoordinate] using
      layerRecordAt_unresolved_of_crossClass
        height.val .candidate different

/-- Mode fibres retain the complete multiplicities `2` and `1` independently
of height, time, layer, and operator. -/
theorem heightTimeSpectralTensor_multiplicity_complete
    (point : SpectralPoint) :
    (Finset.univ.filter
      (fun mode : Fin 3 =>
        spectralPointOfMode mode = point)).card =
      spectralMultiplicity point :=
  spectralPointOfMode_fiber_card point

/-! ## Bounded certificate -/

/-- Complete bounded certificate for the canonical height-time spectral tensor. -/
structure HeightTimeSpectralTensorCertificate
    (heightHorizon timeHorizon : Nat) : Prop where
  coordinateCoverage :
    ∀ coordinate : HeightTimeSpectralCoordinate
      heightHorizon timeHorizon,
      coordinate ∈
        heightTimeSpectralCoordinates
          heightHorizon timeHorizon
  certifiedRelation :
    ∀ height time operator mode source target,
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified operator mode source target) ↔
        family.classOf source = family.classOf target
  candidateAdmissibleCoverage :
    ∀ height time operator mode source target,
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .candidate operator mode source target) ∧
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .admissible operator mode source target)
  transitionSupport :
    ∀ height time mode source target,
      0 < (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .transition mode source target) ↔
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .transition mode source target)
  semigroupSupport :
    ∀ height time mode source target,
      0 < (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .finiteSemigroup mode source target) ↔
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .finiteSemigroup mode source target)
  mathlibSupport :
    ∀ height time mode source target,
      0 < (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .mathlibExponential mode source target) ↔
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).relation
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time .certified .mathlibExponential mode source target)
  modeEquation :
    ∀ height time layer operator mode source target,
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).modeImageEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time layer operator mode source target) =
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).spectralValue
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time layer operator mode source target) *
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).modeEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time layer operator mode source target)
  exponentialClosedForm :
    ∀ height time layer mode source target,
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time layer .mathlibExponential mode source target) =
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height time layer .finiteSemigroup mode source target)
  multiplicityComplete :
    ∀ point,
      (Finset.univ.filter
        (fun mode : Fin 3 =>
          spectralPointOfMode mode = point)).card =
        spectralMultiplicity point
  signedLaplacianControl :
    laplacianMatrixAt 0 (1 : State) (2 : State) < 0

/-- The canonical tensor satisfies complete finite coordinate coverage, exact
certified support for every nonnegative diffusion operator, complete mode
observations, literal-exponential identification, and the signed-Laplacian
negative control. -/
theorem canonicalHeightTimeSpectralTensorCertificate
    (heightHorizon timeHorizon : Nat) :
    HeightTimeSpectralTensorCertificate
      heightHorizon timeHorizon where
  coordinateCoverage := by
    intro coordinate
    exact mem_heightTimeSpectralCoordinates
      heightHorizon timeHorizon coordinate
  certifiedRelation := by
    intro height time operator mode source target
    exact heightTimeSpectralTensor_certified_iff
      heightHorizon timeHorizon height time
      operator mode source target
  candidateAdmissibleCoverage := by
    intro height time operator mode source target
    exact heightTimeSpectralTensor_candidate_admissible
      heightHorizon timeHorizon height time
      operator mode source target
  transitionSupport := by
    intro height time mode source target
    exact heightTimeSpectralTensor_transition_support
      heightHorizon timeHorizon height time
      mode source target
  semigroupSupport := by
    intro height time mode source target
    exact heightTimeSpectralTensor_semigroup_support
      heightHorizon timeHorizon height time
      mode source target
  mathlibSupport := by
    intro height time mode source target
    exact heightTimeSpectralTensor_mathlib_support
      heightHorizon timeHorizon height time
      mode source target
  modeEquation := by
    intro height time layer operator mode source target
    exact heightTimeSpectralTensor_mode_equation
      heightHorizon timeHorizon height time
      layer operator mode source target
  exponentialClosedForm := by
    intro height time layer mode source target
    exact heightTimeSpectralTensor_mathlib_eq_semigroup_entry
      heightHorizon timeHorizon height time
      layer mode source target
  multiplicityComplete :=
    heightTimeSpectralTensor_multiplicity_complete
  signedLaplacianControl :=
    laplacianMatrixAt_has_negative_entry

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
