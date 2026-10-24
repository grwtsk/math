import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v
variable {E : Type u} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {F : Type v} [NormedAddCommGroup F] [InnerProductSpace ℝ F]
variable {A : UnboundedOperator ℝ E} {B : UnboundedOperator ℝ F}
-- Hostile mutation: invertible exact operator transport omits the inner-product law.
example (P : FramedEquivalence A B) (hA : A.IsSymmetric) : B.IsSymmetric := by
  exact OrthogonalFramedEquivalence.symmetric_forward P hA
