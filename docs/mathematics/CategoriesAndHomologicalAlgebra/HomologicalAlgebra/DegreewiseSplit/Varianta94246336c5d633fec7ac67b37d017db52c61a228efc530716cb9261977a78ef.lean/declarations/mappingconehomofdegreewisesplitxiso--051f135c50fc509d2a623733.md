# mappingConeHomOfDegreewiseSplitXIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c97bff95d62742dc9cb666b3fcbe06e072848fd9cfddc28f6a6d7e77c7689147",
  "kind": "def",
  "lexical_name": "mappingConeHomOfDegreewiseSplitXIso",
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
  "slug": "mappingconehomofdegreewisesplitxiso--051f135c50fc509d2a623733",
  "source": {
    "blob": "03c89d79c4fc78ae315ac252e66861dd21590a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:051f135c50fc509d2a62373353a0412d6de647d65d253a7c2068b8deded76329",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c97bff95d62742dc9cb666b3fcbe06e072848fd9cfddc28f6a6d7e77c7689147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mappingConeHomOfDegreewiseSplitXIso (p q : ℤ) (hpq : p + 1 = q) :
    (mappingCone (homOfDegreewiseSplit S σ)).X p ≅ S.X₂.X q where
  hom := (mappingCone.fst (homOfDegreewiseSplit S σ)).1.v p q hpq ≫ (σ q).s -
    (mappingCone.snd (homOfDegreewiseSplit S σ)).v p p (add_zero p) ≫
      by exact (Cochain.ofHom S.f).v (p + 1) q (by omega)
  inv := S.g.f q ≫ (mappingCone.inl (homOfDegreewiseSplit S σ)).v q p (by omega) -
    by exact (σ q).r ≫ (S.X₁.XIsoOfEq hpq.symm).hom ≫
      (mappingCone.inr (homOfDegreewiseSplit S σ)).f p
  hom_inv_id := by
    subst hpq
    have s_g := (σ (p + 1)).s_g
    have f_r := (σ (p + 1)).f_r
    dsimp at s_g f_r ⊢
    -- the following list of lemmas was obtained by doing
    -- simp? [mappingCone.ext_from_iff _ (p + 1) _ rfl, reassoc_of% f_r, reassoc_of% s_g]
    -- which may require increasing maximum heart beats
    simp only [Cochain.ofHom_v, Int.reduceNeg, id_comp, comp_sub, sub_comp, assoc,
        reassoc_of% s_g, ShortComplex.Splitting.s_r_assoc, ShortComplex.map_X₃, eval_obj,
        ShortComplex.map_X₁, zero_comp, comp_zero, reassoc_of% f_r, zero_sub, sub_neg_eq_add,
        mappingCone.ext_from_iff _ (p + 1) _ rfl, comp_add, mappingCone.inl_v_fst_v_assoc,
        mappingCone.inl_v_snd_v_assoc, shiftFunctor_obj_X', sub_zero, add_zero, comp_id,
        mappingCone.inr_f_fst_v_assoc, mappingCone.inr_f_snd_v_assoc, add_eq_right, neg_eq_zero,
        true_and]
    rw [← comp_f_assoc, S.zero, zero_f, zero_comp]
  inv_hom_id := by
    subst hpq
    have h := (σ (p + 1)).id
    dsimp at h ⊢
    simp only [id_comp, Cochain.ofHom_v, comp_sub, sub_comp, assoc, mappingCone.inl_v_fst_v_assoc,
      mappingCone.inr_f_fst_v_assoc, shiftFunctor_obj_X', zero_comp, comp_zero, sub_zero,
      mappingCone.inl_v_snd_v_assoc, mappingCone.inr_f_snd_v_assoc, zero_sub, sub_neg_eq_add, ← h]
    abel

/-- The canonical isomorphism `mappingCone (homOfDegreewiseSplit S σ) ≅ S.X₂⟦(1 : ℤ)⟧`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c89d79c4fc78ae315ac252e66861dd21590a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
