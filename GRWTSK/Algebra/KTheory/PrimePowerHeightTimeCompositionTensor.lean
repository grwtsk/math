/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightTimeSpectralTensor
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Finite time composition for prime-power height diffusion

This module adds an explicitly bounded time-composition interface to the finite
height-time spectral tensor.

A composition is represented only when the two positive sampled times and their
sum are all members of the same declared finite time inventory. For every such
witness, the transition projection, normalized Laplacian, closed finite
semigroup, and literal Mathlib matrix exponential satisfy coordinatewise matrix
composition. Their complete finite spectral values multiply accordingly.

Height comparison is kept separate. Equal parity gives literal operator
equality. Heights zero and one are compared by an explicit state-swap
conjugacy. Common certified support alone is retained as an insufficient
operator-equality supplier.

The selected time values are positive integers. No closure of an arbitrary
finite sample under addition is assumed. The normalized Laplacian remains a
signed idempotent generator, not a stochastic edge kernel.

The construction remains finite and algebraic. It does not identify height with
a zeta-zero ordinate, construct an infinite-dimensional analytic semigroup,
supply a Frobenius or Hilbert--Polya operator, import Kim--Vu containment or
Chowla cancellation, prove RH, or establish an arithmetic compression estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Explicit selected-time composition witnesses -/

/-- A source-bound witness that two selected positive times and their sum all
belong to one declared finite time inventory. -/
structure SelectedTimeComposition (timeHorizon : Nat) where
  first : Fin (timeHorizon + 1)
  second : Fin (timeHorizon + 1)
  total : Fin (timeHorizon + 1)
  total_spec :
    sampledTime total =
      sampledTime first + sampledTime second

/-- Construct a selected-time composition from the exact index bound. Because
sample index `k` represents time `k + 1`, the sum index is
`first.val + second.val + 1`. -/
def selectedTimeCompositionOfBound
    {timeHorizon : Nat}
    (first second : Fin (timeHorizon + 1))
    (sum_in_range :
      first.val + second.val + 1 < timeHorizon + 1) :
    SelectedTimeComposition timeHorizon where
  first := first
  second := second
  total :=
    ⟨first.val + second.val + 1, sum_in_range⟩
  total_spec := by
    norm_num [sampledTime] <;> ring

/-- The total time in a selected composition is strictly positive. -/
theorem SelectedTimeComposition.total_pos
    {timeHorizon : Nat}
    (composition : SelectedTimeComposition timeHorizon) :
    0 < sampledTime composition.total :=
  sampledTime_pos composition.total

/-- The one-point time inventory `{1}` is not closed under positive-time
composition. This prevents a default or truncated sum from being fabricated. -/
theorem no_selectedTimeComposition_horizon_zero :
    ¬ Nonempty (SelectedTimeComposition 0) := by
  intro nonemptyComposition
  rcases nonemptyComposition with ⟨composition⟩
  have first_zero : composition.first = 0 :=
    Subsingleton.elim _ _
  have second_zero : composition.second = 0 :=
    Subsingleton.elim _ _
  have total_zero : composition.total = 0 :=
    Subsingleton.elim _ _
  have impossible := composition.total_spec
  rw [first_zero, second_zero, total_zero] at impossible
  norm_num [sampledTime] at impossible

/-! ## Matrix composition -/

/-- Coordinate vector selecting one source column. -/
def coordinateVector (source : State) : State → ℝ :=
  fun state => if state = source then 1 else 0

/-- Matrix action on a coordinate vector recovers the corresponding matrix
entry. -/
@[simp]
theorem matrixAction_coordinateVector
    (matrix : Matrix State State ℝ)
    (source target : State) :
    matrixAction matrix (coordinateVector source) target =
      matrix target source := by
  fin_cases source <;>
    simp [matrixAction, coordinateVector, Fin.sum_univ_three]

