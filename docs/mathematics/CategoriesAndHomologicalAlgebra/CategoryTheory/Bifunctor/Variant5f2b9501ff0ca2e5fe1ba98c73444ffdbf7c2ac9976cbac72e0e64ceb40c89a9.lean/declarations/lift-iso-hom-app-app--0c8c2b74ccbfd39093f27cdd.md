# lift₂_iso_hom_app_app₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7755ae9cca22ea4fa105bee9c72857d4b6df9f95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6da0a190-f4c0-d37a-4a23-a2d75102ae9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10e74abc-4b32-8d34-fd47-4f79f86818af",
  "kind": "lemma",
  "lexical_name": "lift₂_iso_hom_app_app₂",
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
  "slug": "lift-iso-hom-app-app--0c8c2b74ccbfd39093f27cdd",
  "source": {
    "blob": "7755ae9cca22ea4fa105bee9c72857d4b6df9f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c8c2b74ccbfd39093f27cdd9ed4433d91a3f174074e9ebfbdcf0dc5c8f32514",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e74abc-4b32-8d34-fd47-4f79f86818af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift₂_iso_hom_app_app₂ (X₁ : C₁) (X₂ : C₂) :
    ((Lifting₂.iso L₁ L₂ W₁ W₂ F (lift₂ F hF L₁ L₂)).hom.app X₁).app X₂ =
      (Lifting.iso L₁ W₁ (F.flip.obj X₂) ((lift₂ F hF L₁ L₂).flip.obj (L₂.obj X₂))).hom.app X₁ :=
  rfl

end

section

variable (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂)
  (W₁ : MorphismProperty C₁) (W₂ : MorphismProperty C₂)
  [L₁.IsLocalization W₁] [L₂.IsLocalization W₂]
  [W₁.ContainsIdentities] [W₂.ContainsIdentities]
  (F₁ F₂ : C₁ ⥤ C₂ ⥤ E) (F₁' F₂' : D₁ ⥤ D₂ ⥤ E)
  [Lifting₂ L₁ L₂ W₁ W₂ F₁ F₁'] [Lifting₂ L₁ L₂ W₁ W₂ F₂ F₂']

/-- The natural transformation `F₁' ⟶ F₂'` of bifunctors induced by a
natural transformation `τ : F₁ ⟶ F₂` when `Lifting₂ L₁ L₂ W₁ W₂ F₁ F₁'`
and `Lifting₂ L₁ L₂ W₁ W₂ F₂ F₂'` hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7755ae9cca22ea4fa105bee9c72857d4b6df9f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
