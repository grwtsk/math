# mem_layerNorm_forwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9b7b724-6705-e5a4-f1d0-549867e056ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8265906-8967-7a34-662a-8d0738d37980",
  "kind": "theorem",
  "lexical_name": "mem_layerNorm_forwardInterval",
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
  "slug": "mem-layernorm-forwardinterval--9fa6d2bc8fd34a9e61be230b",
  "source": {
    "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 580,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa6d2bc8fd34a9e61be230b6ae6092aac1c6c296ff0ed1278d34bb5477975f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8265906-8967-7a34-662a-8d0738d37980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_layerNorm_forwardInterval {xs : List ℝ} {Is : IntervalVector}
    (params : LayerNormParams)
    (hlen : xs.length = Is.length)
    (hmem : ∀ i, i < xs.length → xs[i]! ∈ Is[i]!)
    (prec : Int)
    (hprec : prec ≤ 0 := by norm_num) :
    let ys := layerNormReal xs params.gamma params.beta params.epsilon
    let Js := params.forwardInterval Is prec
    ys.length ≤ Js.length ∧
    ∀ i, i < ys.length → ys[i]! ∈ Js[i]! := by
  simp only [layerNormReal]
  -- Handle the n = 0 case
  by_cases hn : Is.length = 0
  · -- Empty input: both outputs are empty or trivially satisfy the goal
    dsimp [LayerNormParams.forwardInterval]
    have hxs_empty : xs.length = 0 := by rw [hlen]; exact hn
    have hxs_nil : xs = [] := List.length_eq_zero_iff.mp hxs_empty
    simp [hn, hxs_nil, List.zipWith3]
  · -- Non-empty input case
    dsimp [LayerNormParams.forwardInterval]
    rw [if_neg hn]

    -- Use local let bindings to define values without rewriting hypothesis
    -- Define real intermediate values
    let n := xs.length
    let n_rat : ℚ := (Is.length : ℚ)
    let mean_real := xs.sum / n
    let variance_real := (xs.map (fun xi => (xi - mean_real) * (xi - mean_real))).sum / n
    let denom_real := Real.sqrt (variance_real + params.epsilon)
    let diffs_real := xs.map (fun xi => xi - mean_real)
    let sq_diffs_real := diffs_real.map (fun d => d * d)
    let inv_denom_real := 1 / denom_real
    let normalized_real := diffs_real.map (fun d => d * inv_denom_real)

    -- Define interval intermediate values
    let inv_n := IntervalDyadic.ofIntervalRat (IntervalRat.singleton (1/n_rat)) prec
    let sum_interval := LayerNormParams.sumIntervals Is
    let mean_interval := IntervalDyadic.mulRounded sum_interval inv_n prec
    let diffs_interval := Is.map (fun xi => IntervalDyadic.sub xi mean_interval)
    let sq_diffs_interval := diffs_interval.map (fun d => IntervalDyadic.mulRounded d d prec)
    let sum_sq_interval := LayerNormParams.sumIntervals sq_diffs_interval
    let var_interval := IntervalDyadic.mulRounded sum_sq_interval inv_n prec
    let eps_interval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton params.epsilon) prec
    let var_eps_interval := IntervalDyadic.add var_interval eps_interval
    let std_dev_interval := IntervalDyadic.sqrt var_eps_interval prec
    let I_std := std_dev_interval.toIntervalRat
    let inv_std_dev_interval :=
      if h : 0 < I_std.lo then
        let hnonzero : ¬IntervalRat.containsZero I_std := fun hcz => not_lt.mpr hcz.1 h
        let Ipos : IntervalRat.IntervalRatNonzero := ⟨I_std, hnonzero⟩
        IntervalDyadic.ofIntervalRat (IntervalRat.invNonzero Ipos) prec
      else
        IntervalDyadic.ofIntervalRat ⟨0, 1 / params.epsilon + 1, by
          have hpos : (0 : ℚ) < 1 / params.epsilon := by
            exact one_div_pos.mpr params.epsilon_pos
          linarith⟩ prec
    let normalized_interval := diffs_interval.map (fun d => IntervalDyadic.mulRounded d inv_std_dev_interval prec)

    -- Prove intermediate membership lemmas
    have hsum_mem : xs.sum ∈ sum_interval := mem_sumIntervals hlen hmem

    have h_inv_n_mem : (1 / n : ℝ) ∈ inv_n := by
      have hcast : ((1 / n_rat : ℚ) : ℝ) = (1 / n : ℝ) := by
        simp [n_rat, n, hlen]
      rw [← hcast]
      exact mem_ofIntervalRat_singleton (1/n_rat) prec hprec

    have hmean_mem : mean_real ∈ mean_interval := by
      have heq : mean_real = xs.sum * (1 / n) := by simp only [mean_real]; field_simp
      rw [heq]
      exact mem_mulRounded hsum_mem h_inv_n_mem prec

    -- Prove diffs membership
    have hdiffs_len : diffs_real.length = diffs_interval.length := by
      simp only [diffs_real, diffs_interval, List.length_map, hlen]

    have hdiffs_mem : ∀ i, i < diffs_real.length → diffs_real[i]! ∈ diffs_interval[i]! := by
      intro i hi
      simp only [diffs_real, List.length_map] at hi
      have hi' : i < Is.length := by rw [← hlen]; exact hi
      simp only [diffs_real, diffs_interval]
      have hxi_mem : xs[i]! ∈ Is[i]! := hmem i hi
      -- Need: (xs.map (fun xi => xi - mean_real))[i]! = xs[i]! - mean_real
      -- And: (Is.map (fun xi => xi.sub mean_interval))[i]! = Is[i]!.sub mean_interval
      -- These follow from map indexing, proven via decidable bounds in Mathlib
      have hdiff_eq : (xs.map (fun xi => xi - mean_real))[i]! = xs[i]! - mean_real := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi, Option.map_some, Option.getD_some]
      have hint_eq : (Is.map fun xi => IntervalDyadic.sub xi mean_interval)[i]! =
          IntervalDyadic.sub Is[i]! mean_interval := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi', Option.map_some, Option.getD_some]
      rw [hdiff_eq, hint_eq]
      exact IntervalDyadic.mem_sub hxi_mem hmean_mem

    -- Prove sq_diffs membership
    have hsq_diffs_len : sq_diffs_real.length = sq_diffs_interval.length := by
      simp only [sq_diffs_real, sq_diffs_interval, diffs_real, diffs_interval, List.length_map, hlen]

    have hsq_diffs_mem : ∀ i, i < sq_diffs_real.length → sq_diffs_real[i]! ∈ sq_diffs_interval[i]! := by
      intro i hi
      simp only [sq_diffs_real, List.length_map] at hi
      have hi_diffs : i < diffs_real.length := hi
      have hi_diffs' : i < diffs_interval.length := by rw [← hdiffs_len]; exact hi
      simp only [sq_diffs_real, sq_diffs_interval]
      have hd_mem : diffs_real[i]! ∈ diffs_interval[i]! := hdiffs_mem i hi_diffs
      -- Index extraction
      have hsq_eq : (diffs_real.map (fun d => d * d))[i]! = diffs_real[i]! * diffs_real[i]! := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi_diffs, Option.map_some, Option.getD_some]
      have hint_sq_eq : (diffs_interval.map fun d => IntervalDyadic.mulRounded d d prec)[i]! =
          IntervalDyadic.mulRounded diffs_interval[i]! diffs_interval[i]! prec := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi_diffs', Option.map_some, Option.getD_some]
      rw [hsq_eq, hint_sq_eq]
      exact mem_mulRounded hd_mem hd_mem prec

    have hsum_sq_mem : sq_diffs_real.sum ∈ sum_sq_interval :=
      mem_sumIntervals hsq_diffs_len hsq_diffs_mem

    have hvar_mem : variance_real ∈ var_interval := by
      have heq : variance_real = sq_diffs_real.sum * (1 / n) := by
        simp only [variance_real, sq_diffs_real, diffs_real, n]
        -- variance_real = (xs.map (fun xi => (xi - mean_real) * (xi - mean_real))).sum / xs.length
        -- sq_diffs_real.sum = (diffs_real.map (fun d => d * d)).sum
        --                   = ((xs.map (fun xi => xi - mean_real)).map (fun d => d * d)).sum
        --                   = (xs.map (fun xi => (xi - mean_real) * (xi - mean_real))).sum
        have hcomp : (xs.map (fun xi => (xi - mean_real) * (xi - mean_real))) =
            (xs.map (fun xi => xi - mean_real)).map (fun d => d * d) := by
          simp [List.map_map, Function.comp]
        rw [hcomp]
        field_simp
      rw [heq]
      exact mem_mulRounded hsum_sq_mem h_inv_n_mem prec

    have heps_mem : (params.epsilon : ℝ) ∈ eps_interval :=
      mem_ofIntervalRat_singleton params.epsilon prec hprec

    have hvar_eps_mem : variance_real + params.epsilon ∈ var_eps_interval :=
      IntervalDyadic.mem_add hvar_mem heps_mem

    have hvar_nonneg : 0 ≤ variance_real := by
      simp only [variance_real, n]
      apply div_nonneg
      · apply List.sum_nonneg
        intro x hx
        simp only [List.mem_map] at hx
        obtain ⟨xi, _, rfl⟩ := hx
        -- Need to show (xi - mean_real) * (xi - mean_real) ≥ 0
        exact mul_self_nonneg _
      · exact Nat.cast_nonneg xs.length

    -- The variance + epsilon is always positive
    have hvar_eps_pos : 0 < variance_real + params.epsilon := by
      have heps_pos := params.epsilon_pos
      have heps_cast_pos : (0 : ℝ) < (params.epsilon : ℝ) := by exact_mod_cast heps_pos
      linarith

    have hstd_mem : denom_real ∈ std_dev_interval := by
      simp only [denom_real, std_dev_interval]
      exact IntervalDyadic.mem_sqrt' hvar_eps_mem prec

    -- The sqrt of (var + eps) is positive since var + eps > 0
    have hdenom_pos : 0 < denom_real := Real.sqrt_pos.mpr hvar_eps_pos

    -- Prove that the inv_std_dev interval (whichever branch) contains 1/denom_real.
    -- If the interval is provably positive, use invNonzero; otherwise fall back
    -- to a conservative bound derived from epsilon.
    have hinv_std_mem : inv_denom_real ∈ inv_std_dev_interval := by
      by_cases hpos : 0 < I_std.lo
      · -- Positive interval: use invNonzero
        simp only [inv_std_dev_interval, hpos]
        have hnonzero : ¬IntervalRat.containsZero I_std := by
          intro hcz
          exact not_lt.mpr hcz.1 hpos
        let Ipos : IntervalRat.IntervalRatNonzero := ⟨I_std, hnonzero⟩
        have hstd_rat : denom_real ∈ I_std := IntervalDyadic.mem_toIntervalRat.mp hstd_mem
        have hne : denom_real ≠ 0 := ne_of_gt hdenom_pos
        have hinv_rat : inv_denom_real ∈ IntervalRat.invNonzero Ipos := by
          have hinv := IntervalRat.mem_invNonzero (I := Ipos) hstd_rat hne
          simpa [inv_denom_real] using hinv
        exact IntervalDyadic.mem_ofIntervalRat hinv_rat prec hprec
      · -- Fallback: bound by 1/eps + 1
        simp only [inv_std_dev_interval, hpos]
        have hinv_nonneg : 0 ≤ inv_denom_real := by
          have hdenom_nonneg : 0 ≤ denom_real := le_of_lt hdenom_pos
          simpa [inv_denom_real] using (one_div_nonneg.mpr hdenom_nonneg)
        have hsqrt_le : Real.sqrt (params.epsilon : ℝ) ≤ denom_real := by
          have hle : (params.epsilon : ℝ) ≤ variance_real + params.epsilon := by
            linarith [hvar_nonneg]
          simpa [denom_real] using (Real.sqrt_le_sqrt hle)
        have hsqrt_pos : 0 < Real.sqrt (params.epsilon : ℝ) := by
          apply Real.sqrt_pos.mpr
          exact_mod_cast params.epsilon_pos
        have hinv_le : inv_denom_real ≤ 1 / Real.sqrt (params.epsilon : ℝ) := by
          have hle := one_div_le_one_div_of_le hsqrt_pos hsqrt_le
          simpa [inv_denom_real] using hle
        have hsqrt_sq : (Real.sqrt (params.epsilon : ℝ)) ^ 2 = (params.epsilon : ℝ) := by
          have hnonneg : 0 ≤ (params.epsilon : ℝ) := by exact_mod_cast (le_of_lt params.epsilon_pos)
          simpa using (Real.sq_sqrt hnonneg)
        have hinv_sqrt_le : (1 / Real.sqrt (params.epsilon : ℝ) : ℝ) ≤
            (1 / (params.epsilon : ℝ) + 1) := by
          have hineq : (1 / Real.sqrt (params.epsilon : ℝ) : ℝ) ≤
              (1 / (Real.sqrt (params.epsilon : ℝ)) ^ 2 + 1) := by
            set s : ℝ := 1 / Real.sqrt (params.epsilon : ℝ)
            have : s ≤ s ^ 2 + 1 := by nlinarith
            simpa [s] using this
          simpa [hsqrt_sq] using hineq
        have hinv_upper : inv_denom_real ≤ (1 / (params.epsilon : ℝ) + 1) :=
          le_trans hinv_le hinv_sqrt_le
        have hinv_mem : inv_denom_real ∈ (⟨0, 1 / params.epsilon + 1, by
          have hpos' : (0 : ℚ) < 1 / params.epsilon := by
            exact one_div_pos.mpr params.epsilon_pos
          linarith⟩ : IntervalRat) := by
          refine ⟨?_, ?_⟩
          · simpa using hinv_nonneg
          · simpa using hinv_upper
        exact IntervalDyadic.mem_ofIntervalRat hinv_mem prec hprec

    have hnormalized_len : normalized_real.length = normalized_interval.length := by
      simp only [normalized_real, normalized_interval, diffs_real, diffs_interval, List.length_map, hlen]

    have hnormalized_mem : ∀ i, i < normalized_real.length → normalized_real[i]! ∈ normalized_interval[i]! := by
      intro i hi
      simp only [normalized_real, List.length_map] at hi
      have hi_diffs : i < diffs_real.length := hi
      have hi_diffs' : i < diffs_interval.length := by rw [← hdiffs_len]; exact hi
      simp only [normalized_real, normalized_interval]
      have hd_mem : diffs_real[i]! ∈ diffs_interval[i]! := hdiffs_mem i hi_diffs
      -- Index extraction
      have hnorm_eq : (diffs_real.map (fun d => d * inv_denom_real))[i]! = diffs_real[i]! * inv_denom_real := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi_diffs, Option.map_some, Option.getD_some]
      have hint_norm_eq : (diffs_interval.map fun d => IntervalDyadic.mulRounded d inv_std_dev_interval prec)[i]! =
          IntervalDyadic.mulRounded diffs_interval[i]! inv_std_dev_interval prec := by
        simp only [List.getElem!_eq_getElem?_getD, List.getElem?_map]
        simp only [List.getElem?_eq_getElem hi_diffs', Option.map_some, Option.getD_some]
      rw [hnorm_eq, hint_norm_eq]
      exact mem_mulRounded hd_mem hinv_std_mem prec

    -- The key: normalized_interval.length = Is.length = xs.length
    have hnorm_int_len : normalized_interval.length = xs.length := by
      simp only [normalized_interval, diffs_interval, List.length_map]
      exact hlen.symm

    -- Final output membership via zipWith3.
    have hresult_mem :
        ∀ i, i < (List.zipWith3 (fun norm (g : ℚ) (b : ℚ) => norm * (g : ℝ) + (b : ℝ))
          normalized_real params.gamma params.beta).length →
          (List.zipWith3 (fun norm (g : ℚ) (b : ℚ) => norm * (g : ℝ) + (b : ℝ))
            normalized_real params.gamma params.beta)[i]! ∈
          (List.zipWith3 (fun norm g b =>
            IntervalDyadic.add
              (IntervalDyadic.mulRounded norm (IntervalDyadic.ofIntervalRat (IntervalRat.singleton g) prec) prec)
              (IntervalDyadic.ofIntervalRat (IntervalRat.singleton b) prec))
            normalized_interval params.gamma params.beta)[i]! := by
      exact mem_zipWith3 hnormalized_len hnormalized_mem
        (fun x I g b hx => mem_scale_shift hx g b prec hprec)

    have hys_eq :
        List.zipWith3 (fun xi (g : ℚ) (b : ℚ) => ((xi - mean_real) / denom_real) * (g : ℝ) + (b : ℝ))
          xs params.gamma params.beta =
        List.zipWith3 (fun norm (g : ℚ) (b : ℚ) => norm * (g : ℝ) + (b : ℝ))
          normalized_real params.gamma params.beta := by
      have hmap :
          List.zipWith3 (fun norm (g : ℚ) (b : ℚ) => norm * (g : ℝ) + (b : ℝ))
            normalized_real params.gamma params.beta =
          List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
            ((xi - mean_real) * inv_denom_real) * (g : ℝ) + (b : ℝ))
            xs params.gamma params.beta := by
        simp [normalized_real, diffs_real, List.map_map, Function.comp, zipWith3_map_left]
      have hdiv :
          List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
            ((xi - mean_real) / denom_real) * (g : ℝ) + (b : ℝ))
            xs params.gamma params.beta =
          List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
            ((xi - mean_real) * inv_denom_real) * (g : ℝ) + (b : ℝ))
            xs params.gamma params.beta := by
        simp [inv_denom_real, div_eq_mul_inv, mul_assoc]
      exact hdiv.trans hmap.symm

    have hys_eq' :
        List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
          ((xi - xs.sum / ↑xs.length) /
              Real.sqrt
                ((xs.map (fun xi => (xi - xs.sum / ↑xs.length) * (xi - xs.sum / ↑xs.length))).sum / ↑xs.length +
                  ↑params.epsilon)) * (g : ℝ) + (b : ℝ))
          xs params.gamma params.beta =
        List.zipWith3 (fun norm (g : ℚ) (b : ℚ) => norm * (g : ℝ) + (b : ℝ))
          normalized_real params.gamma params.beta := by
      simpa [mean_real, variance_real, denom_real, n] using hys_eq

    constructor
    · -- Lengths agree (same min length after normalization)
      simp only [length_zipWith3_min, List.length_map, hlen]
      exact le_rfl
    ·
      intro i hi
      have hi' := hi
      have hlen_eq := congrArg List.length hys_eq'
      rw [hlen_eq] at hi'
      have hmem' := hresult_mem i hi'
      rw [hys_eq']
      exact hmem'

/-! ### Transformer Block Structure -/

/-- A feed-forward network block (MLP) in a Transformer -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
