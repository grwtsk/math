# exists_pointwise_zero_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:884b75b2-03a2-764b-df1b-9b50cecc88a3",
  "kind": "theorem",
  "lexical_name": "exists_pointwise_zero_divisors",
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
  "slug": "exists-pointwise-zero-divisors--1ed641b49938d6e9f41ad75e",
  "source": {
    "blob": "3278aafe1ef55c21a6c649c415abcc53526c7e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 123,
    "path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ed641b49938d6e9f41ad75eac199c8afa1cd0202077f762b83a2a9a3f8fa121",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:884b75b2-03a2-764b-df1b-9b50cecc88a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pointwise_zero_divisors (h : 1 < m * n) :
    ∃ A B : BitMatrix m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BitMatrix.and A B = zeroMatrix m n := by
  let a : Fin (m * n) := ⟨0, by omega⟩
  let b : Fin (m * n) := ⟨1, h⟩
  let p := (rowMajorIndexEquiv m n).symm a
  let q := (rowMajorIndexEquiv m n).symm b
  have hab : a ≠ b := by
    intro hab
    have := congrArg Fin.val hab
    simp [a, b] at this
  have hpq : p ≠ q := by
    intro hpq
    apply hab
    simpa [p, q] using congrArg (rowMajorIndexEquiv m n) hpq
  refine ⟨singletonMatrix p, singletonMatrix q,
    singletonMatrix_ne_zero p, singletonMatrix_ne_zero q, ?_⟩
  ext i j
  by_cases hip : (i, j) = p
  · simp [BitMatrix.and, singletonMatrix, zeroMatrix, hip, hpq]
  · simp [BitMatrix.and, singletonMatrix, zeroMatrix, hip]


/-- The existing pointwise operations on a `1 × 1` matrix realize `GF(2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/PointwiseProductObstruction.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3278aafe1ef55c21a6c649c415abcc53526c7e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
