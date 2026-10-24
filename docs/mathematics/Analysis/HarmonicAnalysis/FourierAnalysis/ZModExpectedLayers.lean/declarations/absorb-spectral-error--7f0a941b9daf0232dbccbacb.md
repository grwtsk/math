# absorb_spectral_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:096747b7-2ef6-ef80-8ab5-e00d80ac8e0e",
  "kind": "theorem",
  "lexical_name": "absorb_spectral_error",
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
  "slug": "absorb-spectral-error--7f0a941b9daf0232dbccbacb",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 133,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f0a941b9daf0232dbccbacbc49e8f17b1f946d1a67f1b6478822327ae04a79b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:096747b7-2ef6-ef80-8ab5-e00d80ac8e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorb_spectral_error (n m t q : ℝ) (hn : 1 ≤ n) (hm : 1 ≤ m)
    (hmn : m ≤ n) (ht : 1 ≤ t) (hq : 0 ≤ q) :
    q / n ^ 9 + 200 * q * Real.sqrt (2000 * t) / (n * Real.sqrt m) ≤
      10000 * q * Real.sqrt t / (n * Real.sqrt m) := by
  have hnp : 0 < n := by linarith
  have hmp : 0 < m := by linarith
  have htp : 0 ≤ t := by linarith
  have hsm : 0 < Real.sqrt m := Real.sqrt_pos.mpr hmp
  have hsm1 := Real.one_le_sqrt.mpr hm
  have hsmle : Real.sqrt m ≤ m := by nlinarith [Real.sq_sqrt hmp.le]
  have hst1 := Real.one_le_sqrt.mpr ht
  have hden : n * Real.sqrt m ≤ n ^ 9 := by
    calc
      _ ≤ n * n := mul_le_mul_of_nonneg_left (hsmle.trans hmn) hnp.le
      _ = n ^ 2 := by ring
      _ ≤ n ^ 9 := pow_le_pow_right₀ hn (by norm_num)
  have herr : q / n ^ 9 ≤ q * Real.sqrt t / (n * Real.sqrt m) := by
    apply (div_le_div_iff₀ (by positivity : 0 < n ^ 9) (mul_pos hnp hsm)).mpr
    calc
      q * (n * Real.sqrt m) ≤ q * n ^ 9 := mul_le_mul_of_nonneg_left hden hq
      _ ≤ (q * Real.sqrt t) * n ^ 9 :=
        mul_le_mul_of_nonneg_right (by nlinarith) (by positivity)
  have hs : Real.sqrt (2000 : ℝ) ≤ 45 := by
    have hs0 := Real.sqrt_nonneg (2000 : ℝ)
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2000)]
  have hs' : Real.sqrt (2000 * t) ≤ 45 * Real.sqrt t := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2000)]
    exact mul_le_mul_of_nonneg_right hs (Real.sqrt_nonneg _)
  have hmain : 200 * q * Real.sqrt (2000 * t) / (n * Real.sqrt m) ≤
      9000 * q * Real.sqrt t / (n * Real.sqrt m) := by
    apply div_le_div_of_nonneg_right _ (mul_pos hnp hsm).le
    nlinarith [mul_le_mul_of_nonneg_left hs' (show 0 ≤ 200 * q by positivity)]
  calc
    _ ≤ q * Real.sqrt t / (n * Real.sqrt m) +
        9000 * q * Real.sqrt t / (n * Real.sqrt m) := add_le_add herr hmain
    _ = 9001 * q * Real.sqrt t / (n * Real.sqrt m) := by ring
    _ ≤ _ := by
      apply div_le_div_of_nonneg_right _ (mul_pos hnp hsm).le
      nlinarith [mul_nonneg hq (Real.sqrt_nonneg t)]

/-- Conditional expected-frequency bound after the explicit outside-`B`
concentration estimate. The spectral and numerical parts of the source argument
are proved, rather than included as additional hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
