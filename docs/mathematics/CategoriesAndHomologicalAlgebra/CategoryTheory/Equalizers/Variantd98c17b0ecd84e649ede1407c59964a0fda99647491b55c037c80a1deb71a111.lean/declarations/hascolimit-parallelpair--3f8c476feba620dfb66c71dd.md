# hasColimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba31270bd463ec260038c06542294694c94e89983d087c7aae0c4d67736cf62a",
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
  "slug": "hascolimit-parallelpair--3f8c476feba620dfb66c71dd",
  "source": {
    "blob": "7cb142eb4d8167117374ce7e3e0b7fc95075cdb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 262,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f8c476feba620dfb66c71dd6faad9fcf9c1d0a567412cf63f176346ece946ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba31270bd463ec260038c06542294694c94e89983d087c7aae0c4d67736cf62a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasColimit_parallelPair {X Y : C} (f g : X ⟶ Y) : HasColimit (parallelPair f g) :=
  have huv : (pushout.inl _ _ : Y ⟶ Q f g) = pushout.inr _ _ :=
    calc
      (pushout.inl _ _ : Y ⟶ Q f g) = 𝟙 _ ≫ pushout.inl _ _ := Eq.symm <| Category.id_comp _
      _ = (coprod.inl ≫ coprod.desc (𝟙 Y) f) ≫ pushout.inl _ _ := by rw [coprod.inl_desc]
      _ = (coprod.inl ≫ coprod.desc (𝟙 Y) g) ≫ pushout.inr _ _ := by
        simp only [Category.assoc, pushout.condition]
      _ = pushout.inr _ _ := by rw [coprod.inl_desc, Category.id_comp]

  have hvu : f ≫ (pushout.inl _ _ : Y ⟶ Q f g) = g ≫ pushout.inr _ _ :=
    calc
      f ≫ (pushout.inl _ _ : Y ⟶ Q f g) = (coprod.inr ≫ coprod.desc (𝟙 Y) f) ≫ pushout.inl _ _ := by
        rw [coprod.inr_desc]
      _ = (coprod.inr ≫ coprod.desc (𝟙 Y) g) ≫ pushout.inr _ _ := by
        simp only [Category.assoc, pushout.condition]
      _ = g ≫ pushout.inr _ _ := by rw [coprod.inr_desc]

  have huu : f ≫ (pushout.inl _ _ : Y ⟶ Q f g) = g ≫ pushout.inl _ _ := by rw [hvu, huv]
  HasColimit.mk
    { cocone := Cofork.ofπ (pushout.inl _ _) huu
      isColimit :=
        Cofork.IsColimit.mk _
          (fun s =>
            pushout.desc (Cofork.π s) (Cofork.π s) <|
              coprod.hom_ext (by simp only [coprod.inl_desc_assoc])
                (by simp only [coprod.desc_comp, Cofork.condition s]))
          (fun s => by simp only [pushout.inl_desc, Cofork.π_ofπ]) fun s m h =>
          pushout.hom_ext (by simpa only [pushout.inl_desc] using h)
            (by simpa only [huv.symm, pushout.inl_desc] using h) }

end

section

attribute [local instance] hasColimit_parallelPair

/-- A `NormalEpiCategory` category with finite coproducts and cokernels has all coequalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantd98c17b0ecd84e649ede1407c59964a0fda99647491b55c037c80a1deb71a111.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb142eb4d8167117374ce7e3e0b7fc95075cdb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
