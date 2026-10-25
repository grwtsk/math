# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharge.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd57fbae4bac643159a262d458002a23a7b9c39c` · SHA-256 `528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Problem

/-! # Certificate-gated discharge -/

namespace Mathematics.Mutation

inductive DischargeKind
  | clarification
  | juris
  | containment
  | rollback
  | localRepair
  | formal
  | runtime
  | representation
  | branch
  | quarantine
  | snapshotSurgery
  deriving DecidableEq, Repr

structure DischargeCandidate (Certificate : Type) where
  candidateId : StableId
  kind : DischargeKind
  admission : HardAdmission
  accepts : Certificate → Prop

def acceptsDischarge
    (candidate : DischargeCandidate Certificate)
    (certificate : Certificate) : Prop :=
  candidate.accepts certificate

structure AcceptedDischarge
    (candidate : DischargeCandidate Certificate) where
  certificate : Certificate
  accepted :
    acceptsDischarge candidate certificate

theorem discharge_requires_exact_certificate
    (candidate : DischargeCandidate Certificate)
    (discharged : AcceptedDischarge candidate) :
    ∃ certificate,
      acceptsDischarge candidate certificate :=
  ⟨discharged.certificate, discharged.accepted⟩

end Mathematics.Mutation
```
