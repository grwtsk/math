# pushout_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1cf4442b82087826e03547b07478e4b5a74a4dfbec40aaf8d209da09bee2300",
  "kind": "def",
  "lexical_name": "pushout_of_epi",
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
  "slug": "pushout-of-epi--4c40ff45e77a6c0904a6f497",
  "source": {
    "blob": "db88ade84586f1c1d27caa75a71ecb714aa372df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c40ff45e77a6c0904a6f49747d77c89760086ee9cd6b34e85366cc79851a7bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1cf4442b82087826e03547b07478e4b5a74a4dfbec40aaf8d209da09bee2300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushout_of_epi {X Y Z : C} (a : X ⟶ Y) (b : X ⟶ Z) [Epi a] [Epi b] :
  HasColimit (span a b) :=
  let ⟨P, f, hfa, i⟩ := normalEpiOfEpi a
  let ⟨Q, g, hgb, i'⟩ := normalEpiOfEpi b
  let ⟨a', ha'⟩ :=
    CokernelCofork.IsColimit.desc' i (cokernel.π (coprod.desc f g)) <|
      calc
        f ≫ cokernel.π (coprod.desc f g) =
            coprod.inl ≫ coprod.desc f g ≫ cokernel.π (coprod.desc f g) :=
          by rw [coprod.inl_desc_assoc]
        _ = coprod.inl ≫ (0 : P ⨿ Q ⟶ cokernel (coprod.desc f g)) := by rw [cokernel.condition]
        _ = 0 := HasZeroMorphisms.comp_zero _ _

  let ⟨b', hb'⟩ :=
    CokernelCofork.IsColimit.desc' i' (cokernel.π (coprod.desc f g)) <|
      calc
        g ≫ cokernel.π (coprod.desc f g) =
            coprod.inr ≫ coprod.desc f g ≫ cokernel.π (coprod.desc f g) :=
          by rw [coprod.inr_desc_assoc]
        _ = coprod.inr ≫ (0 : P ⨿ Q ⟶ cokernel (coprod.desc f g)) := by rw [cokernel.condition]
        _ = 0 := HasZeroMorphisms.comp_zero _ _

  HasColimit.mk
    { cocone :=
        PushoutCocone.mk a' b' <| by
          simp only [Cofork.π_ofπ] at ha' hb'
          rw [ha', hb']
      isColimit :=
        PushoutCocone.IsColimit.mk _
          (fun s =>
            cokernel.desc (coprod.desc f g) (b ≫ PushoutCocone.inr s) <|
              coprod.hom_ext
                (calc
                  coprod.inl ≫ coprod.desc f g ≫ b ≫ PushoutCocone.inr s =
                      f ≫ b ≫ PushoutCocone.inr s :=
                    by rw [coprod.inl_desc_assoc]
                  _ = f ≫ a ≫ PushoutCocone.inl s := by rw [PushoutCocone.condition]
                  _ = 0 ≫ PushoutCocone.inl s := by rw [← Category.assoc, eq_whisker hfa]
                  _ = coprod.inl ≫ 0 := by rw [comp_zero, zero_comp]
                  )
                (calc
                  coprod.inr ≫ coprod.desc f g ≫ b ≫ PushoutCocone.inr s =
                      g ≫ b ≫ PushoutCocone.inr s :=
                    by rw [coprod.inr_desc_assoc]
                  _ = 0 ≫ PushoutCocone.inr s := by rw [← Category.assoc, eq_whisker hgb]
                  _ = coprod.inr ≫ 0 := by rw [comp_zero, zero_comp]
                  ))
          (fun s =>
            (cancel_epi a).1 <| by
              rw [CokernelCofork.π_ofπ] at ha'
              have reassoced {W : C} (h : cokernel (coprod.desc f g) ⟶ W) : a ≫ a' ≫ h
                = cokernel.π (coprod.desc f g) ≫ h := by rw [← Category.assoc, eq_whisker ha']
              simp [reassoced , PushoutCocone.condition s])
          (fun s =>
            (cancel_epi b).1 <| by
              rw [CokernelCofork.π_ofπ] at hb'
              have reassoced' {W : C} (h : cokernel (coprod.desc f g) ⟶ W) : b ≫ b' ≫ h
                = cokernel.π (coprod.desc f g) ≫ h := by rw [← Category.assoc, eq_whisker hb']
              simp [reassoced'])
          fun s m h₁ _ =>
          (cancel_epi (cokernel.π (coprod.desc f g))).1 <|
            calc
              cokernel.π (coprod.desc f g) ≫ m = (a ≫ a') ≫ m := by
                congr
                exact ha'.symm
              _ = a ≫ PushoutCocone.inl s := by rw [Category.assoc, h₁]
              _ = b ≫ PushoutCocone.inr s := (PushoutCocone.condition s)
              _ =
                  cokernel.π (coprod.desc f g) ≫
                    cokernel.desc (coprod.desc f g) (b ≫ PushoutCocone.inr s) _ :=
                by rw [cokernel.π_desc]
               }
#align category_theory.normal_epi_category.pushout_of_epi CategoryTheory.NormalEpiCategory.pushout_of_epi

section

attribute [local instance] pushout_of_epi

/-- The pushout of `(𝟙 Y, f)` and `(𝟙 Y, g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88ade84586f1c1d27caa75a71ecb714aa372df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
