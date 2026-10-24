# pi_lower_specific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d855641c-440a-1c17-4301-2aa2c55c4ca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b5cb7a-d57e-2024-a92b-4d1d43cd4276",
  "kind": "theorem",
  "lexical_name": "pi_lower_specific",
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
  "slug": "pi-lower-specific--68f4482897205156fb8fed18",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2386,
    "line": 2234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f4482897205156fb8fed18bdc9ee8b6b0f996b757a44b7a4c906c9259bd33a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b5cb7a-d57e-2024-a92b-4d1d43cd4276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2234–2386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_lower_specific : ∀ x > xₐ, pi x > x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + ((mₐ xₐ) * x / log x ^ 6) := by
  intro x hx
  have h2xa : 2 ≤ xₐ := two_le_xₐ
  have hxax : xₐ ≤ x := le_of_lt hx
  have hx2 : 2 ≤ x := by linarith
  have hxapos : 0 < xₐ := xₐ_pos
  have hlogx_pos : 0 < log x := log_pos (by linarith [one_lt_xₐ, hx])
  have hlog_le : log xₐ ≤ log x := log_le_log hxapos hxax
  have hinv_log : (log x)⁻¹ ≤ (log xₐ)⁻¹ := inv_anti₀ log_xₐ_pos hlog_le
  let S : ℝ := ∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)
  let J : ℝ := ∫ t in Set.Icc 2 x, 1 / log t ^ 7
  let IA : ℝ := ∫ t in Set.Icc 2 x, a t / log t ^ 7
  have ha_int : IntegrableOn (fun t ↦ a t / log t ^ 7) (Set.Icc 2 x) volume :=
    integrable_a_over_log7_piecewise x hx2
  have hpi0 :
      pi x ≥ x / log x - a x * x / log x ^ 6 + (∫ t in Set.Icc 2 x, 1 / log t ^ 2)
        - ∫ t in Set.Icc 2 x, a t / log t ^ 7 :=
    pi_lower a pi_bound_abs_mul x ha_int hx2
  have hI2 :
      ∫ t in Set.Icc 2 x, 1 / log t ^ 2 =
        x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 + 120 * x / log x ^ 6
        - 2 * (∑ k ∈ Finset.Icc 1 5, k.factorial / log 2 ^ (k + 1)) + 720 * ∫ t in Set.Icc 2 x, 1 / log t ^ 7 :=
    log_2_expansion_t x hx2
  have hsumx :
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        = x / log x + x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5 := by
    norm_num [Finset.sum_range_succ, Nat.factorial]; ring
  have haxterm : -(a x * x / log x ^ 6) ≥ -(a xₐ * x / log x ^ 6) := by
    simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using neg_le_neg
      (mul_le_mul_of_nonneg_right
        (a_mono (Set.mem_Ici.mpr le_rfl) (Set.mem_Ici.mpr hxax) hxax)
        (div_nonneg (by linarith) (pow_nonneg (log_nonneg (by linarith)) 6)))
  have h720Ia :
      (720 : ℝ) * (∫ t in Set.Icc 2 x, 1 / log t ^ 7) - (∫ t in Set.Icc 2 x, a t / log t ^ 7)
        = ∫ t in Set.Icc 2 x, (720 - a t) / log t ^ 7 :=
    pi_lower_specific_h720Ia x ha_int
  have hmain_ge :
      pi x ≥ x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        + ((120 - a xₐ) * x / log x ^ 6) - 2 * S
        + (∫ t in Set.Icc 2 x, (720 - a t) / log t ^ 7) := by
    rw [hI2] at hpi0
    have hpi0' : pi x ≥ x / log x - a x * x / log x ^ 6
        + (x / log x ^ 2 + 2 * x / log x ^ 3 + 6 * x / log x ^ 4 + 24 * x / log x ^ 5
          + 120 * x / log x ^ 6 - 2 * S + 720 * J) - IA := by simpa [S, J, IA] using hpi0
    have h720JIA : 720 * J - IA = ∫ t in Set.Icc 2 x, (720 - a t) / log t ^ 7 := by
      simpa [J, IA] using h720Ia
    have hdist : (120 - a xₐ) * x / log x ^ 6 = 120 * x / log x ^ 6 - a xₐ * x / log x ^ 6 := by ring
    linarith [hpi0', haxterm, hsumx, h720JIA.le, h720JIA.ge, hdist]
  have hJ_int : IntegrableOn (fun t : ℝ ↦ 1 / log t ^ 7) (Set.Icc 2 x) volume :=
    ContinuousOn.integrableOn_Icc (continuousOn_const.div (ContinuousOn.pow
      (continuousOn_log.mono <| by intro t ht; exact ne_of_gt (lt_of_lt_of_le (by norm_num) ht.1)) _) fun t ht ↦
      pow_ne_zero _ <| ne_of_gt <| log_pos <| by linarith [ht.1])
  have h720_int : IntegrableOn (fun t : ℝ ↦ (720 : ℝ) / log t ^ 7) (Set.Icc 2 x) volume := by
    have : (fun t : ℝ ↦ (720 : ℝ) / log t ^ 7) = (fun t ↦ 720 * (1 / log t ^ 7)) := by funext t; ring
    rw [this]; exact hJ_int.const_mul 720
  have hG_int : IntegrableOn (fun t : ℝ ↦ (720 - a t) / log t ^ 7) (Set.Icc 2 x) volume := by
    have : (fun t : ℝ ↦ (720 - a t) / log t ^ 7) =
        (fun t ↦ 720 / log t ^ 7 - a t / log t ^ 7) := by funext t; ring
    rw [this]; exact h720_int.sub ha_int
  have hsplitG :
      ∫ t in Set.Icc 2 x, (720 - a t) / log t ^ 7 =
        (∫ t in Set.Icc 2 xₐ, (720 - a t) / log t ^ 7) +
        (∫ t in Set.Icc xₐ x, (720 - a t) / log t ^ 7) :=
    integral_Icc_split_at_xa (fun t ↦ (720 - a t) / log t ^ 7) x h2xa hxax hG_int
  have hratio6 : xₐ / log xₐ ^ 6 ≤ x / log x ^ 6 := ratio6_bound_xa x hxax
  have hI0_ge :
      -(C₁ * x / log x ^ 6) ≤ ∫ t in Set.Icc 2 xₐ, (720 - a t) / log t ^ 7 := by
    have hI0_eq : ∫ t in Set.Icc 2 xₐ, (720 - a t) / log t ^ 7 = C₂ * xₐ / log xₐ ^ 6 := by
      have : C₂ = log xₐ ^ 6 / xₐ * ∫ t in Set.Icc 2 xₐ, (720 - a t) / log t ^ 7 := rfl
      rw [this]; field_simp [hxapos.ne', log_xₐ_pos.ne']
    rw [hI0_eq]
    have h1 : -(C₁ * xₐ / log xₐ ^ 6) ≤ C₂ * xₐ / log xₐ ^ 6 := by
      simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using
        mul_le_mul_of_nonneg_right (abs_le.mp C₂_abs_le_C₁).1 (by positivity : (0:ℝ) ≤ xₐ/log xₐ^6)
    have h2 : -(C₁ * x / log x ^ 6) ≤ -(C₁ * xₐ / log xₐ ^ 6) := by
      simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using
        neg_le_neg (mul_le_mul_of_nonneg_left hratio6 C₁_nonneg)
    linarith
  have hS_le : 2 * S ≤ C₃ * x / log x ^ 6 := by
    have hS_eq : 2 * S = C₃ * xₐ / log xₐ ^ 6 := by
      unfold C₃ S; field_simp [hxapos.ne', log_xₐ_pos.ne']
    rw [hS_eq]; simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using
      mul_le_mul_of_nonneg_left hratio6 C₃_nonneg
  have hJtail_le :
      ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 ≤ ∫ t in Set.Icc 2 x, 1 / log t ^ 7 := by
    refine MeasureTheory.setIntegral_mono_set hJ_int ?_
      (MeasureTheory.ae_of_all _ (fun t ht ↦ ⟨by linarith [h2xa, ht.1], ht.2⟩))
    filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Icc] with t ht
    exact one_div_nonneg.mpr (pow_nonneg (log_nonneg (by linarith [ht.1])) _)
  have hB :
      x / log x ^ 7 + 7 * (sqrt x / log 2 ^ 8 + 2 ^ 8 * x / log x ^ 8)
        ≤ x / log x ^ 6 * B := by
    have hterm1 : x / log x ^ 7 ≤ x / log x ^ 6 * (1 / log xₐ) := by
      have h1 : (1 / log x) ≤ (1 / log xₐ) := by simpa [one_div] using hinv_log
      calc x / log x ^ 7 = (x / log x ^ 6) * (1 / log x) := by field_simp [hlogx_pos.ne']
        _ ≤ _ := by gcongr
    have hterm2 : 2 ^ 8 * x / log x ^ 8 ≤ x / log x ^ 6 * (2 ^ 8 / log xₐ ^ 2) := by
      have hdiv : (2 ^ 8 : ℝ) / log x ^ 2 ≤ 2 ^ 8 / log xₐ ^ 2 := by
        simpa [div_eq_mul_inv, pow_two, mul_assoc, mul_left_comm, mul_comm] using
          mul_le_mul_of_nonneg_left (by gcongr : (log x)⁻¹ ^ 2 ≤ (log xₐ)⁻¹ ^ 2)
            (by positivity : 0 ≤ (2 ^ 8 : ℝ))
      calc 2 ^ 8 * x / log x ^ 8 = (x / log x ^ 6) * (2 ^ 8 / log x ^ 2) := by
            field_simp [hlogx_pos.ne']
        _ ≤ _ := by gcongr
    have h := add_le_add hterm1 (mul_le_mul_of_nonneg_left
      (add_le_add (sqrt_term_bound_xa x hxax) hterm2) (by norm_num : (0:ℝ) ≤ 7))
    have : x / log x ^ 6 * (1 / log xₐ) + 7 * (x / log x ^ 6 *
        (log xₐ ^ 6 / (sqrt xₐ * log 2 ^ 8)) + x / log x ^ 6 * (2 ^ 8 / log xₐ ^ 2))
        = x / log x ^ 6 * B := by unfold B; ring
    linarith
  have hJtail_lt : ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 < x / log x ^ 6 * B :=
    lt_of_le_of_lt hJtail_le (lt_of_lt_of_le (log_7_int_bound x hx2) hB)
  have hsub : Set.Icc xₐ x ⊆ Set.Icc 2 x :=
    fun t ht ↦ ⟨by linarith [h2xa, ht.1], ht.2⟩
  have htail_const_le :
      (-a xₐ) * (∫ t in Set.Icc xₐ x, 1 / log t ^ 7) ≤
        ∫ t in Set.Icc xₐ x, (720 - a t) / log t ^ 7 := by
    have hcong : ∀ t, (-a xₐ) * (1 / log t ^ 7) = (-a xₐ) / log t ^ 7 := fun t ↦ by ring
    have hconst_tail_int : IntegrableOn (fun t : ℝ ↦ (-a xₐ) / log t ^ 7) (Set.Icc xₐ x) volume :=
      (integrableOn_congr_fun (fun t _ ↦ hcong t) measurableSet_Icc).1
        ((hJ_int.mono_set hsub).const_mul (-a xₐ))
    have hmono := MeasureTheory.setIntegral_mono_on hconst_tail_int (hG_int.mono_set hsub)
      measurableSet_Icc (fun t ht ↦ div_le_div_of_nonneg_right (by
        have : a t ≤ a xₐ := a_mono (Set.mem_Ici.mpr le_rfl) (Set.mem_Ici.mpr ht.1) ht.1
        linarith) (pow_nonneg (log_nonneg (by linarith [h2xa, ht.1])) 7))
    have hcf : ∫ t in Set.Icc xₐ x, (-a xₐ) / log t ^ 7 =
        (-a xₐ) * ∫ t in Set.Icc xₐ x, 1 / log t ^ 7 := by
      rw [← MeasureTheory.integral_const_mul]
      exact MeasureTheory.setIntegral_congr_fun measurableSet_Icc (fun t _ ↦ (hcong t).symm)
    linarith [hmono, hcf.le, hcf.ge]
  have hG_gt :
      -(C₁ * x / log x ^ 6) + (-a xₐ) * (x / log x ^ 6 * B) <
        ∫ t in Set.Icc 2 x, (720 - a t) / log t ^ 7 := by
    rw [hsplitG]
    exact add_lt_add_of_le_of_lt hI0_ge (lt_of_lt_of_le
      (mul_lt_mul_of_neg_left hJtail_lt (by simpa using neg_neg_of_pos a_xa_pos)) htail_const_le)
  have hm_eq :
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) +
          ((120 - a xₐ) * x / log x ^ 6) - C₃ * x / log x ^ 6
          + (-(C₁ * x / log x ^ 6) + (-a xₐ) * (x / log x ^ 6 * B))
        = x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1)) + mₐ xₐ * x / log x ^ 6 := by
    unfold mₐ; ring
  linarith [hmain_ge, hS_le, hG_gt, hm_eq.le, hm_eq.ge]


@[blueprint
  "epsilon-bound"
  (title := "Bound for εMₐ - εmₐ")
  (statement := /-- We have $\epsilon_{M_a} - \epsilon'_{m_a} < \log (e x_a )$. -/)
  (proof := /-- This is a direct calculation. An AI verification can be found at https://external-conversation.invalid/share/69a64f96-b1cc-800e-8f85-850168d23094
  -/)
  (latexEnv := "lemma")
  (discussion := 998)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L2234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
