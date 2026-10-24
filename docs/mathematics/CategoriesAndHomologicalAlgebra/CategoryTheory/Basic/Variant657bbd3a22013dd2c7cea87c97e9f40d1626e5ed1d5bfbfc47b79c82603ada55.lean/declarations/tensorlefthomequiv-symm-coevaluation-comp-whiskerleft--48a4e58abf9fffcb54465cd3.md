# tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d185f85-24a4-2360-d61e-cbd5276c5237",
  "kind": "theorem",
  "lexical_name": "tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft",
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
  "slug": "tensorlefthomequiv-symm-coevaluation-comp-whiskerleft--48a4e58abf9fffcb54465cd3",
  "source": {
    "blob": "58f5c2b7b791d00e2309663a7051bb7cf105a492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 509,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48a4e58abf9fffcb54465cd30ab1f7171a5f8f5edd5bba578a0e7fe99f4939fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d185f85-24a4-2360-d61e-cbd5276c5237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft {Y Y' Z : C} [ExactPairing Y Y']
    (f : Y' ⟶ Z) : (tensorLeftHomEquiv _ _ _ _).symm (η_ _ _ ≫ Y ◁ f) = (ρ_ _).hom ≫ f := by
  calc
    _ = Y' ◁ η_ Y Y' ⊗≫ ((Y' ⊗ Y) ◁ f ≫ ε_ Y Y' ▷ Z) ⊗≫ 𝟙 _ := by
      dsimp [tensorLeftHomEquiv]; monoidal
    _ = (Y' ◁ η_ Y Y' ⊗≫ ε_ Y Y' ▷ Y') ⊗≫ f := by
      rw [whisker_exchange]; monoidal
    _ = _ := by rw [coevaluation_evaluation'']; monoidal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f5c2b7b791d00e2309663a7051bb7cf105a492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
