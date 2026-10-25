# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e.Variant8fe1880801dba244eb14c7d847269bfbcfbcb9785ddab4bfe6aa43d7f34d6f5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17bda8e0fd9a8ab4fac059a3a575af998f97c220` · SHA-256 `33036c019153bd8d3523fd9931810d18e4dd2bf023cc510dc067f8a081dec515`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalizationScope.Variantd2b4ebd8dad6002f33001dac7f974d879302d41b860192a08930997124d40c95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2b4ebd8dad6002f33001dac7f974d879302d41b860192a08930997124d40c95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormalizationScope.Variantd2b4ebd8dad6002f33001dac7f974d879302d41b860192a08930997124d40c95","mathematical_subject":"Foundations.Unclassified","original_sha256":"d2b4ebd8dad6002f33001dac7f974d879302d41b860192a08930997124d40c95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit1/Bit0/Bit0/M4b65726e656c2f5468656f72656d732f42617369632e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=00111100|role=proof_code_atom|slug=kernel-theorems-basic|owner=canonical_owner|core=Kernel/Theorems/Basic.lean|leaf=M4b65726e656c2f5468656f72656d732f42617369632e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalizationScope.Variantd2b4ebd8dad6002f33001dac7f974d879302d41b860192a08930997124d40c95

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
```
