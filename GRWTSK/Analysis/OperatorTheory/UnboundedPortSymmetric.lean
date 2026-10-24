import Mathlib.Analysis.InnerProductSpace.Basic
import GRWTSK.Analysis.OperatorTheory.UnboundedPortEquivalence

namespace GRWTSK.Analysis.OperatorTheory.UnboundedPort

open scoped InnerProductSpace

universe v w

variable {E : Type v} {F : Type w}
variable [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable [NormedAddCommGroup F] [InnerProductSpace ℝ F]

namespace UnboundedOperator

/-- Symmetry on the exact declared domain of a real inner-product-space operator. -/
def IsSymmetric (A : UnboundedOperator ℝ E) : Prop :=
  ∀ x y : A.domain,
    ⟪A.apply x, (y : E)⟫_ℝ = ⟪(x : E), A.apply y⟫_ℝ

end UnboundedOperator

/-- Exact framed operator equivalence whose ambient frame preserves the inner product. -/
structure OrthogonalFramedEquivalence
    (A : UnboundedOperator ℝ E) (B : UnboundedOperator ℝ F) where
  toFramedEquivalence : FramedEquivalence A B
  inner_map : ∀ x y : E,
    ⟪toFramedEquivalence.frame x, toFramedEquivalence.frame y⟫_ℝ = ⟪x, y⟫_ℝ

namespace OrthogonalFramedEquivalence

variable {A : UnboundedOperator ℝ E}
variable {B : UnboundedOperator ℝ F}

/-- Reverse an orthogonal framed operator equivalence. -/
def symm (P : OrthogonalFramedEquivalence A B) :
    OrthogonalFramedEquivalence B A where
  toFramedEquivalence := P.toFramedEquivalence.symm
  inner_map y z := by
    simpa [FramedEquivalence.symm] using
      (P.inner_map
        (P.toFramedEquivalence.frame.symm y)
        (P.toFramedEquivalence.frame.symm z)).symm

/-- Symmetry of an unbounded operator transports through an exact orthogonal frame. -/
theorem symmetric_forward
    (P : OrthogonalFramedEquivalence A B)
    (hA : A.IsSymmetric) : B.IsSymmetric := by
  intro y z
  let x : A.domain := P.toFramedEquivalence.domainEquiv.symm y
  let w : A.domain := P.toFramedEquivalence.domainEquiv.symm z
  have hy : P.toFramedEquivalence.domainEquiv x = y :=
    P.toFramedEquivalence.domainEquiv.apply_symm_apply y
  have hz : P.toFramedEquivalence.domainEquiv w = z :=
    P.toFramedEquivalence.domainEquiv.apply_symm_apply z
  calc
    ⟪B.apply y, (z : F)⟫_ℝ =
        ⟪B.apply (P.toFramedEquivalence.domainEquiv x),
          (P.toFramedEquivalence.domainEquiv w : F)⟫_ℝ := by
            rw [hy, hz]
    _ = ⟪P.toFramedEquivalence.frame (A.apply x),
          P.toFramedEquivalence.frame (w : E)⟫_ℝ := by
            rw [← P.toFramedEquivalence.intertwines_apply x]
            rfl
    _ = ⟪A.apply x, (w : E)⟫_ℝ :=
          P.inner_map (A.apply x) (w : E)
    _ = ⟪(x : E), A.apply w⟫_ℝ := hA x w
    _ = ⟪P.toFramedEquivalence.frame (x : E),
          P.toFramedEquivalence.frame (A.apply w)⟫_ℝ :=
          (P.inner_map (x : E) (A.apply w)).symm
    _ = ⟪(P.toFramedEquivalence.domainEquiv x : F),
          B.apply (P.toFramedEquivalence.domainEquiv w)⟫_ℝ := by
            rw [← P.toFramedEquivalence.intertwines_apply w]
            rfl
    _ = ⟪(y : F), B.apply z⟫_ℝ := by
          rw [hy, hz]

/-- Symmetry is equivalent on both sides of an exact orthogonal framed equivalence. -/
theorem symmetric_iff (P : OrthogonalFramedEquivalence A B) :
    A.IsSymmetric ↔ B.IsSymmetric := by
  constructor
  · exact P.symmetric_forward
  · exact P.symm.symmetric_forward

end OrthogonalFramedEquivalence

end GRWTSK.Analysis.OperatorTheory.UnboundedPort
