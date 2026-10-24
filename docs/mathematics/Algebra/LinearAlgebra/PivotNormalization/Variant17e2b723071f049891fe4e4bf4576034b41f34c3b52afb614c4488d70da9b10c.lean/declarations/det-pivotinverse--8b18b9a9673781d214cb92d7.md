# det_pivotInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e51f8539-9f70-f27a-1218-7e0167ad64be",
  "kind": "theorem",
  "lexical_name": "det_pivotInverse",
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
  "slug": "det-pivotinverse--8b18b9a9673781d214cb92d7",
  "source": {
    "blob": "da3a8285a6c23e1efe44e9c6a559ac41294664d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b18b9a9673781d214cb92d755686fc6c24265c1f87459ed34679855b29614b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51f8539-9f70-f27a-1218-7e0167ad64be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_pivotInverse (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) :
    Matrix.det ((columnSubmatrix A c)⁻¹) = (columnMinor A c)⁻¹ := by
  have he := congrArg Matrix.det
    (Matrix.mul_nonsing_inv (columnSubmatrix A c) (isUnit_iff_ne_zero.mpr hc))
  rw [Matrix.det_mul, Matrix.det_one] at he
  change columnMinor A c * Matrix.det ((columnSubmatrix A c)⁻¹) = 1 at he
  apply mul_left_cancel₀ hc
  rw [he, mul_inv_cancel₀ hc]

/-- Every selected minor becomes its ratio to the pivot minor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3a8285a6c23e1efe44e9c6a559ac41294664d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
