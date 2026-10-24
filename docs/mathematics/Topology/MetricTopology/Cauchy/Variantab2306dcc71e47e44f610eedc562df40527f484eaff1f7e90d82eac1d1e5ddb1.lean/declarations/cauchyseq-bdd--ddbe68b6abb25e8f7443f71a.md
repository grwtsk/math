# cauchySeq_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dd5fcbc-dfef-4599-e6b3-44b70f20712e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e2dd9a0-9ca1-9d42-2e6a-70d88d199418",
  "kind": "theorem",
  "lexical_name": "cauchySeq_bdd",
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
  "slug": "cauchyseq-bdd--ddbe68b6abb25e8f7443f71a",
  "source": {
    "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 105,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddbe68b6abb25e8f7443f71a3c6d4431af5e5d4a4ac40c01779d22abb7913147",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2dd9a0-9ca1-9d42-2e6a-70d88d199418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_bdd {u : ℕ → α} (hu : CauchySeq u) : ∃ R > 0, ∀ m n, dist (u m) (u n) < R := by
  rcases Metric.cauchySeq_iff'.1 hu 1 zero_lt_one with ⟨N, hN⟩
  rsuffices ⟨R, R0, H⟩ : ∃ R > 0, ∀ n, dist (u n) (u N) < R
  · exact ⟨_, add_pos R0 R0, fun m n =>
      lt_of_le_of_lt (dist_triangle_right _ _ _) (add_lt_add (H m) (H n))⟩
  let R := Finset.sup (Finset.range N) fun n => nndist (u n) (u N)
  refine ⟨↑R + 1, add_pos_of_nonneg_of_pos R.2 zero_lt_one, fun n => ?_⟩
  rcases le_or_lt N n with h | h
  · exact lt_of_lt_of_le (hN _ h) (le_add_of_nonneg_left R.2)
  · have : _ ≤ R := Finset.le_sup (Finset.mem_range.2 h)
    exact lt_of_le_of_lt this (lt_add_of_pos_right _ zero_lt_one)

/-- Yet another metric characterization of Cauchy sequences on integers. This one is often the
most efficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630fd8f92329367f44d81636c4447e94b6954e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
