# homMap_homMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0076bc96-79d1-de67-590c-7173364e80f1",
  "kind": "lemma",
  "lexical_name": "homMap_homMap",
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
  "slug": "hommap-hommap--262fe5a811ac7a1ceb22f214",
  "source": {
    "blob": "315d8a4ee63a637630ccd7c697f1221ccce767de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:262fe5a811ac7a1ceb22f214820719d205c17c8d29fc2c67a8f7df2fe185271f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0076bc96-79d1-de67-590c-7173364e80f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homMap_homMap (f : L₁.obj X ⟶ L₁.obj Y) :
    Ψ.homMap L₂ L₃ (Φ.homMap L₁ L₂ f) = (Φ.comp Ψ).homMap L₁ L₃ f := by
  let G := Φ.localizedFunctor L₁ L₂
  let G' := Ψ.localizedFunctor L₂ L₃
  let e : Φ.functor ⋙ L₂ ≅ L₁ ⋙ G := CatCommSq.iso _ _ _ _
  let e' : Ψ.functor ⋙ L₃ ≅ L₂ ⋙ G' := CatCommSq.iso _ _ _ _
  rw [Φ.homMap_apply L₁ L₂ G e, Ψ.homMap_apply L₂ L₃ G' e',
    (Φ.comp Ψ).homMap_apply L₁ L₃ (G ⋙ G')
      (Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ e' ≪≫
      (Functor.associator _ _ _).symm ≪≫ isoWhiskerRight e _ ≪≫
      Functor.associator _ _ _)]
  dsimp
  simp only [Functor.map_comp, assoc, comp_id, id_comp]

end LocalizerMorphism

namespace Localization

variable (W : MorphismProperty C) (L₁ : C ⥤ D₁) [L₁.IsLocalization W]
  (L₂ : C ⥤ D₂) [L₂.IsLocalization W] (L₃ : C ⥤ D₃) [L₃.IsLocalization W]
  {X Y Z : C}

/-- Bijection between types of morphisms in two localized categories
for the same class of morphisms `W`. -/
@[simps -isSimp apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant9f7a1c2c97b758dc2edac641074a295c531593d9c48ef19e829c2b78fd8a2101.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d8a4ee63a637630ccd7c697f1221ccce767de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
