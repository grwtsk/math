# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f41646d697373696f6e2e6c65616e.Variant169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc983c2477b8eaa29285af45a735b7d29638662f` · SHA-256 `169b1645ddaf5d504b4e6dd12a33adf1ad9693960f214e6d42eaf2fc83059691`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436c61696d5374617475732e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f50726f6f66426f756e646172792e6c65616e

/- source-tree-label: STL1|L|addr=0100001|role=proof_code_atom|slug=pipeline-admission|owner=canonical_owner|core=Pipeline/Admission.lean|leaf=M506970656c696e652f41646d697373696f6e2e6c65616e.lean -/

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
