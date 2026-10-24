# diam_range_toFun_comp_weights_subset_closedBall_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9942da37-0fc4-0100-38f0-de8f66b93024",
  "kind": "lemma",
  "lexical_name": "diam_range_toFun_comp_weights_subset_closedBall_eq_one",
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
  "slug": "diam-range-tofun-comp-weights-subset-closedball-eq-one--42974337717fb16d76d85f6a",
  "source": {
    "blob": "a737c13106340fe3fb34e77d2e5e2395c105fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42974337717fb16d76d85f6a033b2618e67d2c1db10cd3cf045a690abac4f037",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9942da37-0fc4-0100-38f0-de8f66b93024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diam_range_toFun_comp_weights_subset_closedBall_eq_one
    [Fintype M] [Nontrivial M] :
    Metric.diam (Set.range (fun t ↦ t.weights : StdSimplex ℝ M → M → ℝ)) = 1 := by
  obtain ⟨x, y, h⟩ := exists_pair_ne M
  refine le_antisymm (diam_range_toFun_comp_weights_subset_closedBall M)
    (le_of_eq_of_le ((dist_pi_eq_iff (by simp)).mpr ⟨?_, fun z ↦ ?_⟩).symm
      (Metric.dist_le_diam_of_mem
        (isBounded_range_toFun_comp_weights _) (x := Pi.single x 1) (y := Pi.single y 1)
          ⟨.single x, by aesop⟩ ⟨.single y, by aesop⟩))
  · exact ⟨x, by simp [Pi.single_eq_of_ne h, Real.dist_eq]⟩
  · grind [Real.dist_eq]

end Real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a737c13106340fe3fb34e77d2e5e2395c105fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
