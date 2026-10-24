# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremPreservation.Variant108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c79da0775a7aca2eef76ac1552ef63849737c49` · SHA-256 `108182baa78cdbbf21524774ad4c995ac33e4b84d479192a2b9019115d722181`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Proof
import Mathematics.Reflection.BuildCheck

/-! # Kernel-level theorem preservation -/

namespace Mathematics.Reflection

/-- One proposition certified before and after the target-native patch. -/
structure PreservedTheorem where
  statement : Prop
  sourceEnvironment : Authority.FrozenKernelEnvironment
  targetEnvironment : Authority.FrozenKernelEnvironment
  before :
    Authority.AcceptedKernelCertificate sourceEnvironment statement
  after :
    Authority.AcceptedKernelCertificate targetEnvironment statement

/-- Complete declared theorem cone preserved by a patch. -/
structure TheoremPreservationCheck (patch : Patch) where
  requiredBefore : List ObjectAddress
  preserved : List PreservedTheorem
  coverage :
    ∀ certificateAddress,
      certificateAddress ∈ requiredBefore ↔
        ∃ witness ∈ preserved,
          witness.before.certificateAddress = certificateAddress
  checkDigest : Digest

namespace PreservedTheorem

theorem target_statement
    (preserved : PreservedTheorem) :
    preserved.statement :=
  preserved.after.proves

theorem target_sorry_absent
    (preserved : PreservedTheorem) :
    "sorryAx" ∉ preserved.after.audit.axiomClosure.axioms :=
  preserved.after.audit.axiomClosure.sorryAxAbsent

end PreservedTheorem

end Mathematics.Reflection
```
