import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter

namespace Surface.Legacy

structure ProofAdapterDescriptor where
  term : ProofTerm
  theoremDescriptor : EncodedTheorem
  syntaxRoundTrip : Prop
  proofAuthorityBoundary : String

theorem proofAdapter_syntax_roundTrip_projects
    (A : ProofAdapterDescriptor) :
    A.syntaxRoundTrip -> A.syntaxRoundTrip := by
  intro h
  exact h

theorem proofAdapter_preserves_theorem_statement
    (A : ProofAdapterDescriptor) :
    A.theoremDescriptor.statement :=
  A.theoremDescriptor.soundProof

end Surface.Legacy
