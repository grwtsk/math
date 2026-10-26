/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightObservationTensor
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Complete finite spectra for prime-power height diffusion

This module gives an explicit finite matrix representation for every certified
height slice of the alternating prime-power diffusion system on the states
`2`, `3`, and `3^2`.

The source-to-target stochastic kernel is represented in target-row/source-column
orientation. Its spectrum is completely enumerated by three modes:

* an anchor mode at the singleton `2`-class;
* the normalized positive profile mode in the `3`-power class;
* the signed collision mode distinguishing `3` from `3^2`.

The transition spectrum is `1` with multiplicity two and `0` with multiplicity
one. The normalized discrete Laplacian `I - P_h` has spectrum `0` with
multiplicity two and `1` with multiplicity one. A reconstruction theorem proves
that the three supplied modes span every real state vector, so the listed finite
spectrum is complete for the declared three-state operator.

The even and odd height matrices are distinct, despite having the same certified
support. Their spectra are compared only through an explicit state-swap
conjugacy. No adjacency inclusion, Graph Sandwich inclusion, or common support
is used to infer eigenvalue ordering.

The result is finite and algebraic. It does not construct an analytic heat
semigroup, identify schedule height with a zeta-zero ordinate, supply a
Hilbert--Polya operator, derive a Kim--Vu probabilistic comparison, import
Chowla cancellation, prove RH, or establish the proposed compression bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion
open GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyProfileSchedule
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Explicit matrix representation -/

/-- Normalized target fraction of the state `3` at one discrete height. -/
def firstFraction (height : Nat) : ℝ :=
  if height % 2 = 0 then (1 / 3 : ℝ) else 2 / 3

/-- Normalized target fraction of the state `3^2` at one discrete height. -/
def secondFraction (height : Nat) : ℝ :=
  if height % 2 = 0 then (2 / 3 : ℝ) else 1 / 3

@[simp]
theorem firstFraction_add_secondFraction (height : Nat) :
    firstFraction height + secondFraction height = 1 := by
  by_cases evenHeight : height % 2 = 0 <;>
    norm_num [firstFraction, secondFraction, evenHeight]

theorem firstFraction_pos (height : Nat) :
    0 < firstFraction height := by
  by_cases evenHeight : height % 2 = 0 <;>
    norm_num [firstFraction, evenHeight]

theorem secondFraction_pos (height : Nat) :
    0 < secondFraction height := by
  by_cases evenHeight : height % 2 = 0 <;>
    norm_num [secondFraction, evenHeight]

/-- Target-row/source-column matrix of the actual real search kernel. -/
def transitionMatrixAt (height : Nat) : Matrix State State ℝ :=
  fun target source =>
    (schedule.realKernelAt height).transition source target

/-- Entrywise form of the three-state transition matrix. -/
@[simp]
theorem transitionMatrixAt_entry
    (height : Nat) (target source : State) :
    transitionMatrixAt height target source =
      if target = 0 then
        if source = 0 then 1 else 0
      else if source = 0 then 0
      else if target = 1 then firstFraction height
      else secondFraction height := by
  fin_cases target <;> fin_cases source <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        transitionMatrixAt,
        ClassProfileSchedule.realKernelAt,
        GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion.ClassWeightProfile.searchKernel,
        GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion.ClassWeightProfile.classLocalSieve_normalized_transition,
        GRWTSK.Algebra.KTheory.FinitePrimePowerFamilyClassDiffusion.ClassWeightProfile.classMass,
        schedule, profileAt, targetWeight, family,
        UnequalFiberExample.family, UnequalFiberExample.classOf,
        firstFraction, secondFraction, evenHeight, Fin.sum_univ_three
      ]

/-- Identity-matrix coefficient on the finite state carrier. -/
def identityEntry (target source : State) : ℝ :=
  if target = source then 1 else 0

/-- Normalized discrete Laplacian `I - P_h`. -/
def laplacianMatrixAt (height : Nat) : Matrix State State ℝ :=
  fun target source =>
    identityEntry target source - transitionMatrixAt height target source

/-- Action of a target-row/source-column matrix on a state vector. -/
def matrixAction
    (matrix : Matrix State State ℝ)
    (vector : State → ℝ) (target : State) : ℝ :=
  ∑ source : State, vector source * matrix target source

