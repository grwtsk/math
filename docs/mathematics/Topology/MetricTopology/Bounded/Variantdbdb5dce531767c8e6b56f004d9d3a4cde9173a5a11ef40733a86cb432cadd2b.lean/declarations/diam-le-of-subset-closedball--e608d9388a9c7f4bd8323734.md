# diam_le_of_subset_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b47b2b389eebc08df32ef3a6f450f350c389cfcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5da998a6-4077-494c-772b-046979d5b6a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f355819-7132-07b3-98f0-edc81391c0a2",
  "kind": "theorem",
  "lexical_name": "diam_le_of_subset_closedBall",
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
  "slug": "diam-le-of-subset-closedball--e608d9388a9c7f4bd8323734",
  "source": {
    "blob": "b47b2b389eebc08df32ef3a6f450f350c389cfcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 524,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e608d9388a9c7f4bd832373402f00881327b969f8051a01a8249ed5e10ef4b99",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f355819-7132-07b3-98f0-edc81391c0a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diam_le_of_subset_closedBall {r : ℝ} (hr : 0 ≤ r) (h : s ⊆ closedBall x r) :
    diam s ≤ 2 * r :=
  diam_le_of_forall_dist_le (mul_nonneg zero_le_two hr) fun a ha b hb =>
    calc
      dist a b ≤ dist a x + dist b x := dist_triangle_right _ _ _
      _ ≤ r + r := add_le_add (h ha) (h hb)
      _ = 2 * r := by simp [mul_two, mul_comm]

/-- The diameter of a closed ball of radius `r` is at most `2 r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47b2b389eebc08df32ef3a6f450f350c389cfcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
