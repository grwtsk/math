# symmetricLogCombination_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:188c2c9d-4635-717d-6eba-b0ce369720fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bd46462-23cc-c0c9-274a-58b490800e86",
  "kind": "theorem",
  "lexical_name": "symmetricLogCombination_bounded",
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
  "slug": "symmetriclogcombination-bounded--90e01d47e423d3de6b80c655",
  "source": {
    "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 490,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e01d47e423d3de6b80c655ece812f97716819ce912753ac57ca4b2235c18b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd46462-23cc-c0c9-274a-58b490800e86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogCombination_bounded (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1/2) :
    |symmetricLogCombination t| ≤ 2 := by
  -- Use the limit g(t) → 1 to show |g(t) - 1| < 1 near 0, hence |g(t)| < 2.
  -- By symmetricLogCombination_tendsto_one, we have g(t) → 1 as t → 0⁺
  -- Use Metric.tendsto_nhds: ∀ ε > 0, ∃ δ > 0, 0 < t < δ → |g(t) - 1| < ε
  have hlim := symmetricLogCombination_tendsto_one
  rw [Metric.tendsto_nhds] at hlim
  specialize hlim 1 one_pos
  -- hlim : ∀ᶠ t in 𝓝[>]0, dist (g t) 1 < 1
  rw [Filter.eventually_iff_exists_mem] at hlim
  obtain ⟨s, hs_mem, hs⟩ := hlim
  -- s is a neighborhood of 0 in (0, ∞) where |g(t) - 1| < 1
  rw [mem_nhdsWithin] at hs_mem
  obtain ⟨U, hU_open, hU_zero, hU_sub⟩ := hs_mem
  -- U is an open set containing 0, and s ⊇ U ∩ (0, ∞)
  rw [Metric.isOpen_iff] at hU_open
  specialize hU_open 0 hU_zero
  obtain ⟨ε, hε_pos, hε_ball⟩ := hU_open
  -- For t ∈ (0, ε), t is in U ∩ (0, ∞) ⊆ s, so |g(t) - 1| < 1
  by_cases! ht_small : t < ε
  · -- Case 1: t < ε, use the limit
    have ht_in_U : t ∈ U := hε_ball (by simp [abs_of_pos ht_pos, ht_small])
    have ht_in_s : t ∈ s := hU_sub ⟨ht_in_U, Set.mem_Ioi.mpr ht_pos⟩
    have hdist := hs t ht_in_s
    rw [Real.dist_eq] at hdist
    have h1 : |symmetricLogCombination t| = |(symmetricLogCombination t - 1) + 1| := by ring_nf
    have h2 : |(symmetricLogCombination t - 1) + 1| ≤ |symmetricLogCombination t - 1| + |1| := abs_add_le _ _
    have h3 : |symmetricLogCombination t - 1| + |1| < 1 + 1 := by simp only [abs_one]; linarith
    linarith
  · -- Case 2: t ∈ [ε, 1/2), bound using explicit log inequalities
    -- Strategy: Show g(t) ∈ (0, 2) for t ∈ (0, 1/2] using:
    -- 1. g(t) > 0 (ratio of two negatives)
    -- 2. g(t) < 2 using log bounds
    have halt := symmetricLogCombination_alt t ht_pos (by linarith : t < 1)
    rw [halt]
    have ht2_lt : t^2 < 1 := by nlinarith
    have h1mt2_pos : 0 < 1 - t^2 := by linarith [sq_nonneg t]
    have h1pt_gt1 : 1 < 1 + t := by linarith
    have h1mt_lt1 : 1 - t < 1 := by linarith
    have h1mt_pos : 0 < 1 - t := by linarith
    have hlog1p_pos : 0 < Real.log (1 + t) := Real.log_pos h1pt_gt1
    have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg h1mt_pos h1mt_lt1
    have h1mt2_lt1 : 1 - t^2 < 1 := by nlinarith [sq_nonneg t]
    have hlog1mt2_neg : Real.log (1 - t^2) < 0 := Real.log_neg h1mt2_pos h1mt2_lt1
    have hdenom_neg : Real.log (1 + t) * Real.log (1 - t) < 0 := mul_neg_of_pos_of_neg hlog1p_pos hlog1m_neg
    have hdenom_ne : Real.log (1 + t) * Real.log (1 - t) ≠ 0 := ne_of_lt hdenom_neg
    -- g(t) = log(1-t²)/(log(1+t)·log(1-t)) = (neg)/(neg) > 0
    have hg_pos : 0 < Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) := by
      apply div_pos_of_neg_of_neg hlog1mt2_neg hdenom_neg
    -- For |g| ≤ 2, since g > 0, we need g ≤ 2
    -- Using log(1-t²) = log(1+t) + log(1-t) and explicit bounds:
    -- g = (log(1+t) + log(1-t))/(log(1+t)·log(1-t))
    --   = 1/log(1-t) + 1/log(1+t)
    --   = 1/log(1-t) + 1/log(1+t)
    -- For t ∈ (0, 1/2]:
    --   1/log(1+t) ∈ (1/log(3/2), ∞) ≈ (2.47, ∞)  [positive]
    --   1/log(1-t) ∈ (-∞, 1/log(1/2)) ≈ (-∞, -1.44)  [negative]
    -- Sum: bounded above by 2.47 - 1.44 = 1.03 at t = 1/2
    -- The function is continuous and numerically verified to be < 2
    -- This requires interval arithmetic for a rigorous proof
    rw [abs_of_pos hg_pos]
    -- Use log bounds to show g(t) ≤ 2:
    -- From one_sub_inv_le_log_of_pos with x = 1+t: t/(1+t) ≤ log(1+t), so 1/log(1+t) ≤ (1+t)/t
    -- From one_sub_inv_le_log_of_pos with x = 1-t: -t/(1-t) ≤ log(1-t), so 1/log(1-t) ≤ -(1-t)/t
    -- Thus g(t) = 1/log(1+t) + 1/log(1-t) ≤ (1+t)/t - (1-t)/t = 2
    have h1pt_pos : 0 < 1 + t := by linarith
    have h1pt_ne : 1 + t ≠ 0 := ne_of_gt h1pt_pos
    have h1mt_ne : 1 - t ≠ 0 := ne_of_gt h1mt_pos
    have ht_ne : t ≠ 0 := ne_of_gt ht_pos
    have hlog1p_lb : t / (1 + t) ≤ Real.log (1 + t) := by
      have h := Real.one_sub_inv_le_log_of_pos h1pt_pos
      simp only [inv_eq_one_div] at h
      convert h using 1
      field_simp; ring
    have hlog1m_ub : Real.log (1 - t) ≥ -t / (1 - t) := by
      have h := Real.one_sub_inv_le_log_of_pos h1mt_pos
      simp only [inv_eq_one_div] at h
      have heq : 1 - 1 / (1 - t) = -t / (1 - t) := by field_simp; ring
      rw [← heq]; exact h
    -- Bound 1/log(1+t)
    have hlog1p_inv_ub : 1 / Real.log (1 + t) ≤ (1 + t) / t := by
      rw [one_div, le_div_iff₀ ht_pos, inv_mul_le_iff₀ hlog1p_pos]
      have h1 : t = t / (1 + t) * (1 + t) := by field_simp
      calc t = t / (1 + t) * (1 + t) := h1
        _ ≤ Real.log (1 + t) * (1 + t) := by
            apply mul_le_mul_of_nonneg_right hlog1p_lb (le_of_lt h1pt_pos)
    -- Bound 1/log(1-t)
    have hlog1m_inv_ub : 1 / Real.log (1 - t) ≤ -(1 - t) / t := by
      have hneg_log : -Real.log (1 - t) > 0 := neg_pos.mpr hlog1m_neg
      -- From log(1-t) ≥ -t/(1-t), we get -log(1-t) ≤ t/(1-t)
      have hneg_log_ub : -Real.log (1 - t) ≤ t / (1 - t) := by
        have h := hlog1m_ub
        have hdiv_neg : -t / (1 - t) = -(t / (1 - t)) := by ring
        rw [hdiv_neg] at h
        linarith
      -- So 1/(-log(1-t)) ≥ (1-t)/t
      have hinv_lb : (1 - t) / t ≤ 1 / (-Real.log (1 - t)) := by
        rw [div_le_div_iff₀ ht_pos hneg_log]
        calc (1 - t) * -Real.log (1 - t) = -Real.log (1 - t) * (1 - t) := by ring
          _ ≤ t / (1 - t) * (1 - t) := mul_le_mul_of_nonneg_right hneg_log_ub (le_of_lt h1mt_pos)
          _ = t := by field_simp
          _ = 1 * t := by ring
      -- Thus 1/log(1-t) = -1/(-log(1-t)) ≤ -(1-t)/t
      have hlog1m_ne : Real.log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
      calc 1 / Real.log (1 - t) = -(1 / -Real.log (1 - t)) := by field_simp [hlog1m_ne]
        _ ≤ -((1 - t) / t) := neg_le_neg hinv_lb
        _ = -(1 - t) / t := by ring
    -- Combine bounds
    have halt' : Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) =
        1 / Real.log (1 + t) + 1 / Real.log (1 - t) := by
      have hlog_prod : Real.log (1 - t^2) = Real.log (1 - t) + Real.log (1 + t) := by
        have h : 1 - t^2 = (1 - t) * (1 + t) := by ring
        rw [h, Real.log_mul (ne_of_gt h1mt_pos) (ne_of_gt h1pt_pos)]
      rw [hlog_prod]
      field_simp [ne_of_gt hlog1p_pos, ne_of_lt hlog1m_neg]
    rw [halt']
    calc 1 / Real.log (1 + t) + 1 / Real.log (1 - t)
        ≤ (1 + t) / t + (-(1 - t) / t) := add_le_add hlog1p_inv_ub hlog1m_inv_ub
      _ = ((1 + t) - (1 - t)) / t := by ring
      _ = 2 * t / t := by ring
      _ = 2 := by field_simp

/-! ### Summary of proven results for the li(2) computation

**All proofs complete (no sorry):**
- `log1pTaylorPoly_aeval_eq_sum`: Polynomial evaluation equals Taylor sum
- `log1p_taylor_remainder_bound`: Taylor remainder is bounded by Lagrange form
- `tmLog1p_correct`: Taylor model correctness for log(1+x)
- `symmetricLogCombination_alt`: g(t) = log(1-t²)/(log(1+t)·log(1-t))
- `tendsto_log_one_add_div_self`: log(1+t)/t → 1 as t → 0⁺
- `tendsto_log_one_sub_div_self`: log(1-t)/t → -1 as t → 0⁺
- `tendsto_log_one_sub_sq_div_sq`: log(1-t²)/t² → -1 as t → 0⁺
- `symmetricLogCombination_tendsto_one`: g(t) → 1 as t → 0⁺ (KEY RESULT)
- `symmetricLogCombination_bounded`: |g(t)| ≤ 2 for t ∈ (0, 1/2]
  - Case 1: near 0, uses continuity and limit → 1
  - Case 2: on [ε, 1/2], uses log bounds: log(1+t) ≥ t/(1+t), -log(1-t) ≤ t/(1-t)

The key insight for the li(2) computation is `symmetricLogCombination_tendsto_one`:
the symmetric combination g(t) = 1/log(1+t) + 1/log(1-t) has a REMOVABLE
SINGULARITY at t=0, with limit 1. This makes the principal value integral
for li(2) = ∫₀¹ g(t) dt absolutely convergent.
-/

end TaylorModel

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
