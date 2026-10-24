# inv_two_mul_le_abs_log_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58f64603997f6b0032f476beef11592a3c6ffce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 531,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358d3422-38a1-eadc-da7d-0907c9351384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e681e70-eb53-7f6b-e052-051704cf9222",
  "kind": "lemma",
  "lexical_name": "inv_two_mul_le_abs_log_sub",
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
  "slug": "inv-two-mul-le-abs-log-sub--8b163ce11065256882318f35",
  "source": {
    "blob": "58f64603997f6b0032f476beef11592a3c6ffce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 531,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b163ce11065256882318f35d1308037c1a415693c211f42099399cb0f977ab1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e681e70-eb53-7f6b-e052-051704cf9222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_two_mul_le_abs_log_sub {n m : ℕ} (hn : 1 ≤ n) (hm : 1 ≤ m) (hnm : n ≠ m) :
    1 / (2 * (n:ℝ)) ≤ |Real.log n - Real.log m| := by
  have hn0 : (0:ℝ) < n := by exact_mod_cast hn
  have hm0 : (0:ℝ) < m := by exact_mod_cast hm
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast hn
  rcases lt_or_gt_of_ne hnm with h | h
  · -- n < m:  log m − log n ≥ 1 − n/m = (m−n)/m ≥ 1/(2n)
    have hm1 : (n:ℝ) + 1 ≤ m := by exact_mod_cast h
    have hlog : 1 - ((m:ℝ) / n)⁻¹ ≤ Real.log ((m:ℝ) / n) :=
      Real.one_sub_inv_le_log_of_pos (by positivity)
    rw [inv_div, Real.log_div hm0.ne' hn0.ne'] at hlog
    have h2 : 1 / (2 * (n:ℝ)) ≤ (m - n) / m := by
      rw [div_le_div_iff₀ (by positivity) hm0]
      nlinarith [mul_nonneg (sub_nonneg.mpr hm1) (by linarith : (0:ℝ) ≤ 2 * n - 1)]
    have h3 : ((m:ℝ) - n) / m = 1 - n / m := by field_simp
    rw [abs_sub_comm, abs_of_nonneg (by
      linarith [Real.log_le_log hn0 (by linarith : (n:ℝ) ≤ m)])]
    linarith
  · -- m < n:  log n − log m ≥ 1 − m/n = (n−m)/n ≥ 1/n ≥ 1/(2n)
    have hm1 : (m:ℝ) + 1 ≤ n := by exact_mod_cast h
    have hlog : 1 - ((n:ℝ) / m)⁻¹ ≤ Real.log ((n:ℝ) / m) :=
      Real.one_sub_inv_le_log_of_pos (by positivity)
    rw [inv_div, Real.log_div hn0.ne' hm0.ne'] at hlog
    have h2 : 1 / (2 * (n:ℝ)) ≤ (n - m) / n := by
      rw [div_le_div_iff₀ (by positivity) hn0]
      nlinarith
    have h3 : ((n:ℝ) - m) / n = 1 - m / n := by field_simp
    rw [abs_of_nonneg (by linarith [Real.log_le_log hm0 (by linarith : (m:ℝ) ≤ n)])]
    linarith

/-- **H-MV on the prime-power frequencies** ([lem:MV] with [eq:deltan], §5.1: "We apply this with
{λ_r} = {log n : n ≤ X a prime power}" — we index by all n ∈ primeRange X, harmless since the weights
will carry a factor Λ(n)): for complex weights x, z, frequencies y_n = log n and admissible spacing
δ_n = 1/(2n),  ‖Σ_{n≠m} x_n conj(z_m)/(y_n−y_m)‖ ≤ C (Σ 2n‖x_n‖²)^{1/2} (Σ 2n‖z_n‖²)^{1/2}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variantafe6d56c4d153de6a812fa888a587d2cfe6f7904bbebb5497acff5cdadd48723.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f64603997f6b0032f476beef11592a3c6ffce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
