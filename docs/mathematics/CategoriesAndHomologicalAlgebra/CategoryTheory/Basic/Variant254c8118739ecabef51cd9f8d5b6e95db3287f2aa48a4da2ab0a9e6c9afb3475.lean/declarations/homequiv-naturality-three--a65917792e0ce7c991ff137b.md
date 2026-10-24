# homEquiv_naturality_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2de64143d1cf678088a672fb33d63d0d7822df88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25eff43e-6a58-f63e-9189-dad46ec7aa72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:648ac142-36cc-bc34-48d5-255cd1545ecb",
  "kind": "lemma",
  "lexical_name": "homEquiv_naturality_three",
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
  "slug": "homequiv-naturality-three--a65917792e0ce7c991ff137b",
  "source": {
    "blob": "2de64143d1cf678088a672fb33d63d0d7822df88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a65917792e0ce7c991ff137b75958f487044887e866b94ed40ae023c5948f7ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648ac142-36cc-bc34-48d5-255cd1545ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homEquiv_naturality_three [∀ (F₁ F₂ : J ⥤ C), HasEnrichedHom C F₁ F₂]
    (f : F₁ ⊗ F₂ ⟶ F₃) (f₃ : F₃ ⟶ F₃') :
    homEquiv (f ≫ f₃) = homEquiv f ≫ (ρ_ _).inv ≫ _ ◁ functorHomEquiv _ f₃ ≫
      functorEnrichedComp C F₁ F₃ F₃' := by
  dsimp [homEquiv]
  ext j
  dsimp
  ext k
  rw [Category.assoc, Category.assoc, Category.assoc, end_.lift_π, enrichedComp_π,
    tensorHom_def, Category.assoc, whisker_exchange_assoc, whiskerRight_id_assoc,
    Iso.inv_hom_id_assoc, end_.lift_π_assoc, Category.assoc,
    ← MonoidalCategory.whiskerLeft_comp_assoc, Category.assoc, end_.lift_π,
    enrichedOrdinaryCategorySelf_eHomWhiskerRight,
    enrichedOrdinaryCategorySelf_eHomWhiskerLeft]
  dsimp
  rw [pre_id, NatTrans.id_app, Functor.map_id, Category.comp_id,
    Category.comp_id, homEquiv_apply_π, curry_natural_right]
  congr 2
  symm
  apply enrichedOrdinaryCategorySelf_eHomWhiskerLeft

end

variable [∀ (F₁ F₂ : J ⥤ C), HasEnrichedHom C F₁ F₂]
attribute [local instance] Enriched.FunctorCategory.functorEnrichedOrdinaryCategory

/-- When `C` is monoidal closed and has suitable limits,
then for any `F : J ⥤ C`, `tensorLeft F` has a right adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant254c8118739ecabef51cd9f8d5b6e95db3287f2aa48a4da2ab0a9e6c9afb3475.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2de64143d1cf678088a672fb33d63d0d7822df88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
