# blockDiagonal_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01c3e05e-a0f4-a94f-3a25-b7b1ab288281",
  "kind": "theorem",
  "lexical_name": "blockDiagonal_mul",
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
  "slug": "blockdiagonal-mul--c3841d6a5a02fd1db91b7cde",
  "source": {
    "blob": "e13bacc1fcfba89e2af06b12f7f2c37aecfb1600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 462,
    "path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant92764b8668f021a46b36920ee4c7cb48ec2f2e8c4f0b358722c3b7ac922ee863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3841d6a5a02fd1db91b7cde55657bd52b9f769fe13c53d93c4ebb5b6722c12f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Block/Variant92764b8668f021a46b36920ee4c7cb48ec2f2e8c4f0b358722c3b7ac922ee863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01c3e05e-a0f4-a94f-3a25-b7b1ab288281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDiagonal_mul [Fintype n] [Fintype o] [NonUnitalNonAssocSemiring α]
    (M : o → Matrix m n α) (N : o → Matrix n p α) :
    (blockDiagonal fun k => M k * N k) = blockDiagonal M * blockDiagonal N := by
  ext ⟨i, k⟩ ⟨j, k'⟩
  simp only [blockDiagonal_apply, mul_apply, ← Finset.univ_product_univ, Finset.sum_product]
  split_ifs with h <;> simp [h]
#align matrix.block_diagonal_mul Matrix.blockDiagonal_mul

section

variable (α m o)

/-- `Matrix.blockDiagonal` as a `RingHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Block/Variant92764b8668f021a46b36920ee4c7cb48ec2f2e8c4f0b358722c3b7ac922ee863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Block/Variant92764b8668f021a46b36920ee4c7cb48ec2f2e8c4f0b358722c3b7ac922ee863.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13bacc1fcfba89e2af06b12f7f2c37aecfb1600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
