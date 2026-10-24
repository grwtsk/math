# exists_norm_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9205da-2c20-adc5-a988-3ef959666af4",
  "kind": "lemma",
  "lexical_name": "exists_norm_apply_le",
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
  "slug": "exists-norm-apply-le--cc70a6e17bbf8acf5b7e27e0",
  "source": {
    "blob": "0b09a102199a6c17eb6245549d860fab56b5a63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 85,
    "path": "GRWTSK/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc70a6e17bbf8acf5b7e27e00753f36b558cca53e52cd308b517f0162598c251",
  "verification": {
    "reference": "docs/verification/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9205da-2c20-adc5-a988-3ef959666af4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_norm_apply_le (f : A₁ →ₚ[ℂ] A₂) : ∃ C : ℝ≥0, ∀ a, ‖f a‖ ≤ C * ‖a‖ := by
  /- It suffices to only consider for positive `a`, by decomposing `a` into positive and negative
     parts of the real and imaginary parts. -/
  suffices h_nonneg : ∃ C : ℝ≥0, ∀ a, 0 ≤ a → ‖f a‖ ≤ C * ‖a‖ by
    obtain ⟨C, hmain⟩ := h_nonneg
    refine ⟨4 * C, fun x ↦ ?_⟩
    obtain ⟨y, hy_nonneg, hy_norm, hy⟩ := CStarAlgebra.exists_sum_four_nonneg x
    conv_lhs => rw [hy]
    simp only [map_sum, map_smul, NNReal.coe_add]
    apply norm_sum_le _ _ |>.trans
    simp only [norm_smul, norm_pow, norm_I, one_pow, one_mul]
    apply Finset.sum_le_sum (g := fun _ ↦ C * ‖x‖) (fun i _ ↦ ?_) |>.trans <| by simp [mul_assoc]
    apply hmain _ (hy_nonneg i) |>.trans
    simp only
    gcongr
    exact hy_norm i
  -- Let's proceed by contradiction
  by_contra! hcontra
  -- Given `n : ℕ`, we can always choose a positive element of norm one with `2 ^ (2 * n) < ‖f x‖`
  have (n : ℕ) : ∃ x, 0 ≤ x ∧ ‖x‖ = 1 ∧ 2 ^ (2 * n) < ‖f x‖ := by
    obtain ⟨hx₁, hx₂⟩ := Classical.choose_spec (hcontra (2 ^ (2 * n)))
    set x := Classical.choose (hcontra (2 ^ (2 * n)))
    have hx := (eq_zero_or_norm_pos x).resolve_left (fun hx ↦ by simp_all)
    refine ⟨‖x‖⁻¹ • x, smul_nonneg (by positivity) hx₁, ?_, ?_⟩
    · simp [norm_smul, inv_mul_cancel₀ hx.ne']
    · simpa [norm_smul] using (lt_inv_mul_iff₀' hx).mpr hx₂
  -- Let `x n` be a sequence of nonnegative elements such that `‖x n‖ = 1` and `‖f (x n)‖ ≥ 4 ^ n`.
  choose x hx using this
  simp only [forall_and] at hx
  obtain ⟨hx_nonneg, hx_norm, hx⟩ := hx
  -- `∑ n, 2 ^ (-n) • x n` converges
  have x_summable : Summable fun n : ℕ => (2 : ℝ) ^ (-(n : ℤ)) • x n := by
    refine Summable.of_norm ?_
    have : (2 : ℝ)⁻¹ < 1 := by norm_num
    simp [norm_smul, hx_norm, ← inv_pow, this]
  -- There is some `n` such that `‖f (∑' m, 2 ^ (-m) • x m)‖ < 2 ^ n`
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ‖f (∑' (n : ℕ), (2 : ℝ) ^ (-(n : ℤ)) • x n)‖ < (2 : ℝ) ^ n :=
    tendsto_pow_atTop_atTop_of_one_lt one_lt_two |>.eventually_gt_atTop _
      |>.exists
  -- But `2 ^ n ≤ ‖f (2 ^ (-n) • x n)‖ ≤ ‖f (∑' m, 2 ^ (-m) • x m)‖`, which is a contradiction.
  apply hn.not_le
  trans ‖f ((2 : ℝ) ^ (-n : ℤ) • x n)‖
  · have := hx n |>.le
    rw [pow_mul', sq] at this
    simpa [norm_smul] using (le_inv_mul_iff₀' (show 0 < (2 : ℝ) ^ n by positivity)).mpr this
  · have (m : ℕ) : 0 ≤ ((2 : ℝ) ^ (-(m : ℤ)) • x m) := smul_nonneg (by positivity) (hx_nonneg m)
    refine CStarAlgebra.norm_le_norm_of_nonneg_of_le (f.map_nonneg (this n)) ?_
    gcongr
    exact x_summable.le_tsum n fun m _ ↦ this m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PositiveLinearMap/Variant1478d79fcee284729431a9aa49bd08957173af44b49be2a3a662f2577f8c2432.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b09a102199a6c17eb6245549d860fab56b5a63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
