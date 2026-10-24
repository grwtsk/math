# of_equivalence_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68dc7f6-c8d5-be43-fc55-70395aa7abf6",
  "kind": "lemma",
  "lexical_name": "of_equivalence_source",
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
  "slug": "of-equivalence-source--48eca5156c8a74fe8830c608",
  "source": {
    "blob": "ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48eca5156c8a74fe8830c608a201c40962fd8451b045e6850650a06a333b0657",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68dc7f6-c8d5-be43-fc55-70395aa7abf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_equivalence_source (L₁ : C₁ ⥤ D) (W₁ : MorphismProperty C₁)
    (L₂ : C₂ ⥤ D) (W₂ : MorphismProperty C₂)
    (E : C₁ ≌ C₂) (hW₁ : W₁ ≤ W₂.isoClosure.inverseImage E.functor) (hW₂ : W₂.IsInvertedBy L₂)
    [L₁.IsLocalization W₁] (iso : E.functor ⋙ L₂ ≅ L₁) : L₂.IsLocalization W₂ := by
  have h : W₁.IsInvertedBy (E.functor ⋙ W₂.Q) := fun _ _ f hf => by
    obtain ⟨_, _, f', hf', ⟨e⟩⟩ := hW₁ f hf
    exact ((MorphismProperty.isomorphisms _).arrow_mk_iso_iff
      (W₂.Q.mapArrow.mapIso e)).1 (Localization.inverts W₂.Q W₂ _ hf')
  exact
    { inverts := hW₂
      isEquivalence :=
        Localization.isEquivalence W₂.Q W₂ L₁ W₁ L₂ (Construction.lift L₂ hW₂)
          (E.functor ⋙ W₂.Q) (Localization.lift (E.functor ⋙ W₂.Q) h L₁) (by
            calc
              L₂ ⋙ lift (E.functor ⋙ W₂.Q) h L₁ ≅ _ := (leftUnitor _).symm
              _ ≅ _ := isoWhiskerRight E.counitIso.symm _
              _ ≅ E.inverse ⋙ E.functor ⋙ L₂ ⋙ lift (E.functor ⋙ W₂.Q) h L₁ :=
                    Functor.associator _ _ _
              _ ≅ E.inverse ⋙ L₁ ⋙ lift (E.functor ⋙ W₂.Q) h L₁ :=
                    isoWhiskerLeft E.inverse ((Functor.associator _ _ _).symm ≪≫
                      isoWhiskerRight iso _)
              _ ≅ E.inverse ⋙ E.functor ⋙ W₂.Q :=
                    isoWhiskerLeft _ (Localization.fac (E.functor ⋙ W₂.Q) h L₁)
              _ ≅ (E.inverse ⋙ E.functor) ⋙ W₂.Q := (Functor.associator _ _ _).symm
              _ ≅ 𝟭 C₂ ⋙ W₂.Q := isoWhiskerRight E.counitIso _
              _ ≅ W₂.Q := leftUnitor _)
          (Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ (Lifting.iso W₂.Q W₂ _ _)  ≪≫ iso) }

/-- If `L₁ : C₁ ⥤ D₁` is a localization functor for `W₁ : MorphismProperty C₁`, then if we
transport this functor `L₁` via equivalences `C₁ ≌ C₂` and `D₁ ≌ D₂` to get a functor
`L₂ : C₂ ⥤ D₂`, then `L₂` is also a localization functor for
a suitable `W₂ : MorphismProperty C₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
