# coconeApp_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac43a287dad7b1a0e1b11331b070f3c64e45d0a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c372bdc3-620f-d45d-73f7-ccafa6f9a258",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fefce321-a361-eeaa-befb-6c8ddf022da7",
  "kind": "lemma",
  "lexical_name": "coconeApp_naturality",
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
  "slug": "coconeapp-naturality--074c32a3e156bc15d16f641a",
  "source": {
    "blob": "ac43a287dad7b1a0e1b11331b070f3c64e45d0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 386,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074c32a3e156bc15d16f641a0903632ce5814497ee9e396252249a4a9d854f9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fefce321-a361-eeaa-befb-6c8ddf022da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coconeApp_naturality {P : Cᵒᵖ ⥤ Type v₁} {x y : P.Elements} (f : x ⟶ y) :
    yoneda.map f.1.unop ≫ coconeApp φ x = coconeApp φ y := by
  have eq₁ : yoneda.map f.1.unop ≫ yonedaEquiv.symm x.2 = yonedaEquiv.symm y.2 :=
    yonedaEquiv.injective
      (by simpa only [Equiv.apply_symm_apply, ← yonedaEquiv_naturality] using f.2)
  have eq₂ := congr_fun ((G.map (yonedaEquiv.symm x.2)).naturality (F.map f.1.unop).op)
    ((φ.app x.1.unop).app _ (𝟙 _))
  have eq₃ := congr_fun (congr_app (φ.naturality f.1.unop) _) (𝟙 _)
  have eq₄ := congr_fun ((φ.app x.1.unop).naturality (F.map f.1.unop).op)
  dsimp at eq₂ eq₃ eq₄
  apply yonedaEquiv.injective
  dsimp only [coconeApp]
  rw [Equiv.apply_symm_apply, ← yonedaEquiv_naturality, Equiv.apply_symm_apply]
  simp [← eq₁, ← eq₂, ← eq₃, ← eq₄, Functor.map_comp, FunctorToTypes.comp, id_comp, comp_id]

/-- Given functors `F : C ⥤ D` and `G : (Cᵒᵖ ⥤ Type v₁) ⥤ (Dᵒᵖ ⥤ Type v₁)`, and
a natural transformation `φ : F ⋙ yoneda ⟶ yoneda ⋙ G`, this is the
(natural) morphism `P ⟶ F.op ⋙ G.obj P` for all `P : Cᵒᵖ ⥤ Type v₁` that is
determined by `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac43a287dad7b1a0e1b11331b070f3c64e45d0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
