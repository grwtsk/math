# sublemma_1_7

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61f662d1-a6dc-c525-3dd0-19dfdba23f55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b35bd66-f3a9-0716-6b3d-0052243cc60b",
  "kind": "theorem",
  "lexical_name": "sublemma_1_7",
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
  "slug": "sublemma-1-7--d5fb24d8accfadcb2cea5098",
  "source": {
    "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 367,
    "path": "GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5fb24d8accfadcb2cea50986a511a986655bbdb6dc8d757e7a13ddecaa5305a",
  "verification": {
    "reference": "docs/verification/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b35bd66-f3a9-0716-6b3d-0052243cc60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublemma_1_7 {x : ℝ} (hx : 0 < x) :
    ψ x - θ x ≤ ψ (x ^ (1 / 2 : ℝ)) +
      ψ (x ^ (1 / 3 : ℝ)) +
      ∑' (k : ℕ),
        θ (x ^ (1 / (5 * ((k.succ : ℕ) : ℝ)))) := by
  have h_split :
      ψ x - θ x ≤ ψ (x ^ (1 / 2 : ℝ)) +
        ψ (x ^ (1 / 3 : ℝ)) +
        ∑' k : ℕ,
          θ (x ^ (1 / (6 * (k.succ : ℝ) - 1 : ℝ))) := by
    rw [sublemma_1_6 hx]
    norm_num [sub_add]
    refine Summable.tsum_le_tsum ?_ ?_ ?_
    · field_simp
      intro i
      apply_rules [sum_le_sum_of_subset_of_nonneg]
      · intro p hp
        have hp1 := mem_filter.mp hp |>.1
        have hp2 := mem_filter.mp hp |>.2
        refine mem_filter.mpr
          ⟨mem_Ioc.mpr ⟨?_, ?_⟩, hp2⟩
        · exact mem_Ioc.mp hp1 |>.1
        · refine (mem_Ioc.mp hp1 |>.2).trans (Nat.floor_mono ?_)
          refine Real.rpow_le_rpow_of_exponent_le ?_ (by
            gcongr
            linarith)
          show 1 ≤ x
          by_contra! h
          rw [Nat.floor_eq_zero.mpr <| Real.rpow_lt_one hx.le h <| by positivity] at hp
          simp_all
      · exact fun _ _ _ ↦ Real.log_nonneg <| Nat.one_le_cast.2 <| Nat.Prime.pos <| by simp_all
    · have h_theta_zero : ∀ᶠ k : ℕ in atTop, θ (x ^ (1 / (6 * (k + 1) + 1 : ℝ))) = 0 := by
        have h_theta_zero :
            Tendsto (fun k : ℕ ↦ x ^ (1 / (6 * (k + 1) + 1 : ℝ))) atTop (nhds 1) := by
          simpa using tendsto_const_nhds.rpow
            (tendsto_inv_atTop_zero.comp <|
              tendsto_atTop_mono (fun k ↦ by linarith) tendsto_natCast_atTop_atTop)
            (by simp only [ne_eq, hx.ne', not_false_eq_true, Or.inl])
        filter_upwards [h_theta_zero.eventually (gt_mem_nhds one_lt_two)] with k hk
        rw [theta_eq_zero_of_lt_two hk]
      obtain ⟨N, hN⟩ := eventually_atTop.mp h_theta_zero
      rw [← summable_nat_add_iff N]
      exact ⟨_, hasSum_single 0 fun n hn ↦ by simpa using hN (n + N) (by omega)⟩
    · refine summable_of_ne_finset_zero (s := range (floor (Real.logb 2 x) + 1)) fun b hb ↦ ?_
      rw [theta_eq_zero_of_lt_two]
      rw [← log_lt_log_iff (by positivity) zero_lt_two, Real.log_rpow hx]
      field_simp
      contrapose! hb
      refine mem_range.mpr <| Nat.lt_succ_of_le <| Nat.le_floor ?_
      rw [Real.logb, le_div_iff₀ <| Real.log_pos <| by norm_num]
      nlinarith [Real.log_pos one_lt_two]
  refine h_split.trans (add_le_add_right (Summable.tsum_le_tsum ?_ ?_ ?_) _)
  · intro i
    apply_rules [sum_le_sum_of_subset_of_nonneg]
    · intro p hp
      refine mem_filter.mpr
        ⟨mem_Ioc.mpr
          ⟨mem_Ioc.mp (mem_filter.mp hp |>.1) |>.1,
           ?_⟩,
         mem_filter.mp hp |>.2⟩
      refine (mem_Ioc.mp
        (mem_filter.mp hp |>.1) |>.2).trans
        (Nat.floor_mono ?_)
      have : 1 ≤ x := by
        by_contra! h
        have hpos :
            (0 : ℝ) < 1 / (6 * (i.succ : ℝ) - 1) :=
          one_div_pos.mpr <| by
            linarith [show (i.succ : ℝ) ≥ 1 by simp]
        rw [Nat.floor_eq_zero.mpr <|
          rpow_lt_one hx.le h hpos] at hp
        simp_all
      refine rpow_le_rpow_of_exponent_le this ?_
      rw [div_le_div_iff₀] <;>
        nlinarith [show (i.succ : ℝ) ≥ 1 by simp]
    · exact fun _ _ _ ↦ log_nonneg <| Nat.one_le_cast.2 <| Nat.Prime.pos <| by simp_all
  · refine summable_of_ne_finset_zero (s := range (floor (logb 2 x) + 1)) ?_
    simp only [mem_range, Order.lt_add_one_iff, not_le, succ_eq_add_one, cast_add,
      cast_one, one_div]
    intro k hk
    rw [theta_eq_zero_of_lt_two]
    rw [← log_lt_log_iff (rpow_pos_of_pos hx ..) zero_lt_two, log_rpow hx,
      inv_mul_lt_iff₀ (by linarith)]
    have := Nat.lt_of_floor_lt hk
    rw [logb, div_lt_iff₀ (log_pos one_lt_two)] at this
    nlinarith [Real.log_pos one_lt_two]
  · refine summable_of_ne_finset_zero
      (s := range (Nat.floor (log x / Real.log 5) + 1)) fun k hk ↦ ?_
    rw [theta_eq_zero_of_lt_two]
    norm_num
    rw [← log_lt_log_iff (by positivity) (by positivity), log_rpow hx, inv_mul_eq_div,
      div_mul_eq_mul_div, div_lt_iff₀] <;> norm_num at *
    · have := Nat.lt_of_floor_lt hk
      rw [div_lt_iff₀ (by positivity)] at this
      rw [show (5 : ℝ) = 2 ^ 2 * 1.25 by norm_num,
        log_mul, Real.log_pow] at this <;>
        norm_num at *
      nlinarith [Real.log_pos one_lt_two,
        log_le_log (by norm_num)
          (by norm_num : (5 : ℝ) / 4 ≤ 2)]
    · positivity

@[blueprint
  "costa-pereira-sublemma-1-8"
  (title := "Costa-Pereira Sublemma 1.8")
  (statement :=
    /-- For every $x > 0$ we have
    \[
    \psi(x) - \theta(x) \geqslant \psi(x^{1/2})
      + \psi(x^{1/3})
      + \sum_{k \geqslant 1} \theta(x^{1/7k})
    \]
    -/)
  (proof :=
    /-- Follows from Sublemma
    \ref{costa-pereira-sublemma-1-6} and the fact
    that $\theta$ is an increasing function. -/)
  (latexEnv := "sublemma")
  (discussion := 683)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73160e7e432ce719b4d444282b5e711942fbabac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
