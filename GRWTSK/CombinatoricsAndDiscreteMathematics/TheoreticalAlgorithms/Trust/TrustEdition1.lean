import Mathematics.Extractor.Dependency

/-!
# Explicit trust and axiom closure
-/

namespace Mathematics.Extractor

open Mathematics

structure TrustAssumption where
  declaration : Lean.Name
  kind : TrustAssumptionKind
  authority : ExtractionAuthority
  deriving DecidableEq, Repr, Inhabited

structure TrustClosure where
  closureId : TrustClosureId
  declarationId : DeclarationId
  declaration : Lean.Name
  assumptions : Array TrustAssumption
  unsafeDependencies : Array Lean.Name
  partialDependencies : Array Lean.Name
  unresolvedDependencies : Array Lean.Name
  closureDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace TrustClosure

/-- A closure with no unresolved dependencies is exact relative to its policy. -/
def Resolved (closure : TrustClosure) : Prop :=
  closure.unresolvedDependencies.isEmpty = true

end TrustClosure

end Mathematics.Extractor
