# exactPairingCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82bdb686ea52493f2e0109977c99f3d02e365b324abaf8a128935b778529289e",
  "kind": "def",
  "lexical_name": "exactPairingCongrLeft",
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
  "slug": "exactpairingcongrleft--435fe4ee8b0845805c4bc7d9",
  "source": {
    "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 479,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:435fe4ee8b0845805c4bc7d912ce7a95577e1db0f209be492427c94f53d5993e",
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

Occurrence: `declaration:82bdb686ea52493f2e0109977c99f3d02e365b324abaf8a128935b778529289e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactPairingCongrLeft {X X' Y : C} [ExactPairing X' Y] (i : X ≅ X') : ExactPairing X Y where
  evaluation' := Y ◁ i.hom ≫ ε_ _ _
  coevaluation' := η_ _ _ ≫ i.inv ▷ Y
  evaluation_coevaluation' :=
    calc
      _ = η_ X' Y ▷ X ⊗≫ (i.inv ▷ (Y ⊗ X) ≫ X ◁ (Y ◁ i.hom)) ⊗≫ X ◁ ε_ X' Y := by
        monoidal
      _ = 𝟙 _ ⊗≫ (η_ X' Y ▷ X ≫ (X' ⊗ Y) ◁ i.hom) ⊗≫
          (i.inv ▷ (Y ⊗ X') ≫ X ◁ ε_ X' Y) ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange]; monoidal
      _ = 𝟙 _ ⊗≫ i.hom ⊗≫ (η_ X' Y ▷ X' ⊗≫ X' ◁ ε_ X' Y) ⊗≫ i.inv ⊗≫ 𝟙 _ := by
        rw [← whisker_exchange, ← whisker_exchange]; monoidal
      _ = 𝟙 _ ⊗≫ (i.hom ≫ i.inv) ⊗≫ 𝟙 _ := by
        rw [evaluation_coevaluation'']; monoidal
      _ = (λ_ X).hom ≫ (ρ_ X).inv := by
        rw [Iso.hom_inv_id]
        monoidal
  coevaluation_evaluation' := by
    calc
      _ = Y ◁ η_ X' Y ≫ Y ◁ (i.inv ≫ i.hom) ▷ Y ⊗≫ ε_ X' Y ▷ Y := by
        monoidal
      _ = Y ◁ η_ X' Y ⊗≫ ε_ X' Y ▷ Y := by
        rw [Iso.inv_hom_id]; monoidal
      _ = _ := by
        rw [coevaluation_evaluation'']
        monoidal

/-- Transport an exact pairing across an isomorphism in the second argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ff3764d4702e47edc3d43733b97a86d445921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
