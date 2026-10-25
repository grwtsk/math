# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Intuition.Variant1fa4c15fe2d97a7ffbbb8d864504f2f4c8555438c7a2f5d7f4d46555b6038ee2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `026edd4432e3a7accda2e4a02c1661b59ed69570` · SHA-256 `1fa4c15fe2d97a7ffbbb8d864504f2f4c8555438c7a2f5d7f4d46555b6038ee2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Rat.Defs

/-!
# Source-bound priorities with no theorem constructor

These records describe finite proposal ordering. A rank, estimate, failed attempt,
or remembered observation has no conversion into an object-level proposition.
-/

namespace FormalResearch.SUCAS

/-- Every feature retains its exact source and observation identity. -/
structure PriorityFeature where
  /-- Immutable source identity for this feature. -/
  sourceIdentity : String
  /-- Stable observation identity within the complete supplied history. -/
  observationIdentity : String
  /-- Named feature; mathematical invariance is not implied by its name. -/
  name : String
  /-- Exact rational feature value. -/
  value : ℚ
  deriving DecidableEq, Repr

/-- A source-scoped proposal rank is data and is not a certificate or proof. -/
structure IntuitionPriority where
  /-- Exact candidate obligation identity. -/
  obligationIdentity : String
  /-- Immutable target/snapshot scope. -/
  sourceIdentity : String
  /-- Estimated proof work, distinct from consumed work. -/
  estimatedProofCost : ℕ
  /-- All observations contributing to the rank. -/
  features : List PriorityFeature
  /-- Explicit deterministic explanations of the ordering decision. -/
  reasonCodes : List String
  /-- Exact signed score used by the declared ranking rule. -/
  score : ℚ
  /-- Finite proposal work already charged. -/
  proposalCost : ℕ
  deriving DecidableEq, Repr

/-- A deterministic intuition kernel takes explicit history and budget to a finite ranked list. -/
structure IntuitionKernel (Memory : Type*) where
  /-- Immutable implementation/profile identity for the ranking rule. -/
  profileIdentity : String
  /-- All strategy state is supplied through the memory argument. -/
  rank : Memory → ℕ → List IntuitionPriority
  /-- Proposal computation cost is part of the declared finite work budget. -/
  budgetBound : ∀ memory budget,
    ((rank memory budget).map IntuitionPriority.proposalCost).sum ≤ budget

/-- Remaining strategy outcomes do not collapse into either mathematical polarity. -/
inductive AttemptOutcome where
  /-- A source-scoped local checker accepted; the separate replay route carries authority. -/
  | locallyAccepted
  /-- A concrete candidate was rejected. -/
  | rejected
  /-- A supported procedure did not resolve its target. -/
  | unknown
  /-- The requested rule or domain is unsupported. -/
  | unsupported
  /-- The declared finite resources were exhausted. -/
  | resourceLimited
  deriving DecidableEq, Repr

/-- Append-only strategy evidence with distinct outcome and observation namespaces. -/
structure IntuitionAttempt where
  /-- Replay identity: a repeated identity must not count twice in executable history. -/
  eventIdentity : String
  /-- Priority that generated this attempt. -/
  priority : IntuitionPriority
  /-- Explicit operational result, not object truth. -/
  outcome : AttemptOutcome
  /-- Counterevidence/provenance identities retained after failures. -/
  evidence : List String
  /-- Actual finite work charged for this attempt. -/
  spent : ℕ
  deriving DecidableEq, Repr

/-- Replaying the same explicit input into a deterministic ranking rule has the same output. -/
theorem intuition_replay {Memory : Type*} (kernel : IntuitionKernel Memory)
    {first second : Memory} (sameHistory : first = second) (budget : ℕ) :
    kernel.rank first budget = kernel.rank second budget := by
  rw [sameHistory]

end FormalResearch.SUCAS
```
