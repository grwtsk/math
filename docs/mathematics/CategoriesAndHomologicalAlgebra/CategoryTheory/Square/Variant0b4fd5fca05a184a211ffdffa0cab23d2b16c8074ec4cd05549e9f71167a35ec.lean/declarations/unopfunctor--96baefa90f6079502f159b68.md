# unopFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:730bd0cd79a4a6bc52e2dba0dbab1c3d81162adc48f31c87d4de4b4d970dbb8c",
  "kind": "def",
  "lexical_name": "unopFunctor",
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
  "slug": "unopfunctor--96baefa90f6079502f159b68",
  "source": {
    "blob": "274289d0a3fe09b7fedba52af8af4f3628ebed79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 303,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96baefa90f6079502f159b680e9fcc7b16a81ab37a4c4a69bd4ba82018a40d9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:730bd0cd79a4a6bc52e2dba0dbab1c3d81162adc48f31c87d4de4b4d970dbb8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unopFunctor : (Square Cᵒᵖ)ᵒᵖ ⥤ Square C where
  obj sq := sq.unop.unop
  map φ :=
    { τ₁ := φ.unop.τ₄.unop
      τ₂ := φ.unop.τ₂.unop
      τ₃ := φ.unop.τ₃.unop
      τ₄ := φ.unop.τ₁.unop
      comm₁₂ := Quiver.Hom.op_inj (by simp)
      comm₁₃ := Quiver.Hom.op_inj (by simp)
      comm₂₄ := Quiver.Hom.op_inj (by simp)
      comm₃₄ := Quiver.Hom.op_inj (by simp) }

/-- The equivalence `(Square C)ᵒᵖ ≌ Square Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant0b4fd5fca05a184a211ffdffa0cab23d2b16c8074ec4cd05549e9f71167a35ec.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274289d0a3fe09b7fedba52af8af4f3628ebed79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
