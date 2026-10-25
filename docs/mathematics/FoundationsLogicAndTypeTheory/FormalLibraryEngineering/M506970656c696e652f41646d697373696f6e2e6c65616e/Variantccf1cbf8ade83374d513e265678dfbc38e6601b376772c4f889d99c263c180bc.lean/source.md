# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f41646d697373696f6e2e6c65616e.Variantccf1cbf8ade83374d513e265678dfbc38e6601b376772c4f889d99c263c180bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e74792865a1b8890f15435a3b217b2d5cb588e67` · SHA-256 `42253b103ab8d7c101b1610eaa36f171f96e8d377bf5694b96cb3da22bb2e8e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmissionRecord.Variant169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AdmissionRecord.Variant169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691","mathematical_subject":"Foundations.Unclassified","original_sha256":"169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit0/Bit0/Bit1/M506970656c696e652f41646d697373696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436c61696d5374617475732e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f50726f6f66426f756e646172792e6c65616e

/- source-tree-label: STL1|L|addr=0100001|role=proof_code_atom|slug=pipeline-admission|owner=canonical_owner|core=Pipeline/Admission.lean|leaf=M506970656c696e652f41646d697373696f6e2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmissionRecord.Variant169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691

set_option autoImplicit false

namespace Think.Braid.Law

structure AdmissionRecord where
  status : ClaimStatus
  checkedLeanProof : Bool
  externalDischarge : Bool
deriving Repr

def admittedAsTheorem (record : AdmissionRecord) : Prop :=
  record.status = .checkedTheorem
    /\ record.checkedLeanProof = true
    /\ record.externalDischarge = true

theorem theorem_admission_crosses_boundary
    (record : AdmissionRecord) :
    admittedAsTheorem record ->
      crossesProofBoundary record.status = true := by
  intro hAdmission
  rw [hAdmission.left]
  rfl

theorem finite_witness_not_admitted_as_theorem
    (checkedLeanProof externalDischarge : Bool) :
    Not (admittedAsTheorem
      { status := .finiteWitness,
        checkedLeanProof := checkedLeanProof,
        externalDischarge := externalDischarge }) := by
  intro hAdmission
  cases hAdmission.left

end Think.Braid.Law
```
