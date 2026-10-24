# O2_estimate_w

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98c23bc3-a731-a3b5-f4dd-7c2cfbe97730",
  "kind": "lemma",
  "lexical_name": "O2_estimate_w",
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
  "slug": "o2-estimate-w--46d8dcce97ee2a11e7033099",
  "source": {
    "blob": "287aac26488973ac9803facd5f914ae4e86e1a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d8dcce97ee2a11e703309943c1ca8fe2583fb1bac4d8f536c45659d4d20487",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98c23bc3-a731-a3b5-f4dd-7c2cfbe97730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma O2_estimate_w (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) (X T : ℝ)
    {w : ℕ → ℝ} (hw0 : ∀ n, 0 ≤ w n) (hw1 : w 1 = 0) (φ : ℕ → ℝ) :
    |∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
        w n * w m * AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)|
      ≤ (∫ x, Φ x ^ 2) / Real.log 2 * (∑ n ∈ primeRange X, w n) ^ 2 := by
  have hW : 0 ≤ ∫ x, Φ x ^ 2 := integral_nonneg fun x => sq_nonneg _
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hper : ∀ n ∈ primeRange X, ∀ m ∈ primeRange X,
      |w n * w m * AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)|
        ≤ w n * w m * ((∫ x, Φ x ^ 2) / Real.log 2) := by
    intro n hn m hm
    rw [abs_mul, abs_mul, abs_of_nonneg (hw0 n), abs_of_nonneg (hw0 m)]
    rcases w_eq_zero_or_two_le hw1 hn with h0 | hn2
    · simp [h0]
    rcases w_eq_zero_or_two_le hw1 hm with h0 | hm2
    · simp [h0]
    have hyn : Real.log 2 ≤ Real.log n := Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
    have hym : Real.log 2 ≤ Real.log m := Real.log_le_log (by norm_num) (by exact_mod_cast hm2)
    have hpos : 0 < Real.log n + Real.log m := by linarith
    have hA : |AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)|
        ≤ (∫ x, Φ x ^ 2) / Real.log 2 := by
      calc |AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)|
          ≤ 2 / (Real.log n + Real.log m) * ∫ x, Φ x ^ 2 := abs_AplusPh_le hΦ hΦ2 hpos _ _
        _ ≤ 2 / (2 * Real.log 2) * ∫ x, Φ x ^ 2 := by gcongr; linarith
        _ = (∫ x, Φ x ^ 2) / Real.log 2 := by field_simp
    exact mul_le_mul_of_nonneg_left hA (mul_nonneg (hw0 n) (hw0 m))
  refine le_trans (Finset.abs_sum_le_sum_abs _ _) ?_
  refine le_trans (Finset.sum_le_sum fun n _ => Finset.abs_sum_le_sum_abs _ _) ?_
  refine le_trans (Finset.sum_le_sum fun n hn => Finset.sum_le_sum fun m hm => hper n hn m hm) ?_
  refine le_of_eq ?_
  rw [sq, Finset.sum_mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun n _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  ring

/-- H-MV size bookkeeping for a general weight (mirror of MV_size_le₂): if |M_n| ≤ W on the range then
  C·√(Σ (w_n M_n)²·2n)·√(Σ w_n²·2n) ≤ 2CW·Σ w_n² n   (both slot orders). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2ee4f205873f2bd85477bc0b119ad34dea2c12afa7ea0154e6f5d6f8e9fed68e.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287aac26488973ac9803facd5f914ae4e86e1a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
