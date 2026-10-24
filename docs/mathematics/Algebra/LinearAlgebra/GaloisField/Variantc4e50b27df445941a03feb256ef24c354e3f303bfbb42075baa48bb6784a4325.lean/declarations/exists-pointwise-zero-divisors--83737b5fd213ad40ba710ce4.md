# exists_pointwise_zero_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23388dc3-1125-dc72-f9c2-858c754fd0a8",
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
  "slug": "exists-pointwise-zero-divisors--83737b5fd213ad40ba710ce4",
  "source": {
    "blob": "7c98ffa2ab79db828b647aba5490d17c25f2ea74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83737b5fd213ad40ba710ce4767b08c1db1905ec377c09ae547e1898a9ebe71e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23388dc3-1125-dc72-f9c2-858c754fd0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pointwise_zero_divisors (h : 1 < m * n) :
    ∃ A B : BinMat m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BinMat.and A B = zeroMatrix m n := by
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
  · simp [BinMat.and, singletonMatrix, zeroMatrix, hip, hpq]
  · simp [BinMat.and, singletonMatrix, zeroMatrix, hip]

/-! ## The one-entry case -/

/-- The existing pointwise operations on a `1 × 1` matrix realize `GF(2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c98ffa2ab79db828b647aba5490d17c25f2ea74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
