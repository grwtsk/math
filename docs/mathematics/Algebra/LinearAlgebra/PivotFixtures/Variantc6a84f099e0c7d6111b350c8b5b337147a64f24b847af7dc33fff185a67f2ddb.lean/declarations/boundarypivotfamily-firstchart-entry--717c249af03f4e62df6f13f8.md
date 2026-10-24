# boundaryPivotFamily_firstChart_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93d143dc-4501-86d8-f597-d0bcaef44f88",
  "kind": "theorem",
  "lexical_name": "boundaryPivotFamily_firstChart_entry",
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
  "slug": "boundarypivotfamily-firstchart-entry--717c249af03f4e62df6f13f8",
  "source": {
    "blob": "01c4240b3e3c0456b66589c8f1d699dc3a5b4646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717c249af03f4e62df6f13f8e4d4b90c0e44aa27e1d401dd80076965635da8fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93d143dc-4501-86d8-f597-d0bcaef44f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPivotFamily_firstChart_entry (eps : ℝ) (heps : eps ≠ 0) :
    pivotNormalize (boundaryPivotFamily eps) ![0, 1] 1 2 = 1 / eps := by
  have hp : columnMinor (boundaryPivotFamily eps) ![0, 1] ≠ 0 := by
    rw [boundaryPivotFamily_firstPivot]
    exact heps
  have hr := congrFun (congrFun
    (pivot_mul_pivotNormalize (boundaryPivotFamily eps) ![0, 1] hp) (1 : Fin 2))
    (2 : Fin 4)
  have he : eps * pivotNormalize (boundaryPivotFamily eps) ![0, 1] 1 2 = 1 := by
    simpa [columnSubmatrix, boundaryPivotFamily, Matrix.mul_apply, Fin.sum_univ_two] using hr
  apply (eq_div_iff heps).mpr
  simpa only [mul_comm] using he

/-- The overlapping normalized frame is polynomial and is valid even at the failed first pivot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantc6a84f099e0c7d6111b350c8b5b337147a64f24b847af7dc33fff185a67f2ddb.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c4240b3e3c0456b66589c8f1d699dc3a5b4646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
