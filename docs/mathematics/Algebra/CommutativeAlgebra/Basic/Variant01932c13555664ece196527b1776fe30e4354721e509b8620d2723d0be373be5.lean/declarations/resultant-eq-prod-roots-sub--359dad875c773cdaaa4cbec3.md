# resultant_eq_prod_roots_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef9fac43-b006-4123-b51d-13174b744d4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b014ef8-536a-187b-2b15-bd0270eb723a",
  "kind": "lemma",
  "lexical_name": "resultant_eq_prod_roots_sub",
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
  "slug": "resultant-eq-prod-roots-sub--359dad875c773cdaaa4cbec3",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 405,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359dad875c773cdaaa4cbec3d6dc719ae3d92d9590e0387953dd0981b39e470c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b014ef8-536a-187b-2b15-bd0270eb723a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resultant_eq_prod_roots_sub
    {K : Type*} [Field K] (f g : K[X]) (hf : f.Monic) (hg : g.Monic)
    (hf' : f.Splits) (hg' : g.Splits) :
    resultant f g = ((f.roots ×ˢ g.roots).map fun ij ↦ ij.1 - ij.2).prod := by
  wlog hfg : g.natDegree ≤ f.natDegree
  · trans ((f.roots ×ˢ g.roots).map fun ij ↦ (-1) * (ij.2 - ij.1)).prod
    · rw [resultant_comm, this g f hg hf hg' hf' (le_of_not_ge hfg), ← Multiset.map_swap_product,
        Multiset.map_map, Multiset.prod_map_mul]
      simp [hf'.natDegree_eq_card_roots, hg'.natDegree_eq_card_roots]
    · simp
  generalize hN : f.natDegree + g.natDegree = N
  induction N using Nat.strong_induction_on generalizing K with | h n IH =>
  by_cases hr : g ∣ f
  · obtain ⟨r, rfl⟩ := hr
    have hr' : r ≠ 0 := by simpa [hg.ne_zero] using hf.ne_zero
    rw [← resultant_add_mul_left _ _ (-r) _ _ _ le_rfl]
    · rw [mul_neg, add_neg_cancel, resultant_zero_left]
      by_cases H : g.natDegree = 0
      · obtain rfl := hg.natDegree_eq_zero.mp H
        simp
      · simp only [zero_pow H]
        rw [hg'.natDegree_eq_card_roots, Multiset.card_eq_zero,
          Multiset.eq_zero_iff_forall_notMem, not_forall_not] at H
        obtain ⟨x, hx⟩ := H
        rw [Multiset.prod_eq_zero, zero_mul]
        simp only [Multiset.mem_map, Prod.exists]
        exact ⟨x, x, Multiset.mem_product.mpr (by simp_all [hg.ne_zero]), by simp⟩
    · rw [natDegree_mul hg.ne_zero (by simpa [hg.ne_zero] using hf.ne_zero),
        natDegree_neg, add_comm]
  let r := C (f %ₘ g).leadingCoeff⁻¹ * (f %ₘ g)
  have hr₀ : f %ₘ g ≠ 0 := by simpa [modByMonic_eq_zero_iff_dvd, hg]
  have hrd : r.natDegree < g.natDegree := by
    simp [r, natDegree_C_mul, hr₀, natDegree_modByMonic_lt _ hg (show g ≠ 1 by aesop)]
  have hr : r.Monic := by
    dsimp only [r]
    rw [Monic, leadingCoeff, natDegree_C_mul (by simpa), coeff_C_mul, leadingCoeff,
      inv_mul_cancel₀ (by simpa)]
  let L := r.SplittingField
  have := IH _ (by simp; lia)
    (g.map (algebraMap K L)) (r.map (algebraMap K L)) (hg.map _) (hr.map _)
    (hg'.map _) (SplittingField.splits _) (by simpa [r, natDegree_C_mul, hr₀] using hrd.le) rfl
  rw [resultant_map_map, natDegree_map, natDegree_map, resultant_C_mul_right,
    map_mul, inv_pow, map_inv₀, inv_mul_eq_iff_eq_mul₀ (by simp [hr₀])] at this
  rw [← f.modByMonic_add_div, resultant_add_mul_left, f.modByMonic_add_div,
    ← Nat.sub_add_cancel (hrd.le.trans hfg), add_comm, resultant_add_left_deg, resultant_comm]
  · apply (algebraMap K L).injective
    rw [map_mul, map_mul, map_mul, this, map_sub_roots_sprod_eq_prod_map_eval _ _ hf hf',
      map_sub_sprod_roots_eq_prod_map_eval _ _ (hr.map _) (SplittingField.splits _), map_mul,
      hg'.roots_map]
    have : (g.roots.map (eval · f)).prod =
        (f %ₘ g).leadingCoeff ^ g.natDegree * (g.roots.map (eval · r)).prod := by
      trans (g.roots.map ((f %ₘ g).leadingCoeff * eval · r)).prod
      · congr 1
        refine Multiset.map_congr rfl ?_
        simp only [mem_roots', ne_eq, IsRoot.def, eval_mul, eval_C, leadingCoeff_eq_zero, hr₀,
          not_false_eq_true, mul_inv_cancel_left₀, and_imp, r]
        intro x hx hxg
        conv_lhs => rw [← f.modByMonic_add_div, eval_add, eval_mul, hxg, zero_mul, add_zero]
      · simp [hg'.natDegree_eq_card_roots]
    simp only [coeff_natDegree, hg.leadingCoeff, one_pow, map_one, map_multiset_prod,
      ← hf'.natDegree_eq_card_roots, ← hg'.natDegree_eq_card_roots, this, map_mul, Multiset.map_map,
      map_pow, map_neg, mul_one, eval_map_algebraMap, Function.comp_apply]
    simp only [← mul_assoc, ← pow_add, ← add_mul, Nat.sub_add_cancel (hrd.le.trans hfg),
      mul_comm g.natDegree]
    congr 3 with x
    exact aeval_algebraMap_apply _ _ _
  · simp [r, hr₀, natDegree_C_mul]
  · rw [f.modByMonic_add_div, natDegree_divByMonic _ hg, Nat.sub_add_cancel hfg]
  · simp

set_option backward.isDefEq.respectTransparency.types false in
/-- If `f` splits with leading coeff `a` and degree `n`,
then `Res(f, g) = aⁿ * ∏ g(α)` where `α` runs through the roots of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