/-- Nested matrix action on a coordinate vector is one matrix-product entry. -/
theorem matrixAction_comp_coordinateVector
    (first second : Matrix State State ℝ)
    (source target : State) :
    matrixAction first
        (matrixAction second (coordinateVector source)) target =
      (first * second) target source := by
  rw [Matrix.mul_apply]
  change
    (∑ middle : State,
      matrixAction second (coordinateVector source) middle *
        first target middle) =
    ∑ middle : State,
      first target middle * second middle source
  apply Finset.sum_congr rfl
  intro middle _
  rw [matrixAction_coordinateVector]
  ring

/-- The transition matrix is an idempotent projection under matrix
multiplication. -/
theorem transitionMatrixAt_mul_self
    (height : Nat) :
    transitionMatrixAt height * transitionMatrixAt height =
      transitionMatrixAt height := by
  ext target source
  calc
    (transitionMatrixAt height * transitionMatrixAt height)
        target source =
      matrixAction (transitionMatrixAt height)
        (matrixAction (transitionMatrixAt height)
          (coordinateVector source)) target := by
            symm
            exact matrixAction_comp_coordinateVector
              (transitionMatrixAt height)
              (transitionMatrixAt height)
              source target
    _ =
      transitionActionAt height
        (transitionActionAt height
          (coordinateVector source)) target := rfl
    _ =
      transitionActionAt height
        (coordinateVector source) target := by
          exact congrFun
            (transitionActionAt_idempotent
              height (coordinateVector source))
            target
    _ =
      matrixAction (transitionMatrixAt height)
        (coordinateVector source) target := rfl
    _ = transitionMatrixAt height target source := by
      exact matrixAction_coordinateVector
        (transitionMatrixAt height) source target

/-- Exact matrix semigroup law for the closed finite diffusion family. -/
theorem finiteSemigroupMatrixAt_add
    (height : Nat) (firstTime secondTime : ℝ) :
    finiteSemigroupMatrixAt height (firstTime + secondTime) =
      finiteSemigroupMatrixAt height firstTime *
        finiteSemigroupMatrixAt height secondTime := by
  ext target source
  calc
    finiteSemigroupMatrixAt height
        (firstTime + secondTime) target source =
      matrixAction
        (finiteSemigroupMatrixAt height
          (firstTime + secondTime))
        (coordinateVector source) target := by
          symm
          exact matrixAction_coordinateVector
            (finiteSemigroupMatrixAt height
              (firstTime + secondTime))
            source target
    _ =
      finiteSemigroupActionAt height
        (firstTime + secondTime)
        (coordinateVector source) target := by
          exact congrFun
            (finiteSemigroupMatrix_action
              height (firstTime + secondTime)
              (coordinateVector source))
            target
    _ =
      finiteSemigroupActionAt height firstTime
        (finiteSemigroupActionAt height secondTime
          (coordinateVector source)) target := by
          exact congrFun
            (finiteSemigroupActionAt_add
              height firstTime secondTime
              (coordinateVector source))
            target
    _ =
      matrixAction
        (finiteSemigroupMatrixAt height firstTime)
        (finiteSemigroupActionAt height secondTime
          (coordinateVector source)) target := by
          symm
          exact congrFun
            (finiteSemigroupMatrix_action
              height firstTime
              (finiteSemigroupActionAt height secondTime
                (coordinateVector source)))
            target
    _ =
      matrixAction
        (finiteSemigroupMatrixAt height firstTime)
        (matrixAction
          (finiteSemigroupMatrixAt height secondTime)
          (coordinateVector source)) target := by
          exact congrFun
            (congrArg
              (matrixAction
                (finiteSemigroupMatrixAt height firstTime))
              (finiteSemigroupMatrix_action
                height secondTime
                (coordinateVector source)).symm)
            target
    _ =
      (finiteSemigroupMatrixAt height firstTime *
        finiteSemigroupMatrixAt height secondTime)
        target source := by
          exact matrixAction_comp_coordinateVector
            (finiteSemigroupMatrixAt height firstTime)
            (finiteSemigroupMatrixAt height secondTime)
            source target

