# isNonarchimedean_smoothingFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7875b45-14c0-04da-23ee-9f9d966a2129",
  "kind": "theorem",
  "lexical_name": "isNonarchimedean_smoothingFun",
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
  "slug": "isnonarchimedean-smoothingfun--000ab54f209a63dc3d16bb6c",
  "source": {
    "blob": "78335489fe106e5b36b836341da5d119cb2a2e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000ab54f209a63dc3d16bb6c0a6a9cc21a89e04ca66b9b4ad855ad1f46b32d1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7875b45-14c0-04da-23ee-9f9d966a2129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNonarchimedean_smoothingFun (hμ1 : μ 1 ≤ 1) (hna : IsNonarchimedean μ) :
    IsNonarchimedean (smoothingFun μ) := by
  -- Fix `x, y : R`.
  intro x y
  have hn : ∀ n : ℕ, ∃ m < n + 1,
      μ ((x + y) ^ (n : ℕ)) ^ (1 / (n : ℝ)) ≤ (μ (x ^ m) * μ (y ^ (n - m : ℕ))) ^ (1 / (n : ℝ)) :=
    fun n => RingSeminorm.exists_index_pow_le μ hna x y n
  /- For each `n : ℕ`, we find `mu n` and `nu n` such that `mu n + nu n = n` and
    `μ ((x + y) ^ n) ^ (1 / n) ≤ (μ (x ^ (mu n)) * μ (y ^ (nu n))) ^ (1 / n)`. -/
  let mu : ℕ → ℕ := fun n => mu μ hn n
  set nu : ℕ → ℕ := fun n => n - mu n with hnu
  have hmu_le : ∀ n : ℕ, mu n ≤ n := fun n => mu_le μ hn n
  have hmu_bdd : ∀ n : ℕ, (mu n : ℝ) / n ∈ Set.Icc (0 : ℝ) 1 := fun n => mu_bdd μ hn n
  have hs : Bornology.IsBounded (Set.Icc (0 : ℝ) 1) := Metric.isBounded_Icc 0 1
  /- Since `0 ≤ (mu n) / n ≤ 1` for all `n`, we can find a subsequence `(ψ n) ⊆ ℕ` such that the
    limit of `mu (ψ n) / ψ n` as `n` tends to infinity exists. We denote this limit by `a`. -/
  obtain ⟨a, a_in, ψ, hψ_mono, hψ_lim⟩ := tendsto_subseq_of_bounded hs hmu_bdd
  rw [closure_Icc] at a_in
  /- The limit of `nu (ψ n) / ψ n` as `n` tends to infinity also exists, and it is equal to
    `b := 1 - a` -/
  set b := 1 - a with hb
  have hb_lim : Tendsto ((fun n : ℕ => (nu n : ℝ) / ↑n) ∘ ψ) atTop (𝓝 b) := by
    apply Tendsto.congr' _ (Tendsto.const_sub 1 hψ_lim)
    simp only [EventuallyEq, Function.comp_apply, eventually_atTop, ge_iff_le]
    use 1
    intro m hm
    have h0 : (ψ m : ℝ) ≠ 0 := cast_ne_zero.mpr (_root_.ne_of_gt (lt_of_le_of_lt (_root_.zero_le _)
      (hψ_mono (Nat.pos_of_ne_zero (one_le_iff_ne_zero.mp hm)))))
    rw [← div_self h0, ← sub_div, cast_sub (hmu_le _)]
  have b_in : b ∈ Set.Icc (0 : ℝ) 1 := unitInterval.mem_iff_one_sub_mem.mp a_in
  have hnu_le : ∀ n : ℕ, nu n ≤ n := fun n => by simp only [hnu, tsub_le_self]
  have hx : limsup (fun n : ℕ => μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ))) atTop ≤
      smoothingFun μ x ^ a := limsup_mu_le μ hμ1 hmu_le a_in hψ_mono hψ_lim
  have hy : limsup (fun n : ℕ => μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ))) atTop ≤
      smoothingFun μ y ^ b :=
    limsup_mu_le μ hμ1 hnu_le b_in hψ_mono hb_lim
  have hxy : limsup
      (fun n => μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ)) * μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ))) atTop ≤
        smoothingFun μ x ^ a * smoothingFun μ y ^ b := by
    have hxy' :
      limsup (fun n : ℕ => μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ)) * μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ)))
        atTop ≤ limsup (fun n : ℕ => μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ))) atTop *
          limsup (fun n : ℕ => μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ))) atTop :=
      limsup_mul_le (Frequently.of_forall (fun n => rpow_nonneg (apply_nonneg _ _) _))
        (μ_bddAbove μ hμ1 hmu_le x ψ).isBoundedUnder_of_range
        (Eventually.of_forall (fun n => rpow_nonneg (apply_nonneg _ _) _))
        (μ_bddAbove μ hμ1 hnu_le y ψ).isBoundedUnder_of_range
    have h_bdd : IsBoundedUnder LE.le atTop fun n : ℕ => μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ)) :=
      RingSeminorm.isBoundedUnder μ hμ1 hnu_le ψ
    apply le_trans hxy' (mul_le_mul hx hy (le_limsup_of_frequently_le (Frequently.of_forall
      (fun n ↦ rpow_nonneg (apply_nonneg μ _) _)) h_bdd)
        (rpow_nonneg (smoothingFun_nonneg μ hμ1 x) _))
  apply le_of_forall_sub_le
  /- Fix `ε > 0`. We first show that `smoothingFun μ x ^ a * smoothingFun μ y ^ b + ε ≤
    max (smoothingFun μ x) (smoothingFun μ y) + ε`. -/
  intro ε hε
  rw [sub_le_iff_le_add]
  have h_mul : smoothingFun μ x ^ a * smoothingFun μ y ^ b + ε ≤
      max (smoothingFun μ x) (smoothingFun μ y) + ε :=  by
    rw [max_def]
    split_ifs with h
    · rw [add_le_add_iff_right]
      apply le_trans (mul_le_mul_of_nonneg_right
        (rpow_le_rpow (smoothingFun_nonneg μ hμ1 _) h a_in.1)
        (rpow_nonneg (smoothingFun_nonneg μ hμ1 _) _))
      rw [hb, ← rpow_add_of_nonneg (smoothingFun_nonneg μ hμ1 _) a_in.1
        (sub_nonneg.mpr a_in.2), add_sub, add_sub_cancel_left, rpow_one]
    · rw [add_le_add_iff_right]
      apply le_trans (mul_le_mul_of_nonneg_left
        (rpow_le_rpow (smoothingFun_nonneg μ hμ1 _) (le_of_lt (not_le.mp h)) b_in.1)
        (rpow_nonneg (smoothingFun_nonneg μ hμ1 _) _))
      rw [hb, ← rpow_add_of_nonneg (smoothingFun_nonneg μ hμ1 _) a_in.1
        (sub_nonneg.mpr a_in.2), add_sub, add_sub_cancel_left, rpow_one]
  apply le_trans _ h_mul
  /- We then show that there exists some natural number `N` such that
    `μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ)) * μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ)) <
      smoothingFun μ x ^ a * smoothingFun μ y ^ b + ε`. -/
  have hex : ∃ n : PNat, μ (x ^ mu (ψ n)) ^ (1 / (ψ n : ℝ)) * μ (y ^ nu (ψ n)) ^ (1 / (ψ n : ℝ)) <
      smoothingFun μ x ^ a * smoothingFun μ y ^ b + ε :=
    Filter.exists_lt_of_limsup_le (bddAbove_range_mul (μ_bddAbove μ hμ1 hmu_le _ _)
      (fun n => rpow_nonneg (apply_nonneg _ _) _) (μ_bddAbove μ hμ1 hnu_le _ _)
        fun n => rpow_nonneg (apply_nonneg _ _) _).isBoundedUnder_of_range hxy hε
  obtain ⟨N, hN⟩ := hex
  /- By definition of `smoothingFun`, and applying the inequality `hN`, it suffices to show that
    `μ ((x + y) ^ ψ N) ^ (1 / ψ N) ≤ μ (x ^ mu (ψ N)) ^ (1 / ψ N) * μ (y ^ nu ψ N) ^ (1 / ψ N)`. -/
  apply le_trans (ciInf_le (smoothingSeminormSeq_bddBelow μ _)
    ⟨ψ N, lt_of_le_of_lt (_root_.zero_le (ψ 0)) (hψ_mono.lt_iff_lt.mpr N.pos)⟩)
  apply le_trans _ hN.le
  simpa [PNat.mk_coe, hnu, ← mul_rpow (apply_nonneg μ _) (apply_nonneg μ _)] using
    mu_property μ hn (ψ N)

end IsNonarchimedean

/-- If `μ 1 ≤ 1` and `μ` is nonarchimedean, then `smoothingFun` is a ring seminorm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78335489fe106e5b36b836341da5d119cb2a2e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
