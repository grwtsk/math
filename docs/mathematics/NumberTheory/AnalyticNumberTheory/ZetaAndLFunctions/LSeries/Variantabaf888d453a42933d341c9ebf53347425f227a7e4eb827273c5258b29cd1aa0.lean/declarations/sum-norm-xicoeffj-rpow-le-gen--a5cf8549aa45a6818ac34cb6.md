# sum_norm_xiCoeffJ_rpow_le_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a6297d5-fc21-c866-775c-a972a0a0e7f0",
  "kind": "lemma",
  "lexical_name": "sum_norm_xiCoeffJ_rpow_le_gen",
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
  "slug": "sum-norm-xicoeffj-rpow-le-gen--a5cf8549aa45a6818ac34cb6",
  "source": {
    "blob": "de7239b112ddb32aced751ba00cc0adde0b356cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5cf8549aa45a6818ac34cb6ae4fe7bba18f0831885e9328c469eaba2d21bbff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6297d5-fc21-c866-775c-a972a0a0e7f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_norm_xiCoeffJ_rpow_le_gen (hσ₀ : 1 < σ₀) {Λs : ℂ} (hΛ : R0sig σ₀ ≤ ‖Λs‖) (X : ℕ) :
    ∑ N ∈ Ioc 0 X, ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀) ≤ (4 / (σ₀ - 1)) * Asig (sigAux σ₀) / ‖Λs‖ := by
  set ε : ℝ := (σ₀ - 1) / 2 with hε
  have hε0 : 0 < ε := by rw [hε]; linarith
  set σ' : ℝ := sigAux σ₀ with hσ'
  have hσ'1 : 1 < σ' := one_lt_sigAux hσ₀
  have hsplitexp : ε + -σ₀ = -σ' := by rw [hε, hσ', sigAux]; ring
  have hΛpos : 0 < ‖Λs‖ := lt_of_lt_of_le (R0sig_pos σ₀) hΛ
  set x : ℝ := ‖Λs‖⁻¹ with hxdef
  have hx0 : 0 ≤ x := by positivity
  set A : ℝ := Asig σ' with hA
  have hA0 : 0 ≤ A := Asig_nonneg σ'
  have hxA : x * A ≤ 1 / 2 := by
    rw [hxdef, inv_mul_le_iff₀ hΛpos]; unfold R0sig at hΛ; rw [← hσ', ← hA] at hΛ; linarith
  have hxA0 : 0 ≤ x * A := mul_nonneg hx0 hA0
  have hpt : ∀ N ∈ Ioc 0 X, ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀)
      ≤ (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * ((Λ ^ (i + 1)) N * (N : ℝ) ^ (-σ')) := by
    intro N hN
    have hN0 : (0:ℝ) < N := by exact_mod_cast (mem_Ioc.mp hN).1
    have hΩ : Ω N ≤ X := (cardFactors_le_self N).trans (mem_Ioc.mp hN).2
    have h1 := norm_xiCoeffJ_le Λs N
    have hF0 : 0 ≤ Fmaj x N := Fmaj_nonneg hx0 N
    have hr0 : (0:ℝ) ≤ (N:ℝ) ^ (-σ₀) := Real.rpow_nonneg hN0.le _
    have hlog : Real.log N ≤ (1 / ε) * (N : ℝ) ^ ε := by
      have := Real.log_le_rpow_div (Nat.cast_nonneg N) hε0
      rw [div_eq_mul_one_div, mul_comm] at this
      exact this
    have hsplit : (N : ℝ) ^ ε * (N : ℝ) ^ (-σ₀) = (N : ℝ) ^ (-σ') := by
      rw [← Real.rpow_add hN0, hsplitexp]
    calc ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀)
        ≤ (Real.log N * Fmaj x N) * (N : ℝ) ^ (-σ₀) := mul_le_mul_of_nonneg_right h1 hr0
      _ ≤ ((1 / ε) * (N : ℝ) ^ ε * Fmaj x N) * (N : ℝ) ^ (-σ₀) :=
          mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hlog hF0) hr0
      _ = (1 / ε) * (Fmaj x N * ((N : ℝ) ^ ε * (N : ℝ) ^ (-σ₀))) := by ring
      _ = (1 / ε) * (Fmaj x N * (N : ℝ) ^ (-σ')) := by rw [hsplit]
      _ = (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * ((Λ ^ (i + 1)) N * (N : ℝ) ^ (-σ')) := by
          rw [Fmaj_eq_sum_range_of_le x hΩ, sum_mul]
          congr 1; exact sum_congr rfl fun i _ => by ring
  have hε' : 0 ≤ 1 / ε := by positivity
  calc ∑ N ∈ Ioc 0 X, ‖xiCoeffJ Λs N‖ * (N : ℝ) ^ (-σ₀)
      ≤ ∑ N ∈ Ioc 0 X, (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * ((Λ ^ (i + 1)) N * (N : ℝ) ^ (-σ')) :=
        sum_le_sum hpt
    _ = (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * ∑ N ∈ Ioc 0 X, (Λ ^ (i + 1)) N * (N : ℝ) ^ (-σ') := by
        rw [← mul_sum, sum_comm]
        congr 1; exact sum_congr rfl fun i _ => by rw [mul_sum]
    _ ≤ (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * (∑ n ∈ Ioc 0 X, Λ n * (n : ℝ) ^ (-σ')) ^ (i + 1) := by
        refine mul_le_mul_of_nonneg_left (sum_le_sum fun i _ => ?_) hε'
        exact mul_le_mul_of_nonneg_left
          (sum_Ioc_pow_apply_le (SubmultWeight.rpow_neg σ') vonMangoldt_nonneg' X i) (pow_nonneg hx0 _)
    _ ≤ (1 / ε) * ∑ i ∈ range X, x ^ (i + 1) * A ^ (i + 1) := by
        refine mul_le_mul_of_nonneg_left (sum_le_sum fun i _ => ?_) hε'
        exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (sum_nonneg fun n _ => lam_rpow_nonneg' σ' n)
          (sum_lam_rpow_le_Asig hσ'1 X) _) (pow_nonneg hx0 _)
    _ = (1 / ε) * ((x * A) * ∑ i ∈ range X, (x * A) ^ i) := by
        congr 1
        rw [mul_sum]
        exact sum_congr rfl fun i _ => by rw [mul_pow]; ring
    _ ≤ (1 / ε) * ((x * A) * 2) := by
        refine mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left ?_ hxA0) hε'
        calc ∑ i ∈ range X, (x * A) ^ i ≤ ∑ i ∈ range X, (1 / 2 : ℝ) ^ i :=
              sum_le_sum fun i _ => pow_le_pow_left₀ hxA0 hxA i
          _ ≤ 2 := sum_geometric_two_le X
    _ = (4 / (σ₀ - 1)) * A / ‖Λs‖ := by
        rw [hxdef, hε]
        have : σ₀ - 1 ≠ 0 := by linarith
        field_simp
        ring

/-- summability on the line σ₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7239b112ddb32aced751ba00cc0adde0b356cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
