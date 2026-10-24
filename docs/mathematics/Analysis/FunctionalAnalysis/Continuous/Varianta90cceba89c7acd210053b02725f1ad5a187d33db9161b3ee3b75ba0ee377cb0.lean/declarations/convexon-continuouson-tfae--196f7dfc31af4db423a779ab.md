# ConvexOn.continuousOn_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3a6dd4206821d1285ab28a333e83f40b51bef53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a90cceba89c7acd210053b02725f1ad5a187d33db9161b3ee3b75ba0ee377cb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f86a23a-1ed0-baff-2ae6-328c2c056fe8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae927256-aa12-2e35-d66d-9ec46d6cfc71",
  "kind": "lemma",
  "lexical_name": "ConvexOn.continuousOn_tfae",
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
  "slug": "convexon-continuouson-tfae--196f7dfc31af4db423a779ab",
  "source": {
    "blob": "c3a6dd4206821d1285ab28a333e83f40b51bef53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 114,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Varianta90cceba89c7acd210053b02725f1ad5a187d33db9161b3ee3b75ba0ee377cb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:196f7dfc31af4db423a779ab90a35aef4b90371f67a889d2b96b44caa668cf13",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Varianta90cceba89c7acd210053b02725f1ad5a187d33db9161b3ee3b75ba0ee377cb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae927256-aa12-2e35-d66d-9ec46d6cfc71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.continuousOn_tfae (hC : IsOpen C) (hC' : C.Nonempty) (hf : ConvexOn ℝ C f) : TFAE [
    LocallyLipschitzOn C f,
    ContinuousOn f C,
    ∃ x₀ ∈ C, ContinuousAt f x₀,
    ∃ x₀ ∈ C, (𝓝 x₀).IsBoundedUnder (· ≤ ·) f,
    ∀ ⦃x₀⦄, x₀ ∈ C → (𝓝 x₀).IsBoundedUnder (· ≤ ·) f,
    ∀ ⦃x₀⦄, x₀ ∈ C → (𝓝 x₀).IsBoundedUnder (· ≤ ·) |f|] := by
  tfae_have 1 → 2 := LocallyLipschitzOn.continuousOn
  tfae_have 2 → 3 := by
    obtain ⟨x₀, hx₀⟩ := hC'
    exact fun h ↦ ⟨x₀, hx₀, h.continuousAt <| hC.mem_nhds hx₀⟩
  tfae_have 3 → 4
  | ⟨x₀, hx₀, h⟩ =>
    ⟨x₀, hx₀, f x₀ + 1, by simpa using! h.eventually (eventually_le_nhds (by simp))⟩
  tfae_have 4 → 5
  | ⟨x₀, hx₀, r, hr⟩, x, hx => by
    have : ∀ᶠ δ in 𝓝 (0 : ℝ), (1 - δ)⁻¹ • x - (δ / (1 - δ)) • x₀ ∈ C := by
      have h : ContinuousAt (fun δ : ℝ ↦ (1 - δ)⁻¹ • x - (δ / (1 - δ)) • x₀) 0 := by
        fun_prop (disch := norm_num)
      exact h (by simpa using! hC.mem_nhds hx)
    obtain ⟨δ, hδ₀, hy, hδ₁⟩ := (this.and <| eventually_lt_nhds zero_lt_one).exists_gt
    set y := (1 - δ)⁻¹ • x - (δ / (1 - δ)) • x₀
    refine ⟨max r (f y), ?_⟩
    simp only [Filter.eventually_map] at hr ⊢
    obtain ⟨ε, hε, hr⟩ := Metric.eventually_nhds_iff.1 <| hr.and (hC.eventually_mem hx₀)
    refine Metric.eventually_nhds_iff.2 ⟨ε * δ, by positivity, fun z hz ↦ ?_⟩
    have hx₀' : δ⁻¹ • (x - y) + y = x₀ := MulAction.injective₀ (sub_ne_zero.2 hδ₁.ne') <| by
      simp [y, smul_sub, smul_smul, hδ₀.ne', div_eq_mul_inv, sub_ne_zero.2 hδ₁.ne', mul_left_comm,
        sub_mul, sub_smul]
    let w := δ⁻¹ • (z - y) + y
    have hwyz : δ • w + (1 - δ) • y = z := by simp [w, hδ₀.ne', sub_smul]
    have hw : dist w x₀ < ε := by
      simpa [w, ← hx₀', dist_smul₀, abs_of_nonneg, hδ₀.le, inv_mul_lt_iff₀', hδ₀]
    calc
      f z ≤ max (f w) (f y) :=
        hf.le_max_of_mem_segment (hr hw).2 hy ⟨_, _, hδ₀.le, sub_nonneg.2 hδ₁.le, by simp, hwyz⟩
      _ ≤ max r (f y) := by gcongr; exact (hr hw).1
  tfae_have 6 ↔ 5 := forall₂_congr fun x₀ hx₀ ↦ hf.isBoundedUnder_abs (hC.mem_nhds hx₀)
  tfae_have 6 → 1
  | h, x, hx => by
    obtain ⟨r, hr⟩ := h hx
    obtain ⟨ε, hε, hεD⟩ := Metric.mem_nhds_iff.1 <| Filter.inter_mem (hC.mem_nhds hx) hr
    simp only [preimage_ofPred_eq, Pi.abs_apply, subset_inter_iff, hC.nhdsWithin_eq hx] at hεD ⊢
    obtain ⟨K, hK⟩ := exists_lipschitzOnWith_of_isBounded (hf.subset hεD.1 (convex_ball ..))
      (half_lt_self hε) <| isBounded_iff_forall_norm_le.2 ⟨r, by simpa using! hεD.2⟩
    exact ⟨K, _, ball_mem_nhds _ (by simpa), hK⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Varianta90cceba89c7acd210053b02725f1ad5a187d33db9161b3ee3b75ba0ee377cb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Varianta90cceba89c7acd210053b02725f1ad5a187d33db9161b3ee3b75ba0ee377cb0.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a6dd4206821d1285ab28a333e83f40b51bef53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
