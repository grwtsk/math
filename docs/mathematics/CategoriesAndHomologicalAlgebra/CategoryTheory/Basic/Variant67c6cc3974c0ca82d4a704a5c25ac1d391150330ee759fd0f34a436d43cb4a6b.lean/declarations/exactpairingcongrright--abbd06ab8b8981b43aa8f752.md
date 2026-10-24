# exactPairingCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c3d955d724ccbaaa3114134c35489b75991914f66c53cfa2404c4e41d26fb3e",
  "kind": "def",
  "lexical_name": "exactPairingCongrRight",
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
  "slug": "exactpairingcongrright--abbd06ab8b8981b43aa8f752",
  "source": {
    "blob": "c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 515,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abbd06ab8b8981b43aa8f7526e2e56aef1784b7f9775acd471acac386cd85aca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c3d955d724ccbaaa3114134c35489b75991914f66c53cfa2404c4e41d26fb3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingCongrRight {X Y Y' : C} [ExactPairing X Y'] (i : Y ≅ Y') : ExactPairing X Y where
  evaluation' := i.hom ▷ X ≫ ε_ _ _
  coevaluation' := η_ _ _ ≫ X ◁ i.inv
  evaluation_coevaluation' := by
    calc
      _ = η_ X Y' ▷ X ⊗≫ X ◁ (i.inv ≫ i.hom) ▷ X ≫ X ◁ ε_ X Y' := by
        monoidal
      _ = η_ X Y' ▷ X ⊗≫ X ◁ ε_ X Y' := by
        rw [Iso.inv_hom_id]; monoidal
      _ = _ := by
        rw [evaluation_coevaluation'']
        monoidal
  coevaluation_evaluation' :=
    calc
      _ = Y ◁ η_ X Y' ⊗≫ (Y ◁ (X ◁ i.inv) ≫ i.hom ▷ (X ⊗ Y)) ⊗≫ ε_ X Y' ▷ Y := by
        monoidal
      _ = 𝟙 _ ⊗≫ (Y ◁ η_ X Y' ≫ i.hom ▷ (X ⊗ Y')) ⊗≫
          ((Y' ⊗ X) ◁ i.inv ≫ ε_ X Y' ▷ Y) ⊗≫ 𝟙 _ := by
        rw [whisker_exchange]; monoidal
      _ = 𝟙 _ ⊗≫ i.hom ⊗≫ (Y' ◁ η_ X Y' ⊗≫ ε_ X Y' ▷ Y') ⊗≫ i.inv ⊗≫ 𝟙 _ := by
        rw [whisker_exchange, whisker_exchange]; monoidal
      _ = 𝟙 _ ⊗≫ (i.hom ≫ i.inv) ⊗≫ 𝟙 _ := by
        rw [coevaluation_evaluation'']; monoidal
      _ = (ρ_ Y).hom ≫ (λ_ Y).inv := by
        rw [Iso.hom_inv_id]
        monoidal

/-- Transport an exact pairing across isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
