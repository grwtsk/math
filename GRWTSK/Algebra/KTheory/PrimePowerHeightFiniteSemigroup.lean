/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightFiniteSpectrum
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Exact finite semigroup for prime-power height diffusion

This module constructs the exact finite-time semigroup attached to the
idempotent normalized Laplacian of each three-state prime-power height slice.

For the transition projection `P_h` and normalized Laplacian `L_h = I - P_h`,
the finite diffusion family is

`D_h(t) = P_h + exp(-t) L_h`.

The construction proves:

* idempotence of `P_h` and `L_h` at the operator level;
* mutual annihilation of the transition and Laplacian components;
* the semigroup identity `D_h(t + s) = D_h(t) ∘ D_h(s)`;
* exact matrix/action compatibility;
* the spectral formula `exp(-t λ)` on every complete finite eigenmode;
* nonnegativity and stochastic normalization for nonnegative time;
* an explicit even/odd conjugacy and a hostile control showing that common
  certified support does not imply equality of weighted semigroup matrices.

A separate source-bound `MatrixExponentialBridge` records the remaining
identification with an external matrix-exponential implementation. No such
bridge is assumed or constructed here. In particular, this finite algebraic
semigroup is not identified with a classical zeta-zero operator, Frobenius,
a Hilbert--Polya operator, or an analytic heat semigroup on an infinite
dimensional space.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## Scalar decay -/

/-- Scalar decay used by the finite semigroup. -/
def decay (time : ℝ) : ℝ :=
  Real.exp (-time)

@[simp]
theorem decay_zero :
    decay 0 = 1 := by
  simp [decay]

theorem decay_pos (time : ℝ) :
    0 < decay time := by
  exact Real.exp_pos (-time)

theorem decay_nonneg (time : ℝ) :
    0 ≤ decay time :=
  le_of_lt (decay_pos time)

theorem decay_le_one
    {time : ℝ} (time_nonnegative : 0 ≤ time) :
    decay time ≤ 1 := by
  exact (Real.exp_le_one_iff).2 (neg_nonpos.mpr time_nonnegative)

@[simp]
theorem decay_add (firstTime secondTime : ℝ) :
    decay (firstTime + secondTime) =
      decay firstTime * decay secondTime := by
  rw [decay, decay, decay]
  rw [show -(firstTime + secondTime) =
      -firstTime + -secondTime by ring]
  exact Real.exp_add (-firstTime) (-secondTime)

/-! ## Projection and Laplacian algebra -/

/-- Transition action is additive. -/
theorem transitionActionAt_add
    (height : Nat) (first second : State → ℝ) :
    transitionActionAt height
        (fun state => first state + second state) =
      fun state =>
        transitionActionAt height first state +
          transitionActionAt height second state := by
  funext target
  fin_cases target <;>
    simp [transitionActionAt_formula] <;> ring

/-- Transition action commutes with real scalar multiplication. -/
theorem transitionActionAt_smul
    (height : Nat) (scalar : ℝ) (vector : State → ℝ) :
    transitionActionAt height
        (fun state => scalar * vector state) =
      fun state => scalar * transitionActionAt height vector state := by
  funext target
  fin_cases target <;>
    simp [transitionActionAt_formula] <;> ring

/-- Transition action preserves subtraction. -/
theorem transitionActionAt_sub
    (height : Nat) (first second : State → ℝ) :
    transitionActionAt height
        (fun state => first state - second state) =
      fun state =>
        transitionActionAt height first state -
          transitionActionAt height second state := by
  funext target
  fin_cases target <;>
    simp [transitionActionAt_formula] <;> ring

/-- Every height transition is a projection. -/
theorem transitionActionAt_idempotent
    (height : Nat) (vector : State → ℝ) :
    transitionActionAt height
        (transitionActionAt height vector) =
      transitionActionAt height vector := by
  funext target
  fin_cases target <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        transitionActionAt_formula,
        firstFraction,
        secondFraction,
        evenHeight
      ] <;> ring