/-- Exact matrix semigroup law for the literal Mathlib exponential. -/
theorem mathlibMatrixExponentialAt_add
    (height : Nat) (firstTime secondTime : ℝ) :
    mathlibMatrixExponentialAt height
        (firstTime + secondTime) =
      mathlibMatrixExponentialAt height firstTime *
        mathlibMatrixExponentialAt height secondTime := by
  simpa only [
    mathlibMatrixExponentialAt_eq_finiteSemigroup
  ] using
    finiteSemigroupMatrixAt_add
      height firstTime secondTime

/-- Every retained operator composes under addition of its time coordinate.
For transition and Laplacian this is idempotence; for the diffusion operators
this is the semigroup law. -/
theorem operatorMatrixAt_add
    (operator : HeightTimeOperator)
    (height : Nat) (firstTime secondTime : ℝ) :
    operatorMatrixAt operator height
        (firstTime + secondTime) =
      operatorMatrixAt operator height firstTime *
        operatorMatrixAt operator height secondTime := by
  cases operator with
  | transition =>
      simpa [operatorMatrixAt] using
        (transitionMatrixAt_mul_self height).symm
  | laplacian =>
      simpa [operatorMatrixAt] using
        (laplacianMatrixAt_mul_self height).symm
  | finiteSemigroup =>
      simpa [operatorMatrixAt] using
        finiteSemigroupMatrixAt_add
          height firstTime secondTime
  | mathlibExponential =>
      simpa [operatorMatrixAt] using
        mathlibMatrixExponentialAt_add
          height firstTime secondTime

/-! ## Spectral-value composition -/

/-- Spectral values multiply under selected-time composition for every retained
operator. -/
theorem operatorSpectralValueAt_add
    (operator : HeightTimeOperator)
    (firstTime secondTime : ℝ)
    (point : SpectralPoint) :
    operatorSpectralValueAt operator
        (firstTime + secondTime) point =
      operatorSpectralValueAt operator firstTime point *
        operatorSpectralValueAt operator secondTime point := by
  cases operator with
  | transition =>
      cases point <;>
        norm_num [
          operatorSpectralValueAt,
          transitionEigenvalue
        ]
  | laplacian =>
      cases point <;>
        norm_num [
          operatorSpectralValueAt,
          laplacianEigenvalue
        ]
  | finiteSemigroup =>
      cases point with
      | fixed =>
          norm_num [
            operatorSpectralValueAt,
            laplacianEigenvalue
          ]
      | collision =>
          simp only [
            operatorSpectralValueAt,
            laplacianEigenvalue,
            mul_one
          ]
          rw [
            show -(firstTime + secondTime) =
                -firstTime + -secondTime by ring,
            Real.exp_add
          ]
  | mathlibExponential =>
      cases point with
      | fixed =>
          norm_num [
            operatorSpectralValueAt,
            laplacianEigenvalue
          ]
      | collision =>
          simp only [
            operatorSpectralValueAt,
            laplacianEigenvalue,
            mul_one
          ]
          rw [
            show -(firstTime + secondTime) =
                -firstTime + -secondTime by ring,
            Real.exp_add
          ]

/-! ## Tensor-level composition laws -/

/-- Coordinatewise matrix composition whenever the two sampled times and their
sum are all selected by the finite time inventory. -/
theorem heightTimeSpectralTensor_matrix_composition
    (heightHorizon timeHorizon : Nat)
    (composition : SelectedTimeComposition timeHorizon)
    (height : Fin (heightHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).matrixEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.total layer operator mode
        source target) =
    ∑ middle : State,
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.first layer operator mode
          middle target) *
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.second layer operator mode
          source middle) := by
  change
    operatorMatrixAt operator height.val
        (sampledTime composition.total) target source =
      ∑ middle : State,
        operatorMatrixAt operator height.val
            (sampledTime composition.first) target middle *
          operatorMatrixAt operator height.val
            (sampledTime composition.second) middle source
  rw [composition.total_spec]
  rw [operatorMatrixAt_add, Matrix.mul_apply]

