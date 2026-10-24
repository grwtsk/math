import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
universe u v w
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {A : UnboundedOperator R E} {B : UnboundedOperator R F}
example (U : E →ₗ[R] F) (hU : ∀ x : A.domain, U x ∈ B.domain) : Port A B where
  map := U
  map_domain := hU