/-- The transition projection annihilates the normalized-Laplacian component. -/
theorem transitionActionAt_laplacian_zero
    (height : Nat) (vector : State → ℝ) :
    transitionActionAt height
        (laplacianActionAt height vector) =
      fun _ => 0 := by
  change
    transitionActionAt height
        (fun state =>
          vector state - transitionActionAt height vector state) =
      fun _ => 0
  rw [transitionActionAt_sub,
    transitionActionAt_idempotent]
  funext state
  ring

/-- The normalized Laplacian annihilates the transition projection. -/
theorem laplacianActionAt_transition_zero
    (height : Nat) (vector : State → ℝ) :
    laplacianActionAt height
        (transitionActionAt height vector) =
      fun _ => 0 := by
  funext state
  change
    transitionActionAt height vector state -
        transitionActionAt height
          (transitionActionAt height vector) state =
      0
  rw [congrFun
    (transitionActionAt_idempotent height vector) state]
  ring

/-- The normalized Laplacian is idempotent. -/
theorem laplacianActionAt_idempotent
    (height : Nat) (vector : State → ℝ) :
    laplacianActionAt height
        (laplacianActionAt height vector) =
      laplacianActionAt height vector := by
  funext state
  change
    laplacianActionAt height vector state -
        transitionActionAt height
          (laplacianActionAt height vector) state =
      laplacianActionAt height vector state
  rw [congrFun
    (transitionActionAt_laplacian_zero height vector) state]
  ring

/-- Transition coefficients are nonnegative. -/
theorem transitionMatrixAt_nonnegative
    (height : Nat) (target source : State) :
    0 ≤ transitionMatrixAt height target source := by
  fin_cases target <;> fin_cases source <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        transitionMatrixAt_entry,
        firstFraction,
        secondFraction,
        evenHeight
      ]

/-- Every transition column has total mass one. -/
theorem transitionMatrixAt_column_sum
    (height : Nat) (source : State) :
    (∑ target : State,
      transitionMatrixAt height target source) = 1 := by
  fin_cases source <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        transitionMatrixAt_entry,
        firstFraction,
        secondFraction,
        evenHeight,
        Fin.sum_univ_three
      ]

/-- Identity coefficients are nonnegative. -/
theorem identityEntry_nonnegative
    (target source : State) :
    0 ≤ identityEntry target source := by
  by_cases equal : target = source <;>
    simp [identityEntry, equal]

/-- Every identity column has total mass one. -/
theorem identityEntry_column_sum
    (source : State) :
    (∑ target : State, identityEntry target source) = 1 := by
  fin_cases source <;>
    norm_num [identityEntry, Fin.sum_univ_three]

/-- Every normalized-Laplacian column has total sum zero. -/
theorem laplacianMatrixAt_column_sum
    (height : Nat) (source : State) :
    (∑ target : State,
      laplacianMatrixAt height target source) = 0 := by
  simp only [laplacianMatrixAt, Finset.sum_sub_distrib]
  rw [identityEntry_column_sum,
    transitionMatrixAt_column_sum]
  ring

/-! ## Exact finite semigroup -/

/-- Exact finite diffusion matrix `P_h + exp(-t) (I - P_h)`. -/
def finiteSemigroupMatrixAt
    (height : Nat) (time : ℝ) :
    Matrix State State ℝ :=
  fun target source =>
    transitionMatrixAt height target source +
      decay time * laplacianMatrixAt height target source

/-- Exact finite diffusion action. -/
def finiteSemigroupActionAt
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) : State → ℝ :=
  fun state =>
    transitionActionAt height vector state +
      decay time * laplacianActionAt height vector state

/-- Equivalent convex form
`exp(-t) I + (1 - exp(-t)) P_h`. -/
theorem finiteSemigroupMatrixAt_convex
    (height : Nat) (time : ℝ) :
    finiteSemigroupMatrixAt height time =
      fun target source =>
        decay time * identityEntry target source +
          (1 - decay time) *
            transitionMatrixAt height target source := by
  ext target source
  simp [finiteSemigroupMatrixAt, laplacianMatrixAt]
  ring

/-- Equivalent convex form of the action. -/
theorem finiteSemigroupActionAt_convex
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) :
    finiteSemigroupActionAt height time vector =
      fun state =>
        decay time * vector state +
          (1 - decay time) *
            transitionActionAt height vector state := by
  funext state
  simp [finiteSemigroupActionAt, laplacianActionAt]
  ring