/-- Coordinatewise spectral-value multiplication under the same explicit
selected-time witness. -/
theorem heightTimeSpectralTensor_spectral_composition
    (heightHorizon timeHorizon : Nat)
    (composition : SelectedTimeComposition timeHorizon)
    (height : Fin (heightHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.total layer operator mode
        source target) =
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.first layer operator mode
        source target) *
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.second layer operator mode
        source target) := by
  change
    operatorSpectralValueAt operator
        (sampledTime composition.total)
        (spectralPointOfMode mode) =
      operatorSpectralValueAt operator
          (sampledTime composition.first)
          (spectralPointOfMode mode) *
        operatorSpectralValueAt operator
          (sampledTime composition.second)
          (spectralPointOfMode mode)
  rw [composition.total_spec]
  exact operatorSpectralValueAt_add
    operator
    (sampledTime composition.first)
    (sampledTime composition.second)
    (spectralPointOfMode mode)

/-- Mode evolution at the total selected time is the product of the two stored
spectral scalars times the original complete mode. -/
theorem heightTimeSpectralTensor_mode_composition
    (heightHorizon timeHorizon : Nat)
    (composition : SelectedTimeComposition timeHorizon)
    (height : Fin (heightHorizon + 1))
    (layer : ObservationLayer)
    (operator : HeightTimeOperator)
    (mode : Fin 3)
    (source target : State) :
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).modeImageEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.total layer operator mode
        source target) =
    ((heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.first layer operator mode
        source target) *
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).spectralValue
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.second layer operator mode
        source target)) *
    (heightTimeSpectralTensor
      heightHorizon timeHorizon).modeEntry
      (heightTimeSpectralCoordinate
        heightHorizon timeHorizon
        height composition.total layer operator mode
        source target) := by
  rw [
    heightTimeSpectralTensor_mode_equation,
    heightTimeSpectralTensor_spectral_composition
  ]

/-! ## Explicit height comparison suppliers -/

/-- Equal parity gives literal equality of normalized Laplacian matrices. -/
theorem laplacianMatrixAt_eq_of_mod_two_eq
    {firstHeight secondHeight : Nat}
    (sameParity :
      firstHeight % 2 = secondHeight % 2) :
    laplacianMatrixAt firstHeight =
      laplacianMatrixAt secondHeight := by
  have transitionEquality :
      transitionMatrixAt firstHeight =
        transitionMatrixAt secondHeight :=
    transitionMatrixAt_eq_of_mod_two_eq sameParity
  ext target source
  simp only [laplacianMatrixAt]
  rw [transitionEquality]

/-- Equal parity gives literal equality of closed finite semigroup matrices. -/
theorem finiteSemigroupMatrixAt_eq_of_mod_two_eq
    {firstHeight secondHeight : Nat}
    (sameParity :
      firstHeight % 2 = secondHeight % 2)
    (time : ℝ) :
    finiteSemigroupMatrixAt firstHeight time =
      finiteSemigroupMatrixAt secondHeight time := by
  have transitionEquality :
      transitionMatrixAt firstHeight =
        transitionMatrixAt secondHeight :=
    transitionMatrixAt_eq_of_mod_two_eq sameParity
  have laplacianEquality :
      laplacianMatrixAt firstHeight =
        laplacianMatrixAt secondHeight :=
    laplacianMatrixAt_eq_of_mod_two_eq sameParity
  ext target source
  simp only [finiteSemigroupMatrixAt]
  rw [transitionEquality, laplacianEquality]

/-- Equal parity gives literal equality of Mathlib exponential matrices. -/
theorem mathlibMatrixExponentialAt_eq_of_mod_two_eq
    {firstHeight secondHeight : Nat}
    (sameParity :
      firstHeight % 2 = secondHeight % 2)
    (time : ℝ) :
    mathlibMatrixExponentialAt firstHeight time =
      mathlibMatrixExponentialAt secondHeight time := by
  simpa only [
    mathlibMatrixExponentialAt_eq_finiteSemigroup
  ] using
    finiteSemigroupMatrixAt_eq_of_mod_two_eq
      sameParity time

