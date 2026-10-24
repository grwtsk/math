# Matrix.toLinearMap₂'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cd70b0a-12ac-164a-e743-51bd2f0b5ea4",
  "kind": "theorem",
  "lexical_name": "Matrix.toLinearMap₂'_comp",
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
  "slug": "matrix-tolinearmap-comp--3ce4a77748d42d10bbc66c3d",
  "source": {
    "blob": "42bae6dc806fc117d684dd10ca0235f0250a36f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 308,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ce4a77748d42d10bbc66c3dda300f7e6fe294b0c4368b18dce072971f4692b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cd70b0a-12ac-164a-e743-51bd2f0b5ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.toLinearMap₂'_comp (M : Matrix n m R) (P : Matrix n n' R) (Q : Matrix m m' R) :
    LinearMap.compl₁₂ (Matrix.toLinearMap₂' R M) (toLin' P) (toLin' Q) =
      toLinearMap₂' R (Pᵀ * M * Q) :=
  (LinearMap.toMatrix₂' R).injective (by simp)

end CommToMatrix'

section ToMatrix

/-! ### Bilinear maps over arbitrary vector spaces

This section deals with the conversion between matrices and bilinear maps on
a module with a fixed basis.
-/


variable [CommSemiring R]
variable [AddCommMonoid M₁] [Module R M₁] [AddCommMonoid M₂] [Module R M₂] [AddCommMonoid N₂]
  [Module R N₂]
variable {σ₁ : R →+* R} {σ₂ : R →+* R} [Fintype n] [Fintype m] [DecidableEq m] [DecidableEq n]

section

variable (b₁ : Basis n R M₁) (b₂ : Basis m R M₂)

/-- `LinearMap.toMatrix₂ b₁ b₂` is the equivalence between `R`-sesquilinear maps
`M₁ →ₛₗ[σ₁] M₂ →ₗ[σ₂] N₂` and `n`-by-`m` matrices with entries in `N₂`,
if `b₁` and `b₂` are `R`-bases for `M₁` and `M₂`,
respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42bae6dc806fc117d684dd10ca0235f0250a36f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
