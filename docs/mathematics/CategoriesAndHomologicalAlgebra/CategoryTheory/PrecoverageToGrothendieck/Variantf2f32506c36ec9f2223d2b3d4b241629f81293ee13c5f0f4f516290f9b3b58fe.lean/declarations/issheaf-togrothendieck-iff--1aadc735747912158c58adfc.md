# isSheaf_toGrothendieck_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c74ecc19-8370-d79a-1117-49ecdb4ee950",
  "kind": "theorem",
  "lexical_name": "isSheaf_toGrothendieck_iff",
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
  "slug": "issheaf-togrothendieck-iff--1aadc735747912158c58adfc",
  "source": {
    "blob": "d7c620703432aabc66545fd98cbe3f328827336b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aadc735747912158c58adfc8ac0b91357bc1e815002568ce48eb90d6f370377",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74ecc19-8370-d79a-1117-49ecdb4ee950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_toGrothendieck_iff (P : Cᵒᵖ ⥤ Type*) :
    Presieve.IsSheaf J.toGrothendieck P ↔
      (∀ {X Y : C} {f : Y ⟶ X} (R : Presieve X), R ∈ J X →
        Presieve.IsSheafFor P ((Sieve.generate R).pullback f).arrows) := by
  constructor
  · intro H _ _ _ _ hR
    apply H.isSheafFor
    rw [Sieve.generate_sieve]
    exact J.toGrothendieck.pullback_stable _ (Saturate.of _ _ hR)
  · intro H X S hS
    -- This is the key point of the proof:
    -- We must generalize the induction in the correct way.
    suffices ∀ ⦃Y : C⦄ (f : Y ⟶ X), Presieve.IsSheafFor P (S.pullback f).arrows by
      simpa using this (f := 𝟙 _)
    induction hS with
    | of X S hS =>
      exact fun _ _ => H S hS
    | top =>
      simp [Presieve.isSheafFor_top P]
    | pullback X S hS _ f ih =>
      intro Y f
      rw [← S.pullback_comp]
      exact ih (f ≫ _)
    | transitive X R S hS h H1 H2 =>
      intro Y f
      simp only [← Presieve.isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor] at *
      choose H1 H1' using H1
      choose H2 H2' using H2
      refine ⟨?_, fun x hx => ?_⟩
      · intro x t₁ t₂ h₁ h₂
        refine (H1 f).ext (fun Z g hg => ?_)
        refine (H2 hg (𝟙 _)).ext (fun ZZ gg hgg => ?_)
        simp only [Sieve.pullback_id, Sieve.pullback_apply] at hgg
        simp only [← comp_apply]
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
        simp only [← comp_apply]
        rw [← P.map_comp, ← P.map_comp, ← op_comp, ← op_comp, hz, hz]
        · dsimp [y]; congr 1; simp only [Category.assoc, h]
        · simpa [reassoc_of% h] using hgg
        · simpa using hgg
      obtain ⟨t, ht⟩ := H1' f q hq
      refine ⟨t, fun Z g hg => ?_⟩
      refine (H1 (g ≫ f)).ext (fun ZZ gg hgg => ?_)
      rw [← comp_apply _ (P.map gg.op), ← P.map_comp, ← op_comp, ht]
      on_goal 2 => simpa using hgg
      refine (H2 hgg (𝟙 _)).ext (fun ZZZ ggg hggg => ?_)
      rw [← comp_apply _ (P.map ggg.op), ← P.map_comp, ← op_comp, hz]
      on_goal 2 => simpa using hggg
      refine (H2 hgg ggg).ext (fun ZZZZ gggg _ => ?_)
      rw [← comp_apply _ (P.map gggg.op), ← P.map_comp, ← op_comp]
      apply hx
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variantf2f32506c36ec9f2223d2b3d4b241629f81293ee13c5f0f4f516290f9b3b58fe.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c620703432aabc66545fd98cbe3f328827336b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
