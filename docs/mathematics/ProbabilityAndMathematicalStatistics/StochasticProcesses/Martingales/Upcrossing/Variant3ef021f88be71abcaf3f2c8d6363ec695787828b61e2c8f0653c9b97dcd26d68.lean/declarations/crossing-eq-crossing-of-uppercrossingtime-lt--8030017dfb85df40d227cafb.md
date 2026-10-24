# crossing_eq_crossing_of_upperCrossingTime_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcfc514f5551f7c467d8b2e758743a902e8bbf6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ef021f88be71abcaf3f2c8d6363ec695787828b61e2c8f0653c9b97dcd26d68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:506c953b-5836-50d9-d8ec-b7a0de734856",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f18c5b90-267a-d1c8-b39a-2d93ebb71801",
  "kind": "theorem",
  "lexical_name": "crossing_eq_crossing_of_upperCrossingTime_lt",
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
  "slug": "crossing-eq-crossing-of-uppercrossingtime-lt--8030017dfb85df40d227cafb",
  "source": {
    "blob": "fcfc514f5551f7c467d8b2e758743a902e8bbf6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 478,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant3ef021f88be71abcaf3f2c8d6363ec695787828b61e2c8f0653c9b97dcd26d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8030017dfb85df40d227cafb96da91119a59c3d5d37a7d40e1f1e14ea28492c8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant3ef021f88be71abcaf3f2c8d6363ec695787828b61e2c8f0653c9b97dcd26d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f18c5b90-267a-d1c8-b39a-2d93ebb71801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossing_eq_crossing_of_upperCrossingTime_lt {M : ℕ} (hNM : N ≤ M)
    (h : upperCrossingTime a b f N (n + 1) ω < N) :
    upperCrossingTime a b f M (n + 1) ω = upperCrossingTime a b f N (n + 1) ω ∧
      lowerCrossingTime a b f M n ω = lowerCrossingTime a b f N n ω := by
  have := (crossing_eq_crossing_of_lowerCrossingTime_lt hNM
    (lt_of_le_of_lt lowerCrossingTime_le_upperCrossingTime_succ h)).2
  refine ⟨?_, this⟩
  rw [upperCrossingTime_succ_eq, upperCrossingTime_succ_eq, eq_comm, this]
  refine hitting_eq_hitting_of_exists hNM ?_
  rw [upperCrossingTime_succ_eq, hitting_lt_iff] at h
  · obtain ⟨j, hj₁, hj₂⟩ := h
    exact ⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩
  · exact le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant3ef021f88be71abcaf3f2c8d6363ec695787828b61e2c8f0653c9b97dcd26d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant3ef021f88be71abcaf3f2c8d6363ec695787828b61e2c8f0653c9b97dcd26d68.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcfc514f5551f7c467d8b2e758743a902e8bbf6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
