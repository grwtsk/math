# normalized_det_nonpos_of_consecutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab83bd9-0202-d021-3e76-62769d60203c",
  "kind": "theorem",
  "lexical_name": "normalized_det_nonpos_of_consecutive",
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
  "slug": "normalized-det-nonpos-of-consecutive--dde7c64276ccf6bc4daf7599",
  "source": {
    "blob": "2c15fd99f5fd87392ea876afdbc065cba83ab20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 240,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dde7c64276ccf6bc4daf7599dda8e96aa5051a2824d851ff844f9791ef0a6e5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab83bd9-0202-d021-3e76-62769d60203c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_det_nonpos_of_consecutive
    (A B : ℕ → ℝ) (hA : ∀ n, A (n + 1) < A n)
    (hdet : ∀ n,
      Matrix.det !![1, 1, 1;
        A n, A (n + 1), A (n + 2);
        B n, B (n + 1), B (n + 2)] ≤ 0)
    {i j k : ℕ} (hij : i < j) (hjk : j < k) :
    Matrix.det !![1, 1, 1; A i, A j, A k; B i, B j, B k] ≤ 0 := by
  have hanti : StrictAnti A := strictAnti_nat_of_succ_lt hA
  have hS := discreteSlope_antitone_of_consecutive_det A B hA hdet
  have hAij : 0 < A i - A j := sub_pos.mpr (hanti hij)
  have hAjk : 0 < A j - A k := sub_pos.mpr (hanti hjk)
  have hsumAij := sum_Ico_discreteDrop A hij.le
  have hsumBij := sum_Ico_slope_mul_drop A B hA hij.le
  have hsumAjk := sum_Ico_discreteDrop A hjk.le
  have hsumBjk := sum_Ico_slope_mul_drop A B hA hjk.le
  have hlo : discreteSlope A B j * (A i - A j) ≤ B i - B j := by
    rw [← hsumAij, ← hsumBij, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hnj : n ≤ j := (Finset.mem_Ico.mp hn).2.le
    exact mul_le_mul_of_nonneg_right (hS hnj) (sub_nonneg.mpr (hA n).le)
  have hhi : B j - B k ≤ discreteSlope A B j * (A j - A k) := by
    rw [← hsumAjk, ← hsumBjk, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hjn : j ≤ n := (Finset.mem_Ico.mp hn).1
    exact mul_le_mul_of_nonneg_right (hS hjn) (sub_nonneg.mpr (hA n).le)
  have hs1 : discreteSlope A B j ≤ (B i - B j) / (A i - A j) :=
    (le_div_iff₀ hAij).mpr (by simpa [mul_comm] using hlo)
  have hs2 : (B j - B k) / (A j - A k) ≤ discreteSlope A B j :=
    (div_le_iff₀ hAjk).mpr hhi
  have hblocks : (B j - B k) / (A j - A k) ≤
      (B i - B j) / (A i - A j) := hs2.trans hs1
  have hsec : (B k - B j) / (A k - A j) ≤
      (B j - B i) / (A j - A i) := by
    rw [show B k - B j = -(B j - B k) by ring,
      show A k - A j = -(A j - A k) by ring,
      show B j - B i = -(B i - B j) by ring,
      show A j - A i = -(A i - A j) by ring]
    simpa only [neg_div_neg_eq] using hblocks
  have hd1 : A j - A i < 0 := sub_neg.mpr (hanti hij)
  have hd2 : A k - A j < 0 := sub_neg.mpr (hanti hjk)
  rw [det_fin_three_normalized_eq_secants _ _ _ _ _ _
    (ne_of_lt hd1) (ne_of_lt hd2)]
  exact mul_nonpos_of_nonneg_of_nonpos
    (mul_nonneg_of_nonpos_of_nonpos hd1.le hd2.le)
    (sub_nonpos.mpr hsec)

/-- Row normalization by the first column, preserving the positive row factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c15fd99f5fd87392ea876afdbc065cba83ab20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
