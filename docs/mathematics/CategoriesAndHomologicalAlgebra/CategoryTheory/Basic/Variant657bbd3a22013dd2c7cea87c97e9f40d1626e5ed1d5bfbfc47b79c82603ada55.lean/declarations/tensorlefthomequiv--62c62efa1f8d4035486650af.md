# tensorLeftHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1333b5c9a31a03cd81dd40137375b60ffaf65d36bfd6b919957d92f7732a1f9",
  "kind": "def",
  "lexical_name": "tensorLeftHomEquiv",
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
  "slug": "tensorlefthomequiv--62c62efa1f8d4035486650af",
  "source": {
    "blob": "58f5c2b7b791d00e2309663a7051bb7cf105a492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 394,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62c62efa1f8d4035486650af67df2eb0431abb5a37406b2339def0e98c09a50a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1333b5c9a31a03cd81dd40137375b60ffaf65d36bfd6b919957d92f7732a1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorLeftHomEquiv (X Y Y' Z : C) [ExactPairing Y Y'] : (Y' ⊗ X ⟶ Z) ≃ (X ⟶ Y ⊗ Z) where
  toFun f := (λ_ _).inv ≫ η_ _ _ ▷ _ ≫ (α_ _ _ _).hom ≫ _ ◁ f
  invFun f := Y' ◁ f ≫ (α_ _ _ _).inv ≫ ε_ _ _ ▷ _ ≫ (λ_ _).hom
  left_inv f := by
    calc
      _ = 𝟙 _ ⊗≫ Y' ◁ η_ Y Y' ▷ X ⊗≫ ((Y' ⊗ Y) ◁ f ≫ ε_ Y Y' ▷ Z) ⊗≫ 𝟙 _ := by
        monoidal
      _ = 𝟙 _ ⊗≫ (Y' ◁ η_ Y Y' ⊗≫ ε_ Y Y' ▷ Y') ▷ X ⊗≫ f := by
        rw [whisker_exchange]; monoidal
      _ = f := by
        rw [coevaluation_evaluation'']; monoidal
  right_inv f := by
    calc
      _ = 𝟙 _ ⊗≫ (η_ Y Y' ▷ X ≫ (Y ⊗ Y') ◁ f) ⊗≫ Y ◁ ε_ Y Y' ▷ Z ⊗≫ 𝟙 _ := by
        monoidal
      _ = f ⊗≫ (η_ Y Y' ▷ Y ⊗≫ Y ◁ ε_ Y Y') ▷ Z ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]; monoidal
      _ = f := by
        rw [evaluation_coevaluation'']; monoidal

/-- Given an exact pairing on `Y Y'`,
we get a bijection on hom-sets `(X ⊗ Y ⟶ Z) ≃ (X ⟶ Z ⊗ Y')`
by "pulling the string on the right" up or down.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f5c2b7b791d00e2309663a7051bb7cf105a492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
