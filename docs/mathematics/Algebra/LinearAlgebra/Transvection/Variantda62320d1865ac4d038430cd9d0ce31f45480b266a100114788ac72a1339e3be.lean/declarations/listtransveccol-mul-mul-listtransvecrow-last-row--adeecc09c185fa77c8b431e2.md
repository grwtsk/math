# listTransvecCol_mul_mul_listTransvecRow_last_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90bab1eb-2b7d-a50d-be7f-7fd8eba48c0b",
  "kind": "theorem",
  "lexical_name": "listTransvecCol_mul_mul_listTransvecRow_last_row",
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
  "slug": "listtransveccol-mul-mul-listtransvecrow-last-row--adeecc09c185fa77c8b431e2",
  "source": {
    "blob": "851347c72252710a76c813eb44f1d73c3eb541bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 514,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adeecc09c185fa77c8b431e25f99d960fd6981ea1c835e4b6da93a7e85fc1606",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90bab1eb-2b7d-a50d-be7f-7fd8eba48c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem listTransvecCol_mul_mul_listTransvecRow_last_row (hM : M (inr unit) (inr unit) ≠ 0)
    (i : Fin r) :
    ((listTransvecCol M).prod * M * (listTransvecRow M).prod) (inl i) (inr unit) = 0 := by
  have : listTransvecCol M = listTransvecCol (M * (listTransvecRow M).prod) := by
    simp [listTransvecCol, mul_listTransvecRow_last_col]
  rw [this, Matrix.mul_assoc]
  apply listTransvecCol_mul_last_col
  simpa [mul_listTransvecRow_last_col] using hM

/-- Multiplying by all the matrices either in `listTransvecCol M` and `listTransvecRow M` turns
the matrix in block-diagonal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851347c72252710a76c813eb44f1d73c3eb541bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
