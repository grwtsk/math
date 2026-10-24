# LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96d39f5d-266a-7208-50e3-2b26091a7350",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc350a39-0cd0-49fe-c1c3-ef9102932436",
  "kind": "theorem",
  "lexical_name": "LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div",
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
  "slug": "lseries-tendsto-sub-mul-nhds-one-of-tendsto-sum-div--250074ad86408e37d5d75ece",
  "source": {
    "blob": "d38edb06043c2b96455d2f8a41ceec6a8d5ff431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 332,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:250074ad86408e37d5d75ece6ab191a2aa80876cdca614a2b11f4a3501f86c46",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc350a39-0cd0-49fe-c1c3-ef9102932436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div
    (hlim : Tendsto (fun n : ℕ ↦ (∑ k ∈ Icc 1 n, f k) / n) atTop (𝓝 l))
    (hfS : ∀ s : ℝ, 1 < s → LSeriesSummable f s) :
    Tendsto (fun s : ℝ ↦ (s - 1) * LSeries f s) (𝓝[>] 1) (𝓝 l) := by
  have h₁ {C ε : ℝ} : Tendsto (fun s ↦ (s - 1) * s * C + s * ε) (𝓝[>] 1) (𝓝 ε) := by
    rw [show 𝓝 ε = 𝓝 ((1 - 1) * 1 * C + 1 * ε) by congr; ring]
    exact tendsto_nhdsWithin_of_tendsto_nhds (ContinuousAt.tendsto (by fun_prop))
  have h₂ : IsBoundedUnder
      (fun x1 x2 ↦ x1 ≤ x2) (𝓝[>] 1) fun s : ℝ ↦ ‖(s - 1) * LSeries f s - s * l‖ := by
    obtain ⟨C, _, hC₂⟩ :=
      LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃ hlim hfS zero_lt_one
    exact h₁.isBoundedUnder_le.mono_le hC₂
  suffices Tendsto (fun s : ℝ ↦ (s - 1) * LSeries f s - s * l) (𝓝[>] 1) (𝓝 0) by
    rw [show 𝓝 l = 𝓝 (0 + 1 * l) by congr; ring]
    have h₃ : Tendsto (fun s : ℝ ↦ s * l) (𝓝[>] 1) (𝓝 (1 * l)) :=
      tendsto_nhdsWithin_of_tendsto_nhds (ContinuousAt.tendsto (by fun_prop))
    exact (this.add h₃).congr fun _ ↦ by ring
  refine tendsto_zero_iff_norm_tendsto_zero.mpr <| tendsto_of_le_liminf_of_limsup_le ?_ ?_ h₂ ?_
  · exact le_liminf_of_le h₂.isCoboundedUnder_ge (univ_mem' (fun _ ↦ norm_nonneg _))
  · refine le_of_forall_pos_le_add fun ε hε ↦ ?_
    rw [zero_add]
    obtain ⟨C, hC₁, hC₂⟩ := LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃ hlim hfS hε
    refine le_of_le_of_eq (limsup_le_limsup hC₂ ?_ h₁.isBoundedUnder_le) h₁.limsup_eq
    exact isCoboundedUnder_le_of_eventually_le _ (univ_mem' fun _ ↦ norm_nonneg _)
  · exact isBoundedUnder_of_eventually_ge (univ_mem' fun _ ↦ norm_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd9b3609a9e69036079d596a87697be0f7295d1f3797892b7742bcb7c42c13334.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38edb06043c2b96455d2f8a41ceec6a8d5ff431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
