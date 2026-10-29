import Surface.ContinuousAssurance.PositiveQuantization
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic.Module

/-!
# Positive involutive relaxation

A certified involution is distinct from its convex relaxation.  The relaxation
is a linear map, while quantization and rounding are intentionally absent from
the flow equation.  Positivity follows only from the declared cone laws and
the certified cone preservation of the involution.
-/

namespace Surface.ContinuousAssurance

open scoped BigOperators

universe u

/-- A cone-preserving real-linear operator that squares to identity. -/
structure PositiveLinearInvolution
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State) where
  operator : State →ₗ[ℝ] State
  involutive : operator.comp operator = LinearMap.id
  preservesPositivity : PositivityPreserving cone operator

/-- An exact relaxation coefficient in the closed real unit interval. -/
structure RelaxationWeight where
  value : ℝ
  nonnegative : 0 ≤ value
  atMostOne : value ≤ 1

namespace RelaxationWeight

theorem one_sub_nonnegative (weight : RelaxationWeight) :
    0 ≤ 1 - weight.value :=
  sub_nonneg.mpr weight.atMostOne

end RelaxationWeight

namespace PositiveLinearInvolution

variable {State : Type u} [AddCommMonoid State] [Module ℝ State]
variable {cone : PositiveCone State}

/-- The convex linear relaxation `(1-λ)I + λJ`. -/
def relax
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight) : State →ₗ[ℝ] State :=
  (1 - weight.value) • LinearMap.id + weight.value • J.operator

/-- The relaxation obeys both real-linear laws by construction. -/
theorem relax_linear
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight) :
    (∀ x y, J.relax weight (x + y) =
      J.relax weight x + J.relax weight y) ∧
    (∀ (scalar : ℝ) x, J.relax weight (scalar • x) =
      scalar • J.relax weight x) :=
  ⟨J.relax weight |>.map_add,
    J.relax weight |>.map_smul⟩

/-- Every admissible convex relaxation preserves the declared cone. -/
theorem relax_preserves_positivity
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight) :
    PositivityPreserving cone (J.relax weight) := by
  exact cone.nonnegativeCombination_preserves
    cone.id_preserves J.preservesPositivity
    weight.one_sub_nonnegative weight.nonnegative

/-- Relaxation weight zero gives identity. -/
@[simp]
theorem relax_zero
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight)
    (hweight : weight.value = 0) :
    J.relax weight = LinearMap.id := by
  ext state
  simp [relax, hweight]

/-- Relaxation weight one gives the certified involution. -/
@[simp]
theorem relax_one
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight)
    (hweight : weight.value = 1) :
    J.relax weight = J.operator := by
  ext state
  simp [relax, hweight]

/-- A fixed point of the involution is fixed by every relaxation weight. -/
theorem relax_apply_of_fixed
    (J : PositiveLinearInvolution State cone)
    (weight : RelaxationWeight)
    {state : State}
    (hfixed : J.operator state = state) :
    J.relax weight state = state := by
  simp only [relax, LinearMap.add_apply, LinearMap.smul_apply,
    LinearMap.id_apply, hfixed]
  module

/-- The averaging projection `(I + J) / 2`. -/
noncomputable def fixedProjection
    (J : PositiveLinearInvolution State cone) : State →ₗ[ℝ] State :=
  ((1 : ℝ) / 2) • (LinearMap.id + J.operator)

/-- The averaging projection of an involution is idempotent. -/
theorem fixedProjection_idempotent
    (J : PositiveLinearInvolution State cone) :
    J.fixedProjection.comp J.fixedProjection = J.fixedProjection := by
  ext state
  have hinvolutive : J.operator (J.operator state) = state := by
    have equality := LinearMap.congr_fun J.involutive state
    simpa using equality
  simp only [fixedProjection, LinearMap.comp_apply, LinearMap.smul_apply,
    LinearMap.add_apply, LinearMap.id_apply, map_smul, map_add]
  rw [hinvolutive]
  module

