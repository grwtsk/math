# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Annealing.Variante3167adadc8450e9f446d87b297c8ef3b422b4204f76476e8627115c363c5f01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b85dc40fb6e82677a00f0ca8c384fac62bc423cf` · SHA-256 `c7a26fb46a36eeec1d9431bbbede62e2e127ab06a468f633ace9974bc0668eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardPolicyViolation.Variant92468450ed4c93ed45682d5dbc4c2593b4672920db619f9e3195069e5c5771c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92468450ed4c93ed45682d5dbc4c2593b4672920db619f9e3195069e5c5771c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HardPolicyViolation.Variant92468450ed4c93ed45682d5dbc4c2593b4672920db619f9e3195069e5c5771c5","mathematical_subject":"Computation.DataStructures","original_sha256":"92468450ed4c93ed45682d5dbc4c2593b4672920db619f9e3195069e5c5771c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Annealing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.SpectralSampling
public import Surface.Refactor.PublicApi

/-! # Exhaustive and heuristic finite candidate selection -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HardPolicyViolation.Variant92468450ed4c93ed45682d5dbc4c2593b4672920db619f9e3195069e5c5771c5

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
inductive HardPolicyViolation where
  | statementChange
  | pathEscape
  | staleSource
  | publicApiChange
  | axiomGrowth
  | importCycle
  | authorityCeiling
deriving DecidableEq, Repr, BEq

@[surface_novel]
structure EnergyBreakdown where
  hardPolicyViolationCount : Nat
  leanErrorCount : Nat
  unsolvedGoalCount : Nat
  statementChangePenalty : Nat
  publicApiChangePenalty : Nat
  axiomGrowthPenalty : Nat
  staleSourcePenalty : Nat
  importCyclePenalty : Nat
  diffSizeCost : Nat
  newImportCost : Nat
  retrievalMismatchCost : Nat
  modelUncertainty : Nat
  redundancy : Nat
  noveltyBonus : Nat
deriving DecidableEq, Repr

@[expose] def EnergyBreakdown.total (energy : EnergyBreakdown) : Nat :=
  energy.hardPolicyViolationCount + energy.leanErrorCount +
    energy.unsolvedGoalCount + energy.statementChangePenalty +
    energy.publicApiChangePenalty + energy.axiomGrowthPenalty +
    energy.staleSourcePenalty + energy.importCyclePenalty + energy.diffSizeCost +
    energy.newImportCost + energy.retrievalMismatchCost + energy.modelUncertainty +
    energy.redundancy

@[surface_novel]
structure AnnealingCandidate where
  candidateId : String
  operation : ProjectPatchAction
  hardViolations : List HardPolicyViolation
  energy : EnergyBreakdown

@[expose] def AnnealingCandidate.Admissible (candidate : AnnealingCandidate) : Prop :=
  candidate.hardViolations = []

@[surface_novel, surface_published]
theorem hard_violation_is_inadmissible (candidate : AnnealingCandidate)
    (violation : HardPolicyViolation) (h : violation ∈ candidate.hardViolations) :
    ¬ candidate.Admissible := by
  intro admissible
  rw [admissible] at h
  simp at h

/-- A proof-carrying exhaustive result.  Minimality is only over the recorded
finite candidate list. -/
@[surface_certificate]
structure ExhaustiveSearchResult where
  candidates : List AnnealingCandidate
  chosen : AnnealingCandidate
  chosenMem : chosen ∈ candidates
  minimalOnEnumerated : ∀ candidate ∈ candidates,
    chosen.energy.total ≤ candidate.energy.total

@[surface_novel, surface_published]
theorem exhaustive_argmin_is_minimal_on_enumerated_set
    (result : ExhaustiveSearchResult) (candidate : AnnealingCandidate)
    (h : candidate ∈ result.candidates) :
    result.chosen.energy.total ≤ candidate.energy.total :=
  result.minimalOnEnumerated candidate h

@[surface_certificate]
structure HeuristicAnnealingState where
  seed : Nat
  temperatureNumerator : Nat
  temperatureDenominator : Nat
  proposals : List String
  accepted : List String
  rejected : List String
  backtrackCount : Nat
deriving DecidableEq, Repr

@[expose] def HeuristicAnnealingState.authority
    (_state : HeuristicAnnealingState) : RefactorAuthority :=
  .finiteEvidence

@[surface_novel, surface_published]
theorem heuristic_receipt_does_not_claim_global_optimality
    (state : HeuristicAnnealingState) : state.authority = .finiteEvidence :=
  rfl

@[surface_novel]
structure WaveCollapseDomain where
  goalCell : GoalCellId
  admissibleCandidates : List String
  entropyNumerator : Nat
  entropyDenominator : Nat
deriving DecidableEq, Repr

@[surface_certificate]
structure CollapseStepReceipt where
  domain : WaveCollapseDomain
  chosen : String
  chosenMem : chosen ∈ domain.admissibleCandidates
  propagatedConstraintIds : List String
  overlayElaborated : Bool

@[expose] def CollapseStepReceipt.authority (_receipt : CollapseStepReceipt) :
    RefactorAuthority := .finiteEvidence

@[surface_novel, surface_published]
theorem collapse_choice_respects_admissible_domain (receipt : CollapseStepReceipt) :
    receipt.chosen ∈ receipt.domain.admissibleCandidates :=
  receipt.chosenMem

/-- Natural topological ranks make execution dependencies forward-only. -/
@[surface_novel]
structure ExecutionDependencyEdge where
  prerequisiteRank : Nat
  dependentRank : Nat
  forward : prerequisiteRank < dependentRank

@[surface_novel, surface_published]
theorem execution_dependency_is_not_recursive (edge : ExecutionDependencyEdge) :
    edge.prerequisiteRank ≠ edge.dependentRank :=
  Nat.ne_of_lt edge.forward

@[surface_novel, surface_published]
theorem annealing_result_not_kernel_authority (state : HeuristicAnnealingState) :
    state.authority ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
```
