# re_L2_two_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aee898c-93d5-ea20-a80b-aed9610d79b8",
  "kind": "theorem",
  "lexical_name": "re_L2_two_ge",
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
  "slug": "re-l2-two-ge--31d8f7c05ddb87a3984af3c4",
  "source": {
    "blob": "b6005991cec012a0a73717175399c62d2a53bded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 91,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d8f7c05ddb87a3984af3c437743f96d1fe67c990534ab9b7cbf7d5ff365019",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aee898c-93d5-ea20-a80b-aed9610d79b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_L2_two_ge {t : ℝ} (ht : 2 ≤ |t|) :
    (1 / 2) * Real.log (|t| / 2) - 3 ≤ (L2 (2 + t * I)).re := by
  have him : ((2 : ℂ) + t * I).im ≠ 0 := by
    simp; intro h; rw [h] at ht; norm_num at ht
  rw [L2_eq him]
  -- the (1−s)-term: 1 − s = −1 − it; shift twice to 3 − it
  have e1 : (1 : ℂ) - (2 + t * I) = -1 - t * I := by ring
  have hu1 : ((-1 : ℂ) - t * I).im ≠ 0 := by simpa using him
  have hu2 : ((-1 : ℂ) - t * I + 2).im ≠ 0 := by simpa using him
  have hshift : logDeriv Gammaℝ (-1 - t * I)
      = logDeriv Gammaℝ (3 - t * I) - 1 / (1 - t * I) - 1 / (-1 - t * I) := by
    rw [logDeriv_Gammaℝ_shift hu1, logDeriv_Gammaℝ_shift hu2]
    have e2 : (-1 : ℂ) - t * I + 2 = 1 - t * I := by ring
    have e3 : (1 : ℂ) - t * I + 2 = 3 - t * I := by ring
    rw [e2, e3]
  rw [e1, hshift]
  have hA := re_logDeriv_Gammaℝ_ge (s := 2 + t * I) (by simp) (by simpa using ht)
  have hB := re_logDeriv_Gammaℝ_ge (s := 3 - t * I) (by simp) (by simpa using ht)
  have himA : |((2 : ℂ) + t * I).im| = |t| := by simp
  have himB : |((3 : ℂ) - t * I).im| = |t| := by simp [abs_neg]
  rw [himA] at hA; rw [himB] at hB
  -- the two rational terms have opposite real parts
  have hr : ((1 : ℂ) / (1 - t * I)).re = ((1 : ℂ) / (-1 - t * I)).re * (-1) := by
    rw [one_div, one_div, Complex.inv_re, Complex.inv_re]
    simp [Complex.normSq_apply]; ring
  have hsum_re : (logDeriv Gammaℝ (2 + t * I)
        + (logDeriv Gammaℝ (3 - t * I) - 1 / (1 - t * I) - 1 / (-1 - t * I))).re
      = (logDeriv Gammaℝ (2 + t * I)).re + (logDeriv Gammaℝ (3 - t * I)).re := by
    simp only [Complex.add_re, Complex.sub_re]
    rw [hr]; ring
  rw [Complex.div_re]
  simp only [Complex.normSq_ofNat, Complex.re_ofNat, Complex.im_ofNat, mul_zero, zero_div, add_zero]
  rw [hsum_re]
  nlinarith

/-! ### analyticity on the Landau discs -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6005991cec012a0a73717175399c62d2a53bded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
