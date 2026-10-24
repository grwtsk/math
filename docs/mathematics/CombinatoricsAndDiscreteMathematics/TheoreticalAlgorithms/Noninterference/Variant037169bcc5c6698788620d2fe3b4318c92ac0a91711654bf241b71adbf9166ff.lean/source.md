# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Noninterference.Variant037169bcc5c6698788620d2fe3b4318c92ac0a91711654bf241b71adbf9166ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `402bbe724068571558ebaf1a800ee46708ae92ed` · SHA-256 `037169bcc5c6698788620d2fe3b4318c92ac0a91711654bf241b71adbf9166ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.Propagation

/-! # Analytical noninterference with mutation authority and history -/

namespace Mathematics.Stability

inductive AuthorityEffect
  | none
  | proposal
  | commit
  deriving DecidableEq, Repr

inductive AnalyticalArtifactKind
  | residual
  | derivativeBound
  | regimeClassification
  | convergenceForecast
  | dampingProposal
  deriving DecidableEq, Repr

def AnalyticalArtifactKind.authorityEffect
    (_ : AnalyticalArtifactKind) : AuthorityEffect :=
  .none

theorem stability_metrics_cannot_construct_authority
    (artifact : AnalyticalArtifactKind) :
    artifact.authorityEffect = .none :=
  rfl

inductive AdmissionState
  | proposed
  | ownerAdmitted
  deriving DecidableEq, Repr

def AdmissionState.mayCommit : AdmissionState → Bool
  | .proposed => false
  | .ownerAdmitted => true

theorem owner_admission_is_necessary_for_commit
    (state : AdmissionState)
    (canCommit : state.mayCommit = true) :
    state = .ownerAdmitted := by
  cases state with
  | proposed => contradiction
  | ownerAdmitted => rfl

structure TraversalHistory where
  eventRefs : List StableId

structure RepairedSuccessor (historical : TraversalHistory) where
  history : TraversalHistory
  appendedEventRefs : List StableId
  preservesHistory :
    history.eventRefs =
      historical.eventRefs ++ appendedEventRefs

theorem repaired_successor_preserves_historical_failure
    {historical : TraversalHistory}
    (successor : RepairedSuccessor historical) :
    ∃ appended,
      successor.history.eventRefs =
        historical.eventRefs ++ appended :=
  ⟨successor.appendedEventRefs, successor.preservesHistory⟩

theorem analytical_forecast_has_no_theorem_or_commit_effect :
    AnalyticalArtifactKind.convergenceForecast.authorityEffect =
      .none :=
  rfl

end Mathematics.Stability
```
