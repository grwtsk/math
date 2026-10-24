# hasColimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20450cfecb99fd4e04938e648b43df7522e804cef5c78b41a7cbd6b2959cbc65",
  "kind": "def",
  "lexical_name": "hasColimit_parallelPair",
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
  "slug": "hascolimit-parallelpair--2f3857c6e97896b0580590f9",
  "source": {
    "blob": "8ca207bbc3960f18fd20f63198a2343d73a645c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f3857c6e97896b0580590f98a419d5e76ba6086d2855f4133e1280a9b443c50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20450cfecb99fd4e04938e648b43df7522e804cef5c78b41a7cbd6b2959cbc65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasColimit_parallelPair {X Y : C} (f g : X ⟶ Y) : HasColimit (parallelPair f g) :=
  have huv : (pushout.inl : Y ⟶ Q f g) = pushout.inr :=
    calc
      (pushout.inl : Y ⟶ Q f g) = 𝟙 _ ≫ pushout.inl := Eq.symm <| Category.id_comp _
      _ = (coprod.inl ≫ coprod.desc (𝟙 Y) f) ≫ pushout.inl := by rw [coprod.inl_desc]
      _ = (coprod.inl ≫ coprod.desc (𝟙 Y) g) ≫ pushout.inr := by
        simp only [Category.assoc, pushout.condition]
      _ = pushout.inr := by rw [coprod.inl_desc, Category.id_comp]

  have hvu : f ≫ (pushout.inl : Y ⟶ Q f g) = g ≫ pushout.inr :=
    calc
      f ≫ (pushout.inl : Y ⟶ Q f g) = (coprod.inr ≫ coprod.desc (𝟙 Y) f) ≫ pushout.inl := by
        rw [coprod.inr_desc]
      _ = (coprod.inr ≫ coprod.desc (𝟙 Y) g) ≫ pushout.inr := by
        simp only [Category.assoc, pushout.condition]
      _ = g ≫ pushout.inr := by rw [coprod.inr_desc]

  have huu : f ≫ (pushout.inl : Y ⟶ Q f g) = g ≫ pushout.inl := by rw [hvu, huv]
  HasColimit.mk
    { cocone := Cofork.ofπ pushout.inl huu
      isColimit :=
        Cofork.IsColimit.mk _
          (fun s =>
            pushout.desc (Cofork.π s) (Cofork.π s) <|
              coprod.hom_ext (by simp only [coprod.inl_desc_assoc])
                (by simp only [coprod.desc_comp, Cofork.condition s]))
          (fun s => by simp only [pushout.inl_desc, Cofork.π_ofπ]) fun s m h =>
          pushout.hom_ext (by simpa only [pushout.inl_desc] using h)
            (by simpa only [huv.symm, pushout.inl_desc] using h) }
#align category_theory.normal_epi_category.has_colimit_parallel_pair CategoryTheory.NormalEpiCategory.hasColimit_parallelPair

end

section

attribute [local instance] hasColimit_parallelPair

/-- A `NormalEpiCategory` category with finite coproducts and cokernels has all coequalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdb7c19b6c61f42a90232db61a5a7423f91a340c735401461c699f966edd8b3b4.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca207bbc3960f18fd20f63198a2343d73a645c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
