# sum_vonMangoldt_div_mul_log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abc8a1d1-4392-1362-166e-9a3ceca889bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffade0f0-d1c5-add5-ae93-878105682ea4",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_mul_log_pow",
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
  "slug": "sum-vonmangoldt-div-mul-log-pow--3c07b9484bd06fc2c1d5a329",
  "source": {
    "blob": "9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c07b9484bd06fc2c1d5a3298cfd0ba2b1e5b7a9aa3a238b6e0f5be31f2234c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffade0f0-d1c5-add5-ae93-878105682ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_mul_log_pow (j : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    |(∑ n ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ n / n * Real.log n ^ j) - u ^ (j + 1) / (j + 1)|
      ≤ KM * (j + 1) * (1 + u) ^ j := by
  have hK := KM_nonneg
  have hderiv : ∀ v ∈ Set.Icc 0 u, HasDerivAt (fun v : ℝ => v ^ j) ((fun v : ℝ => (j : ℝ) * v ^ (j - 1)) v) v :=
    fun v _ => by simpa using (hasDerivAt_id' v).fun_pow j
  have hcont : ContinuousOn (fun v : ℝ => (j : ℝ) * v ^ (j - 1)) (Set.Icc 0 u) := by fun_prop
  have hstep := mertens_step hu hderiv hcont
  rw [integral_pow] at hstep
  simp only [zero_pow (Nat.succ_ne_zero j), sub_zero] at hstep
  have h1 : |u ^ j| ≤ (1 + u) ^ j := by
    rw [abs_of_nonneg (pow_nonneg hu j)]; exact pow_le_pow_left₀ hu (by linarith) j
  have h2 : ∫ v in (0:ℝ)..u, |(j : ℝ) * v ^ (j - 1)| ≤ j * (1 + u) ^ j := by
    have hint : IntervalIntegrable (fun v : ℝ => |(j : ℝ) * v ^ (j - 1)|) MeasureTheory.volume 0 u := by
      apply Continuous.intervalIntegrable; fun_prop
    calc ∫ v in (0:ℝ)..u, |(j : ℝ) * v ^ (j - 1)| ≤ ∫ _ in (0:ℝ)..u, (j : ℝ) * (1 + u) ^ (j - 1) := by
          refine intervalIntegral.integral_mono_on hu hint intervalIntegrable_const fun v hv => ?_
          rw [abs_of_nonneg (mul_nonneg (Nat.cast_nonneg j) (pow_nonneg hv.1 _))]
          exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hv.1 (by linarith [hv.2]) _) (Nat.cast_nonneg j)
      _ = (j : ℝ) * (u * (1 + u) ^ (j - 1)) := by
          rw [intervalIntegral.integral_const, smul_eq_mul, sub_zero]; ring
      _ ≤ j * (1 + u) ^ j := by
          rcases j with _ | m
          · simp
          · refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
            rw [Nat.add_sub_cancel, pow_succ' (1 + u) m]
            exact mul_le_mul_of_nonneg_right (by linarith) (by positivity)
  have e : ((j : ℝ) + 1) = ((j + 1 : ℕ) : ℝ) := by push_cast; ring
  calc |(∑ n ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ n / n * Real.log n ^ j) - u ^ (j + 1) / (j + 1)|
      ≤ KM * (|u ^ j| + ∫ v in (0:ℝ)..u, |(j : ℝ) * v ^ (j - 1)|) := by exact_mod_cast hstep
    _ ≤ KM * ((1 + u) ^ j + j * (1 + u) ^ j) := mul_le_mul_of_nonneg_left (add_le_add h1 h2) hK
    _ = KM * (j + 1) * (1 + u) ^ j := by ring

/-! ### the Mertens induction for Tk -/

/-- the polynomial integral ∫₀ᵘ v (u − v)^N dv = u^{N+2}/((N+1)(N+2)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Asymp/Variantdff9936aad093b516fcf283c47f1501722a2d5c13d99114a0dea87dc21ff6ca5.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8a36520d32d1ef8fed9e0bb77c79640cd6edd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
