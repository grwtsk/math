import Mathlib.Analysis.Normed.Operator.Compact.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import GRWTSK.Analysis.OperatorTheory.UnboundedPortAnalytic

namespace GRWTSK.Algebra.KTheory.UnboundedKasparovCycle

open GRWTSK.Analysis.OperatorTheory.UnboundedPort
open scoped InnerProductSpace

universe u v

variable {A : Type u} [Semiring A]
variable {H : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H]

namespace UnboundedOperator

/-- Complex symmetry on the exact declared domain. -/
def IsComplexSymmetric (D : UnboundedOperator ℂ H) : Prop :=
  ∀ x y : D.domain,
    ⟪D.apply x, (y : H)⟫_ℂ = ⟪(x : H), D.apply y⟫_ℂ

/-- Shifted unbounded operator `D - z` on the exact domain. -/
def shifted (D : UnboundedOperator ℂ H) (z : ℂ) : D.domain →ₗ[ℂ] H :=
  D.toLinearMap - z • D.domain.subtype

@[simp]
theorem shifted_apply (D : UnboundedOperator ℂ H) (z : ℂ) (x : D.domain) :
    UnboundedOperator.shifted D z x = D.apply x - z • (x : H) := rfl

end UnboundedOperator

/-- Compact inverse witness for one shifted unbounded operator.

The bounded inverse must map the ambient Hilbert space into the exact operator domain, be a
left and right inverse there, and be compact as an ambient operator. -/
structure CompactResolventWitness (D : UnboundedOperator ℂ H) (z : ℂ) where
  inverse : H →L[ℂ] H
  mapsDomain : ∀ y, inverse y ∈ D.domain
  compact : IsCompactOperator inverse
  rightInverse : ∀ y,
    UnboundedOperator.shifted D z ⟨inverse y, mapsDomain y⟩ = y
  leftInverse : ∀ x : D.domain,
    inverse (UnboundedOperator.shifted D z x) = (x : H)

namespace CompactResolventWitness

variable {D : UnboundedOperator ℂ H} {z : ℂ}

/-- The compact inverse as a linear map into the exact domain. -/
def domainMap (R : CompactResolventWitness D z) : H →ₗ[ℂ] D.domain where
  toFun y := ⟨R.inverse y, R.mapsDomain y⟩
  map_add' x y := by
    apply Subtype.ext
    simp
  map_smul' r x := by
    apply Subtype.ext
    simp

@[simp]
theorem coe_domainMap (R : CompactResolventWitness D z) (y : H) :
    ((R.domainMap y : D.domain) : H) = R.inverse y := rfl

/-- Pointwise right inverse equation. -/
@[simp]
theorem shifted_domainMap (R : CompactResolventWitness D z) (y : H) :
    UnboundedOperator.shifted D z (R.domainMap y) = y :=
  R.rightInverse y

/-- Pointwise left inverse equation in the exact domain. -/
theorem domainMap_shifted (R : CompactResolventWitness D z) (x : D.domain) :
    R.domainMap (UnboundedOperator.shifted D z x) = x := by
  apply Subtype.ext
  exact R.leftInverse x

/-- The selected shift is bijective from the exact domain to the ambient Hilbert space. -/
theorem shifted_bijective (R : CompactResolventWitness D z) :
    Function.Bijective (UnboundedOperator.shifted D z) := by
  constructor
  · intro x y hxy
    calc
      x = R.domainMap (UnboundedOperator.shifted D z x) := (R.domainMap_shifted x).symm
      _ = R.domainMap (UnboundedOperator.shifted D z y) := by rw [hxy]
      _ = y := R.domainMap_shifted y
  · intro y
    exact ⟨R.domainMap y, R.shifted_domainMap y⟩

/-- The compact inverse is uniquely determined by the shifted inverse equations. -/
theorem inverse_apply_unique
    (R : CompactResolventWitness D z) (y : H) (x : D.domain)
    (hx : UnboundedOperator.shifted D z x = y) :
    (x : H) = R.inverse y := by
  have hdomain : x = R.domainMap y := by
    apply R.shifted_bijective.1
    rw [hx, R.shifted_domainMap]
  exact congrArg Subtype.val hdomain

end CompactResolventWitness

/-- Domain-aware unbounded Kasparov-cycle interface.

This records the analytic hypotheses needed before constructing a bounded transform or product:
a dense closed symmetric operator, domain invariance of the representation, bounded represented
commutators, and one compact resolvent witness. The representation is a semiring homomorphism
and parity is a tag; a C⋆-algebra, star-preserving representation, and grading laws remain further
obligations for analytic KK. -/
structure Cycle (A : Type u) [Semiring A]
    (H : Type v) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  representation : A →+* (H →L[ℂ] H)
  operator : UnboundedOperator ℂ H
  parity : Bool
  denseDomain : Dense (operator.domain : Set H)
  closedGraph : IsClosed (graphSet operator)
  symmetric : UnboundedOperator.IsComplexSymmetric operator
  domainInvariant : ∀ a (x : operator.domain), representation a x ∈ operator.domain
  boundedCommutator : A → (H →L[ℂ] H)
  boundedCommutator_agrees : ∀ a (x : operator.domain),
    operator.apply ⟨representation a x, domainInvariant a x⟩ -
        representation a (operator.apply x) =
      boundedCommutator a x
  resolventParameter : ℂ
  compactResolvent : CompactResolventWitness operator resolventParameter

variable [CompleteSpace H]

namespace Cycle

/-- The represented commutator agrees with the selected bounded extension on the exact domain. -/
theorem commutator_apply (X : Cycle A H) (a : A) (x : X.operator.domain) :
    X.operator.apply ⟨X.representation a x, X.domainInvariant a x⟩ -
        X.representation a (X.operator.apply x) =
      X.boundedCommutator a x :=
  X.boundedCommutator_agrees a x

/-- The selected shifted operator is bijective. -/
theorem resolventShift_bijective (X : Cycle A H) :
    Function.Bijective (UnboundedOperator.shifted X.operator X.resolventParameter) :=
  X.compactResolvent.shifted_bijective

/-- The selected bounded resolvent is compact. -/
theorem resolvent_compact (X : Cycle A H) :
    IsCompactOperator X.compactResolvent.inverse :=
  X.compactResolvent.compact

end Cycle

end GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
