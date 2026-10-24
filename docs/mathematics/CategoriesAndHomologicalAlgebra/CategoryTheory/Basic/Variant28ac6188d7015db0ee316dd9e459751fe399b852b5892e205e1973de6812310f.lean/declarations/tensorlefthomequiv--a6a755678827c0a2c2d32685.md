# tensorLeftHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e01b1b81afa9ae79199a2525aa88144f6100fd2e7e517bb9ab82f76210eed195",
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
  "slug": "tensorlefthomequiv--a6a755678827c0a2c2d32685",
  "source": {
    "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6a755678827c0a2c2d32685c7036d3a3a78178e902b2ecb01dc593f4264989c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e01b1b81afa9ae79199a2525aa88144f6100fd2e7e517bb9ab82f76210eed195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–294.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ff3764d4702e47edc3d43733b97a86d445921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
