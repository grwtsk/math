# Matrix.toLinearEquivRight'OfInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e82a918bfd3b39acf0f71c5624fe546e103256e6f1e30334c9a4baccaafca5",
  "kind": "def",
  "lexical_name": "Matrix.toLinearEquivRight'OfInv",
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
  "slug": "matrix-tolinearequivright-ofinv--d91caf9ad60a32c6a5c6f4ca",
  "source": {
    "blob": "b3a82eef79541f6f69c70b485128fcbd01719414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d91caf9ad60a32c6a5c6f4caf029c35b834607559e588116b63ed67f241435e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e82a918bfd3b39acf0f71c5624fe546e103256e6f1e30334c9a4baccaafca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.toLinearEquivRight'OfInv [Fintype n] [DecidableEq n] {M : Matrix m n R}
    {M' : Matrix n m R} (hMM' : M * M' = 1) (hM'M : M' * M = 1) : (n → R) ≃ₗ[R] m → R :=
  { -- porting note: needs type annotation for `⇑` to resolve
    (LinearMap.toMatrixRight' : _ ≃ₗ[Rᵐᵒᵖ] _).symm
      M' with
    -- porting note: needs type annotation for `⇑` to resolve
    toFun := (Matrix.toLinearMapRight' : _ ≃ₗ[Rᵐᵒᵖ] _) M'
    -- porting note: needs type annotation for `⇑` to resolve
    invFun := (Matrix.toLinearMapRight' : _ ≃ₗ[Rᵐᵒᵖ] _) M
    left_inv := fun x => by
      dsimp only -- porting note: needed due to non-flat structures
      rw [← Matrix.toLinearMapRight'_mul_apply, hM'M, Matrix.toLinearMapRight'_one, id_apply]
    right_inv := fun x => by
      dsimp only -- porting note: needed due to non-flat structures
      rw [← Matrix.toLinearMapRight'_mul_apply, hMM', Matrix.toLinearMapRight'_one, id_apply] }
#align matrix.to_linear_equiv_right'_of_inv Matrix.toLinearEquivRight'OfInv

end ToMatrixRight

/-!
From this point on, we only work with commutative rings,
and fail to distinguish between `Rᵐᵒᵖ` and `R`.
This should eventually be remedied.
-/


section ToMatrix'

variable {R : Type*} [CommSemiring R]

variable {k l m n : Type*}

/-- `Matrix.mulVec M` is a linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variant1324eed88365068aa807294dd7b2a1413287e33f4795588839b2ae09acd05264.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a82eef79541f6f69c70b485128fcbd01719414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
