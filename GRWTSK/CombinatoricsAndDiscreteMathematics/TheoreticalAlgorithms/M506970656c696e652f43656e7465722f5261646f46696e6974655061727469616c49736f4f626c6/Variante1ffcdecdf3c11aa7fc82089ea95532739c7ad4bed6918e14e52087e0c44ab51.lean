import Think.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c65616e


/- source-tree-label: STL1|L|addr=11110011|role=proof_code_atom|slug=pipeline-center-radofinitepartialisoobligations|owner=canonical_owner|core=Pipeline/Center/RadoFinitePartialIsoObligations.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c69676174696f6e732e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePartialIsoObligations

/-!
Finite obligation ledger for future partial-isomorphism extension work.

This module records only finite, local obligation tags. It does not assert an
extension theorem, an existence theorem, homogeneity, back-and-forth,
universality, countability, Fraisse-limit authority, or model-theoretic
transfer.
-/

inductive PartialIsoExtensionObligationTag where
  | chooseFreshWitness
  | preserveDomainMembership
  | preserveImageMembership
  | preserveSourceToTargetEdges
  | preserveTargetToSourceEdges
deriving DecidableEq, Repr

def finitePartialIsoExtensionObligationTags :
    List PartialIsoExtensionObligationTag :=
  [ PartialIsoExtensionObligationTag.chooseFreshWitness
  , PartialIsoExtensionObligationTag.preserveDomainMembership
  , PartialIsoExtensionObligationTag.preserveImageMembership
  , PartialIsoExtensionObligationTag.preserveSourceToTargetEdges
  , PartialIsoExtensionObligationTag.preserveTargetToSourceEdges
  ]

theorem finitePartialIsoExtensionObligationTags_length :
    finitePartialIsoExtensionObligationTags.length = 5 := by
  rfl

theorem finitePartialIso_chooseFreshWitness_mem_obligations :
    PartialIsoExtensionObligationTag.chooseFreshWitness ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveDomainMembership_mem_obligations :
    PartialIsoExtensionObligationTag.preserveDomainMembership ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveImageMembership_mem_obligations :
    PartialIsoExtensionObligationTag.preserveImageMembership ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveSourceToTargetEdges_mem_obligations :
    PartialIsoExtensionObligationTag.preserveSourceToTargetEdges ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveTargetToSourceEdges_mem_obligations :
    PartialIsoExtensionObligationTag.preserveTargetToSourceEdges ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

end Think.Pipeline.Center.RadoFinitePartialIsoObligations