/-- Matrix action agrees exactly with the finite semigroup action. -/
theorem finiteSemigroupMatrix_action
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) :
    matrixAction (finiteSemigroupMatrixAt height time) vector =
      finiteSemigroupActionAt height time vector := by
  funext target
  unfold matrixAction finiteSemigroupMatrixAt
  simp_rw [mul_add]
  rw [Finset.sum_add_distrib]
  change
    transitionActionAt height vector target +
        (∑ source : State,
          vector source *
            (decay time *
              laplacianMatrixAt height target source)) =
      finiteSemigroupActionAt height time vector target
  have laplacianSum :
      (∑ source : State,
        vector source *
          (decay time *
            laplacianMatrixAt height target source)) =
        decay time *
          matrixAction (laplacianMatrixAt height) vector target := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro source _
    ring
  rw [laplacianSum,
    congrFun (laplacianMatrix_action height vector) target]
  rfl

/-- At time zero the finite semigroup is the identity action. -/
@[simp]
theorem finiteSemigroupActionAt_zero
    (height : Nat) (vector : State → ℝ) :
    finiteSemigroupActionAt height 0 vector = vector := by
  funext state
  simp [finiteSemigroupActionAt, laplacianActionAt]
  ring

/-- At time zero the finite semigroup matrix is the identity matrix. -/
@[simp]
theorem finiteSemigroupMatrixAt_zero
    (height : Nat) :
    finiteSemigroupMatrixAt height 0 =
      fun target source => identityEntry target source := by
  ext target source
  simp [finiteSemigroupMatrixAt, laplacianMatrixAt]
  ring

/-- Applying the transition projection after diffusion recovers the stationary
component. -/
theorem transitionActionAt_finiteSemigroupActionAt
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) :
    transitionActionAt height
        (finiteSemigroupActionAt height time vector) =
      transitionActionAt height vector := by
  change
    transitionActionAt height
        (fun state =>
          transitionActionAt height vector state +
            decay time *
              laplacianActionAt height vector state) =
      transitionActionAt height vector
  rw [transitionActionAt_add,
    transitionActionAt_smul,
    transitionActionAt_idempotent,
    transitionActionAt_laplacian_zero]
  funext state
  simp

/-- Applying the normalized Laplacian after diffusion extracts the decayed
collision component. -/
theorem laplacianActionAt_finiteSemigroupActionAt
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) :
    laplacianActionAt height
        (finiteSemigroupActionAt height time vector) =
      fun state =>
        decay time * laplacianActionAt height vector state := by
  funext state
  change
    finiteSemigroupActionAt height time vector state -
        transitionActionAt height
          (finiteSemigroupActionAt height time vector) state =
      decay time * laplacianActionAt height vector state
  rw [congrFun
    (transitionActionAt_finiteSemigroupActionAt
      height time vector) state]
  simp [finiteSemigroupActionAt]
  ring

/-- Exact semigroup law for all real parameters. Positivity and Markov
interpretation are restricted separately to nonnegative time. -/
theorem finiteSemigroupActionAt_add
    (height : Nat) (firstTime secondTime : ℝ)
    (vector : State → ℝ) :
    finiteSemigroupActionAt height
        (firstTime + secondTime) vector =
      finiteSemigroupActionAt height firstTime
        (finiteSemigroupActionAt height secondTime vector) := by
  funext state
  change
    transitionActionAt height vector state +
        decay (firstTime + secondTime) *
          laplacianActionAt height vector state =
      transitionActionAt height
          (finiteSemigroupActionAt height secondTime vector) state +
        decay firstTime *
          laplacianActionAt height
            (finiteSemigroupActionAt height secondTime vector) state
  rw [
    congrFun
      (transitionActionAt_finiteSemigroupActionAt
        height secondTime vector) state,
    congrFun
      (laplacianActionAt_finiteSemigroupActionAt
        height secondTime vector) state,
    decay_add
  ]
  ring