/-- Transition action represented by `transitionMatrixAt`. -/
def transitionActionAt
    (height : Nat) (vector : State → ℝ) : State → ℝ :=
  matrixAction (transitionMatrixAt height) vector

/-- Laplacian action represented by `laplacianMatrixAt`. -/
def laplacianActionAt
    (height : Nat) (vector : State → ℝ) : State → ℝ :=
  fun target => vector target - transitionActionAt height vector target

/-- The matrix action is exactly the pre-existing real kernel step. -/
theorem transitionActionAt_eq_kernelStep
    (height : Nat) (vector : State → ℝ) (target : State) :
    transitionActionAt height vector target =
      (schedule.realKernelAt height).step vector target := by
  simp [
    transitionActionAt, matrixAction, transitionMatrixAt,
    FiniteSieveMarkovKernel.step,
    ClassProfileSchedule.realKernelAt,
    GRWTSK.Algebra.KTheory.FinitePrimePowerFamilySearchDiffusion.ClassWeightProfile.searchKernel
  ]

/-- Exact coordinate formula for one transition action. -/
theorem transitionActionAt_formula
    (height : Nat) (vector : State → ℝ) :
    transitionActionAt height vector =
      fun target =>
        if target = 0 then vector 0
        else if target = 1 then
          firstFraction height * (vector 1 + vector 2)
        else
          secondFraction height * (vector 1 + vector 2) := by
  funext target
  fin_cases target <;>
    simp [
      transitionActionAt, matrixAction, transitionMatrixAt_entry,
      Fin.sum_univ_three
    ] <;> ring

/-- The entrywise Laplacian matrix represents `vector - P_h vector`. -/
theorem laplacianMatrix_action
    (height : Nat) (vector : State → ℝ) :
    matrixAction (laplacianMatrixAt height) vector =
      laplacianActionAt height vector := by
  funext target
  fin_cases target <;>
    simp [
      matrixAction, laplacianMatrixAt, identityEntry,
      laplacianActionAt, transitionActionAt,
      transitionMatrixAt_entry, Fin.sum_univ_three
    ] <;> ring

/-! ## Explicit modes, eigenvalues, and reconstruction -/

/-- The two distinct spectral points of the transition/Laplacian pair. -/
inductive SpectralPoint where
  | fixed
  | collision
  deriving DecidableEq, Fintype, Repr

/-- Transition eigenvalue attached to one spectral point. -/
def transitionEigenvalue : SpectralPoint → ℝ
  | .fixed => 1
  | .collision => 0

/-- Normalized-Laplacian eigenvalue attached to one spectral point. -/
def laplacianEigenvalue : SpectralPoint → ℝ
  | .fixed => 0
  | .collision => 1

/-- Algebraic multiplicity in the declared three-mode enumeration. -/
def spectralMultiplicity : SpectralPoint → Nat
  | .fixed => 2
  | .collision => 1

/-- Mode zero is the singleton-class anchor. -/
def anchorModeVector (state : State) : ℝ :=
  if state = 0 then 1 else 0

/-- Mode one is the positive normalized profile in the nontrivial class. -/
def profileModeVector (height : Nat) (state : State) : ℝ :=
  if state = 0 then 0
  else if state = 1 then firstFraction height
  else secondFraction height

/-- Mode two is the signed exponent-sensitive collision direction. -/
def collisionModeVector (state : State) : ℝ :=
  if state = 0 then 0
  else if state = 1 then 1
  else -1

/-- Spectral point represented by each of the three finite modes. -/
def spectralPointOfMode (mode : Fin 3) : SpectralPoint :=
  if mode = 2 then .collision else .fixed

/-- Eigenvector attached to each finite mode. -/
def spectralModeVector
    (height : Nat) (mode : Fin 3) : State → ℝ :=
  if mode = 0 then anchorModeVector
  else if mode = 1 then profileModeVector height
  else collisionModeVector

/-- The finite mode fibres realize the declared algebraic multiplicities. -/
theorem spectralPointOfMode_fiber_card
    (point : SpectralPoint) :
    (Finset.univ.filter
      (fun mode : Fin 3 => spectralPointOfMode mode = point)).card =
        spectralMultiplicity point := by
  fin_cases point <;> decide

