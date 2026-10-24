import Mathlib
import GRWTSK.Algebra.LinearAlgebra.FramedFiberPort

namespace GRWTSK.Analysis.OperatorTheory.UnboundedPort

universe u v w x

/-- An algebraic unbounded operator with an explicit linear domain.

No topology, closedness, density, or self-adjointness is inferred from this structure. -/
structure UnboundedOperator
    (R : Type u) [Ring R]
    (E : Type v) [AddCommGroup E] [Module R E] where
  domain : Submodule R E
  toLinearMap : domain →ₗ[R] E

namespace UnboundedOperator

variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]

/-- Apply an unbounded operator to a vector carrying its domain proof. -/
def apply (A : UnboundedOperator R E) (x : A.domain) : E :=
  A.toLinearMap x

end UnboundedOperator

/-- A domain-aware port between two unbounded operators. -/
structure Port
    {R : Type u} [Ring R]
    {E : Type v} {F : Type w}
    [AddCommGroup E] [Module R E]
    [AddCommGroup F] [Module R F]
    (A : UnboundedOperator R E) (B : UnboundedOperator R F) where
  map : E →ₗ[R] F
  map_domain : ∀ x : A.domain, map x ∈ B.domain

namespace Port

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w} {G : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]
variable [AddCommGroup G] [Module R G]
variable {A : UnboundedOperator R E}
variable {B : UnboundedOperator R F}
variable {C : UnboundedOperator R G}

/-- The induced linear map between the exact operator domains. -/
def domainMap (P : Port A B) : A.domain →ₗ[R] B.domain where
  toFun x := ⟨P.map x, P.map_domain x⟩
  map_add' x y := by
    ext
    simp
  map_smul' r x := by
    ext
    simp

@[simp]
theorem coe_domainMap (P : Port A B) (x : A.domain) :
    ((P.domainMap x : B.domain) : F) = P.map x := rfl

/-- The exact domain-aware operator defect. -/
def defect (P : Port A B) : A.domain →ₗ[R] F :=
  P.map.comp A.toLinearMap - B.toLinearMap.comp P.domainMap

/-- Exact unbounded-operator transport through a domain-aware port. -/
def Intertwines (P : Port A B) : Prop :=
  P.map.comp A.toLinearMap = B.toLinearMap.comp P.domainMap

/-- Exact intertwining is equivalent to vanishing of the domain-aware defect. -/
theorem intertwines_iff_defect_eq_zero (P : Port A B) :
    P.Intertwines ↔ P.defect = 0 := by
  exact sub_eq_zero.symm

/-- The identity domain-aware port. -/
def identity (A : UnboundedOperator R E) : Port A A where
  map := LinearMap.id
  map_domain x := x.property

/-- The identity port is an exact unbounded intertwiner. -/
theorem identity_intertwines (A : UnboundedOperator R E) :
    (identity A).Intertwines := by
  unfold Intertwines
  ext x
  rfl

/-- Compose domain-aware ports while retaining the exact intermediate domain. -/
def comp (Q : Port B C) (P : Port A B) : Port A C where
  map := Q.map.comp P.map
  map_domain x := Q.map_domain (P.domainMap x)

@[simp]
theorem domainMap_comp_apply
    (Q : Port B C) (P : Port A B) (x : A.domain) :
    (comp Q P).domainMap x = Q.domainMap (P.domainMap x) := by
  rfl

/-- Unbounded port defects obey the same exact cocycle identity as bounded port defects,
with every operator evaluated only on its declared domain. -/
theorem defect_comp_apply
    (Q : Port B C) (P : Port A B) (x : A.domain) :
    (comp Q P).defect x =
      Q.map (P.defect x) + Q.defect (P.domainMap x) := by
  simp [defect, comp, domainMap, LinearMap.comp_apply]

/-- Equality form of the domain-aware defect composition law. -/
theorem defect_comp
    (Q : Port B C) (P : Port A B) :
    (comp Q P).defect =
      Q.map.comp P.defect + Q.defect.comp P.domainMap := by
  ext x
  exact defect_comp_apply Q P x

/-- Exact domain-aware unbounded intertwiners compose. -/
theorem Intertwines.comp
    (Q : Port B C) (P : Port A B)
    (hQ : Q.Intertwines) (hP : P.Intertwines) :
    (comp Q P).Intertwines := by
  rw [intertwines_iff_defect_eq_zero] at hQ hP ⊢
  rw [defect_comp, hP, hQ]
  simp

/-- A proof-carrying exact unbounded-operator lift. -/
structure ExactLift (A : UnboundedOperator R E) (B : UnboundedOperator R F) where
  port : Port A B
  isExact : port.Intertwines

namespace ExactLift

/-- Exact unbounded lifts compose through the exact middle operator and domain. -/
def comp
    (Q : ExactLift B C) (P : ExactLift A B) :
    ExactLift A C where
  port := Port.comp Q.port P.port
  isExact := Port.Intertwines.comp Q.port P.port Q.isExact P.isExact

end ExactLift

/-- A framed unbounded port records an ambient linear equivalence separately from domain transport. -/
structure FramedPort (A : UnboundedOperator R E) (B : UnboundedOperator R F) where
  frame : E ≃ₗ[R] F
  frame_maps_domain : ∀ x : A.domain, frame x ∈ B.domain

namespace FramedPort

/-- Forget a frame to its domain-aware linear port. -/
def toPort (P : FramedPort A B) : Port A B where
  map := P.frame.toLinearMap
  map_domain := P.frame_maps_domain

/-- Exact framed lifting remains an explicit equation on the transported domain. -/
def Intertwines (P : FramedPort A B) : Prop :=
  P.toPort.Intertwines

end FramedPort

end Port

end GRWTSK.Analysis.OperatorTheory.UnboundedPort
