import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=00111100|role=proof_code_atom|slug=kernel-theorems-basic|owner=canonical_owner|core=Kernel/Theorems/Basic.lean|leaf=M4b65726e656c2f5468656f72656d732f42617369632e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel.Theorems

inductive FormalizationScope where
  | residueInfrastructure
  | theoremStatementFormalization
  | theoremProofFormalization
deriving DecidableEq, Repr

inductive ProofStatus where
  | proofComplete
  | proofPending
  | refusedBoundary
  | residueBlocked
deriving DecidableEq, Repr

structure FormalTheorem where
  name : String
  source : String
  claim : Prop
  status : ProofStatus
  checked : Think.Checked claim

def currentScope : FormalizationScope :=
  FormalizationScope.theoremProofFormalization

theorem currentScope_is_actual_theorem_formalization :
    currentScope = FormalizationScope.theoremProofFormalization := by
  rfl

def FormalTheorem.hasCompleteProof (t : FormalTheorem) : Prop :=
  t.status = ProofStatus.proofComplete ∧ t.checked.isProved = true

theorem checked_isProved_true_hasResidue_false
    {P : Prop}
    (c : Think.Checked P)
    (h : c.isProved = true) :
    c.hasResidue = false := by
  cases c with
  | proved _ =>
      rfl
  | residue rs =>
      cases h

theorem FormalTheorem.complete_has_no_residue
    (t : FormalTheorem)
    (h : t.hasCompleteProof) :
    t.checked.hasResidue = false := by
  exact checked_isProved_true_hasResidue_false t.checked h.2

end Think.Kernel.Theorems
