# T_isBigO_smoothingFn_mul_asympBound

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
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d0f4420-affa-0d60-60d4-fa51f9c0d538",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54de23ad-01a3-05f8-3726-f8f516fae67c",
  "kind": "lemma",
  "lexical_name": "T_isBigO_smoothingFn_mul_asympBound",
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
  "slug": "t-isbigo-smoothingfn-mul-asympbound--4b8c584c4d49b3829e41ff52",
  "source": {
    "blob": "baeda98308c375f8666587f7704258a9e005f82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 444,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8c584c4d49b3829e41ff52217d0dc6797d42fb2f5aaed3407026a1fb42f2f9",
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

Occurrence: `result:54de23ad-01a3-05f8-3726-f8f516fae67c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma T_isBigO_smoothingFn_mul_asympBound :
    T =O[atTop] (fun n => (1 - ε n) * asympBound g a b n) := by
  refine isBigO_nat_atTop_induction_of_eventually_pos ?_ ?_ ?_
  · exact Eventually.of_forall fun h => R.T_nonneg _
  · filter_upwards [R.eventually_asympBound_pos, eventually_one_sub_smoothingFn_pos] with n hn hn₂
    positivity
  let b' := b (min_bi b) / 2
  have hb_pos : 0 < b' := R.bi_min_div_two_pos
  obtain ⟨c₁, hc₁, h_sumTransform_aux⟩ := R.eventually_atTop_sumTransform_ge
  filter_upwards [eventually_ge_atTop R.n₀] with n₀ n₀_ge_Rn₀
  refine ⟨2 * c₁⁻¹, ?_⟩
  filter_upwards [
    eventually_ge_atTop n₀,
    -- bound1
    R.rpow_p_mul_one_sub_smoothingFn_le,
    -- h_smoothing_pos
    eventually_one_sub_smoothingFn_pos,
    -- h_sumTransform
    h_sumTransform_aux,
    -- h_smoothing_gt_half
    eventually_one_sub_smoothingFn_gt_const (1 / 2) (by norm_num),
    -- h_bi_le_r
    R.eventually_bi_mul_le_r,
    -- n₀_div_le_n
    eventually_ge_atTop ⌈n₀ / b'⌉₊]
      with n hn bound1 h_smoothing_pos h_sumTransform h_smoothing_gt_half h_bi_le_r n₀_div_le_n
  --have n₀_le_bn : n₀ ≤ b' * n := by
  --  sorry
  have n₀_le_r : ∀ i, n₀ ≤ r i n := by
    intro i
    exact_mod_cast
      calc n₀ ≤ b' * n := by
                have : (n₀ : ℝ) / b' ≤ n := by
                  exact_mod_cast calc
                    (n₀ : ℝ) / b' ≤ ⌈n₀ / b'⌉₊ := Nat.le_ceil (↑n₀ / b')
                    _ ≤ n := by exact_mod_cast n₀_div_le_n
                rwa [div_le_iff₀, mul_comm] at this
                grind only
        _ ≤ r i n := by grind
  have r_le_n : ∀ i, r i n < n := by grind [AkraBazziRecurrence]
  intro C hC h_ind
  have C_pos : 0 ≤ C := by grind [inv_pos]
  have g_pos : 0 ≤ g n := R.g_nonneg n (by positivity)
  calc T n
    _ = (∑ i, a i * T (r i n)) + g n := R.h_rec n (by grind)
    _ ≤ (∑ i, a i * (C * ((1 - ε (r i n)) * asympBound g a b (r i n)))) + g n := by
      -- Apply the induction hypothesis
      gcongr (∑ i, a i * ?_) + g n with i _
      · exact le_of_lt <| R.a_pos _
      · exact h_ind (r i n) (by grind)
    _ = (∑ i, a i * (C * ((1 - ε (r i n)) * ((r i n) ^ (p a b)
              * (1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1))))))) + g n := by
      simp_rw [asympBound_def']
    _ = (∑ i, C * a i * ((r i n) ^ (p a b) * (1 - ε (r i n))
              * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
      congr; ext; ring
    _ ≤ (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 - ε n)
              * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n := by
      gcongr (∑ i, C * a i * (?_
          * ((1 + (∑ u ∈ range (r i n), g u / u ^ ((p a b) + 1)))))) + g n with i
      · positivity [R.a_pos i]
      · refine add_nonneg zero_le_one <| Finset.sum_nonneg fun j _ => ?_
        rw [div_nonneg_iff]
        exact Or.inl ⟨R.g_nonneg j (by positivity), by positivity⟩
      · grind
    _ = (∑ i, C * a i * ((b i) ^ (p a b) * n ^ (p a b) * (1 - ε n)
              * ((1 + ((∑ u ∈ range n, g u / u ^ ((p a b) + 1))
              - (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))) + g n := by
      congr; ext i; congr
      refine eq_sub_of_add_eq ?_
      rw [add_comm]
      exact add_eq_of_eq_sub <| Finset.sum_Ico_eq_sub _
        <| le_of_lt <| R.r_lt_n i n <| n₀_ge_Rn₀.trans hn
    _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n) * ((n ^ (p a b)
              * (1 + (∑ u ∈ range n, g u / u ^ ((p a b) + 1)))
              - n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))))))
              + g n := by
      congr; ext; ring
    _ = (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n)
              * ((asympBound g a b n - sumTransform (p a b) g (r i n) n)))) + g n := by
      simp_rw [asympBound_def', sumTransform_def]
    _ ≤ (∑ i, C * a i * ((b i) ^ (p a b) * (1 - ε n)
              * ((asympBound g a b n - c₁ * g n)))) + g n := by
      gcongr with i
      · positivity [R.a_pos i]
      · positivity [R.b_pos i]
      · exact h_sumTransform i
    _ = (∑ i, C * (1 - ε n) * ((asympBound g a b n - c₁ * g n))
              * (a i * (b i) ^ (p a b))) + g n := by
      congr; ext; ring
    _ = C * (1 - ε n) * (asympBound g a b n - c₁ * g n) + g n := by
      rw [← Finset.mul_sum, R.sumCoeffsExp_p_eq_one, mul_one]
    _ = C * (1 - ε n) * asympBound g a b n + (1 - C * c₁ * (1 - ε n)) * g n := by ring
    _ ≤ C * (1 - ε n) * asympBound g a b n + 0 := by
      gcongr
      refine mul_nonpos_of_nonpos_of_nonneg ?_ g_pos
      rw [sub_nonpos]
      calc 1
        _ ≤ 2 * (c₁⁻¹ * c₁) * (1 / 2) := by
          rw [inv_mul_cancel₀ (by positivity : c₁ ≠ 0)]; norm_num
        _ = (2 * c₁⁻¹) * c₁ * (1 / 2) := by ring
        _ ≤ C * c₁ * (1 - ε n) := by gcongr
    _ = C * ((1 - ε n) * asympBound g a b n) := by ring

/-- The main proof of the lower-bound part of the Akra-Bazzi theorem. The factor `1 + ε n` does not
change the asymptotic order, but it is needed for the induction step to go through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeda98308c375f8666587f7704258a9e005f82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