/-- Every finite semigroup matrix is column-stochastic algebraically. For
negative time this is normalization without nonnegativity. -/
theorem finiteSemigroupMatrixAt_column_sum
    (height : Nat) (time : ℝ) (source : State) :
    (∑ target : State,
      finiteSemigroupMatrixAt height time target source) = 1 := by
  unfold finiteSemigroupMatrixAt
  rw [Finset.sum_add_distrib,
    transitionMatrixAt_column_sum]
  have scaledLaplacian :
      (∑ target : State,
        decay time *
          laplacianMatrixAt height target source) =
        decay time *
          (∑ target : State,
            laplacianMatrixAt height target source) := by
    rw [Finset.mul_sum]
  rw [scaledLaplacian,
    laplacianMatrixAt_column_sum]
  ring

/-- For nonnegative time every semigroup coefficient is nonnegative. -/
theorem finiteSemigroupMatrixAt_nonnegative
    (height : Nat) {time : ℝ}
    (time_nonnegative : 0 ≤ time)
    (target source : State) :
    0 ≤ finiteSemigroupMatrixAt height time target source := by
  rw [finiteSemigroupMatrixAt_convex]
  exact add_nonneg
    (mul_nonneg
      (decay_nonneg time)
      (identityEntry_nonnegative target source))
    (mul_nonneg
      (sub_nonneg.mpr (decay_le_one time_nonnegative))
      (transitionMatrixAt_nonnegative height target source))

/-- The transition projection preserves nonnegative state vectors. -/
theorem transitionActionAt_nonnegative
    (height : Nat) (vector : State → ℝ)
    (vector_nonnegative : ∀ state, 0 ≤ vector state)
    (target : State) :
    0 ≤ transitionActionAt height vector target := by
  fin_cases target <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        transitionActionAt_formula,
        firstFraction,
        secondFraction,
        evenHeight
      ] <;>
      nlinarith [
        vector_nonnegative (0 : State),
        vector_nonnegative (1 : State),
        vector_nonnegative (2 : State)
      ]

/-- Nonnegative-time diffusion preserves nonnegative state vectors. -/
theorem finiteSemigroupActionAt_nonnegative
    (height : Nat) {time : ℝ}
    (time_nonnegative : 0 ≤ time)
    (vector : State → ℝ)
    (vector_nonnegative : ∀ state, 0 ≤ vector state)
    (target : State) :
    0 ≤ finiteSemigroupActionAt height time vector target := by
  rw [finiteSemigroupActionAt_convex]
  exact add_nonneg
    (mul_nonneg
      (decay_nonneg time)
      (vector_nonnegative target))
    (mul_nonneg
      (sub_nonneg.mpr (decay_le_one time_nonnegative))
      (transitionActionAt_nonnegative
        height vector vector_nonnegative target))

/-! ## Complete spectral exponential -/

/-- Semigroup eigenvalue attached to one finite spectral point. -/
def finiteSemigroupEigenvalue
    (time : ℝ) (point : SpectralPoint) : ℝ :=
  transitionEigenvalue point +
    decay time * laplacianEigenvalue point

@[simp]
theorem finiteSemigroupEigenvalue_fixed
    (time : ℝ) :
    finiteSemigroupEigenvalue time .fixed = 1 := by
  simp [
    finiteSemigroupEigenvalue,
    transitionEigenvalue,
    laplacianEigenvalue
  ]

@[simp]
theorem finiteSemigroupEigenvalue_collision
    (time : ℝ) :
    finiteSemigroupEigenvalue time .collision =
      decay time := by
  simp [
    finiteSemigroupEigenvalue,
    transitionEigenvalue,
    laplacianEigenvalue
  ]

/-- The finite semigroup eigenvalue is exactly `exp(-t λ)` for the declared
normalized-Laplacian spectral points. -/
theorem finiteSemigroupEigenvalue_eq_exp
    (time : ℝ) (point : SpectralPoint) :
    finiteSemigroupEigenvalue time point =
      Real.exp
        (-time * laplacianEigenvalue point) := by
  cases point <;>
    simp [
      finiteSemigroupEigenvalue,
      transitionEigenvalue,
      laplacianEigenvalue,
      decay
    ]