/-- Each listed mode is a nonzero state vector. -/
theorem spectralModeVector_ne_zero
    (height : Nat) (mode : Fin 3) :
    spectralModeVector height mode ≠ fun _ => 0 := by
  fin_cases mode
  · intro zeroVector
    have atAnchor := congrFun zeroVector (0 : State)
    norm_num [
      spectralModeVector, anchorModeVector
    ] at atAnchor
  · intro zeroVector
    have atFirst : firstFraction height = 0 := by
      simpa [
        spectralModeVector, profileModeVector
      ] using congrFun zeroVector (1 : State)
    exact (ne_of_gt (firstFraction_pos height)) atFirst
  · intro zeroVector
    have atCollision := congrFun zeroVector (1 : State)
    norm_num [
      spectralModeVector, collisionModeVector
    ] at atCollision

/-- The anchor vector is a transition eigenvector with eigenvalue one. -/
theorem transitionAction_anchor
    (height : Nat) :
    transitionActionAt height anchorModeVector =
      anchorModeVector := by
  rw [transitionActionAt_formula]
  funext target
  fin_cases target <;>
    simp [anchorModeVector]

/-- The normalized profile vector is a transition eigenvector with eigenvalue one. -/
theorem transitionAction_profile
    (height : Nat) :
    transitionActionAt height (profileModeVector height) =
      profileModeVector height := by
  rw [transitionActionAt_formula]
  funext target
  fin_cases target <;>
    simp [
      profileModeVector,
      firstFraction_add_secondFraction
    ]

/-- The signed collision vector is annihilated by the transition operator. -/
theorem transitionAction_collision
    (height : Nat) :
    transitionActionAt height collisionModeVector =
      fun _ => 0 := by
  rw [transitionActionAt_formula]
  funext target
  fin_cases target <;>
    simp [collisionModeVector]

/-- Every declared mode satisfies its transition eigenvalue equation. -/
theorem transitionAction_spectralMode
    (height : Nat) (mode : Fin 3) :
    transitionActionAt height (spectralModeVector height mode) =
      fun state =>
        transitionEigenvalue (spectralPointOfMode mode) *
          spectralModeVector height mode state := by
  fin_cases mode
  · simpa [
      spectralModeVector, spectralPointOfMode, transitionEigenvalue
    ] using transitionAction_anchor height
  · simpa [
      spectralModeVector, spectralPointOfMode, transitionEigenvalue
    ] using transitionAction_profile height
  · simpa [
      spectralModeVector, spectralPointOfMode, transitionEigenvalue
    ] using transitionAction_collision height

/-- Every declared mode satisfies its normalized-Laplacian eigenvalue equation. -/
theorem laplacianAction_spectralMode
    (height : Nat) (mode : Fin 3) :
    laplacianActionAt height (spectralModeVector height mode) =
      fun state =>
        laplacianEigenvalue (spectralPointOfMode mode) *
          spectralModeVector height mode state := by
  fin_cases mode
  · funext state
    simp [
      laplacianActionAt, spectralModeVector, spectralPointOfMode,
      laplacianEigenvalue, transitionAction_anchor
    ]
  · funext state
    simp [
      laplacianActionAt, spectralModeVector, spectralPointOfMode,
      laplacianEigenvalue, transitionAction_profile
    ]
  · funext state
    simp [
      laplacianActionAt, spectralModeVector, spectralPointOfMode,
      laplacianEigenvalue, transitionAction_collision
    ]

/-- Coordinates of an arbitrary state vector in the three supplied modes. -/
def spectralCoefficient
    (height : Nat) (vector : State → ℝ) (mode : Fin 3) : ℝ :=
  if mode = 0 then vector 0
  else if mode = 1 then vector 1 + vector 2
  else
    secondFraction height * vector 1 -
      firstFraction height * vector 2

/-- Reconstruction from the complete three-mode enumeration. -/
def spectralReconstruction
    (height : Nat) (vector : State → ℝ) : State → ℝ :=
  fun state =>
    ∑ mode : Fin 3,
      spectralCoefficient height vector mode *
        spectralModeVector height mode state

