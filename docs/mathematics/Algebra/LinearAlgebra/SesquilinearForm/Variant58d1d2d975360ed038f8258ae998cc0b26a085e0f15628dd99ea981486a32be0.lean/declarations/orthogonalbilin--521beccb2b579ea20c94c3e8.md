# orthogonalBilin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7b41966ba30ec647bb2484701683245cbdb483acc43becc1832488de56dc99a",
  "kind": "def",
  "lexical_name": "orthogonalBilin",
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
  "slug": "orthogonalbilin--521beccb2b579ea20c94c3e8",
  "source": {
    "blob": "70f67826b666a4f9b7db87816f0d9b6f325a000c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 320,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:521beccb2b579ea20c94c3e8f3bbe9f1f8a434b0adb35f07b4f0fc402816cc72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7b41966ba30ec647bb2484701683245cbdb483acc43becc1832488de56dc99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orthogonalBilin (N : Submodule R₁ M₁) (B : M₁ →ₛₗ[I₁] M₁ →ₛₗ[I₂] M) : Submodule R₁ M₁ where
  carrier := { m | ∀ n ∈ N, B.IsOrtho n m }
  zero_mem' x _ := B.isOrtho_zero_right x
  add_mem' hx hy n hn := by
    rw [LinearMap.IsOrtho, map_add, show B n _ = 0 from hx n hn, show B n _ = 0 from hy n hn,
      zero_add]
  smul_mem' c x hx n hn := by
    rw [LinearMap.IsOrtho, LinearMap.map_smulₛₗ, show B n x = 0 from hx n hn, smul_zero]

variable {N L : Submodule R₁ M₁}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f67826b666a4f9b7db87816f0d9b6f325a000c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
