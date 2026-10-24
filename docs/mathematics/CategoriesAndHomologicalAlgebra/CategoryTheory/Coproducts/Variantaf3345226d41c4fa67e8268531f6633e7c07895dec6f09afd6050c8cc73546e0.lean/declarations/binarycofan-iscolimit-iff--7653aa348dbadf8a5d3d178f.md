# binaryCofan_isColimit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc652d78-bfaf-1f09-182f-7b3224adc071",
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
  "slug": "binarycofan-iscolimit-iff--7653aa348dbadf8a5d3d178f",
  "source": {
    "blob": "1d7dd7fed34a978739acf3d1a2b459029f540ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variantaf3345226d41c4fa67e8268531f6633e7c07895dec6f09afd6050c8cc73546e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7653aa348dbadf8a5d3d178f72714be0ad69e7b2cdde9628642fdba2e41953af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variantaf3345226d41c4fa67e8268531f6633e7c07895dec6f09afd6050c8cc73546e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc652d78-bfaf-1f09-182f-7b3224adc071`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–332.

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
      refine
        ⟨(h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.injective.comp
            Sum.inl_injective,
          (h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.injective.comp
            Sum.inr_injective, ?_⟩
      rw [types_comp, Set.range_comp, ← eq_compl_iff_isCompl, types_comp]
      dsimp
      rw [Set.range_comp _ Sum.inr, ← dsimp% [Iso.toEquiv] Set.image_compl_eq
          (h.coconePointUniqueUpToIso (binaryCoproductColimit X Y)).symm.toEquiv.bijective]
      simp
    · rintro ⟨h₁, h₂, h₃⟩
      have : ∀ x, x ∈ Set.range c.inl ∨ x ∈ Set.range c.inr := by
        rw [eq_compl_iff_isCompl.mpr h₃.symm]
        exact fun _ => or_not
      refine ⟨BinaryCofan.IsColimit.mk _ ?_ ?_ ?_ ?_⟩
      · intro T f g
        refine ↾fun x => ?_
        exact
          if h : x ∈ Set.range c.inl then f ((Equiv.ofInjective _ h₁).symm ⟨x, h⟩)
          else g ((Equiv.ofInjective _ h₂).symm ⟨x, (this x).resolve_left h⟩)
      · intro T f g
        ext x
        simp
      · intro T f g
        ext x
        dsimp
        simp only [Set.mem_range, Equiv.ofInjective_symm_apply, dite_eq_right_iff,
          forall_exists_index]
        intro y e
        have : c.inr x ∈ Set.range c.inl ⊓ Set.range c.inr := ⟨⟨_, e⟩, ⟨_, rfl⟩⟩
        rw [disjoint_iff.mp h₃.1] at this
        exact this.elim
      · rintro T _ _ m rfl rfl
        ext x
        simp only [TypeCat.Fun.toFun_apply, Functor.const_obj_obj, pair_obj_left, Set.mem_range,
          comp_apply, pair_obj_right, ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk]
        split_ifs <;> exact congr_arg _ (Equiv.apply_ofInjective_symm _ ⟨_, _⟩).symm

/-- Any monomorphism in `Type` is a coproduct injection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variantaf3345226d41c4fa67e8268531f6633e7c07895dec6f09afd6050c8cc73546e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproducts/Variantaf3345226d41c4fa67e8268531f6633e7c07895dec6f09afd6050c8cc73546e0.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7dd7fed34a978739acf3d1a2b459029f540ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
