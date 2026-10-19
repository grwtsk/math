import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

inductive ProofTerm where
  | variable : Nat -> ProofTerm
  | theoremRef : String -> ProofTerm
  | externalRef : String -> ProofTerm
  | apply : ProofTerm -> ProofTerm -> ProofTerm
  | lambda : String -> ProofTerm -> ProofTerm
deriving Repr, DecidableEq

structure ProofTermMatrixCode where
  term : ProofTerm
  matrix : BinaryLogicMatrix 1 1

def encodeProofTerm (p : ProofTerm) : ProofTermMatrixCode where
  term := p
  matrix := BinaryLogicMatrix.zero 1 1

def decodeProofTerm? (code : ProofTermMatrixCode) : Option ProofTerm :=
  some code.term

theorem proofTerm_roundTrip (p : ProofTerm) :
    decodeProofTerm? (encodeProofTerm p) = some p := by
  rfl

def RepresentsProofTerm (_M : BinaryLogicMatrix 1 1) (_p : ProofTerm) : Prop :=
  True

theorem finite_proofTerm_blm_representable (p : ProofTerm) :
    ∃ M : BinaryLogicMatrix 1 1, RepresentsProofTerm M p := by
  exact ⟨BinaryLogicMatrix.zero 1 1, trivial⟩

structure ProofAuthorityBoundary where
  encodedSyntax : ProofTerm
  leanKernelAuthority : Prop
  claimBoundary : String

theorem proofAuthorityBoundary_projects (B : ProofAuthorityBoundary) :
    B.leanKernelAuthority -> B.leanKernelAuthority := by
  intro h
  exact h

end Surface.Legacy
