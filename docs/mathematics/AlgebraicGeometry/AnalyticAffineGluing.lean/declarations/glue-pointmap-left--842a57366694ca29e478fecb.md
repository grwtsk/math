# glue_pointMap_left

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
      "line": 138,
      "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23d34eb0-da4c-cd5a-1db5-dfe0455b7344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b66f6e2d-5510-0536-75a6-dbeeb6da2abd",
  "kind": "theorem",
  "lexical_name": "glue_pointMap_left",
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
  "slug": "glue-pointmap-left--842a57366694ca29e478fecb",
  "source": {
    "blob": "4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:842a57366694ca29e478fecbcbc7841cdeffa237c8ab53f3b879f546c802ef73",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b66f6e2d-5510-0536-75a6-dbeeb6da2abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem glue_pointMap_left {R : CommRingCat.{u}}
    (D : BinaryDomainCover) (hOpen : D.IsOpenCover)
    (left : Bridge R D.U) (right : Bridge R D.V) (h : Compatible D left right)
    (z : D.U.carrier) :
    (glue D hOpen left right h).pointMap ⟨z.1, D.u_subset z.2⟩ = left.pointMap z := by
  calc
    (glue D hOpen left right h).pointMap ⟨z.1, D.u_subset z.2⟩ =
        ((glue D hOpen left right h).restrict D.xToU).pointMap z :=
      ((glue D hOpen left right h).pointMap_restrict D.xToU z).symm
    _ = left.pointMap z := congrArg (fun C : Bridge R D.U => C.pointMap z)
      (glue_left D hOpen left right h)

/-- The global point map agrees exactly with the right local point map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/AlgebraicGeometry/AnalyticAffineGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/AnalyticAffineGluing.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f85dbf04c45c8f64af60d5fdb6c9dd393c48f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