/-- Every complete finite spectral mode evolves by the exact exponential of its
normalized-Laplacian eigenvalue. -/
theorem finiteSemigroupActionAt_spectralMode
    (height : Nat) (time : ℝ) (mode : Fin 3) :
    finiteSemigroupActionAt height time
        (spectralModeVector height mode) =
      fun state =>
        Real.exp
            (-time *
              laplacianEigenvalue
                (spectralPointOfMode mode)) *
          spectralModeVector height mode state := by
  funext state
  unfold finiteSemigroupActionAt
  rw [
    congrFun
      (transitionAction_spectralMode height mode) state,
    congrFun
      (laplacianAction_spectralMode height mode) state
  ]
  rw [← finiteSemigroupEigenvalue_eq_exp
    time (spectralPointOfMode mode)]
  simp [finiteSemigroupEigenvalue]
  ring

/-- Complete finite semigroup data at one discrete graph height. -/
structure CompleteFiniteSemigroup (height : Nat) where
  matrixAt : ℝ → Matrix State State ℝ
  actionAt : ℝ → (State → ℝ) → State → ℝ
  matrix_spec :
    ∀ time, matrixAt time =
      finiteSemigroupMatrixAt height time
  action_spec :
    ∀ time vector, actionAt time vector =
      finiteSemigroupActionAt height time vector
  matrix_action :
    ∀ time vector,
      matrixAction (matrixAt time) vector =
        actionAt time vector
  zero :
    ∀ vector, actionAt 0 vector = vector
  add :
    ∀ firstTime secondTime vector,
      actionAt (firstTime + secondTime) vector =
        actionAt firstTime
          (actionAt secondTime vector)
  mode_nonzero :
    ∀ mode,
      spectralModeVector height mode ≠ fun _ => 0
  mode_exponential :
    ∀ time mode,
      actionAt time
          (spectralModeVector height mode) =
        fun state =>
          Real.exp
              (-time *
                laplacianEigenvalue
                  (spectralPointOfMode mode)) *
            spectralModeVector height mode state
  multiplicity_complete :
    ∀ point,
      (Finset.univ.filter
        (fun mode : Fin 3 =>
          spectralPointOfMode mode = point)).card =
        spectralMultiplicity point
  nonnegative :
    ∀ {time}, 0 ≤ time →
      ∀ target source,
        0 ≤ matrixAt time target source
  columnStochastic :
    ∀ time source,
      (∑ target : State,
        matrixAt time target source) = 1
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Pinned Mathlib matrix-exponential implementation that a later bridge may
identify with the finite closed form. -/
def mathlibMatrixExponentialSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "Mathlib.Analysis.Normed.Algebra.MatrixExponential"
  locator :=
    "Matrix.exp_add_of_commute and the generic NormedSpace.exp implementation"
  repository := some "leanprover-community/mathlib4"
  commit := some
    "db584cd6d46c92f209a44c0f1c829460d327499d"
  path := some
    "Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean"
  blob := some
    "ebca3be5a8ee93a7522290ded3a3900928be6e6a"

/-- Exact identification with an external matrix exponential remains a distinct
source-bound bridge. The present module does not manufacture this bridge. -/
structure MatrixExponentialBridge (height : Nat) where
  exponential : ℝ → Matrix State State ℝ
  source : SourceIdentity
  identifies :
    ∀ time,
      exponential time =
        finiteSemigroupMatrixAt height time

/-- Any supplied external matrix-exponential bridge inherits the exact finite
semigroup action. -/
theorem MatrixExponentialBridge.action_eq
    {height : Nat}
    (bridge : MatrixExponentialBridge height)
    (time : ℝ) (vector : State → ℝ) :
    matrixAction (bridge.exponential time) vector =
      finiteSemigroupActionAt height time vector := by
  rw [bridge.identifies]
  exact finiteSemigroupMatrix_action height time vector

/-- Any supplied external matrix-exponential bridge inherits the complete
finite spectral exponential formula. -/
theorem MatrixExponentialBridge.mode_action
    {height : Nat}
    (bridge : MatrixExponentialBridge height)
    (time : ℝ) (mode : Fin 3) :
    matrixAction (bridge.exponential time)
        (spectralModeVector height mode) =
      fun state =>
        Real.exp
            (-time *
              laplacianEigenvalue
                (spectralPointOfMode mode)) *
          spectralModeVector height mode state := by
  rw [bridge.action_eq]
  exact finiteSemigroupActionAt_spectralMode
    height time mode