/-- The three supplied eigenmodes span the full real state space. -/
theorem spectralReconstruction_eq
    (height : Nat) (vector : State → ℝ) :
    spectralReconstruction height vector = vector := by
  funext state
  fin_cases state <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        spectralReconstruction, spectralCoefficient, spectralModeVector,
        anchorModeVector, profileModeVector, collisionModeVector,
        firstFraction, secondFraction, evenHeight, Fin.sum_univ_three
      ] <;> ring

/-! ## Complete finite spectral package -/

/-- Immutable source identity for the finite height tensor and certified support
used by the present matrix representation. -/
def heightTensorSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightObservationTensor"
  locator :=
    "heightTensor; spectralWeight_positive_iff_soficCertifiedEdge; canonicalHeightTensorSoficCertificate"
  repository := some "grwtsk/math"
  commit := some "bff7dcee304f1bd86bd7dff5fc4051813b3911c5"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightObservationTensor.lean"
  blob := some "d0a11b287ba49484eda95186477b72d725950e73"

/-- Nechaev--Polovnikov supplies finite linear-chain spectra and weighted
spectral motivation only; it does not supply this three-state spectrum. -/
def linearChainSpectrumAnalogy : SourceIdentity where
  kind := .arXiv
  identifier := "arXiv:1702.06757v2"
  locator :=
    "Equation (7) and the random-Laplacian discussion: finite chain spectra and popcorn spectral density; analogy only"
  repository := none
  commit := none
  path := none
  blob := none

/-- Bombieri's Hilbert--Polya discussion is retained as analogy, not as a
classical spectral realization for this finite matrix. -/
def hilbertPolyaAnalogy : SourceIdentity where
  kind := .stableUrl
  identifier := "Bombieri, Problems of the Millennium: the Riemann Hypothesis"
  locator :=
    "Hilbert--Polya and Frobenius/index-theorem questions; analogy and unresolved classical supplier only"
  repository := none
  commit := none
  path := none
  blob := none

/-- Open analytic boundary beyond the finite idempotent matrix. -/
def analyticHeatSemigroupSupplier : SourceIdentity where
  kind := .unresolved
  identifier := "analytic heat-semigroup realization"
  locator :=
    "No proved identification of the finite normalized Laplacian with an analytic operator exp(-tL), zeta-zero operator, or Frobenius action"
  repository := some "grwtsk/math"
  commit := none
  path := none
  blob := none

/-- Complete finite spectrum at one declared schedule height. -/
structure CompleteHeightSpectrum (height : Nat) where
  transitionMatrix : Matrix State State ℝ
  laplacianMatrix : Matrix State State ℝ
  pointOfMode : Fin 3 → SpectralPoint
  transitionValue : SpectralPoint → ℝ
  laplacianValue : SpectralPoint → ℝ
  multiplicity : SpectralPoint → Nat
  modeVector : Fin 3 → State → ℝ
  transitionMatrix_spec :
    transitionMatrix = transitionMatrixAt height
  laplacianMatrix_spec :
    laplacianMatrix = laplacianMatrixAt height
  pointOfMode_spec :
    pointOfMode = spectralPointOfMode
  transitionValue_spec :
    transitionValue = transitionEigenvalue
  laplacianValue_spec :
    laplacianValue = laplacianEigenvalue
  multiplicity_spec :
    multiplicity = spectralMultiplicity
  modeVector_spec :
    modeVector = spectralModeVector height
  mode_nonzero :
    ∀ mode, modeVector mode ≠ fun _ => 0
  transition_eigen :
    ∀ mode,
      matrixAction transitionMatrix (modeVector mode) =
        fun state =>
          transitionValue (pointOfMode mode) * modeVector mode state
  laplacian_eigen :
    ∀ mode,
      matrixAction laplacianMatrix (modeVector mode) =
        fun state =>
          laplacianValue (pointOfMode mode) * modeVector mode state
  multiplicity_complete :
    ∀ point,
      (Finset.univ.filter
        (fun mode : Fin 3 => pointOfMode mode = point)).card =
          multiplicity point
  reconstruction :
    ∀ vector,
      spectralReconstruction height vector = vector
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Construct the complete finite spectrum at every discrete height. -/
def completeSpectrumAt
    (height : Nat) : CompleteHeightSpectrum height where
  transitionMatrix := transitionMatrixAt height
  laplacianMatrix := laplacianMatrixAt height
  pointOfMode := spectralPointOfMode
  transitionValue := transitionEigenvalue
  laplacianValue := laplacianEigenvalue
  multiplicity := spectralMultiplicity
  modeVector := spectralModeVector height
  transitionMatrix_spec := rfl
  laplacianMatrix_spec := rfl
  pointOfMode_spec := rfl
  transitionValue_spec := rfl
  laplacianValue_spec := rfl
  multiplicity_spec := rfl
  modeVector_spec := rfl
  mode_nonzero :=
    spectralModeVector_ne_zero height
  transition_eigen := by
    intro mode
    exact transitionAction_spectralMode height mode
  laplacian_eigen := by
    intro mode
    rw [laplacianMatrix_action]
    exact laplacianAction_spectralMode height mode
  multiplicity_complete :=
    spectralPointOfMode_fiber_card
  reconstruction :=
    spectralReconstruction_eq height
  proofProvenance :=
    [heightTensorSource, profileScheduleSource, certifiedSearchSource]
  analogyProvenance :=
    [linearChainSpectrumAnalogy, hilbertPolyaAnalogy]
  unresolvedSuppliers :=
    [analyticHeatSemigroupSupplier, chowlaPositiveWeightSupplier]