/-- Equal parity is an explicit equality supplier for every retained operator. -/
theorem operatorMatrixAt_eq_of_mod_two_eq
    {firstHeight secondHeight : Nat}
    (sameParity :
      firstHeight % 2 = secondHeight % 2)
    (operator : HeightTimeOperator) (time : ℝ) :
    operatorMatrixAt operator firstHeight time =
      operatorMatrixAt operator secondHeight time := by
  cases operator with
  | transition =>
      simpa [operatorMatrixAt] using
        transitionMatrixAt_eq_of_mod_two_eq sameParity
  | laplacian =>
      simpa [operatorMatrixAt] using
        laplacianMatrixAt_eq_of_mod_two_eq sameParity
  | finiteSemigroup =>
      simpa [operatorMatrixAt] using
        finiteSemigroupMatrixAt_eq_of_mod_two_eq
          sameParity time
  | mathlibExponential =>
      simpa [operatorMatrixAt] using
        mathlibMatrixExponentialAt_eq_of_mod_two_eq
          sameParity time

/-- State-swap conjugacy for the closed finite semigroup at heights zero and
one. -/
def zeroOneFiniteSemigroupMatrixConjugacy
    (time : ℝ) :
    MatrixConjugacy
      (finiteSemigroupMatrixAt 0 time)
      (finiteSemigroupMatrixAt 1 time) where
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
    simpa only [finiteSemigroupMatrix_action] using
      zeroOneFiniteSemigroupConjugacy
        time vector

/-- State-swap conjugacy for the literal Mathlib exponential at heights zero
and one. -/
def zeroOneMathlibExponentialConjugacy
    (time : ℝ) :
    MatrixConjugacy
      (mathlibMatrixExponentialAt 0 time)
      (mathlibMatrixExponentialAt 1 time) where
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
    simpa only [mathlibMatrixExponentialAt_action] using
      zeroOneFiniteSemigroupConjugacy
        time vector

/-- Explicit zero-to-one height conjugacy for every retained operator. -/
def zeroOneOperatorMatrixConjugacy
    (operator : HeightTimeOperator) (time : ℝ) :
    MatrixConjugacy
      (operatorMatrixAt operator 0 time)
      (operatorMatrixAt operator 1 time) := by
  cases operator with
  | transition =>
      simpa [operatorMatrixAt] using
        zeroOneTransitionConjugacy
  | laplacian =>
      simpa [operatorMatrixAt] using
        zeroOneLaplacianConjugacy
  | finiteSemigroup =>
      simpa [operatorMatrixAt] using
        zeroOneFiniteSemigroupMatrixConjugacy time
  | mathlibExponential =>
      simpa [operatorMatrixAt] using
        zeroOneMathlibExponentialConjugacy time

/-- Every complete finite mode transports from height zero to height one only
through the explicit conjugacy supplier. -/
theorem zeroOneOperatorMode_transport
    (operator : HeightTimeOperator)
    (time : ℝ) (mode : Fin 3) :
    (zeroOneOperatorMatrixConjugacy operator time).forward
        (spectralModeVector 0 mode) ≠
          fun _ => 0 ∧
      matrixAction (operatorMatrixAt operator 1 time)
          ((zeroOneOperatorMatrixConjugacy
            operator time).forward
            (spectralModeVector 0 mode)) =
        fun state =>
          operatorSpectralValueAt operator time
              (spectralPointOfMode mode) *
            (zeroOneOperatorMatrixConjugacy
              operator time).forward
              (spectralModeVector 0 mode) state := by
  exact
    (zeroOneOperatorMatrixConjugacy
      operator time).transport_eigenvector
      (spectralModeVector_ne_zero 0 mode)
      (operatorMatrixAt_spectralMode
        operator 0 time mode)

