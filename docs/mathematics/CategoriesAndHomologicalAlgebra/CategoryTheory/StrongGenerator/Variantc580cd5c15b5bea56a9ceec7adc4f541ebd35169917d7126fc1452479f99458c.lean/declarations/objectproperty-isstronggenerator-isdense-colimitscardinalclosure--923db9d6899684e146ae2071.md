# ObjectProperty.IsStrongGenerator.isDense_colimitsCardinalClosure_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:250cd771-770d-6b8e-0a06-a141993ddfb8",
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
  "slug": "objectproperty-isstronggenerator-isdense-colimitscardinalclosure--923db9d6899684e146ae2071",
  "source": {
    "blob": "8b94707ed37c1a9c5fa06cb63a019b2eedb22556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:923db9d6899684e146ae2071a9f214b106363fb3496c2c6d950d3f6c35ec05d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250cd771-770d-6b8e-0a06-a141993ddfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–146.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b94707ed37c1a9c5fa06cb63a019b2eedb22556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
