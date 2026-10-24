# comp_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bf97aeb-4db9-aea5-1142-80895e48e139",
  "kind": "theorem",
  "lexical_name": "comp_congr",
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
  "slug": "comp-congr--4f5b1b5c96de012dfb3bf003",
  "source": {
    "blob": "c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f5b1b5c96de012dfb3bf0035c8837ec65cb584d26ace3bdc50ff8e23859c056",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bf97aeb-4db9-aea5-1142-80895e48e139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_congr (e : M' ≃ₗ[R] M'') (B : BilinForm R M) (l r : M' →ₗ[R] M) :
    congr e (B.comp l r) =
      B.comp (l.comp (e.symm : M'' →ₗ[R] M')) (r.comp (e.symm : M'' →ₗ[R] M')) :=
  rfl

end congr

section congrRight₂

variable {N₁ N₂ N₃ : Type*}
variable [AddCommMonoid N₁] [AddCommMonoid N₂] [AddCommMonoid N₃]
variable [Module R N₁] [Module R N₂] [Module R N₃]

/-- When `N₁` and `N₂` are equivalent, bilinear maps on `M` into `N₁` are equivalent to bilinear
maps into `N₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
