# lift₃NatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d4d579b796356276d029cd82a3af86343fce78da91a8f8f44b0b35054f98316",
  "kind": "def",
  "lexical_name": "lift₃NatIso",
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
  "slug": "lift-natiso--c60b0d80f3cfc022029ebb09",
  "source": {
    "blob": "64a75a791e7caa84da277e0939e025e82c1eaf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60b0d80f3cfc022029ebb092912ed0ee5707db442fac9b84911080a23d3ed80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d4d579b796356276d029cd82a3af86343fce78da91a8f8f44b0b35054f98316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lift₃NatIso : F₁' ≅ F₂' where
  hom := lift₃NatTrans L₁ L₂ L₃ W₁ W₂ W₃ F₁ F₂ F₁' F₂' e.hom
  inv := lift₃NatTrans L₁ L₂ L₃ W₁ W₂ W₃ F₂ F₁ F₂' F₁' e.inv
  hom_inv_id := natTrans₃_ext L₁ L₂ L₃ W₁ W₂ W₃ (by aesop_cat)
  inv_hom_id := natTrans₃_ext L₁ L₂ L₃ W₁ W₂ W₃ (by aesop_cat)

end

section

variable
  (L₁ : C₁ ⥤ D₁) (L₂ : C₂ ⥤ D₂) (L₃ : C₃ ⥤ D₃) (L₁₂ : C₁₂ ⥤ D₁₂) (L₂₃ : C₂₃ ⥤ D₂₃) (L : C ⥤ D)
  (W₁ : MorphismProperty C₁) (W₂ : MorphismProperty C₂) (W₃ : MorphismProperty C₃)
  (W₁₂ : MorphismProperty C₁₂) (W₂₃ : MorphismProperty C₂₃) (W : MorphismProperty C)
  [W₁.ContainsIdentities] [W₂.ContainsIdentities] [W₃.ContainsIdentities]
  [L₁.IsLocalization W₁] [L₂.IsLocalization W₂] [L₃.IsLocalization W₃] [L.IsLocalization W]
  (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) (G : C₁₂ ⥤ C₃ ⥤ C)
  (F : C₁ ⥤ C₂₃ ⥤ C) (G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃)
  (iso : bifunctorComp₁₂ F₁₂ G ≅ bifunctorComp₂₃ F G₂₃)
  (F₁₂' : D₁ ⥤ D₂ ⥤ D₁₂) (G' : D₁₂ ⥤ D₃ ⥤ D)
  (F' : D₁ ⥤ D₂₃ ⥤ D) (G₂₃' : D₂ ⥤ D₃ ⥤ D₂₃)
  [Lifting₂ L₁ L₂ W₁ W₂ (F₁₂ ⋙ (whiskeringRight _ _ _).obj L₁₂) F₁₂']
  [Lifting₂ L₁₂ L₃ W₁₂ W₃ (G ⋙ (whiskeringRight _ _ _).obj L) G']
  [Lifting₂ L₁ L₂₃ W₁ W₂₃ (F ⋙ (whiskeringRight _ _ _).obj L) F']
  [Lifting₂ L₂ L₃ W₂ W₃ (G₂₃ ⋙ (whiskeringRight _ _ _).obj L₂₃) G₂₃']

/-- The construction `bifunctorComp₁₂` of a trifunctor by composition of bifunctors
is compatible with localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant84f26629f9beaa049233e06047497adbfb798c3b055ea37ab2b2b85d2951bd6b.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a75a791e7caa84da277e0939e025e82c1eaf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
