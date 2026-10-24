# ObjectProperty.IsStrongGenerator.isDense_colimitsCardinalClosure_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f661768c-c91a-9466-6513-aade035f6e7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7689859b-0b13-011f-ce8e-82f5700ff7f8",
  "kind": "lemma",
  "lexical_name": "ObjectProperty.IsStrongGenerator.isDense_colimitsCardinalClosure_ι",
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
  "slug": "objectproperty-isstronggenerator-isdense-colimitscardinalclosure--a94d7bbd8fe0f761653cc4f6",
  "source": {
    "blob": "232ac409a31120aa2b6d74c110de3785f322901d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94d7bbd8fe0f761653cc4f6eb292d3aef153f322a34ffa2d7fc8d3763a0ca24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7689859b-0b13-011f-ce8e-82f5700ff7f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ObjectProperty.IsStrongGenerator.isDense_colimitsCardinalClosure_ι
    [HasColimitsOfSize.{w, w} C] [LocallySmall.{w} C]
    {P : ObjectProperty C} [ObjectProperty.Small.{w} P] (hS₁ : P.IsStrongGenerator)
    (hS₂ : P ≤ isCardinalPresentable C κ) :
    (P.colimitsCardinalClosure κ).ι.IsDense where
  isDenseAt X := by
    let E := Functor.LeftExtension.mk _ (P.colimitsCardinalClosure κ).ι.rightUnitor.inv
    have : HasColimitsOfShape (CostructuredArrow (P.colimitsCardinalClosure κ).ι X) C :=
      hasColimitsOfShape_of_equivalence
        (equivSmallModel.{w} (CostructuredArrow (P.colimitsCardinalClosure κ).ι X)).symm
    have : Mono (colimit.desc _ (E.coconeAt X)) := by
      let Φ := CostructuredArrow.proj (P.colimitsCardinalClosure κ).ι X ⋙
        (P.colimitsCardinalClosure κ).ι
      rw [hS₁.isSeparating.mono_iff]
      intro G hG (g₁ : G ⟶ colimit Φ) (g₂ : G ⟶ colimit Φ)
        (h : g₁ ≫ colimit.desc Φ (E.coconeAt X) = g₂ ≫ colimit.desc Φ (E.coconeAt X))
      have : IsCardinalPresentable G κ := hS₂ _ hG
      obtain ⟨j, φ₁, φ₂, rfl, rfl⟩ :
          ∃ (j : CostructuredArrow (P.colimitsCardinalClosure κ).ι X)
            (φ₁ φ₂ : G ⟶ Φ.obj j), φ₁ ≫ colimit.ι _ _ = g₁ ∧ φ₂ ≫ colimit.ι _ _ = g₂ := by
        obtain ⟨j₁, f₁, hf₁⟩ :=
          IsCardinalPresentable.exists_hom_of_isColimit κ (colimit.isColimit _) g₁
        obtain ⟨j₂, f₂, hf₂⟩ :=
          IsCardinalPresentable.exists_hom_of_isColimit κ (colimit.isColimit _) g₂
        exact ⟨IsFiltered.max j₁ j₂, f₁ ≫ Φ.map (IsFiltered.leftToMax j₁ j₂),
          f₂ ≫ Φ.map (IsFiltered.rightToMax j₁ j₂), by simpa, by simpa⟩
      have : (P.colimitsCardinalClosure κ).IsClosedUnderColimitsOfShape WalkingParallelPair := by
        apply ObjectProperty.isClosedUnderColimitsOfShape_colimitsCardinalClosure
        refine .of_le ?_ (Cardinal.IsRegular.aleph0_le Fact.out)
        simp only [hasCardinalLT_aleph0_iff]
        infer_instance
      let obj : (P.colimitsCardinalClosure κ).FullSubcategory :=
        ⟨coequalizer φ₁ φ₂, by
          apply ObjectProperty.prop_colimit
          rintro (_ | _)
          · exact P.le_colimitsCardinalClosure _ _ hG
          · exact j.left.2⟩
      let a : (P.colimitsCardinalClosure κ).ι.obj obj ⟶ X :=
        coequalizer.desc ((E.coconeAt X).ι.app j) (by simpa using h)
      let ψ : j ⟶ CostructuredArrow.mk a :=
        CostructuredArrow.homMk (ObjectProperty.homMk (coequalizer.π _ _)) (by simp [E, a])
      rw [← colimit.w Φ ψ]
      apply coequalizer.condition_assoc
    have : IsIso (colimit.desc _ (E.coconeAt X)) := hS₁.isIso_of_mono _ (fun Y hY g ↦ by
      let γ : CostructuredArrow (P.colimitsCardinalClosure κ).ι X :=
        CostructuredArrow.mk (Y := ⟨Y, P.le_colimitsCardinalClosure  _ _ hY⟩) (by exact g)
      exact ⟨colimit.ι (CostructuredArrow.proj _ _ ⋙ (P.colimitsCardinalClosure κ).ι) γ,
        by simp [γ, E]⟩)
    exact ⟨IsColimit.ofIsoColimit (colimit.isColimit _) (Cocone.ext
      (asIso (colimit.desc _ (E.coconeAt X))))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variant7f996e83ce087209755a6cdee935633351cbb108096278e0eed3919acbd72609.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232ac409a31120aa2b6d74c110de3785f322901d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
