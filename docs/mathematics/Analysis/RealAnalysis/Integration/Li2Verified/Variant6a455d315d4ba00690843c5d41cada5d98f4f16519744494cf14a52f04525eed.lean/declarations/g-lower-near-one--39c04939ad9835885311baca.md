# g_lower_near_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46c0fc54-474e-b9ef-f38b-f5b664d3321b",
  "kind": "theorem",
  "lexical_name": "g_lower_near_one",
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
  "slug": "g-lower-near-one--39c04939ad9835885311baca",
  "source": {
    "blob": "db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 252,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c04939ad9835885311baca654ee163630ee0597d363e2ded4de92750721149",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46c0fc54-474e-b9ef-f38b-f5b664d3321b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_lower_near_one (t : ℝ) (ht_lo : 99999/100000 ≤ t) (ht_lt : t < 1) :
    (13:ℝ)/10 < g t := by
  have ht_pos : 0 < t := by linarith
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1pt_le2 : 1 + t ≤ 2 := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1mt_le : 1 - t ≤ 1/100000 := by linarith
  have hlog1p_pos : 0 < Real.log (1 + t) := Real.log_pos (by linarith : 1 < 1 + t)
  have hlog1p_le : Real.log (1 + t) ≤ Real.log 2 := Real.log_le_log h1pt_pos h1pt_le2
  have hinv1p : 1 / Real.log 2 ≤ 1 / Real.log (1 + t) := by
    have hlog2_pos : 0 < Real.log 2 := Real.log_pos (by norm_num : 1 < (2:ℝ))
    exact one_div_le_one_div_of_le hlog1p_pos hlog1p_le
  have hinv1p_gt : 14/10 < 1 / Real.log (1 + t) := lt_of_lt_of_le inv_log_2_gt hinv1p
  have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg h1mt_pos (by linarith : 1 - t < 1)
  have hlog1m_le : Real.log (1 - t) ≤ Real.log (1/100000) := Real.log_le_log h1mt_pos h1mt_le
  have hlog_inv : Real.log ((1:ℝ)/100000) = -Real.log 100000 := by
    have h100k_pos : (0:ℝ) < 100000 := by norm_num
    rw [one_div, Real.log_inv (100000:ℝ)]
  have hlog100k : Real.log (100000:ℝ) = 5 * Real.log 10 := by
    have h : (100000:ℝ) = 10^5 := by norm_num
    rw [h, Real.log_pow]
    ring
  have hlog10_gt : (23:ℝ)/10 < Real.log 10 := log_10_gt
  have hlog100k_gt : (115:ℝ)/10 < Real.log 100000 := by
    rw [hlog100k]
    calc (115:ℝ)/10 = 5 * (23/10) := by norm_num
      _ < 5 * Real.log 10 := by nlinarith
  have hlog1m_lt : Real.log (1 - t) < -(115/10) := by
    calc Real.log (1 - t) ≤ Real.log (1/100000) := hlog1m_le
      _ = -Real.log 100000 := hlog_inv
      _ < -(115/10) := by linarith
  have hinv1m_gt : -(1:ℝ)/10 < 1 / Real.log (1 - t) := by
    have hneg115 : -(115/10 : ℝ) < 0 := by norm_num
    have hlog1m_ne : Real.log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
    have hneg115_ne : (-(115/10) : ℝ) ≠ 0 := by norm_num
    have h1 : 1 / (-(115/10) : ℝ) < 1 / Real.log (1 - t) := by
      rw [one_div, one_div]
      have hiff := inv_lt_inv_of_neg hneg115 hlog1m_neg
      exact hiff.mpr hlog1m_lt
    have h2 : (1:ℝ) / (-(115/10)) = -10/115 := by norm_num
    rw [h2] at h1
    calc -(1:ℝ)/10 < -10/115 := by norm_num
      _ < 1 / Real.log (1 - t) := h1
  simp only [g_eq, one_div]
  calc (13:ℝ)/10 = 14/10 + (-(1/10)) := by norm_num
    _ < (Real.log (1 + t))⁻¹ + (Real.log (1 - t))⁻¹ := by
        have h1 : 14/10 < (Real.log (1 + t))⁻¹ := by simpa [one_div] using hinv1p_gt
        have h2 : -(1:ℝ)/10 < (Real.log (1 - t))⁻¹ := by simpa [one_div] using hinv1m_gt
        linarith

/-! ### Explicit Tail Bounds -/

/-- The integral on [0, ε] is bounded above by 2ε. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant6a455d315d4ba00690843c5d41cada5d98f4f16519744494cf14a52f04525eed.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6fa3f469a5d5c56bc5ed91e9c60e86e2d08a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
