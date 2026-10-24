# sum_abs_R_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1808,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e428600-a39d-18ed-ed80-75bda03cbe67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8dc69e5-3f94-a71e-2618-0bf67a67b661",
  "kind": "lemma",
  "lexical_name": "sum_abs_R_isLittleO",
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
  "slug": "sum-abs-r-islittleo--d28e26b14dda32deac7bb753",
  "source": {
    "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1847,
    "line": 1808,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28e26b14dda32deac7bb7539a85a9761a14a553a3f0309a33505b17b1f0313f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8dc69e5-3f94-a71e-2618-0bf67a67b661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1808–1847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_abs_R_isLittleO : (fun x : ℝ => ∑ k ∈ Iic ⌊x⌋₊, |R (x / k)|) =o[atTop] (fun x => x * log x) := by
  have h_eps : ∀ ε > 0, ∃ x₀ : ℝ, ∀ x ≥ x₀, (∑ k ∈ Finset.Icc 1 ⌊x⌋₊, |R (x / k)|) ≤ ε * x * Real.log x := by
    intro ε hε_pos
    obtain ⟨A, hA⟩ : ∃ A : ℝ, 0 < A ∧ ∀ y ≥ A, |R y| ≤ (ε / 2) * y := by
      have := R_isLittleO
      rw [Asymptotics.isLittleO_iff] at this
      norm_num at *
      exact Exists.elim (this (half_pos hε_pos)) fun A hA => ⟨Max.max A 1, by positivity, fun y hy => by simpa only [abs_of_nonneg (by linarith [le_max_right A 1] : 0 ≤ y)] using hA y (le_trans (le_max_left A 1) hy)⟩
    obtain ⟨C_A, hC_A⟩ : ∃ C_A : ℝ, ∀ y ∈ Set.Icc 0 A, |R y| ≤ C_A := by
      exact ⟨_, fun y hy => R_locally_bounded A hA.1.le |> Classical.choose_spec |> fun h => h y hy⟩
    have h_sum_bound : ∀ x ≥ max A 2, (∑ k ∈ Finset.Icc 1 ⌊x⌋₊, |R (x / k)|) ≤ (ε / 2) * x * (Real.log x + 1) + C_A * x := by
      intros x hx
      have h_sum_bound : ∀ y ≥ 1, |R y| ≤ (ε / 2) * y + C_A := by
        intros y hy
        by_cases hyA : y ≥ A
        · exact le_add_of_le_of_nonneg (hA.right y hyA) (by
          exact le_trans (abs_nonneg _) (hC_A 0 ⟨by norm_num, by linarith⟩))
        · exact le_add_of_nonneg_of_le (by
          positivity) (hC_A y ⟨by
          linarith, by
            linarith⟩)
      have := sum_bounded_of_linear_bound (show 0 ≤ ε / 2 by positivity) (show 0 ≤ C_A by exact le_trans (abs_nonneg _) (hC_A 0 ⟨by norm_num, by linarith⟩)) (fun y hy => h_sum_bound y hy) x (by linarith [le_max_right A 2]) ; aesop
    obtain ⟨x₀, hx₀⟩ : ∃ x₀ : ℝ, ∀ x ≥ x₀, (ε / 2) * (Real.log x + 1) + C_A ≤ ε * Real.log x := by
      exact ⟨Real.exp (2 * (C_A / ε + 1)), fun x hx => by nlinarith [Real.log_exp (2 * (C_A / ε + 1)), Real.log_le_log (by positivity) hx, mul_div_cancel₀ C_A hε_pos.ne']⟩
    exact ⟨Max.max x₀ (Max.max A 2), fun x hx => le_trans (h_sum_bound x (le_trans (le_max_right _ _) hx)) (by nlinarith [hx₀ x (le_trans (le_max_left _ _) hx), le_max_right x₀ (Max.max A 2), le_max_left x₀ (Max.max A 2), le_max_right A 2, le_max_left A 2, Real.log_nonneg (show x ≥ 1 by linarith [le_max_right x₀ (Max.max A 2), le_max_left x₀ (Max.max A 2), le_max_right A 2, le_max_left A 2])])⟩
  rw [Asymptotics.isLittleO_iff_tendsto']
  · have h_sum_eq : ∀ x : ℝ, x ≥ 1 → (∑ k ∈ Finset.Iic ⌊x⌋₊, |R (x / k)|) = (∑ k ∈ Finset.Icc 1 ⌊x⌋₊, |R (x / k)|) := by
      intro x hx
      have h0 : (0 : ℕ) ∈ Finset.Iic ⌊x⌋₊ := by simp [Finset.mem_Iic]
      have hI : (Finset.Iic ⌊x⌋₊).erase 0 = Finset.Icc 1 ⌊x⌋₊ := by
        ext n
        simp [Finset.mem_Iic, Finset.mem_Icc, Nat.one_le_iff_ne_zero, and_comm]
      rw [← Finset.sum_erase_add (Finset.Iic ⌊x⌋₊) (fun k => |R (x / k)|) h0]
      simp [hI, R, Psi, Chebyshev.psi_eq_sum_Icc]
    rw [Metric.tendsto_nhds]
    simp +zetaDelta only [gt_iff_lt, ge_iff_le, dist_zero_right, norm_div, norm_eq_abs, norm_mul,
    eventually_atTop] at *
    intro ε hε; obtain ⟨x₀, hx₀⟩ := h_eps (ε / 2) (half_pos hε) ; use Max.max x₀ 2; intro x hx; rw [abs_of_nonneg (Finset.sum_nonneg fun _ _ => abs_nonneg _), abs_of_nonneg (by linarith [le_max_right x₀ 2]), abs_of_nonneg (Real.log_nonneg (by linarith [le_max_right x₀ 2]))] ; rw [div_lt_iff₀] <;> nlinarith [hx₀ x (le_trans (le_max_left x₀ 2) hx), Real.log_pos (by linarith [le_max_right x₀ 2] : 1 < x), mul_pos (by linarith [le_max_right x₀ 2] : 0 < x) (Real.log_pos (by linarith [le_max_right x₀ 2] : 1 < x)), h_sum_eq x (by linarith [le_max_right x₀ 2])]
  · filter_upwards [Filter.eventually_gt_atTop 1] with x hx hx' using absurd hx' (by nlinarith [Real.log_pos hx])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean#L1808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c16c416971c366503f7f5ff829e7c163fa4c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
