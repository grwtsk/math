# mem_closedInterior_face_iff_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f77b511767208189b469358f4c51b31e40b154b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 673,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09d9646d-06a3-3c8d-962d-1bc3f814a36a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef38f09e-c809-05a1-54be-38189b276207",
  "kind": "lemma",
  "lexical_name": "mem_closedInterior_face_iff_wbtw",
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
  "slug": "mem-closedinterior-face-iff-wbtw--f3b75836062a13f18f92474f",
  "source": {
    "blob": "8f77b511767208189b469358f4c51b31e40b154b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 673,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3b75836062a13f18f92474f7f3940e044233f3f6122264f06bcb8f6e886e176",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef38f09e-c809-05a1-54be-38189b276207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_closedInterior_face_iff_wbtw {n : ℕ} (s : Simplex R P n) {p : P} {i j : Fin (n + 1)}
    (h : i ≠ j) :
    p ∈ (s.face (Finset.card_pair h)).closedInterior ↔ Wbtw R (s.points i) p (s.points j) := by
  rw [s.closedInterior_face_eq_affineSegment h, Wbtw]

/-- The interior of a 1-simplex is a segment between its vertices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f77b511767208189b469358f4c51b31e40b154b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
