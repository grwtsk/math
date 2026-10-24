# rightAdjointMate_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6b2c6a6-9f4b-14cc-ea24-ff07c56cc515",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee714bab-c7bf-76d2-992f-fdb9cbd84ff3",
  "kind": "theorem",
  "lexical_name": "rightAdjointMate_comp",
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
  "slug": "rightadjointmate-comp--5f5e715d4ff107ebe812f06a",
  "source": {
    "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f5e715d4ff107ebe812f06abd2d8ca03d0dfee2f7cd5bda435d994b4ffff6e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee714bab-c7bf-76d2-992f-fdb9cbd84ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightAdjointMate_comp {X Y Z : C} [HasRightDual X] [HasRightDual Y] {f : X ⟶ Y}
    {g : Xᘁ ⟶ Z} :
    fᘁ ≫ g =
      (ρ_ (Yᘁ)).inv ≫
        _ ◁ η_ X (Xᘁ) ≫ _ ◁ (f ⊗ g) ≫ (α_ (Yᘁ) Y Z).inv ≫ ε_ Y (Yᘁ) ▷ _ ≫ (λ_ Z).hom :=
  calc
    _ = 𝟙 _ ⊗≫ (Yᘁ : C) ◁ η_ X Xᘁ ≫ Yᘁ ◁ f ▷ Xᘁ ⊗≫ (ε_ Y Yᘁ ▷ Xᘁ ≫ 𝟙_ C ◁ g) ⊗≫ 𝟙 _ := by
      dsimp only [rightAdjointMate]; monoidal
    _ = _ := by
      rw [← whisker_exchange, tensorHom_def]; monoidal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ff3764d4702e47edc3d43733b97a86d445921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