/-- The transition spectrum consists of `1` with multiplicity two and `0` with
multiplicity one. -/
theorem completeSpectrumAt_transition_values
    (height : Nat) :
    (completeSpectrumAt height).transitionValue .fixed = 1 ∧
      (completeSpectrumAt height).multiplicity .fixed = 2 ∧
      (completeSpectrumAt height).transitionValue .collision = 0 ∧
      (completeSpectrumAt height).multiplicity .collision = 1 := by
  norm_num [
    completeSpectrumAt, transitionEigenvalue, spectralMultiplicity
  ]

/-- The normalized-Laplacian spectrum consists of `0` with multiplicity two and
`1` with multiplicity one. -/
theorem completeSpectrumAt_laplacian_values
    (height : Nat) :
    (completeSpectrumAt height).laplacianValue .fixed = 0 ∧
      (completeSpectrumAt height).multiplicity .fixed = 2 ∧
      (completeSpectrumAt height).laplacianValue .collision = 1 ∧
      (completeSpectrumAt height).multiplicity .collision = 1 := by
  norm_num [
    completeSpectrumAt, laplacianEigenvalue, spectralMultiplicity
  ]

/-! ## Explicit conjugacy and comparison boundary -/

/-- Swap the two states inside the nontrivial radical-collision class. -/
def swapState (state : State) : State :=
  if state = 0 then 0
  else if state = 1 then 2
  else 1

@[simp]
theorem swapState_involutive (state : State) :
    swapState (swapState state) = state := by
  fin_cases state <;> simp [swapState]

/-- Coordinate permutation induced by `swapState`. -/
def swapVector (vector : State → ℝ) : State → ℝ :=
  fun state => vector (swapState state)

@[simp]
theorem swapVector_involutive (vector : State → ℝ) :
    swapVector (swapVector vector) = vector := by
  funext state
  simp [swapVector]

/-- A source-bound conjugacy certificate between two finite matrices. -/
structure MatrixConjugacy
    (first second : Matrix State State ℝ) where
  forward : (State → ℝ) → State → ℝ
  backward : (State → ℝ) → State → ℝ
  forward_backward : ∀ vector, forward (backward vector) = vector
  backward_forward : ∀ vector, backward (forward vector) = vector
  backward_zero : backward (fun _ => 0) = fun _ => 0
  forward_smul :
    ∀ scalar vector,
      forward (fun state => scalar * vector state) =
        fun state => scalar * forward vector state
  intertwines :
    ∀ vector,
      matrixAction second (forward vector) =
        forward (matrixAction first vector)

