# funded_attempt_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7afe4eb7-701a-4c85-45eb-1a63f0cfa4b8",
  "kind": "theorem",
  "lexical_name": "funded_attempt_preserved",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "funded-attempt-preserved--4dff1ca346f7295d8850d7f6",
  "source": {
    "blob": "865bc64a18d69d2cf4325229ea08e0931dd0e1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 532,
    "path": "GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dff1ca346f7295d8850d7f64d950cfec597cfc647da43eaf9701bab7731b0c2",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7afe4eb7-701a-4c85-45eb-1a63f0cfa4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem funded_attempt_preserved {I : Type u} {Revision : Type v}
    (events : List (SearchEvent I Revision)) (attempt : SearchAttempt I Revision)
    (funded : SearchFunded events)
    (affordable : attempt.generationCost + attempt.repairCost ≤
      totalFunding events - totalExpenditure events) :
    SearchFunded (events ++ [.attempt attempt]) := by
  simp only [SearchFunded, totalExpenditure, totalFunding, List.map_append,
    List.map_cons, List.map_nil, List.sum_append, List.sum_cons, List.sum_nil,
    SearchEvent.expenditure, SearchEvent.funding, Nat.add_zero]
  change totalExpenditure events + (attempt.generationCost + attempt.repairCost) ≤
    totalFunding events
  unfold SearchFunded at funded
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865bc64a18d69d2cf4325229ea08e0931dd0e1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
