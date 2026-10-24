# epi_of_shortExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d89f6b6-bc46-3e49-8596-1081db009a4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:007f8e9b-8fd0-62a7-2f75-5ebefce3f999",
  "kind": "theorem",
  "lexical_name": "epi_of_shortExact",
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
  "slug": "epi-of-shortexact--e95f58df51877fa091d6f8ac",
  "source": {
    "blob": "47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e95f58df51877fa091d6f8ac570c44673a02309049527b43e3be2e4fcf6273c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:007f8e9b-8fd0-62a7-2f75-5ebefce3f999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_shortExact {S : ShortComplex (Sheaf AddCommGrpCat X)} (hS : S.ShortExact)
    [IsFlasque S.X₁] : Epi (S.g.1.app (op U)) := by
  refine (AddCommGrpCat.epi_iff_surjective _).mpr (fun s ↦ ?_)
  -- We want to find a preimage of `s` by `S.g`.
  -- We apply Zorn's lemma to obtain a term `t` of `Under S.g s` that is maximal.
  obtain ⟨t, ht⟩ := exists_maximal_of_chains_bounded
    (structured_arrows_elements_sheaf_chains_bounded S.g s)
    (fun ⟨f⟩ ⟨g⟩ ↦ ⟨g ≫ f⟩)
  have tle : t.right.1.unop ≤ U := leOfHom t.hom.1.unop
  have tcomp : s |_ t.right.1.unop = S.g.hom.app t.right.1 t.right.2 :=
      t.hom.map_val
  -- We get a section `t.right.2` of `S.g` defined on an open subset `t.right.1.unop` of `U`,
  -- that is sent to the restriction of `s` by `S.g`.
  have : U ≤ t.right.1.unop := by
  -- Prove that the set of definition of `t.right.2` contains `U`.
    intro x hx
    have := (isLocallySurjective_iff_epi S.g).mpr hS.epi_g
    -- We use local surjectivity to find a section `t₁` of `S.X₂` on a neighborhood `W` of `x`
    -- that maps to `s |_ W` by `S.g`.
    obtain ⟨W, Wle, ⟨t₁, ht₁⟩, hW⟩ := (isLocallySurjective_iff S.g.hom).mp this U s x hx
    --`t.right.2` and `t₁` need not agree on their overlap so we need to deal with their
    -- difference `t₂`
    let t₂ := t.right.2 |_ (t.right.1.unop ⊓ W) - t₁ |_ (t.right.1.unop ⊓ W)
    have : (S.g.hom.app (op (t.right.1.unop ⊓ W))) t₂ = 0 := by
      simp [map_restrict, ← tcomp, restrict_restrict, ht₁, t₂]
    -- Since `S` is exact and `t₂` maps to zero, we can lift it to a section `t₃` of `S.X₁`
    obtain ⟨t₃, ht₃⟩ := Sheaf.sections_exact_of_left_exact hS.1 hS.2 t₂ this
    -- Using that `S.X₁` is flasque, we can lift `t₃` to a section on `W`.
    obtain ⟨t₄, (ht₄ : t₄ |_ (t.right.1.unop ⊓ W) = t₃)⟩ := (AddCommGrpCat.epi_iff_surjective
      (S.X₁.obj.map (homOfLE inf_le_right).op)).mp inferInstance t₃
    let f : Fin 2 → Opens X := ![t.right.1.unop, W]
    let sf : (i : Fin 2) → S.X₂.obj.obj (op (f i))
    | 0 => t.right.2
    | 1 => t₁ + (S.f.hom.app (op W)) t₄
    have : sf 0 |_ (t.right.1.unop ⊓ W) = sf 1 |_ (t.right.1.unop ⊓ W) := by
      dsimp [sf, f]
      simp only [restrict_sum, ← map_restrict, ht₄, ht₃, t₂, add_sub_cancel]
    -- We glue `t.right.2` and `t₁ + (S.f.hom.app (op W)) t₄` together to form `t₅`
    obtain ⟨t₅, ht₅, _⟩ : ∃! t₅, IsGluing S.X₂.obj f sf t₅ := by
      apply Sheaf.existsUnique_gluing
      simp only [IsCompatible, Fin.forall_fin_two]
      refine ⟨⟨rfl, this⟩, Eq.symm ?_, rfl⟩
      apply_fun (fun s ↦ restrictOpen s (W ⊓ t.right.1.unop) (le_of_eq (inf_comm _ _))) at this
      rw [restrict_restrict, restrict_restrict] at this
      exact this
    have le : iSup f ≤ U := iSup_le_iff.mpr (Fin.forall_fin_two.mpr ⟨tle, Wle⟩)
    -- We upgrade `t₅` to an object in `Under S.g s` that is defined on `t.right.1.unop ⊔ W`.
    let t₆ : Under S.g s :=
      StructuredArrow.mk (S := Functor.elementsMk _ _ s)
        (T := (Functor.whiskerRight S.g.hom (CategoryTheory.forget AddCommGrpCat)).mapElements)
        (Y := Functor.elementsMk _ _ t₅) <| Functor.Elements.homMk (homOfLE le).op (by
          refine (eq_app_of_locally_eq ht₅ (by rw [Fin.forall_fin_two]; exact ⟨tle, Wle⟩) ?_).symm
          rw [Fin.forall_fin_two]
          refine ⟨tcomp.symm, ?_⟩
          simp only [Fin.isValue, map_add, homOfLE_leOfHom, sf, f]
          have : (S.f.hom.app (op W) ≫ S.g.hom.app (op W)) = 0 := by
            rw [← NatTrans.comp_app, ← ObjectProperty.FullSubcategory.comp_hom, S.zero]
            rfl
          simp [← CategoryTheory.comp_apply, this, ht₁]
          rfl)
    -- We prove that `t₆` is bigger than `t` for the preorder used on `Under S.g s`.
    have : Nonempty (t₆ ⟶ t) := Nonempty.intro (StructuredArrow.homMk (Functor.Elements.homMk
      (homOfLE (le_iSup f 0)).op (ht₅ 0)) (by cat_disch))
    exact leOfHom ((ht t₆) this).some.right.1.unop ((le_iSup f 1) hW)
  exact ⟨t.right.2 |_ U, by simp [map_restrict, ← tcomp, restrict_restrict]⟩

/-- Given a short exact sequence of sheaves, `0 ⟶ 𝓕 ⟶ 𝓖 ⟶ 𝓗 ⟶ 0`, if `𝓕` and `𝓖` are flasque,
then `𝓗` is flasque. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flasque/Variant87c54c53db0083cd12a2cec7f0f247e06715a443d1652e925c793698036884c7.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47c5af7e9dd1b8aefb6eed9d0ccaf9351fb59c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