/-- Common certified support does not identify height-dependent weighted
operators. Equality and spectral transport above use parity equality or explicit
conjugacy instead. -/
theorem commonCertifiedSupport_not_operatorEquality :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      operatorMatrixAt .mathlibExponential 0 1 ≠
        operatorMatrixAt .mathlibExponential 1 1 := by
  simpa [operatorMatrixAt] using
    same_certified_support_but_distinct_mathlib_exponentials

/-! ## Bounded composition certificate -/

/-- Complete bounded certificate for selected-time composition and explicit
height comparison. -/
structure HeightTimeCompositionTensorCertificate
    (heightHorizon timeHorizon : Nat) : Prop where
  matrixComposition :
    ∀ (composition : SelectedTimeComposition timeHorizon)
      (height : Fin (heightHorizon + 1))
      (layer : ObservationLayer)
      (operator : HeightTimeOperator)
      (mode : Fin 3) (source target : State),
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).matrixEntry
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.total layer operator mode
          source target) =
      ∑ middle : State,
        (heightTimeSpectralTensor
          heightHorizon timeHorizon).matrixEntry
          (heightTimeSpectralCoordinate
            heightHorizon timeHorizon
            height composition.first layer operator mode
            middle target) *
        (heightTimeSpectralTensor
          heightHorizon timeHorizon).matrixEntry
          (heightTimeSpectralCoordinate
            heightHorizon timeHorizon
            height composition.second layer operator mode
            source middle)
  spectralComposition :
    ∀ (composition : SelectedTimeComposition timeHorizon)
      (height : Fin (heightHorizon + 1))
      (layer : ObservationLayer)
      (operator : HeightTimeOperator)
      (mode : Fin 3) (source target : State),
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).spectralValue
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.total layer operator mode
          source target) =
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).spectralValue
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.first layer operator mode
          source target) *
      (heightTimeSpectralTensor
        heightHorizon timeHorizon).spectralValue
        (heightTimeSpectralCoordinate
          heightHorizon timeHorizon
          height composition.second layer operator mode
          source target)
  sameParityEquality :
    ∀ {firstHeight secondHeight : Nat},
      firstHeight % 2 = secondHeight % 2 →
      ∀ operator time,
        operatorMatrixAt operator firstHeight time =
          operatorMatrixAt operator secondHeight time
  zeroOneConjugacy :
    ∀ operator time,
      MatrixConjugacy
        (operatorMatrixAt operator 0 time)
        (operatorMatrixAt operator 1 time)
  commonSupportInsufficient :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      operatorMatrixAt .mathlibExponential 0 1 ≠
        operatorMatrixAt .mathlibExponential 1 1
  signedGeneratorControl :
    laplacianMatrixAt 0 (1 : State) (2 : State) < 0

/-- The canonical finite height-time tensor satisfies selected-time matrix and
spectral composition and retains the explicit height-comparison boundary. -/
theorem canonicalHeightTimeCompositionTensorCertificate
    (heightHorizon timeHorizon : Nat) :
    HeightTimeCompositionTensorCertificate
      heightHorizon timeHorizon where
  matrixComposition := by
    intro composition height layer operator mode source target
    exact heightTimeSpectralTensor_matrix_composition
      heightHorizon timeHorizon composition
      height layer operator mode source target
  spectralComposition := by
    intro composition height layer operator mode source target
    exact heightTimeSpectralTensor_spectral_composition
      heightHorizon timeHorizon composition
      height layer operator mode source target
  sameParityEquality := by
    intro firstHeight secondHeight sameParity operator time
    exact operatorMatrixAt_eq_of_mod_two_eq
      sameParity operator time
  zeroOneConjugacy := by
    intro operator time
    exact zeroOneOperatorMatrixConjugacy
      operator time
  commonSupportInsufficient :=
    commonCertifiedSupport_not_operatorEquality
  signedGeneratorControl :=
    laplacianMatrixAt_has_negative_entry

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
