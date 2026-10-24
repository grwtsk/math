import GRWTSK.Analysis.OperatorTheory.UnboundedPort

namespace GRWTSK.Analysis.OperatorTheory.UnboundedPort

universe u v w x

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w} {G : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]
variable [AddCommGroup G] [Module R G]

/-- Set-theoretic graph of an algebraic unbounded operator. -/
def graphSet (A : UnboundedOperator R E) : Set (E × E) :=
  {p | ∃ x : A.domain, p = (x.1, A.apply x)}

/-- A framed equivalence of exact unbounded-operator domains.

The frame is ambient; both domain directions and the operator equation are separate proof fields. -/
structure FramedEquivalence
    (A : UnboundedOperator R E) (B : UnboundedOperator R F) where
  frame : E ≃ₗ[R] F
  frame_maps_domain : ∀ x : A.domain, frame x ∈ B.domain
  symm_maps_domain : ∀ y : B.domain, frame.symm y ∈ A.domain
  intertwines :
    (Port.mk frame.toLinearMap frame_maps_domain).Intertwines

namespace FramedEquivalence

variable {A : UnboundedOperator R E}
variable {B : UnboundedOperator R F}
variable {C : UnboundedOperator R G}

/-- Forget a framed domain equivalence to its forward exact port. -/
def toPort (P : FramedEquivalence A B) : Port A B where
  map := P.frame.toLinearMap
  map_domain := P.frame_maps_domain

/-- Exact linear equivalence of the declared operator domains. -/
def domainEquiv (P : FramedEquivalence A B) : A.domain ≃ₗ[R] B.domain where
  toFun x := ⟨P.frame x, P.frame_maps_domain x⟩
  invFun y := ⟨P.frame.symm y, P.symm_maps_domain y⟩
  left_inv x := by
    apply Subtype.ext
    exact P.frame.symm_apply_apply x
  right_inv y := by
    apply Subtype.ext
    exact P.frame.apply_symm_apply y
  map_add' x y := by
    apply Subtype.ext
    simp
  map_smul' r x := by
    apply Subtype.ext
    simp

@[simp]
theorem coe_domainEquiv (P : FramedEquivalence A B) (x : A.domain) :
    ((P.domainEquiv x : B.domain) : F) = P.frame x := rfl

/-- Pointwise exact intertwining on the declared domain. -/
theorem intertwines_apply (P : FramedEquivalence A B) (x : A.domain) :
    P.frame (A.apply x) = B.apply (P.domainEquiv x) := by
  have h := congrArg (fun L : A.domain →ₗ[R] F => L x) P.intertwines
  simpa [Port.Intertwines, Port.domainMap, domainEquiv,
    UnboundedOperator.apply, LinearMap.comp_apply] using h

/-- Inverse framed domain equivalence. -/
def symm (P : FramedEquivalence A B) : FramedEquivalence B A where
  frame := P.frame.symm
  frame_maps_domain := P.symm_maps_domain
  symm_maps_domain := P.frame_maps_domain
  intertwines := by
    unfold Port.Intertwines
    ext y
    apply P.frame.injective
    have h := P.intertwines_apply (P.domainEquiv.symm y)
    simpa [Port.domainMap, UnboundedOperator.apply,
      LinearMap.comp_apply, domainEquiv] using h.symm

/-- Identity framed domain equivalence. -/
def identity (A : UnboundedOperator R E) : FramedEquivalence A A where
  frame := LinearEquiv.refl R E
  frame_maps_domain := fun x => x.property
  symm_maps_domain := fun x => x.property
  intertwines := Port.identity_intertwines A

/-- Composition retains the exact intermediate operator domain. -/
def comp
    (Q : FramedEquivalence B C) (P : FramedEquivalence A B) :
    FramedEquivalence A C where
  frame := P.frame.trans Q.frame
  frame_maps_domain := fun x => Q.frame_maps_domain (P.domainEquiv x)
  symm_maps_domain := fun z => P.symm_maps_domain (Q.domainEquiv.symm z)
  intertwines := by
    unfold Port.Intertwines
    ext x
    change Q.frame (P.frame (A.apply x)) =
      C.apply
        ⟨Q.frame (P.frame x), Q.frame_maps_domain (P.domainEquiv x)⟩
    rw [P.intertwines_apply, Q.intertwines_apply]
    rfl

/-- Conjugation formula on the exact transported domain. -/
theorem conjugation_apply (P : FramedEquivalence A B) (y : B.domain) :
    B.apply y = P.frame (A.apply (P.domainEquiv.symm y)) := by
  simpa using (P.intertwines_apply (P.domainEquiv.symm y)).symm

/-- Product action of the frame on an operator graph. -/
def graphFrame (P : FramedEquivalence A B) : E × E → F × F :=
  fun p => (P.frame p.1, P.frame p.2)

/-- The exact operator graph is transported by the ambient frame in both coordinates. -/
theorem image_graphSet (P : FramedEquivalence A B) :
    P.graphFrame '' graphSet A = graphSet B := by
  ext q
  constructor
  · rintro ⟨p, ⟨x, rfl⟩, rfl⟩
    refine ⟨P.domainEquiv x, ?_⟩
    apply Prod.ext
    · rfl
    · exact P.intertwines_apply x
  · rintro ⟨y, rfl⟩
    let x : A.domain := P.domainEquiv.symm y
    have hy : P.domainEquiv x = y := P.domainEquiv.apply_symm_apply y
    refine ⟨(x.1, A.apply x), ⟨x, rfl⟩, ?_⟩
    apply Prod.ext
    · exact congrArg Subtype.val hy
    · simpa [graphFrame, hy] using P.intertwines_apply x

end FramedEquivalence

end GRWTSK.Analysis.OperatorTheory.UnboundedPort