/-- Nonzero eigenvectors transport with the same eigenvalue across an explicit
matrix conjugacy. -/
theorem MatrixConjugacy.transport_eigenvector
    {first second : Matrix State State ℝ}
    (conjugacy : MatrixConjugacy first second)
    {eigenvalue : ℝ} {vector : State → ℝ}
    (vector_nonzero : vector ≠ fun _ => 0)
    (eigen :
      matrixAction first vector =
        fun state => eigenvalue * vector state) :
    conjugacy.forward vector ≠ fun _ => 0 ∧
      matrixAction second (conjugacy.forward vector) =
        fun state => eigenvalue * conjugacy.forward vector state := by
  constructor
  · intro forward_zero
    apply vector_nonzero
    calc
      vector = conjugacy.backward (conjugacy.forward vector) :=
        (conjugacy.backward_forward vector).symm
      _ = conjugacy.backward (fun _ => 0) :=
        congrArg conjugacy.backward forward_zero
      _ = fun _ => 0 := conjugacy.backward_zero
  · rw [conjugacy.intertwines, eigen, conjugacy.forward_smul]

/-- The height-zero and height-one transition matrices are conjugate by the
state swap. This is the explicit comparison supplier. -/
def zeroOneTransitionConjugacy :
    MatrixConjugacy
      (transitionMatrixAt 0) (transitionMatrixAt 1) where
  forward := swapVector
  backward := swapVector
  forward_backward := swapVector_involutive
  backward_forward := swapVector_involutive
  backward_zero := by
    funext state
    simp [swapVector]
  forward_smul := by
    intro scalar vector
    funext state
    rfl
  intertwines := by
    intro vector
    funext target
    fin_cases target <;>
      simp [
        matrixAction, transitionMatrixAt_entry,
        swapVector, swapState, firstFraction, secondFraction,
        Fin.sum_univ_three
      ] <;> ring

/-- The height-zero and height-one Laplacians are conjugate by the same swap. -/
def zeroOneLaplacianConjugacy :
    MatrixConjugacy
      (laplacianMatrixAt 0) (laplacianMatrixAt 1) where
  forward := swapVector
  backward := swapVector
  forward_backward := swapVector_involutive
  backward_forward := swapVector_involutive
  backward_zero := by
    funext state
    simp [swapVector]
  forward_smul := by
    intro scalar vector
    funext state
    rfl
  intertwines := by
    intro vector
    rw [laplacianMatrix_action, laplacianMatrix_action]
    funext target
    fin_cases target <;>
      simp [
        laplacianActionAt, transitionActionAt_formula,
        swapVector, swapState, firstFraction, secondFraction
      ] <;> ring

/-- Heights with the same parity have exactly equal transition matrices. -/
theorem transitionMatrixAt_eq_of_mod_two_eq
    {firstHeight secondHeight : Nat}
    (sameParity : firstHeight % 2 = secondHeight % 2) :
    transitionMatrixAt firstHeight =
      transitionMatrixAt secondHeight := by
  ext target source
  rw [transitionMatrixAt_entry, transitionMatrixAt_entry]
  by_cases firstEven : firstHeight % 2 = 0
  · have secondEven : secondHeight % 2 = 0 := by
      rw [← sameParity]
      exact firstEven
    simp [
      firstFraction, secondFraction, firstEven, secondEven
    ]
  · have secondEven : secondHeight % 2 ≠ 0 := by
      intro secondZero
      apply firstEven
      rw [sameParity, secondZero]
    simp [
      firstFraction, secondFraction, firstEven, secondEven
    ]

/-- The even and odd matrices are genuinely different. -/
theorem transitionMatrixAt_zero_ne_one :
    transitionMatrixAt 0 ≠ transitionMatrixAt 1 := by
  intro equalMatrices
  have entryEqual :=
    congrArg
      (fun matrix : Matrix State State ℝ =>
        matrix (1 : State) (1 : State))
      equalMatrices
  norm_num [
    transitionMatrixAt_entry, firstFraction, secondFraction
  ] at entryEqual

/-- The certified support is unchanged between heights zero and one. -/
theorem certifiedSupport_zero_iff_one
    (source target : State) :
    layerRelationAt 0 .certified source target ↔
      layerRelationAt 1 .certified source target := by
  simp [layerRelationAt_certified_iff]

/-- Equal certified support does not imply equality of weighted operators.
Spectral comparison above uses explicit conjugacy instead. -/
theorem same_certified_support_but_distinct_matrices :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      transitionMatrixAt 0 ≠ transitionMatrixAt 1 := by
  exact ⟨certifiedSupport_zero_iff_one,
    transitionMatrixAt_zero_ne_one⟩

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
