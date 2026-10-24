# le_two_mul_dist_ofPreNNDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4038154efd34bb3a3b623cb1e4ae7867efca27fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36fc3663-c0a5-83dc-95bb-36439171ad48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb826111-0f55-d2ca-f6fa-17c09b6e9d56",
  "kind": "theorem",
  "lexical_name": "le_two_mul_dist_ofPreNNDist",
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
  "slug": "le-two-mul-dist-ofprenndist--02d55a690451c4f18ce004b7",
  "source": {
    "blob": "4038154efd34bb3a3b623cb1e4ae7867efca27fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02d55a690451c4f18ce004b7408e8c5c898563975174b162ecbe854dc22ecd2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb826111-0f55-d2ca-f6fa-17c09b6e9d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_two_mul_dist_ofPreNNDist (d : X → X → ℝ≥0) (dist_self : ∀ x, d x x = 0)
    (dist_comm : ∀ x y, d x y = d y x)
    (hd : ∀ x₁ x₂ x₃ x₄, d x₁ x₄ ≤ 2 * max (d x₁ x₂) (max (d x₂ x₃) (d x₃ x₄))) (x y : X) :
    ↑(d x y) ≤ 2 * @dist X
      (@PseudoMetricSpace.toDist X (PseudoMetricSpace.ofPreNNDist d dist_self dist_comm)) x y := by
  /- We need to show that `d x y` is at most twice the sum `L` of `d xᵢ xᵢ₊₁` over a path
    `x₀=x, ..., xₙ=y`. We prove it by induction on the length `n` of the sequence. Find an edge that
    splits the path into two parts of almost equal length: both `d x₀ x₁ + ... + d xₖ₋₁ xₖ` and
    `d xₖ₊₁ xₖ₊₂ + ... + d xₙ₋₁ xₙ` are less than or equal to `L / 2`.
    Then `d x₀ xₖ ≤ L`, `d xₖ xₖ₊₁ ≤ L`, and `d xₖ₊₁ xₙ ≤ L`, thus `d x₀ xₙ ≤ 2 * L`. -/
  rw [dist_ofPreNNDist, ← NNReal.coe_two, ← NNReal.coe_mul, NNReal.mul_iInf, NNReal.coe_le_coe]
  refine' le_ciInf fun l => _
  have hd₀_trans : Transitive fun x y => d x y = 0 := by
    intro a b c hab hbc
    rw [← nonpos_iff_eq_zero]
    simpa only [nonpos_iff_eq_zero, hab, hbc, dist_self c, max_self, mul_zero] using hd a b c c
  haveI : IsTrans X fun x y => d x y = 0 := ⟨hd₀_trans⟩
  induction' hn : length l using Nat.strong_induction_on with n ihn generalizing x y l
  simp only at ihn
  subst n
  set L := zipWith d (x::l) (l ++ [y])
  have hL_len : length L = length l + 1 := by simp
  cases' eq_or_ne (d x y) 0 with hd₀ hd₀
  · simp only [hd₀, zero_le]
  rsuffices ⟨z, z', hxz, hzz', hz'y⟩ : ∃ z z' : X, d x z ≤ L.sum ∧ d z z' ≤ L.sum ∧ d z' y ≤ L.sum
  · exact (hd x z z' y).trans (mul_le_mul_left' (max_le hxz (max_le hzz' hz'y)) _)
  set s : Set ℕ := { m : ℕ | 2 * (take m L).sum ≤ L.sum }
  have hs₀ : 0 ∈ s := by simp
  have hsne : s.Nonempty := ⟨0, hs₀⟩
  obtain ⟨M, hMl, hMs⟩ : ∃ M ≤ length l, IsGreatest s M := by
    have hs_ub : length l ∈ upperBounds s := by
      intro m hm
      rw [← not_lt, Nat.lt_iff_add_one_le, ← hL_len]
      intro hLm
      rw [mem_setOf_eq, take_all_of_le hLm, two_mul, add_le_iff_nonpos_left, nonpos_iff_eq_zero,
          sum_eq_zero_iff, ← all₂_iff_forall, all₂_zipWith, ← chain_append_singleton_iff_forall₂]
          at hm <;>
        [skip; simp]
      exact hd₀ (hm.rel (mem_append.2 <| Or.inr <| mem_singleton_self _))
    have hs_bdd : BddAbove s := ⟨length l, hs_ub⟩
    exact ⟨sSup s, csSup_le hsne hs_ub, ⟨Nat.sSup_mem hsne hs_bdd, fun k => le_csSup hs_bdd⟩⟩
  have hM_lt : M < length L := by rwa [hL_len, Nat.lt_succ_iff]
  have hM_ltx : M < length (x::l) := lt_length_left_of_zipWith hM_lt
  have hM_lty : M < length (l ++ [y]) := lt_length_right_of_zipWith hM_lt
  refine' ⟨(x::l).get ⟨M, hM_ltx⟩, (l ++ [y]).get ⟨M, hM_lty⟩, _, _, _⟩
  · cases M with
    | zero =>
      simp [dist_self, List.get]
    | succ M =>
      rw [Nat.succ_le_iff] at hMl
      have hMl' : length (take M l) = M := (length_take _ _).trans (min_eq_left hMl.le)
      simp only [List.get]
      refine' (ihn _ hMl _ _ _ hMl').trans _
      convert hMs.1.out
      rw [zipWith_distrib_take, take, take_succ, get?_append hMl, get?_eq_get hMl, ← Option.coe_def,
        Option.to_list_some, take_append_of_le_length hMl.le]
  · exact single_le_sum (fun x _ => zero_le x) _ (mem_iff_get.2 ⟨⟨M, hM_lt⟩, get_zipWith⟩)
  · rcases hMl.eq_or_lt with (rfl | hMl)
    · simp only [get_append_right' le_rfl, sub_self, get_singleton, dist_self, zero_le]
    rw [get_append _ hMl]
    have hlen : length (drop (M + 1) l) = length l - (M + 1) := length_drop _ _
    have hlen_lt : length l - (M + 1) < length l := Nat.sub_lt_of_pos_le M.succ_pos hMl
    refine' (ihn _ hlen_lt _ y _ hlen).trans _
    rw [cons_get_drop_succ]
    have hMs' : L.sum ≤ 2 * (L.take (M + 1)).sum :=
      not_lt.1 fun h => (hMs.2 h.le).not_lt M.lt_succ_self
    rw [← sum_take_add_sum_drop L (M + 1), two_mul, add_le_add_iff_left, ← add_le_add_iff_right,
      sum_take_add_sum_drop, ← two_mul] at hMs'
    convert hMs'
    rwa [zipWith_distrib_drop, drop, drop_append_of_le_length]
#align pseudo_metric_space.le_two_mul_dist_of_prenndist PseudoMetricSpace.le_two_mul_dist_ofPreNNDist

end PseudoMetricSpace

-- Porting note: this is slower than in Lean3 for some reason...
/-- If `X` is a uniform space with countably generated uniformity filter, there exists a
`PseudoMetricSpace` structure compatible with the `UniformSpace` structure. Use
`UniformSpace.pseudoMetricSpace` or `UniformSpace.metricSpace` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4038154efd34bb3a3b623cb1e4ae7867efca27fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
