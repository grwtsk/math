# existsUnique_glue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4c7fdb5-e3f2-b91a-21ec-6933f1778089",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f97214d0-0188-79a2-c47c-8cf44f59feaf",
  "kind": "theorem",
  "lexical_name": "existsUnique_glue",
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
  "slug": "existsunique-glue--a09472eba2a296550438e2e4",
  "source": {
    "blob": "4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a09472eba2a296550438e2e42ac223a6d1cd29391289140183425dd38436b6cf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97214d0-0188-79a2-c47c-8cf44f59feaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_glue {R : CommRingCat.{u}} (D : BinaryDomainCover)
    (hOpen : D.IsOpenCover) (left : Bridge R D.U) (right : Bridge R D.V)
    (h : Compatible D left right) :
    ∃! C : Bridge R D.X, C.restrict D.xToU = left ∧ C.restrict D.xToV = right := by
  refine ⟨glue D hOpen left right h,
    ⟨glue_left D hOpen left right h, glue_right D hOpen left right h⟩, ?_⟩
  intro C hC
  exact glue_unique D hOpen left right h C hC.1 hC.2

/-- The induced global spectrum map is continuous by the previously proved evaluation theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