/-- Unresolved source identity for the external matrix-exponential
identification. -/
def matrixExponentialIdentificationSupplier : SourceIdentity where
  kind := .unresolved
  identifier :=
    "PrimePowerHeightFiniteSemigroup.MatrixExponentialBridge"
  locator :=
    "Prove that the pinned Mathlib matrix exponential of `-t • laplacianMatrixAt h` equals `finiteSemigroupMatrixAt h t`"
  repository := some "grwtsk/math"
  commit := none
  path := none
  blob := none

/-- Canonical complete finite semigroup at every discrete graph height. -/
def completeFiniteSemigroupAt
    (height : Nat) :
    CompleteFiniteSemigroup height where
  matrixAt := finiteSemigroupMatrixAt height
  actionAt := finiteSemigroupActionAt height
  matrix_spec := by
    intro time
    rfl
  action_spec := by
    intro time vector
    rfl
  matrix_action :=
    finiteSemigroupMatrix_action height
  zero :=
    finiteSemigroupActionAt_zero height
  add :=
    finiteSemigroupActionAt_add height
  mode_nonzero :=
    spectralModeVector_ne_zero height
  mode_exponential :=
    finiteSemigroupActionAt_spectralMode height
  multiplicity_complete :=
    spectralPointOfMode_fiber_card
  nonnegative := by
    intro time time_nonnegative target source
    exact finiteSemigroupMatrixAt_nonnegative
      height time_nonnegative target source
  columnStochastic :=
    finiteSemigroupMatrixAt_column_sum height
  proofProvenance := [
    heightTensorSource,
    profileScheduleSource,
    certifiedSearchSource,
    mathlibMatrixExponentialSource
  ]
  analogyProvenance := [
    linearChainSpectrumAnalogy,
    hilbertPolyaAnalogy
  ]
  unresolvedSuppliers := [
    matrixExponentialIdentificationSupplier,
    analyticHeatSemigroupSupplier,
    chowlaPositiveWeightSupplier
  ]

/-! ## Height comparison and negative controls -/

/-- The state swap conjugates the complete finite semigroup actions at heights
zero and one for every real time. -/
theorem zeroOneFiniteSemigroupConjugacy
    (time : ℝ) (vector : State → ℝ) :
    finiteSemigroupActionAt 1 time
        (swapVector vector) =
      swapVector
        (finiteSemigroupActionAt 0 time vector) := by
  have transitionIntertwining :
      transitionActionAt 1 (swapVector vector) =
        swapVector (transitionActionAt 0 vector) := by
    exact zeroOneTransitionConjugacy.intertwines vector
  have laplacianIntertwining :
      laplacianActionAt 1 (swapVector vector) =
        swapVector (laplacianActionAt 0 vector) := by
    rw [
      ← laplacianMatrix_action 1 (swapVector vector),
      ← laplacianMatrix_action 0 vector
    ]
    exact zeroOneLaplacianConjugacy.intertwines vector
  unfold finiteSemigroupActionAt
  rw [transitionIntertwining,
    laplacianIntertwining]
  funext state
  rfl

/-- At positive time, equal certified support at heights zero and one still does
not imply equal semigroup matrices. -/
theorem same_certified_support_but_distinct_semigroup_matrices :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      finiteSemigroupMatrixAt 0 1 ≠
        finiteSemigroupMatrixAt 1 1 := by
  refine ⟨certifiedSupport_zero_iff_one, ?_⟩
  intro equalMatrices
  have entryEqual :=
    congrArg
      (fun matrix : Matrix State State ℝ =>
        matrix (1 : State) (1 : State))
      equalMatrices
  have decayStrict :
      Real.exp (-1 : ℝ) < 1 := by
    exact (Real.exp_lt_one_iff).2 (by norm_num)
  simp [
    finiteSemigroupMatrixAt,
    laplacianMatrixAt,
    transitionMatrixAt_entry,
    identityEntry,
    decay,
    firstFraction,
    secondFraction
  ] at entryEqual
  nlinarith

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
