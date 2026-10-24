# rectangleBorder_disjoint_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbb1fb510c9ec1697495975294055607e5d38d9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dcc5e12-b7c1-6868-734a-b7022703ca6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:826dc5c1-1ff7-6093-9c6b-e57a632ecd59",
  "kind": "lemma",
  "lexical_name": "rectangleBorder_disjoint_singleton",
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
  "slug": "rectangleborder-disjoint-singleton--8b1ad1aaf340e0c7fc4cd835",
  "source": {
    "blob": "fbb1fb510c9ec1697495975294055607e5d38d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b1ad1aaf340e0c7fc4cd835794466eb244e6aafe86787f9ec0373f063353549",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:826dc5c1-1ff7-6093-9c6b-e57a632ecd59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rectangleBorder_disjoint_singleton {z w p : ℂ}
    (h : p.re ≠ z.re ∧ p.re ≠ w.re ∧ p.im ≠ z.im ∧ p.im ≠ w.im) :
    Disjoint (RectangleBorder z w) {p} := by
  refine disjoint_singleton_right.mpr ?_
  simp_rw [RectangleBorder, Set.mem_union, not_or]
  exact ⟨⟨⟨fun hc ↦ h.2.2.1 hc.2, fun hc ↦ h.1 hc.1⟩, fun hc ↦ h.2.2.2 hc.2⟩,
    fun hc ↦ h.2.1 hc.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb1fb510c9ec1697495975294055607e5d38d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