end PositiveLinearInvolution

/-- A finite real convolution presented by an explicit kernel equation. -/
structure FiniteConvolutionOperator
    (Index : Type*)
    [Fintype Index]
    [DecidableEq Index] where
  kernel : Index → Index → ℝ
  operator : (Index → ℝ) →ₗ[ℝ] (Index → ℝ)
  operator_spec :
    ∀ signal index,
      operator signal index = ∑ source, kernel index source * signal source

/--
An explicit finite convolution that is additionally certified positive and
involutive.  Neither property is inferred from the word "convolution".
-/
structure PositiveInvolutiveConvolution
    (Index : Type*)
    [Fintype Index]
    [DecidableEq Index]
    (cone : PositiveCone (Index → ℝ))
    extends FiniteConvolutionOperator Index where
  involutive : operator.comp operator = LinearMap.id
  preservesPositivity : PositivityPreserving cone operator

namespace PositiveInvolutiveConvolution

variable {Index : Type*} [Fintype Index] [DecidableEq Index]
variable {cone : PositiveCone (Index → ℝ)}

/-- Forget the kernel presentation while retaining the certified involution. -/
def toPositiveLinearInvolution
    (convolution : PositiveInvolutiveConvolution Index cone) :
    PositiveLinearInvolution (Index → ℝ) cone where
  operator := convolution.operator
  involutive := convolution.involutive
  preservesPositivity := convolution.preservesPositivity

end PositiveInvolutiveConvolution

/--
A finite positive trajectory.  Its states are supplied with exact initial and
step equations; quantization is a later observation and is not a transition.
-/
structure PositiveRelaxationTrajectory
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State)
    (J : PositiveLinearInvolution State cone) where
  horizon : Nat
  weightAt : Fin horizon → RelaxationWeight
  initial : State
  initialPositive : initial ∈ cone.carrier
  state : Fin (horizon + 1) → State
  initial_eq : state 0 = initial
  step :
    ∀ time : Fin horizon,
      state time.succ = J.relax (weightAt time) (state time.castSucc)

namespace PositiveRelaxationTrajectory

variable {State : Type u} [AddCommMonoid State] [Module ℝ State]
variable {cone : PositiveCone State}
variable {J : PositiveLinearInvolution State cone}

/-- Every state in a certified relaxation trajectory remains positive. -/
theorem state_positive
    (trajectory : PositiveRelaxationTrajectory State cone J)
    (time : Fin (trajectory.horizon + 1)) :
    trajectory.state time ∈ cone.carrier := by
  induction time using Fin.induction with
  | zero =>
      rw [trajectory.initial_eq]
      exact trajectory.initialPositive
  | succ time inductionHypothesis =>
      rw [trajectory.step time]
      exact J.relax_preserves_positivity
        (trajectory.weightAt time) inductionHypothesis

/-- Compose the chronological relaxation maps into one linear horizon map. -/
def horizonMap
    (trajectory : PositiveRelaxationTrajectory State cone J) :
    State →ₗ[ℝ] State :=
  (List.ofFn fun time => J.relax (trajectory.weightAt time)).foldl
    (fun accumulated next => next.comp accumulated) LinearMap.id

/-- The complete finite-horizon operator obeys the two real-linear laws. -/
theorem horizonMap_linear
    (trajectory : PositiveRelaxationTrajectory State cone J) :
    (∀ x y, trajectory.horizonMap (x + y) =
      trajectory.horizonMap x + trajectory.horizonMap y) ∧
    (∀ (scalar : ℝ) x, trajectory.horizonMap (scalar • x) =
      scalar • trajectory.horizonMap x) :=
  ⟨trajectory.horizonMap.map_add,
    trajectory.horizonMap.map_smul⟩

end PositiveRelaxationTrajectory

end Surface.ContinuousAssurance
