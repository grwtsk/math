# O2_estimate_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eac72cdd-3f78-58c3-0fa4-b3826592ebdc",
  "kind": "lemma",
  "lexical_name": "O2_estimate_chi",
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
  "slug": "o2-estimate-chi--5e9dac338aadf7b0d5e2cf0a",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 569,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e9dac338aadf7b0d5e2cf0a7d6e6ad53ee8b532d083d213f890b0f14946303c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac72cdd-3f78-58c3-0fa4-b3826592ebdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma O2_estimate_chi (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2)
    (hc1 : ∀ n, ‖c n‖ ≤ 1) (X T : ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
        * AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg|
      ≤ (∫ x, Φ x ^ 2) / Real.log 2 * (∑ n ∈ primeRange X, acoef n) ^ 2 := by
  have hW : 0 ≤ ∫ x, Φ x ^ 2 := integral_nonneg fun x => sq_nonneg _
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hper : ∀ n ∈ primeRange X, ∀ m ∈ primeRange X,
      |(acoef n * ‖c n‖) * (acoef m * ‖c m‖)
          * AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg|
        ≤ acoef n * acoef m * ((∫ x, Φ x ^ 2) / Real.log 2) := by
    intro n hn m hm
    rw [abs_mul, abs_mul, abs_of_nonneg (mul_nonneg (acoef_nonneg n) (norm_nonneg _)),
      abs_of_nonneg (mul_nonneg (acoef_nonneg m) (norm_nonneg _))]
    rcases acoef_eq_zero_or_two_le hn with h0 | hn2
    · simp [h0]
    rcases acoef_eq_zero_or_two_le hm with h0 | hm2
    · simp [h0]
    have hwn : acoef n * ‖c n‖ ≤ acoef n := by
      calc acoef n * ‖c n‖ ≤ acoef n * 1 := mul_le_mul_of_nonneg_left (hc1 n) (acoef_nonneg n)
        _ = acoef n := mul_one _
    have hwm : acoef m * ‖c m‖ ≤ acoef m := by
      calc acoef m * ‖c m‖ ≤ acoef m * 1 := mul_le_mul_of_nonneg_left (hc1 m) (acoef_nonneg m)
        _ = acoef m := mul_one _
    have hyn : Real.log 2 ≤ Real.log n := Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
    have hym : Real.log 2 ≤ Real.log m := Real.log_le_log (by norm_num) (by exact_mod_cast hm2)
    have hpos : 0 < Real.log n + Real.log m := by linarith
    have hA : |AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg|
        ≤ (∫ x, Φ x ^ 2) / Real.log 2 := by
      calc |AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg|
          ≤ 2 / (Real.log n + Real.log m) * ∫ x, Φ x ^ 2 := abs_AplusPh_le hΦ hΦ2 hpos _ _
        _ ≤ 2 / (2 * Real.log 2) * ∫ x, Φ x ^ 2 := by gcongr; linarith
        _ = (∫ x, Φ x ^ 2) / Real.log 2 := by field_simp
    exact mul_le_mul (mul_le_mul hwn hwm (mul_nonneg (acoef_nonneg m) (norm_nonneg _))
      (acoef_nonneg n)) hA (abs_nonneg _) (mul_nonneg (acoef_nonneg n) (acoef_nonneg m))
  refine le_trans (Finset.abs_sum_le_sum_abs _ _) ?_
  refine le_trans (Finset.sum_le_sum fun n _ => Finset.abs_sum_le_sum_abs _ _) ?_
  refine le_trans (Finset.sum_le_sum fun n hn => Finset.sum_le_sum fun m hm => hper n hn m hm) ?_
  refine le_of_eq ?_
  rw [sq, Finset.sum_mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun n _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  ring

end Estimates

/-! ## 𝒪₁ for P_{X,c} -/

section O1Chi
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- 𝒪₁ for P_{X,c} (mirror of O1_bound; weights a_k‖c k‖ ≤ a_k, phases arg(c k) ride into
MV_real_ph): |Σ_{n≠m} w_n w_m A⁻_ph| ≤ 16·C·(∫Φ²)·ΣΛ². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
