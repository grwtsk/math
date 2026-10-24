# binaryCofan_isColimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e963d5-cb0b-8640-acab-c12060c4d885",
  "kind": "theorem",
  "lexical_name": "binaryCofan_isColimit_iff",
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
  "slug": "binarycofan-iscolimit-iff--e9b5330fa30c4f33b56f3eb1",
  "source": {
    "blob": "3201ccbcfe5336b07657ecf009e7906d81565928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b5330fa30c4f33b56f3eb1c528cf9f8f319bf3cdc572a96a6eeed3bb6df29e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e963d5-cb0b-8640-acab-c12060c4d885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryCofan_isColimit_iff {X Y : Type u} (c : BinaryCofan X Y) :
    Nonempty (IsColimit c) ↔
      Injective c.inl ∧ Injective c.inr ∧ IsCompl (Set.range c.inl) (Set.range c.inr) := by
  classical
    constructor
    · rintro ⟨h⟩
      rw [← show _ = c.inl from
          h.comp_coconePointUniqueUpToIso_inv (binaryCoproductColimit X Y) ⟨WalkingPair.left⟩,
        ← show _ = c.inr from
          h.comp_coconePointUniqueUpToIso_inv (binaryCoproductColimit X Y) ⟨WalkingPair.right⟩]
      dsimp [binaryCoproductCocone]
      refine'
        ⟨(h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.injective.comp
            Sum.inl_injective,
          (h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.injective.comp
            Sum.inr_injective, _⟩
      erw [Set.range_comp, ← eq_compl_iff_isCompl, Set.range_comp _ Sum.inr, ←
        Set.image_compl_eq
          (h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.bijective]
      simp
    · rintro ⟨h₁, h₂, h₃⟩
      have : ∀ x, x ∈ Set.range c.inl ∨ x ∈ Set.range c.inr := by
        rw [eq_compl_iff_isCompl.mpr h₃.symm]
        exact fun _ => or_not
      refine' ⟨BinaryCofan.IsColimit.mk _ _ _ _ _⟩
      · intro T f g x
        exact
          if h : x ∈ Set.range c.inl then f ((Equiv.ofInjective _ h₁).symm ⟨x, h⟩)
          else g ((Equiv.ofInjective _ h₂).symm ⟨x, (this x).resolve_left h⟩)
      · intro T f g
        funext x
        dsimp
        simp [h₁.eq_iff]
      · intro T f g
        funext x
        dsimp
        simp only [Set.mem_range, Equiv.ofInjective_symm_apply,
          dite_eq_right_iff, forall_exists_index]
        intro y e
        have : c.inr x ∈ Set.range c.inl ⊓ Set.range c.inr := ⟨⟨_, e⟩, ⟨_, rfl⟩⟩
        rw [disjoint_iff.mp h₃.1] at this
        exact this.elim
      · rintro T _ _ m rfl rfl
        funext x
        dsimp
        split_ifs <;> exact congr_arg _ (Equiv.apply_ofInjective_symm _ ⟨_, _⟩).symm
#align category_theory.limits.types.binary_cofan_is_colimit_iff CategoryTheory.Limits.Types.binaryCofan_isColimit_iff

/-- Any monomorphism in `Type` is a coproduct injection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant51a8cefaaffa6862e3cb486827e92cc476254481678563b0ec88d8b266f6ec77.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3201ccbcfe5336b07657ecf009e7906d81565928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
