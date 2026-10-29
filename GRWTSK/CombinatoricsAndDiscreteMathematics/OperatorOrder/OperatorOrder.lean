import Mathematics.SemiLocalDefect.PrimeUniverse

/-!
# Abstract self-adjoint operator order

The primary capacity lives in a rational operator module with a certified
positive cone.  Concrete Hilbert-space operators enter through a realization
certificate; the structural cochain algebra does not depend on one chosen
realization.
-/

namespace Mathematics.SemiLocalDefect

universe uOperator uIndex

set_option linter.checkUnivs false in
structure OperatorModel where
  Operator : Type uOperator
  addCommGroup : AddCommGroup Operator
  rationalModule : Module ℚ Operator
  identity : Operator
  SelfAdjoint : Operator → Prop
  Nonnegative : Operator → Prop
  zero_selfAdjoint : SelfAdjoint 0
  identity_selfAdjoint : SelfAdjoint identity
  sub_selfAdjoint :
    ∀ {left right},
      SelfAdjoint left →
      SelfAdjoint right →
      SelfAdjoint (left - right)
  zero_nonnegative : Nonnegative 0
  add_nonnegative :
    ∀ {left right},
      Nonnegative left →
      Nonnegative right →
      Nonnegative (left + right)
  rational_smul_nonnegative :
    ∀ {scalar : ℚ} {operator},
      0 ≤ scalar →
      Nonnegative operator →
      Nonnegative (scalar • operator)
  pointed :
    ∀ {operator},
      Nonnegative operator →
      Nonnegative (-operator) →
      operator = 0

attribute [instance]
  OperatorModel.addCommGroup
  OperatorModel.rationalModule

def OperatorLE
    (model : OperatorModel)
    (left right : model.Operator) : Prop :=
  model.Nonnegative (right - left)

theorem operatorLE_refl
    (model : OperatorModel)
    (operator : model.Operator) :
    OperatorLE model operator operator := by
  simpa [OperatorLE] using model.zero_nonnegative

theorem operatorLE_trans
    (model : OperatorModel)
    {first second third : model.Operator}
    (firstSecond :
      OperatorLE model first second)
    (secondThird :
      OperatorLE model second third) :
    OperatorLE model first third := by
  have sumPositive :=
    model.add_nonnegative
      firstSecond secondThird
  simpa [OperatorLE] using sumPositive

theorem operatorLE_antisymm
    (model : OperatorModel)
    {left right : model.Operator}
    (leftRight : OperatorLE model left right)
    (rightLeft : OperatorLE model right left) :
    left = right := by
  have negPositive :
      model.Nonnegative (-(right - left)) := by
    simpa [OperatorLE] using rightLeft
  have differenceZero :
      right - left = 0 :=
    model.pointed leftRight negPositive
  exact (sub_eq_zero.mp differenceZero).symm

def OperatorPositive
    (model : OperatorModel)
    (operator : model.Operator) : Prop :=
  model.Nonnegative operator

theorem operatorFinsetSum_nonnegative
    (model : OperatorModel)
    {Index : Type uIndex}
    [DecidableEq Index]
    (indices : Finset Index)
    (operator : Index → model.Operator)
    (positive :
      ∀ index ∈ indices,
        model.Nonnegative (operator index)) :
    model.Nonnegative
      (∑ index ∈ indices, operator index) := by
  classical
  induction indices using Finset.induction_on with
  | empty =>
      simpa using model.zero_nonnegative
  | @insert index rest notMember induction =>
      rw [Finset.sum_insert notMember]
      exact model.add_nonnegative
        (positive index
          (Finset.mem_insert_self index rest))
        (induction (by
          intro member memberInRest
          exact positive member
            (Finset.mem_insert_of_mem
              memberInRest)))

end Mathematics.SemiLocalDefect
