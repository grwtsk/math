import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v
variable {E : Type u} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {F : Type v} [NormedAddCommGroup F] [InnerProductSpace ℝ F]
variable {A : UnboundedOperator ℝ E} {B : UnboundedOperator ℝ F}
example (P : FramedEquivalence A B)
    (hP : ∀ x y : E, inner ℝ (P.frame x) (P.frame y) = inner ℝ x y)
    (hA : A.IsSymmetric) : B.IsSymmetric := by
  exact (OrthogonalFramedEquivalence.mk P hP).symmetric_forward hA
