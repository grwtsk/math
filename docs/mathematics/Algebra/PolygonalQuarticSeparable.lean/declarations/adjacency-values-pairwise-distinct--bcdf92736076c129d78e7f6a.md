# adjacency_values_pairwise_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/Algebra/PolygonalQuarticSeparable.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8c9200c-a09c-ba87-1b15-59f5e4d73b32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d2e7ed2-4e5d-cdc9-1399-6d90f808b5d0",
  "kind": "theorem",
  "lexical_name": "adjacency_values_pairwise_distinct",
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
  "slug": "adjacency-values-pairwise-distinct--bcdf92736076c129d78e7f6a",
  "source": {
    "blob": "da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 45,
    "path": "GRWTSK/Algebra/PolygonalQuarticSeparable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcdf92736076c129d78e7f6ac303f052fe6de44ee3f8225deaaa3b73ec7b9665",
  "verification": {
    "reference": "docs/verification/Algebra/PolygonalQuarticSeparable.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d2e7ed2-4e5d-cdc9-1399-6d90f808b5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacency_values_pairwise_distinct (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    adjacencyOne a b c d ≠ adjacencyTwo a b c d ∧
    adjacencyOne a b c d ≠ adjacencyThree a b c d ∧
    adjacencyTwo a b c d ≠ adjacencyThree a b c d := by
  constructor
  · intro h
    have hzero : (a - d) * (c - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyTwo, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr had)
      (sub_ne_zero.mpr (Ne.symm hbc))) hzero
  constructor
  · intro h
    have hzero : (a - c) * (d - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hac)
      (sub_ne_zero.mpr (Ne.symm hbd))) hzero
  · intro h
    have hzero : (a - b) * (d - c) = 0 := by
      rw [← adjacencyTwo_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hab)
      (sub_ne_zero.mpr (Ne.symm hcd))) hzero

/-- The cubic is separable whenever the four labelled roots are distinct.
This theorem uses the pinned Mathlib finite-product separability criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/PolygonalQuarticSeparable.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolygonalQuarticSeparable.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
