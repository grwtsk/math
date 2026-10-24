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
