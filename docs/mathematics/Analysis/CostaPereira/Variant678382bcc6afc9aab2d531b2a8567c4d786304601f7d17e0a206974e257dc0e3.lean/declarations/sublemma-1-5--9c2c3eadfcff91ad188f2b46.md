# sublemma_1_5

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
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20a6a314-3ecd-78b4-4d6a-4d4058041471",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c763d19-4931-cb88-b953-bc88ed3dba3b",
  "kind": "theorem",
  "lexical_name": "sublemma_1_5",
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
  "slug": "sublemma-1-5--9c2c3eadfcff91ad188f2b46",
  "source": {
    "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 232,
    "path": "GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2c3eadfcff91ad188f2b462606a0e810a1485632e6a9993ad49e51e89a8982",
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

Occurrence: `result:2c763d19-4931-cb88-b953-bc88ed3dba3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublemma_1_5 {x : ℝ} (hx : 0 < x) :
    ψ (x ^ (1 / 3 : ℝ)) =
      ∑' (k : ℕ),
          θ (x ^ (1 / (6 * ((k.succ : ℕ) : ℝ) - 3))) +
        ∑' (k : ℕ),
          θ (x ^ (1 / (6 * ((k.succ : ℕ) : ℝ)))) := by
  rw [sublemma_1_2 hx (3 : ℝ)]
  have eventually_theta_eq_zero {x : ℝ} (hx : 0 < x) :
      ∀ᶠ k : ℕ in atTop, θ (x ^ (1 / (3 * (2 * k : ℝ)))) = 0 := by
    have h_lim : Tendsto (fun k : ℕ ↦ x ^ (1 / (6 * k) : ℝ)) atTop (nhds 1) := by
      simpa using tendsto_const_nhds.rpow
        (tendsto_inv_atTop_nhds_zero_nat.comp (tendsto_id.nsmul_atTop (by norm_num)))
        (by grind)
    filter_upwards [h_lim.eventually (gt_mem_nhds one_lt_two)] with k hk
      using theta_eq_zero_of_lt_two <| by
        ring_nf at *
        linarith
  have theta_one_equals_zero : θ 1 = 0 := by
    norm_num [theta, sum_filter, sum_range_succ]
  have summable_of_eventually_zero {f : ℕ → ℝ} (hf : ∀ᶠ n in atTop, f n = 0) :
      Summable f := by
    rw [eventually_atTop] at hf
    obtain ⟨N, hN⟩ := hf
    exact summable_nat_add_iff N |>.1 <|
      ⟨_, hasSum_single 0 fun k hk ↦ hN _ <| by grind⟩
  have summable_even {x : ℝ} {hx : 0 < x} :
      Summable (fun k : ℕ ↦ θ (x ^ (1 / (3 * (2 * k : ℝ))))) :=
    summable_of_eventually_zero (eventually_theta_eq_zero hx)
  have summable_test_odd {x : ℝ} (hx : 0 < x) :
      Summable (fun k : ℕ ↦ θ (x ^ (1 / (3 * (↑(2 * k + 1) : ℝ))))) := by
    apply summable_of_eventually_zero
    have : Tendsto (fun k : ℕ ↦ (2 * (k : ℝ) + 1)) atTop atTop :=
      tendsto_atTop_add_const_right _ 1
        (tendsto_natCast_atTop_atTop.const_mul_atTop zero_lt_two)
    have : Tendsto (fun k : ℕ ↦ (3 * (2 * (k : ℝ) + 1))⁻¹) atTop (nhds 0) :=
      tendsto_inv_atTop_zero.comp <|
        this.const_mul_atTop (by positivity)
    have : Tendsto (fun k : ℕ ↦ x ^ (1 / (3 * (↑(2 * k + 1) : ℝ)))) atTop (nhds 1) := by
      simp only [one_div]
      rw [show
        (fun k : ℕ ↦ x ^ (3 * (↑(2 * k + 1) : ℝ))⁻¹) =
        (fun k : ℕ ↦ x ^ (3 * (2 * (k : ℝ) + 1))⁻¹) from
        funext fun k ↦ by
          congr 1
          push_cast
          ring]
      convert tendsto_const_nhds.rpow this (Or.inl hx.ne') using 1
      simp only [rpow_zero]
    filter_upwards [this.eventually (gt_mem_nhds one_lt_two)] with k hk
    exact theta_eq_zero_of_lt_two hk
  have : Summable (fun n : ℕ ↦ θ (x ^ (1 / (3 * n) : ℝ))) := by
    apply summable_of_eventually_zero
    have h_lim : Tendsto (fun n : ℕ ↦ x ^ (1 / (3 * n) : ℝ)) atTop (nhds 1) := by
      simpa using tendsto_const_nhds.rpow
        (tendsto_inv_atTop_nhds_zero_nat.comp (tendsto_id.nsmul_atTop (by positivity)))
        (by grind)
    filter_upwards [h_lim.eventually (gt_mem_nhds one_lt_two)] with n hn
    exact theta_eq_zero_of_lt_two hn
  have step1 :
      ∑' k : ℕ, θ (x ^ (1 / (3 * k.succ) : ℝ)) =
        ∑' n : ℕ, θ (x ^ (1 / (3 * n) : ℝ)) := by
    rw [Summable.tsum_eq_zero_add this, cast_zero, mul_zero, div_zero, rpow_zero,
      theta_one_equals_zero, zero_add]
  rw [step1]
  set f : ℕ → ℝ := fun n ↦ θ (x ^ ((1 : ℝ) / (3 * n))) with hf
  have : Summable (f ∘ (2 * ·)) := by
    convert summable_even (x := x) (hx := hx) using 2 with k
    simp only [hf, Function.comp_apply]
    congr 2
    push_cast
    ring
  have split := tsum_even_add_odd this <| hf ▸ summable_test_odd hx
  simp only [hf, cast_mul, cast_ofNat, cast_add, cast_one] at split
  rw [← split, add_comm]
  congr 1
  · exact tsum_congr fun k ↦ by
      congr 2
      push_cast
      ring
  · rw [Summable.tsum_eq_zero_add (summable_even (x := x) (hx := hx))]
    simp only [mul_zero, cast_zero, div_zero, rpow_zero, theta_one_equals_zero, zero_add]
    exact tsum_congr fun k ↦ by
      congr 2
      push_cast
      ring

@[blueprint
  "costa-pereira-sublemma-1-6"
  (title := "Costa-Pereira Sublemma 1.6")
  (statement :=
    /-- For every $x > 0$ we have
    \[
    \psi(x) - \theta(x)
      = \psi(x^{1/2}) + \psi(x^{1/3})
      + \sum_{k \geqslant 1} \theta(x^{1/(6k-1)})
      - \sum_{k \geqslant 1} \theta(x^{1/(6k)})
      + \sum_{k \geqslant 1} \theta(x^{1/(6k+1)}).
    \]
    -/)
  (proof :=
    /-- Follows from Sublemma
    \ref{costa-pereira-sublemma-1-4} and Sublemma
    \ref{costa-pereira-sublemma-1-5}. -/)
  (latexEnv := "sublemma")
  (discussion := 681)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73160e7e432ce719b4d444282b5e711942fbabac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
