# isBigO_apply_r_sub_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "baeda98308c375f8666587f7704258a9e005f82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c1220dc-d527-5ef6-27bb-62e10e5e85bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ace9ea-7378-0f17-9d37-4e2d4cd660b6",
  "kind": "lemma",
  "lexical_name": "isBigO_apply_r_sub_b",
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
  "slug": "isbigo-apply-r-sub-b--1169bf33f8cd99b7ec036360",
  "source": {
    "blob": "baeda98308c375f8666587f7704258a9e005f82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1169bf33f8cd99b7ec036360bff141a033df2d9b30e5657db7d6fdf01a1c13e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ace9ea-7378-0f17-9d37-4e2d4cd660b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_apply_r_sub_b (q : ℝ → ℝ) (hq_diff : DifferentiableOn ℝ q (Set.Ioi 1))
    (hq_poly : GrowsPolynomially fun x => ‖deriv q x‖) (i : α) :
    (fun n => q (r i n) - q (b i * n)) =O[atTop] fun n => (deriv q n) * (r i n - b i * n) := by
  let b' := b (min_bi b) / 2
  have hb_pos : 0 < b' := by have := R.b_pos (min_bi b); positivity
  have hb_lt_one : b' < 1 := calc b (min_bi b) / 2
    _ < b (min_bi b) := div_two_lt_of_pos (R.b_pos (min_bi b))
    _ < 1 := R.b_lt_one (min_bi b)
  have hb : b' ∈ Set.Ioo 0 1 := ⟨hb_pos, hb_lt_one⟩
  have hb' (i) : b' ≤ b i := calc b (min_bi b) / 2
    _ ≤ b i / 2 := by gcongr; aesop
    _ ≤ b i := le_of_lt <| div_two_lt_of_pos (R.b_pos i)
  obtain ⟨c₁, _, c₂, _, hq_poly⟩ := hq_poly b' hb
  rw [isBigO_iff]
  refine ⟨c₂, ?_⟩
  have h_tendsto : Tendsto (fun x => b' * x) atTop atTop :=
    Tendsto.const_mul_atTop hb_pos tendsto_id
  filter_upwards [hq_poly.natCast_atTop, R.eventually_bi_mul_le_r, eventually_ge_atTop R.n₀,
                  eventually_gt_atTop 0, (h_tendsto.eventually_gt_atTop 1).natCast_atTop] with
    n hn h_bi_le_r h_ge_n₀ h_n_pos h_bn
  rw [norm_mul, ← mul_assoc]
  refine Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.Icc (b' * n) n) (fun z hz => ?diff) (fun z hz => (hn z hz).2)
    (convex_Icc _ _) ?mem_Icc <| ⟨h_bi_le_r i, by exact_mod_cast (le_of_lt (R.r_lt_n i n h_ge_n₀))⟩
  case diff =>
    refine hq_diff.differentiableAt (Ioi_mem_nhds ?_)
    calc 1 < b' * n := h_bn
         _ ≤ z := hz.1
  case mem_Icc =>
    refine ⟨by gcongr; exact hb' i, ?_⟩
    calc b i * n ≤ 1 * n := by gcongr; exact le_of_lt <| R.b_lt_one i
                 _ = n := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeda98308c375f8666587f7704258a9e005f82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
