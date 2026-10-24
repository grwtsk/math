# Matrix.vecMul_stdBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72b1d506-73cd-f83b-aacf-6909f648429c",
  "kind": "theorem",
  "lexical_name": "Matrix.vecMul_stdBasis",
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
  "slug": "matrix-vecmul-stdbasis--84ce18e1a15a36ac3f963cbb",
  "source": {
    "blob": "b3a82eef79541f6f69c70b485128fcbd01719414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ce18e1a15a36ac3f963cbb77072090237a1cece8b0d0d64055f8c3e27d0e16",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72b1d506-73cd-f83b-aacf-6909f648429c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.vecMul_stdBasis (M : Matrix m n R) (i j) :
    M.vecMul (LinearMap.stdBasis R (fun _ => R) i 1) j = M i j := by
  have : (∑ i', (if i = i' then 1 else 0) * M i' j) = M i j := by
    simp_rw [boole_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  simp only [vecMul, dotProduct]
  convert this
  split_ifs with h <;> simp only [stdBasis_apply]
  · rw [h, Function.update_same]
  · rw [Function.update_noteq (Ne.symm h), Pi.zero_apply]
#align matrix.vec_mul_std_basis Matrix.vecMul_stdBasis

/-- Linear maps `(m → R) →ₗ[R] (n → R)` are linearly equivalent over `Rᵐᵒᵖ` to `Matrix m n R`,
by having matrices act by right multiplication.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a82eef79541f6f69c70b485128fcbd01719414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
