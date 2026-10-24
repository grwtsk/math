# triangle_loop_nonidentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c2a3709-97af-354b-b670-34287ea5a0f1",
  "kind": "theorem",
  "lexical_name": "triangle_loop_nonidentity",
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
  "slug": "triangle-loop-nonidentity--1767f424e044b01781df40bc",
  "source": {
    "blob": "82c8321df1102be05b2d082a086ad3268c819fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variantc871984a0cc1d5af93a3c0070799b282379b5e3131713a0624a2663efeb49b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1767f424e044b01781df40bc4f45ff49920411b20935c344356f226fc8ebaa9b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variantc871984a0cc1d5af93a3c0070799b282379b5e3131713a0624a2663efeb49b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c2a3709-97af-354b-b670-34287ea5a0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangle_loop_nonidentity :
    orderedProduct (fun i => triangleEdge (triangleSites i) (triangleSites (i + 1))) 0 3 ≠ 1 := by
  intro h
  have he := congrArg
    (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 1) h
  norm_num [orderedProduct, triangleEdge, forwardTriangle, triangleSites,
    rationalEdge, rotationUnit, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two] at he

/-- The closed triangle still has only basepoint conjugation under arbitrary site gauges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variantc871984a0cc1d5af93a3c0070799b282379b5e3131713a0624a2663efeb49b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variantc871984a0cc1d5af93a3c0070799b282379b5e3131713a0624a2663efeb49b86.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c8321df1102be05b2d082a086ad3268c819fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
