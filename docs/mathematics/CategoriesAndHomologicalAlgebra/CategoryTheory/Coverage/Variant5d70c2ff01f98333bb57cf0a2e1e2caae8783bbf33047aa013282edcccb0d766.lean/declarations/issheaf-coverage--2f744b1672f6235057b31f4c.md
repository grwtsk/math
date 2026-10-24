# isSheaf_coverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bedb0678-9d95-e3fc-8d6b-eaadbdf709cc",
  "kind": "theorem",
  "lexical_name": "isSheaf_coverage",
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
  "slug": "issheaf-coverage--2f744b1672f6235057b31f4c",
  "source": {
    "blob": "93b544a90e4c8fc6af8f7b29045f9b8484689c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f744b1672f6235057b31f4c32afb69002a7e4dafaa6d2b39b480728a92868da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bedb0678-9d95-e3fc-8d6b-eaadbdf709cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_coverage (K : Coverage C) (P : Cᵒᵖ ⥤ Type w) :
    Presieve.IsSheaf (toGrothendieck _ K) P ↔
    (∀ {X : C} (R : Presieve X), R ∈ K X → Presieve.IsSheafFor P R) := by
  constructor
  · intro H X R hR
    rw [Presieve.isSheafFor_iff_generate]
    apply H _ <| saturate.of _ _ hR
  · intro H X S hS
    -- This is the key point of the proof:
    -- We must generalize the induction in the correct way.
    suffices ∀ ⦃Y : C⦄ (f : Y ⟶ X), Presieve.IsSheafFor P (S.pullback f).arrows by
      simpa using this (f := 𝟙 _)
    induction hS with
    | of X S hS =>
      intro Y f
      obtain ⟨T, hT1, hT2⟩ := K.pullback f S hS
      apply Presieve.isSheafFor_of_factorsThru (S := T)
      · intro Z g hg
        obtain ⟨W, i, e, h1, h2⟩ := hT2 hg
        exact ⟨Z, 𝟙 _, g, ⟨W, i, e, h1, h2⟩, by simp⟩
      · apply H; assumption
      · intro Z g _
        obtain ⟨R, hR1, hR2⟩ := K.pullback g _ hT1
        refine ⟨R, (H _ hR1).isSeparatedFor, hR2⟩
    | top => intros; simpa using Presieve.isSheafFor_top_sieve _
    | transitive X R S _ _ H1 H2 =>
      intro Y f
      simp only [← Presieve.isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor] at *
      choose H1 H1' using H1
      choose H2 H2' using H2
      refine ⟨?_, fun x hx => ?_⟩
      · intro x t₁ t₂ h₁ h₂
        refine (H1 f).ext (fun Z g hg => ?_)
        refine (H2 hg (𝟙 _)).ext (fun ZZ gg hgg => ?_)
        simp only [Sieve.pullback_id, Sieve.pullback_apply] at hgg
        simp only [← types_comp_apply]
        rw [← P.map_comp, ← op_comp, h₁, h₂]
        simpa only [Sieve.pullback_apply, Category.assoc] using hgg
      let y : ∀ ⦃Z : C⦄ (g : Z ⟶ Y),
        ((S.pullback (g ≫ f)).pullback (𝟙 _)).arrows.FamilyOfElements P :=
        fun Z g ZZ gg hgg => x (gg ≫ g) (by simpa using hgg)
      have hy : ∀ ⦃Z : C⦄ (g : Z ⟶ Y), (y g).Compatible := by
        intro Z g Y₁ Y₂ ZZ g₁ g₂ f₁ f₂ h₁ h₂ h
        rw [hx]
        rw [reassoc_of% h]
      choose z hz using fun ⦃Z : C⦄ ⦃g : Z ⟶ Y⦄ (hg : R.pullback f g) =>
        H2' hg (𝟙 _) (y g) (hy g)
      let q : (R.pullback f).arrows.FamilyOfElements P := fun Z g hg => z hg
      have hq : q.Compatible := by
        intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ h
        apply (H2 h₁ g₁).ext
        intro ZZ gg hgg
        simp only [← types_comp_apply]
        rw [← P.map_comp, ← P.map_comp, ← op_comp, ← op_comp, hz, hz]
        · dsimp; congr 1; simp only [Category.assoc, h]
        · simpa [reassoc_of% h] using hgg
        · simpa using hgg
      obtain ⟨t, ht⟩ := H1' f q hq
      refine ⟨t, fun Z g hg => ?_⟩
      refine (H1 (g ≫ f)).ext (fun ZZ gg hgg => ?_)
      rw [← types_comp_apply _ (P.map gg.op), ← P.map_comp, ← op_comp, ht]
      swap; simpa using hgg
      refine (H2 hgg (𝟙 _)).ext (fun ZZZ ggg hggg => ?_)
      rw [← types_comp_apply _ (P.map ggg.op), ← P.map_comp, ← op_comp, hz]
      swap; simpa using hggg
      refine (H2 hgg ggg).ext (fun ZZZZ gggg _ => ?_)
      rw [← types_comp_apply _ (P.map gggg.op), ← P.map_comp, ← op_comp]
      apply hx
      simp

end Presieve

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b544a90e4c8fc6af8f7b29045f9b8484689c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
