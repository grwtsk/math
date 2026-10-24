# exists_preimage_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b1a5814-166d-7fca-e711-8e3858f6e6dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f29dee07-34a9-0b64-b91c-1cd02bb83803",
  "kind": "theorem",
  "lexical_name": "exists_preimage_norm_le",
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
  "slug": "exists-preimage-norm-le--2dc81be0a017c1cc364220e8",
  "source": {
    "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dc81be0a017c1cc364220e8a9638cd998c24160fd5fff1f0369687e372026a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f29dee07-34a9-0b64-b91c-1cd02bb83803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_preimage_norm_le (surj : Surjective f) :
    ∃ C > 0, ∀ y, ∃ x, f x = y ∧ ‖x‖ ≤ C * ‖y‖ := by
  obtain ⟨C, C0, hC⟩ := exists_approx_preimage_norm_le f surj
  /- Second step of the proof: starting from `y`, we want an exact preimage of `y`. Let `g y` be
    the approximate preimage of `y` given by the first step, and `h y = y - f(g y)` the part that
    has no preimage yet. We will iterate this process, taking the approximate preimage of `h y`,
    leaving only `h^2 y` without preimage yet, and so on. Let `u n` be the approximate preimage
    of `h^n y`. Then `u` is a converging series, and by design the sum of the series is a
    preimage of `y`. This uses completeness of `E`. -/
  choose g hg using hC
  let h y := y - f (g y)
  have hle : ∀ y, ‖h y‖ ≤ 1 / 2 * ‖y‖ := by
    intro y
    rw [← dist_eq_norm, dist_comm]
    exact (hg y).1
  refine' ⟨2 * C + 1, by linarith, fun y => _⟩
  have hnle : ∀ n : ℕ, ‖h^[n] y‖ ≤ (1 / 2) ^ n * ‖y‖ := by
    intro n
    induction' n with n IH
    · simp only [one_div, Nat.zero_eq, one_mul, iterate_zero_apply, pow_zero, le_rfl]
    · rw [iterate_succ']
      apply le_trans (hle _) _
      rw [pow_succ, mul_assoc]
      apply mul_le_mul_of_nonneg_left IH
      norm_num
  let u n := g (h^[n] y)
  have ule : ∀ n, ‖u n‖ ≤ (1 / 2) ^ n * (C * ‖y‖) := by
    intro n
    apply le_trans (hg _).2 _
    calc
      C * ‖h^[n] y‖ ≤ C * ((1 / 2) ^ n * ‖y‖) := mul_le_mul_of_nonneg_left (hnle n) C0
      _ = (1 / 2) ^ n * (C * ‖y‖) := by ring
  have sNu : Summable fun n => ‖u n‖ := by
    refine' summable_of_nonneg_of_le (fun n => norm_nonneg _) ule _
    exact Summable.mul_right _ (summable_geometric_of_lt_1 (by norm_num) (by norm_num))
  have su : Summable u := summable_of_summable_norm sNu
  let x := tsum u
  have x_ineq : ‖x‖ ≤ (2 * C + 1) * ‖y‖ :=
    calc
      ‖x‖ ≤ ∑' n, ‖u n‖ := norm_tsum_le_tsum_norm sNu
      _ ≤ ∑' n, (1 / 2) ^ n * (C * ‖y‖) :=
        (tsum_le_tsum ule sNu (Summable.mul_right _ summable_geometric_two))
      _ = (∑' n, (1 / 2) ^ n) * (C * ‖y‖) := tsum_mul_right
      _ = 2 * C * ‖y‖ := by rw [tsum_geometric_two, mul_assoc]
      _ ≤ 2 * C * ‖y‖ + ‖y‖ := (le_add_of_nonneg_right (norm_nonneg y))
      _ = (2 * C + 1) * ‖y‖ := by ring
  have fsumeq : ∀ n : ℕ, f (∑ i in Finset.range n, u i) = y - h^[n] y := by
    intro n
    induction' n with n IH
    · simp [f.map_zero]
    · rw [sum_range_succ, f.map_add, IH, iterate_succ_apply', sub_add]
  have : Tendsto (fun n => ∑ i in Finset.range n, u i) atTop (𝓝 x) := su.hasSum.tendsto_sum_nat
  have L₁ : Tendsto (fun n => f (∑ i in Finset.range n, u i)) atTop (𝓝 (f x)) :=
    (f.continuous.tendsto _).comp this
  simp only [fsumeq] at L₁
  have L₂ : Tendsto (fun n => y - h^[n] y) atTop (𝓝 (y - 0)) := by
    refine' tendsto_const_nhds.sub _
    rw [tendsto_iff_norm_tendsto_zero]
    simp only [sub_zero]
    refine' squeeze_zero (fun _ => norm_nonneg _) hnle _
    rw [← zero_mul ‖y‖]
    refine' (_root_.tendsto_pow_atTop_nhds_0_of_lt_1 _ _).mul tendsto_const_nhds <;> norm_num
  have feq : f x = y - 0 := tendsto_nhds_unique L₁ L₂
  rw [sub_zero] at feq
  exact ⟨x, feq, x_ineq⟩
#align continuous_linear_map.exists_preimage_norm_le ContinuousLinearMap.exists_preimage_norm_le

/-- The Banach open mapping theorem: a surjective bounded linear map between Banach spaces is
open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95553dc8bb4a821bea29b8e20eb347fc66a63ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
