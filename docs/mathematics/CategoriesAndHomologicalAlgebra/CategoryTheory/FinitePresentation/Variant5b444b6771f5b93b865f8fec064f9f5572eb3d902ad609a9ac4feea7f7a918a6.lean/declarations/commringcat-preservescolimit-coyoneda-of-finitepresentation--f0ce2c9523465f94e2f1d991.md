# CommRingCat.preservesColimit_coyoneda_of_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6ca98e91939e1048e7b924f20e55bed5c9fc82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cd8e3e9-922a-46bc-c153-61029c43191c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46bd0d84-d203-5244-1632-25148b6b8ab7",
  "kind": "lemma",
  "lexical_name": "CommRingCat.preservesColimit_coyoneda_of_finitePresentation",
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
  "slug": "commringcat-preservescolimit-coyoneda-of-finitepresentation--f0ce2c9523465f94e2f1d991",
  "source": {
    "blob": "dd6ca98e91939e1048e7b924f20e55bed5c9fc82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 144,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0ce2c9523465f94e2f1d99152dd947653a83c526ebc89a8c6900014fa3cf51a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46bd0d84-d203-5244-1632-25148b6b8ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CommRingCat.preservesColimit_coyoneda_of_finitePresentation
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6ca98e91939e1048e7b924f20e55bed5c9fc82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
