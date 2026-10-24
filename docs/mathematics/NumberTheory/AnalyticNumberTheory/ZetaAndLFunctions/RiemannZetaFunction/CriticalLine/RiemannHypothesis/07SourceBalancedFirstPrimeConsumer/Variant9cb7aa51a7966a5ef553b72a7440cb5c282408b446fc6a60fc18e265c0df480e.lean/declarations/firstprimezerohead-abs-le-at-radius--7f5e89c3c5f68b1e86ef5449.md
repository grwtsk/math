# firstPrimeZeroHead_abs_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5a4b02e-ac6b-5f58-a35d-b6788f202655",
  "kind": "theorem",
  "lexical_name": "firstPrimeZeroHead_abs_le_at_radius",
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
  "slug": "firstprimezerohead-abs-le-at-radius--7f5e89c3c5f68b1e86ef5449",
  "source": {
    "blob": "8b0de87051175e8f3bfd8230c0623ce7e634130a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f5e89c3c5f68b1e86ef54495fbc838148a12600ca79d76eba45309007dee67f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a4b02e-ac6b-5f58-a35d-b6788f202655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeZeroHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |firstPrimeZeroHead A| ≤ firstPrimeZeroHeadCost Q := by
  have hA : 91 ≤ A := hQ.trans hQA
  have hpQ : 0 < Q := by linarith
  let k : ℝ := Real.log 4 * (1 / 2 + 15 / Q ^ 2)
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2))
      volume 0 (Real.log 7) := (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc 0 (Real.log 7),
      ‖balancedFirstPrimeDensity t * minusCorrelationWeight A t‖ ≤
        k * Real.exp (t / 2) := by
    intro t ht
    have hF := balanced_density_abs_le_nonnegative ht.1.le
    have hkernel := actual_minus_kernel_error_fixed_head A t hA ht.1.le ht.2
    change |minusCorrelationWeight A t + 1 / 2| ≤ 15 / A ^ 2 at hkernel
    have hratio : (15 : ℝ) / A ^ 2 ≤ 15 / Q ^ 2 :=
      div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos hpQ) (by nlinarith)
    have hW : |minusCorrelationWeight A t| ≤ 1 / 2 + 15 / Q ^ 2 := by
      calc
        _ = |(minusCorrelationWeight A t + 1 / 2) - 1 / 2| := by congr 1; ring
        _ ≤ |minusCorrelationWeight A t + 1 / 2| + |(1 / 2 : ℝ)| := abs_sub _ _
        _ ≤ 15 / A ^ 2 + 1 / 2 := by
          rw [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
          linarith
        _ ≤ _ := by linarith
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (Real.log 4 * Real.exp (t / 2)) * (1 / 2 + 15 / Q ^ 2) :=
        mul_le_mul hF hW (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)) (ae_of_all _ hp) hb
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * k * Real.exp (t / 2))
      (k * Real.exp (t / 2)) t := by
    convert! (((hasDerivAt_id t).div_const (2 : ℝ)).exp.const_mul (2 * k)) using 1
    dsimp
    ring
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hb, he7,
    zero_div, Real.exp_zero, mul_one, Real.norm_eq_abs] at hn
  change |firstPrimeZeroHead A| ≤ _ at hn
  have he : 2 * k * Real.sqrt 7 - 2 * k = firstPrimeZeroHeadCost Q := by
    unfold firstPrimeZeroHeadCost
    dsimp [k]
    ring
  rw [he] at hn
  exact hn

/-- A supplied actual signed tail now controls the original first-prime-plus-main sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant9cb7aa51a7966a5ef553b72a7440cb5c282408b446fc6a60fc18e265c0df480e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b0de87051175e8f3bfd8230c0623ce7e634130a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
