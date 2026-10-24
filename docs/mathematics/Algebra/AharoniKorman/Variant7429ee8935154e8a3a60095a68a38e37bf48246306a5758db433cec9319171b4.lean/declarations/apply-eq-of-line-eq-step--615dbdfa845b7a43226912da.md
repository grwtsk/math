# apply_eq_of_line_eq_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbd131f2-a4e6-dbe3-0273-afcee202e551",
  "kind": "lemma",
  "lexical_name": "apply_eq_of_line_eq_step",
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
  "slug": "apply-eq-of-line-eq-step--615dbdfa845b7a43226912da",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 684,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615dbdfa845b7a43226912daeeab64fceabe20a205fa34464173ef7ed6f70ef9",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbd131f2-a4e6-dbe3-0273-afcee202e551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_eq_of_line_eq_step (f : SpinalMap C) {n xl yl xh yh : ℕ}
    (hC : IsChain (· ≤ ·) C)
    (hlo : h(xl, yl, n) ∈ C) (hhi : h(xh, yh, n) ∈ C) (hx : xl ≤ xh) (hy : yl ≤ yh)
    {x y : ℕ}
    (h₁l : h(xl, yl, n) ≤ h(x + 1, y, n)) (h₂l : h(xl, yl, n) ≤ h(x, y + 1, n))
    (h₁h : h(x + 1, y, n) ≤ h(xh, yh, n)) (h₂h : h(x, y + 1, n) ≤ h(xh, yh, n)) :
    f h(x + 1, y, n) = f h(x, y + 1, n) := by
  classical
  -- Write `int` for the interval `[(xl, yl, n), (xh, yh, n)]`, as a finite set, and `I` for the
  -- intersection of `C` with this interval.
  set int : Finset Hollom := (Icc (xl, yl) (xh, yh)).image (embed n)
  set I : Finset Hollom := {x ∈ int | x ∈ C}
  -- Previous results give an exact expression for `#I`.
  have cI : #I = xh + yh + 1 - (xl + yl) := card_C_inter_Icc_eq f hC hx hy hlo hhi
  have int_eq : int = Set.Icc h(xl, yl, n) h(xh, yh, n) := by
    simp only [coe_image, coe_Icc, int, embed_image_Icc]
  -- Write `B` for the union of chains `(xl, yl, n)` to `(x, y, n)` and `(x + 1, y + 1, n)`
  -- to `(xh, yh, n)`, observing that adding either of `(x + 1, y, n)` or `(x, y + 1, n)` would
  -- make `B` into a maximal chain.
  let B : Finset Hollom :=
    (chainBetween xl yl x y ∪ chainBetween (x + 1) (y + 1) xh yh).image (embed n)
  -- The map `f` sends both these points into `int`, by the properties of spinal maps,
  have : f h(x + 1, y, n) ∈ int ∧ f h(x, y + 1, n) ∈ int := by
    rw [← mem_coe, ← mem_coe, int_eq]
    exact ⟨f.mapsTo_Icc_self hC hlo hhi ⟨h₁l, h₁h⟩, f.mapsTo_Icc_self hC hlo hhi ⟨h₂l, h₂h⟩⟩
  simp only [toHollom_le_toHollom_iff_fixed_right] at h₁l h₂l h₁h h₂h
  -- and we can give an exact expression for `#B`, which is exactly one less than `#I`.
  have cB : #B = xh + yh - (xl + yl) := by
    rw [card_image_of_injective _ (embed n).injective, card_union_of_disjoint,
      card_chainBetween h₂l.1 h₁l.2, card_chainBetween h₁h.1 h₂h.2]
    · lia
    · simp [disjoint_left, chainBetween, *]
      lia
  -- It is easy to see that our chain `B` lives entirely within `int`
  have hB : B ⊆ int := by
    refine Finset.image_subset_image ?_
    rw [Finset.union_subset_iff]
    refine ⟨chainBetween_subset.trans ?_, chainBetween_subset.trans ?_⟩
    · exact Finset.Icc_subset_Icc_right (by simp [*])
    · exact Finset.Icc_subset_Icc_left (by simp [*])
  -- and thus `f` must map it to `I`
  have f_maps : Set.MapsTo f B I := by
    simp only [I, Finset.coe_filter]
    exact ((mapsTo_Icc_image hC hlo hhi).mono_left hB).inter (by simp [Set.MapsTo])
  -- and as `B` is a chain, `f` acts injectively on it.
  have f_inj : Set.InjOn f B := by
    refine f.injOn_of_isChain ?_
    simp only [B]
    rw [coe_image]
    refine IsChain.image ?_ (embed n)
    rw [coe_union, isChain_union]
    refine ⟨chainBetween_isChain, chainBetween_isChain, ?_⟩
    simp [chainBetween, *]
    lia
  -- Thus the image of `B` under `f` is all of `I`, except for exactly one element.
  have card_eq : (I \ B.image f).card = 1 := by
    rw [card_sdiff_of_subset, cI, card_image_of_injOn f_inj, cB]
    · lia
    · rw [← coe_subset, coe_image]
      exact f_maps.image_subset
  -- After applying `f`, both `(x + 1, y, n)` and `(x, y + 1, n)` are omitted from the image of `B`
  -- under `f`: this follows from the fact that adding either to `B` would make it still a chain,
  -- and `f` acts injectively on chains.
  obtain ⟨hleft, hright⟩ : f h(x + 1, y, n) ∉ B.image f ∧ f h(x, y + 1, n) ∉ B.image f := by
    constructor
    all_goals
      simp +contextual only [mem_image, mem_union, embed_apply, Prod.exists, «exists»,
        Prod.mk.injEq, not_exists, not_and, forall_exists_index,
        and_imp, or_imp, B, forall_and, Hollom.ext_iff]
      constructor
      · rintro _ _ c a b hab rfl rfl rfl h
        have : (a, b) ≤ (x, y) := (Finset.mem_Icc.1 (chainBetween_subset hab)).2
        rw [← embed_apply, ← embed_apply] at h
        exact f.not_lt_of_eq congr(toHollom $h) (embed_strictMono (this.trans_lt (by simp)))
      · rintro _ _ c a b hab rfl rfl rfl h
        have : (x + 1, y + 1) ≤ (a, b) := (Finset.mem_Icc.1 (chainBetween_subset hab)).1
        rw [← embed_apply, ← embed_apply] at h
        exact f.not_lt_of_eq congr(toHollom $(h.symm)) (embed_strictMono (this.trans_lt' (by simp)))
  -- Therefore the image of both points is in `I \ B.image f`,
  replace hleft : f h(x + 1, y, n) ∈ I \ B.image f := by simpa [mem_sdiff, hleft, I] using this.1
  replace hright : f h(x, y + 1, n) ∈ I \ B.image f := by simpa [mem_sdiff, hright, I] using this.2
  -- but this set has exactly one element, so our two elements must be equal.
  exact Finset.card_le_one.1 card_eq.le _ hleft _ hright

/--
A simple helper lemma to prove `apply_eq_of_line_eq`.
Here we show the special case where the two points are `(x + k, y, n)` and `(x, y + k, n)` by
induction on `k` with `apply_eq_of_line_eq_step`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
