# oangle_add_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9abef043-2852-b2c7-6244-608cb2627886",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fd89026-d568-56c8-52a6-5b5b568a24f0",
  "kind": "theorem",
  "lexical_name": "oangle_add_swap",
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
  "slug": "oangle-add-swap--b8bcc63d85125e8f2f99cf6c",
  "source": {
    "blob": "d6bbb2d113b04bf13da394357e0496d7ca2b86ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 283,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8bcc63d85125e8f2f99cf6cfd10cdda169aefadd4a05bed0c8bdb46b1c40637",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fd89026-d568-56c8-52a6-5b5b568a24f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_add_swap {p p₁ p₂ p₃ : P} (hp₁ : p₁ ≠ p) (hp₂ : p₂ ≠ p) (hp₃ : p₃ ≠ p) :
    ∡ p₂ p p₃ + ∡ p₁ p p₂ = ∡ p₁ p p₃ :=
  o.oangle_add_swap (vsub_ne_zero.2 hp₁) (vsub_ne_zero.2 hp₂) (vsub_ne_zero.2 hp₃)

/-- Given three points not equal to `p`, the angle between the first and the third at `p` minus
the angle between the first and the second equals the angle between the second and the third. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant7861018fd5618cf4117546cbf644b6eab74741772f8c3f48fdc8e1828c60a9e9.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6bbb2d113b04bf13da394357e0496d7ca2b86ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
