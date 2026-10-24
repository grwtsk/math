# log1p_taylor_remainder_bound

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
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ace2df99-de0b-f979-440b-2b0d0f7e37ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f18ec76d-e59d-2b0e-303a-2a16bc0df465",
  "kind": "theorem",
  "lexical_name": "log1p_taylor_remainder_bound",
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
  "slug": "log1p-taylor-remainder-bound--53c94e445494ef5639194d7a",
  "source": {
    "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c94e445494ef5639194d7a9b0949f5de9868879f4a899df2a8a0191ea218a1",
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

Occurrence: `result:f18ec76d-e59d-2b0e-303a-2a16bc0df465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log1p_taylor_remainder_bound (J : IntervalRat) (n : ℕ) (z : ℝ)
    (hdom : J.lo > -1) (hz : z ∈ J) :
    |Real.log (1 + z) -
      Polynomial.aeval z ((log1pTaylorPoly n).map (algebraMap ℚ ℝ))| ≤
    (log1pLagrangeRemainder J n : ℝ) := by
  -- The polynomial evaluation equals the Taylor sum
  rw [log1pTaylorPoly_aeval_eq_sum]
  set a : ℝ := (J.lo : ℝ)
  set b : ℝ := (J.hi : ℝ)
  have ha_gt_neg1 : -1 < a := by
    simp only [a]
    have h : ((-1 : ℚ) : ℝ) = (-1 : ℝ) := by norm_num
    rw [← h]
    exact Rat.cast_lt.mpr hdom
  have hz_mem : z ∈ Set.Icc a b := hz

  -- Extend the interval to contain 0 (the center)
  set a' : ℝ := min a 0
  set b' : ℝ := max b 0
  have ha'_gt_neg1 : -1 < a' := lt_min ha_gt_neg1 (by norm_num)
  have h1pa'_pos : 0 < 1 + a' := by linarith
  have ha'_le_0 : a' ≤ 0 := min_le_right a 0
  have h0_le_b' : 0 ≤ b' := le_max_right b 0

  have hz_mem' : z ∈ Set.Icc a' b' :=
    ⟨le_trans (min_le_left a 0) hz_mem.1, le_trans hz_mem.2 (le_max_left b 0)⟩

  -- Apply Taylor's theorem with remainder bound
  have hlog1p_smooth : ContDiffOn ℝ (n + 1) (fun x => Real.log (1 + x)) (Set.Ioi (-1)) := by
    apply (Real.contDiffOn_log.comp _ fun x hx => by simp [Set.mem_Ioi] at hx ⊢; linarith).of_le le_top
    exact (contDiff_const.add contDiff_id).contDiffOn

  have hI'_sub : Set.Icc a' b' ⊆ Set.Ioi (-1 : ℝ) := fun y hy => lt_of_lt_of_le ha'_gt_neg1 hy.1

  set M' : ℝ := n.factorial / (1 + a')^(n+1)
  have hM'_nonneg : 0 ≤ M' := div_nonneg (Nat.cast_nonneg _) (pow_nonneg (le_of_lt h1pa'_pos) _)

  have hM'_bound : ∀ y ∈ Set.Icc a' b', ‖iteratedDeriv (n + 1) (fun x => Real.log (1 + x)) y‖ ≤ M' := by
    intro y hy
    have hy_gt_neg1 : -1 < y := lt_of_lt_of_le ha'_gt_neg1 hy.1
    have h1py_pos : 0 < 1 + y := by linarith
    rw [iteratedDeriv_log1p (Nat.succ_ne_zero n) hy_gt_neg1]
    simp only [Real.norm_eq_abs, Nat.succ_sub_one, zpow_neg, zpow_natCast, abs_mul]
    rw [abs_pow, abs_neg, abs_one, one_pow, one_mul, abs_of_nonneg (Nat.cast_nonneg _),
        abs_inv, abs_pow, abs_of_pos h1py_pos, ← div_eq_mul_inv]
    exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) (pow_pos h1pa'_pos _)
      (pow_le_pow_left₀ (le_of_lt h1pa'_pos) (by linarith [hy.1]) _)

  have hTaylor := LeanCert.Core.taylor_remainder_bound_on isOpen_Ioi hI'_sub
    ha'_le_0 h0_le_b' hlog1p_smooth hM'_bound hM'_nonneg z hz_mem'
  simp only [sub_zero, Real.norm_eq_abs] at hTaylor

  -- Now show M' * |z|^(n+1) / (n+1)! ≤ log1pLagrangeRemainder J n
  calc |Real.log (1 + z) - ∑ i ∈ Finset.range (n + 1),
          iteratedDeriv i (fun x => Real.log (1 + x)) 0 / ↑i.factorial * z ^ i|
      ≤ M' * |z| ^ (n + 1) / (n + 1).factorial := hTaylor
    _ ≤ (log1pLagrangeRemainder J n : ℝ) := by
        unfold log1pLagrangeRemainder
        have hdom' : ¬(1 + J.lo ≤ 0) := by linarith
        simp only [hdom', ite_false]
        -- Key insight: 1+a' = min(1, 1+J.lo) = min_denom
        have h1pa'_eq : (1 + a' : ℝ) = min 1 (1 + a) := by
          simp only [a', a, min_def]
          split_ifs with h1 h2
          · -- h1: J.lo ≤ 0, h2: 1 ≤ 1 + J.lo → J.lo = 0
            have hJlo_zero : (J.lo : ℝ) = 0 := by linarith
            rw [hJlo_zero]; ring
          · ring  -- h1: J.lo ≤ 0, ¬(1 ≤ 1 + J.lo)
          · ring  -- ¬(J.lo ≤ 0), 1 ≤ 1 (true since 0 is the second arg)
          · -- ¬(J.lo ≤ 0), ¬(1 ≤ 1) - impossible
            exfalso; linarith
        -- M' * |z|^(n+1) / (n+1)! = |z|^(n+1) / ((n+1) * (1+a')^(n+1))
        have hstep : M' * |z|^(n+1) / (n+1).factorial = |z|^(n+1) / ((n+1) * (1 + a')^(n+1)) := by
          simp only [M', Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
          have h1pa'_pow_ne : (1 + a')^(n+1) ≠ 0 := pow_ne_zero _ (ne_of_gt h1pa'_pos)
          have hn1_ne : (n + 1 : ℝ) ≠ 0 := by positivity
          have hnfact_ne : (n.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
          field_simp [h1pa'_pow_ne, hn1_ne, hnfact_ne]
        rw [hstep]
        -- |z| ≤ radius = max |J.lo| |J.hi|
        set radius : ℚ := max (|J.lo|) (|J.hi|)
        have habs_z_le : |z| ≤ (radius : ℝ) := by
          simp only [radius, Rat.cast_max, Rat.cast_abs]
          have hz' := hz
          simp only [IntervalRat.mem_def] at hz'
          rcases le_or_gt 0 z with hz_nonneg | hz_neg
          · rw [abs_of_nonneg hz_nonneg]
            apply le_max_of_le_right
            have hhi_nonneg : 0 ≤ (J.hi : ℝ) := le_trans hz_nonneg hz'.2
            rw [abs_of_nonneg hhi_nonneg]
            exact hz'.2
          · rw [abs_of_neg hz_neg]
            apply le_max_of_le_left
            have hJlo_neg : (J.lo : ℝ) < 0 := lt_of_le_of_lt hz'.1 hz_neg
            rw [abs_of_neg hJlo_neg]
            linarith [hz'.1]
        -- Now the bound follows
        simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_mul, Rat.cast_natCast,
          Rat.cast_min, Rat.cast_add, Rat.cast_one]
        rw [h1pa'_eq]
        have hmin_pos : (0 : ℝ) < min 1 (1 + a) := lt_min one_pos (by linarith)
        have hdenom_pos : 0 < (n + 1 : ℝ) * (min 1 (1 + a))^(n+1) := mul_pos (by positivity) (pow_pos hmin_pos _)
        apply div_le_div_of_nonneg_right _ (le_of_lt hdenom_pos)
        exact pow_le_pow_left₀ (abs_nonneg _) habs_z_le _

/-- log(1+z) ∈ (tmLog1p J n).evalSet z for all z in J when J.lo > -1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
