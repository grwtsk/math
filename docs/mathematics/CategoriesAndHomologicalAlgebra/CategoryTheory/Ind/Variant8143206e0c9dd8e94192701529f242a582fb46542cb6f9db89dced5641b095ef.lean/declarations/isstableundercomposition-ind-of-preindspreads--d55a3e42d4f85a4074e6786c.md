# IsStableUnderComposition.ind_of_preIndSpreads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1184c5a2026cbdd73613572f5d6298658c093707",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67c37703-a626-3110-fe52-8c12b67881e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f557fc0c-33ac-52f7-f5bc-c8f959b2653b",
  "kind": "lemma",
  "lexical_name": "IsStableUnderComposition.ind_of_preIndSpreads",
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
  "slug": "isstableundercomposition-ind-of-preindspreads--d55a3e42d4f85a4074e6786c",
  "source": {
    "blob": "1184c5a2026cbdd73613572f5d6298658c093707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55a3e42d4f85a4074e6786c3729c34956b21c1046ab2e9c68543faf290696ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f557fc0c-33ac-52f7-f5bc-c8f959b2653b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStableUnderComposition.ind_of_preIndSpreads
    [∀ X : C, (IsFinitelyAccessibleCategory.{w} (Under X))] [HasPushouts C]
    [P.IsStableUnderComposition] [P.IsStableUnderCobaseChange]
    [PreIndSpreads.{w} P] (H : P ≤ isFinitelyPresentable.{w} C) :
    (ind.{w} P).IsStableUnderComposition where
  comp_mem {X Y Z} f g hf hg := by
    rw [ind_iff_exists H]
    intro T p u hp hpu
    obtain ⟨J₁, _, _, D₁, s₁, t₁, ht₁, h₁⟩ := hf
    obtain ⟨J₂, _, _, D₂, s₂, t₂, ht₂, h₂⟩ := hg
    have : IsFinitelyPresentable (CategoryTheory.Under.mk p) := hp
    obtain ⟨j₂, q, hcomp, hu⟩ := IsFinitelyPresentable.exists_hom_of_isColimit_under
        ht₂ p ((Functor.const _).map f ≫ s₂) u <| by simp [h₂, hpu]
    obtain ⟨j₁, W, f', g', h, hf'⟩ :=
      P.exists_isPushout_of_isFiltered ht₁ (s₂.app j₂) (h₂ j₂).left
    let D' : Under j₁ ⥤ C :=
      (Under.post D₁ ⋙ Under.pushout f') ⋙ CategoryTheory.Under.forget _
    let c' : Cocone D' :=
      (Under.pushout f' ⋙ CategoryTheory.Under.forget _).mapCocone
        ((Cocone.mk _ t₁).underPost j₁) |>.extend h.isoPushout.inv
    let hc' : IsColimit c' :=
      IsColimit.extendIso _ <| isColimitOfPreserves _ (ht₁.underPost j₁)
    let s' : (Functor.const (Under j₁)).obj X ⟶ D' :=
      { app k := s₁.app k.right ≫ pushout.inl _ _
        naturality k l a := by
          have h2 := s₁.naturality a.right
          simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at h2
          simp [h2, D'] }
    obtain ⟨j₃, v, hcomp', hq⟩ := IsFinitelyPresentable.exists_hom_of_isColimit_under
        hc' p s' q <| fun k ↦ by
      simp [c', s', hcomp, reassoc_of% (h₁ k.right).right]
    refine ⟨D'.obj j₃, v, c'.ι.app j₃ ≫ t₂.app j₂, ?_, ?_⟩
    · rwa [reassoc_of% hq]
    · rw [hcomp']
      exact P.comp_mem _ _ (h₁ _).left (P.pushout_inl _ _ hf')

/-- If `P` ind-spreads and all under categories are finitely accessible, `ind P`
is multiplicative if `P` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ind/Variant8143206e0c9dd8e94192701529f242a582fb46542cb6f9db89dced5641b095ef.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1184c5a2026cbdd73613572f5d6298658c093707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
