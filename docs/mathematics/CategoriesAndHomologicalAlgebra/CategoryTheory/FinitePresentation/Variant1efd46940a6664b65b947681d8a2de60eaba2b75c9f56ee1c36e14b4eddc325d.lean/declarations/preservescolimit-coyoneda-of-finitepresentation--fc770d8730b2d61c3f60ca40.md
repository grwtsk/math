# preservesColimit_coyoneda_of_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da2168a8-d963-98ca-a1a1-209b09d6b401",
  "kind": "lemma",
  "lexical_name": "preservesColimit_coyoneda_of_finitePresentation",
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
  "slug": "preservescolimit-coyoneda-of-finitepresentation--fc770d8730b2d61c3f60ca40",
  "source": {
    "blob": "5bb204693fcef80d36d0b2fd3eba307da4859dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc770d8730b2d61c3f60ca40d0ab7494d7f070a12e9ce8f2bc3b42b699436523",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2168a8-d963-98ca-a1a1-209b09d6b401`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimit_coyoneda_of_finitePresentation
    (S : Under R) (hS : S.hom.hom.FinitePresentation) (F : J ⥤ Under R)
    [PreservesColimit (F ⋙ Under.forget R) (forget CommRingCat)] :
    PreservesColimit F (coyoneda.obj (.op S)) := by
  constructor
  intro c hc
  refine ⟨Types.FilteredColimit.isColimitOf _ _ ?_ ?_⟩
  · intro f
    obtain ⟨i, g, h₁, h₂⟩ := RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit
       R (F ⋙ Under.forget R) { app i := (F.obj i).hom } S.hom ((Under.forget R).mapCocone c)
      (PreservesColimit.preserves hc).some hS f.right (by simp)
    exact ⟨i, Under.homMk g h₁, Under.UnderMorphism.ext h₂⟩
  · intro i j f₁ f₂ e
    dsimp at *
    obtain ⟨k, hik, hjk, e⟩ := RingHom.EssFiniteType.exists_comp_map_eq_of_isColimit
      R (F ⋙ Under.forget R) { app i := (F.obj i).hom } S.hom ((Under.forget R).mapCocone c)
      (PreservesColimit.preserves hc).some
      (RingHom.FiniteType.of_finitePresentation hS).essFiniteType
      f₁.right (Under.w f₁) f₂.right (Under.w f₂) congr($(e).right)
    exact ⟨k, hik, hjk, Under.UnderMorphism.ext e⟩

/-- If `S` is a finitely presented `R`-algebra, then `Hom_R(S, -)` preserves filtered colimits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant1efd46940a6664b65b947681d8a2de60eaba2b75c9f56ee1c36e14b4eddc325d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb204693fcef80d36d0b2fd3eba307da4859dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
