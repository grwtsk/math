# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Principal.Variantac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38b2ea73bcc8aae723ed3bab5524a4f72ba8020d` · SHA-256 `ac5db4bf35ec9fbb97f6afba2e05f88a5c45cc4442f483b700130f5fa313104d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Set.Basic
import Mathematics.Core.SemanticIdentity

/-!
# Principals and competence

Competence is descriptive evidence about a principal.  It is not an
operational capability, a permission observation, an execution receipt, or
theorem authority.
-/

namespace Mathematics.Capability

abbrev PrincipalId := StableId
abbrev DeviceId := StableId
abbrev PurposeId := StableId
abbrev LeaseId := StableId
abbrev GrantId := StableId
abbrev RequestId := StableId
abbrev ChartId := StableId

inductive PrincipalKind
  | human
  | model
  | operatingSystem
  | service
  deriving DecidableEq, Repr

structure Principal where
  principalId : PrincipalId
  kind : PrincipalKind
  deriving DecidableEq, Repr

/-- Descriptive knowledge or skill; it contains no machine authority. -/
structure CompetenceProfile where
  principal : Principal
  domains : Set StableId
  evidence : Set EvidenceId

end Mathematics.Capability
```
