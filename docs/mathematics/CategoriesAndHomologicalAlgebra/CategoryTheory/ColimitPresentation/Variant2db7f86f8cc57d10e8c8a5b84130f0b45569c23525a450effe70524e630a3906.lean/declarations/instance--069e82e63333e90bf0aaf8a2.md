# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84591cf711a2fcf304869183c9c1821bf24fd1fb8981dc991569d5bf288af6d2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--069e82e63333e90bf0aaf8a2",
  "source": {
    "blob": "7b3aaea5885894e02115804c7308630211c67520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitPresentation/Variant2db7f86f8cc57d10e8c8a5b84130f0b45569c23525a450effe70524e630a3906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:069e82e63333e90bf0aaf8a24e1ffa1fa74de27e433b00925e1e39f30a7a5265",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitPresentation/Variant2db7f86f8cc57d10e8c8a5b84130f0b45569c23525a450effe70524e630a3906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84591cf711a2fcf304869183c9c1821bf24fd1fb8981dc991569d5bf288af6d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFiltered J] [∀ j, IsFiltered (I j)]
    [∀ j i, IsFinitelyPresentable.{w} ((P j).diag.obj i)] :
    IsFiltered (Total P) where
  cocone_objs k l := by
    let a := IsFiltered.max k.1 l.1
    obtain ⟨a', f, hf⟩ := Total.exists_hom_of_hom (P := P) k.2 (IsFiltered.leftToMax k.1 l.1)
    obtain ⟨b', g, hg⟩ := Total.exists_hom_of_hom (P := P) l.2 (IsFiltered.rightToMax k.1 l.1)
    refine ⟨⟨a, IsFiltered.max a' b'⟩, ?_, ?_, trivial⟩
    · exact f ≫ { base := 𝟙 _, hom := (P _).diag.map (IsFiltered.leftToMax _ _) }
    · exact g ≫ { base := 𝟙 _, hom := (P _).diag.map (IsFiltered.rightToMax _ _) }
  cocone_maps {k l} f g := by
    let a := IsFiltered.coeq f.base g.base
    obtain ⟨a', u, hu⟩ := Total.exists_hom_of_hom (P := P) l.2 (IsFiltered.coeqHom f.base g.base)
    have : (f.hom ≫ u.hom) ≫ (P _).ι.app _ = (g.hom ≫ u.hom) ≫ (P _).ι.app _ := by
      simp only [Category.assoc, Functor.const_obj_obj, ← u.w, ← f.w_assoc, ← g.w_assoc]
      rw [← Functor.map_comp, hu, IsFiltered.coeq_condition f.base g.base]
      simp
    obtain ⟨j, p, q, hpq⟩ := IsFinitelyPresentable.exists_eq_of_isColimit (P _).isColimit _ _ this
    dsimp at p q
    refine ⟨⟨a, IsFiltered.coeq p q⟩,
      u ≫ { base := 𝟙 _, hom := (P _).diag.map (p ≫ IsFiltered.coeqHom p q) }, ?_⟩
    apply Total.Hom.ext
    · simp [hu, IsFiltered.coeq_condition f.base g.base]
    · rw [Category.assoc] at hpq
      simp only [Functor.map_comp, comp_hom, reassoc_of% hpq]
      simp [← Functor.map_comp, ← IsFiltered.coeq_condition]

set_option backward.defeqAttrib.useBackward true in
/-- If `P` is a colimit presentation over `J` of `X` and for every `j` we are given a colimit
presentation `Qⱼ` over `I j` of the `P.diag.obj j`, this is the refined colimit presentation of `X`
over `Total Q`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitPresentation/Variant2db7f86f8cc57d10e8c8a5b84130f0b45569c23525a450effe70524e630a3906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitPresentation/Variant2db7f86f8cc57d10e8c8a5b84130f0b45569c23525a450effe70524e630a3906.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3aaea5885894e02115804c7308630211c67520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
