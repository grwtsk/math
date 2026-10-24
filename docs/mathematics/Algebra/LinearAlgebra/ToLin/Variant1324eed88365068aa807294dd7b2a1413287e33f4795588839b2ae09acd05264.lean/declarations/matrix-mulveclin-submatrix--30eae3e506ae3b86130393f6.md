# Matrix.mulVecLin_submatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a97c8b0d-5b58-9a06-678b-57f2d9aed374",
  "kind": "theorem",
  "lexical_name": "Matrix.mulVecLin_submatrix",
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
  "slug": "matrix-mulveclin-submatrix--30eae3e506ae3b86130393f6",
  "source": {
    "blob": "b3a82eef79541f6f69c70b485128fcbd01719414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30eae3e506ae3b86130393f6db9cd927e732d91f07dc975ed83b956e0241f0e5",
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

Occurrence: `result:a97c8b0d-5b58-9a06-678b-57f2d9aed374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.mulVecLin_submatrix [Fintype n] [Fintype l] (f₁ : m → k) (e₂ : n ≃ l)
    (M : Matrix k l R) :
    (M.submatrix f₁ e₂).mulVecLin = funLeft R R f₁ ∘ₗ M.mulVecLin ∘ₗ funLeft _ _ e₂.symm :=
  LinearMap.ext fun _ => submatrix_mulVec_equiv _ _ _ _
#align matrix.mul_vec_lin_submatrix Matrix.mulVecLin_submatrix

/-- A variant of `Matrix.mulVecLin_submatrix` that keeps around `LinearEquiv`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a82eef79541f6f69c70b485128fcbd01719414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
