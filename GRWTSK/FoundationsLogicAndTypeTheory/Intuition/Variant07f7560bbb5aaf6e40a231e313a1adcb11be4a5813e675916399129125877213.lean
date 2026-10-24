-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.PriorityFeature.Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PriorityFeature.Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Intuition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs

/-!
# Source-bound priorities with no theorem constructor

These records describe finite proposal ordering. A rank, estimate, failed attempt,
or remembered observation has no conversion into an object-level proposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.PriorityFeature.Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

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

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
