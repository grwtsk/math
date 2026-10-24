# span_nonneg_inter_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35d6d24193aa07daf5babb7ed0c70bd71c912b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2064da54-1dd0-1d4a-c2ee-914330651dfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f6b38d2-07e7-d650-1f7d-32b5d4cbd87b",
  "kind": "lemma",
  "lexical_name": "span_nonneg_inter_ball",
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
  "slug": "span-nonneg-inter-ball--6b5836bb039b1d601e11813a",
  "source": {
    "blob": "35d6d24193aa07daf5babb7ed0c70bd71c912b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 37,
    "path": "GRWTSK/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b5836bb039b1d601e11813a99c39bbac9a4451c35559fabfb77e3282c534a50",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f6b38d2-07e7-d650-1f7d-32b5d4cbd87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_nonneg_inter_ball {r : ℝ} (hr : 0 < r) :
    span ℂ ({x : A | 0 ≤ x} ∩ Metric.ball 0 r) = ⊤ := by
  rw [eq_top_iff, ← span_nonneg_inter_closedBall (half_pos hr)]
  gcongr
  exact Metric.closedBall_subset_ball <| half_lt_self hr

/-- A C⋆-algebra is spanned by nonnegative contractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d6d24193aa07daf5babb7ed0c70bd71c912b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
