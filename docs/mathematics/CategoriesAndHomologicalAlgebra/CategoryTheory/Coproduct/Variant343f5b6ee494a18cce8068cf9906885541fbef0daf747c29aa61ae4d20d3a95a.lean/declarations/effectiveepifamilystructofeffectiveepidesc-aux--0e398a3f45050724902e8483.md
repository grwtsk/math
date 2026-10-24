# effectiveEpiFamilyStructOfEffectiveEpiDesc_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5818ad-e02c-5c4c-906d-ba4819ce2d77",
  "kind": "theorem",
  "lexical_name": "effectiveEpiFamilyStructOfEffectiveEpiDesc_aux",
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
  "slug": "effectiveepifamilystructofeffectiveepidesc-aux--0e398a3f45050724902e8483",
  "source": {
    "blob": "b2df375bbd207fb6e29b8d5b1f64c6a983b0572e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e398a3f45050724902e8483b1668b616b3f8d18ede2e6299f5fdec56f230977",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5818ad-e02c-5c4c-906d-ba4819ce2d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpiFamilyStructOfEffectiveEpiDesc_aux {B : C} {α : Type*} {X : α → C}
    {π : (a : α) → X a ⟶ B} [HasCoproduct X]
    [∀ {Z : C} (g : Z ⟶ ∐ X) (a : α), HasPullback g (Sigma.ι X a)]
    [∀ {Z : C} (g : Z ⟶ ∐ X), HasCoproduct fun a ↦ pullback g (Sigma.ι X a)]
    [∀ {Z : C} (g : Z ⟶ ∐ X), Epi (Sigma.desc fun a ↦ pullback.fst g (Sigma.ι X a))]
    {W : C} {e : (a : α) → X a ⟶ W} (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π a₁ = g₂ ≫ π a₂ → g₁ ≫ e a₁ = g₂ ≫ e a₂) {Z : C}
    {g₁ g₂ : Z ⟶ ∐ fun b ↦ X b} (hg : g₁ ≫ Sigma.desc π = g₂ ≫ Sigma.desc π) :
    g₁ ≫ Sigma.desc e = g₂ ≫ Sigma.desc e := by
  apply_fun ((Sigma.desc fun a ↦ pullback.fst g₁ (Sigma.ι X a)) ≫ ·) using
    (fun a b ↦ (cancel_epi _).mp)
  ext a
  simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
  rw [← Category.assoc, pullback.condition]
  simp only [Category.assoc, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
  apply_fun ((Sigma.desc fun a ↦ pullback.fst (pullback.fst _ _ ≫ g₂) (Sigma.ι X a)) ≫ ·)
    using (fun a b ↦ (cancel_epi _).mp)
  ext b
  simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
  simp only [← Category.assoc]
  rw [(Category.assoc _ _ g₂), pullback.condition]
  simp only [Category.assoc, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
  rw [← Category.assoc]
  apply h
  apply_fun (pullback.fst g₁ (Sigma.ι X a) ≫ ·) at hg
  rw [← Category.assoc, pullback.condition] at hg
  simp only [Category.assoc, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app] at hg
  apply_fun ((Sigma.ι (fun a ↦ pullback _ _) b) ≫ (Sigma.desc fun a ↦
    pullback.fst (pullback.fst _ _ ≫ g₂) (Sigma.ι X a)) ≫ ·) at hg
  simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app] at hg
  simp only [← Category.assoc] at hg
  rw [(Category.assoc _ _ g₂), pullback.condition] at hg
  simpa using hg

/--
If a coproduct interacts well enough with pullbacks, then a family whose domains are the terms of
the coproduct is effective epimorphic whenever `Sigma.desc` induces an effective epimorphism from
the coproduct itself.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2df375bbd207fb6e29b8d5b1f64c6a983b0572e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
