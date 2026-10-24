# re_logDeriv_Gammaℝ_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56760641-b9cb-4aa5-fc21-eb8c7da20d0e",
  "kind": "lemma",
  "lexical_name": "re_logDeriv_Gammaℝ_ge",
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
  "slug": "re-logderiv-gamma-ge--db8e5838215fa543ff05de26",
  "source": {
    "blob": "b6005991cec012a0a73717175399c62d2a53bded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db8e5838215fa543ff05de265f6bf5803218f0cd22900ba0f9cdbeddc29b8aad",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56760641-b9cb-4aa5-fc21-eb8c7da20d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_logDeriv_Gammaℝ_ge {s : ℂ} (hs : 0 < s.re) (him : 2 ≤ |s.im|) :
    -1 + (1 / 2) * (Real.log (|s.im| / 2) - 4) ≤ (logDeriv Gammaℝ s).re := by
  rw [Zeta23.RvM.logDeriv_Gammaℝ hs]
  have hw : 0 < (s / 2).re := by simp; linarith
  have hwim : (s / 2).im = s.im / 2 := by simp
  have hw' : 1 ≤ |(s / 2).im| := by rw [hwim, abs_div, abs_two]; linarith
  have hψ := Zeta23.XiPrime.ZeroCount.re_digamma_ge hw hw'
  rw [hwim, abs_div, abs_two] at hψ
  have hlogpi : Real.log Real.pi ≤ 2 := by
    have h4 : Real.log Real.pi ≤ Real.log 4 := Real.log_le_log Real.pi_pos Real.pi_lt_four.le
    have h4' : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4:ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; push_cast; ring
    linarith [Real.log_two_lt_d9]
  have hre_const : (-(Real.log Real.pi : ℂ) / 2).re = -(Real.log Real.pi) / 2 := by
    simp [Complex.neg_re, Complex.div_ofNat_re]
  have hre_half : ((1 / 2 : ℂ) * Complex.digamma (s / 2)).re = (1 / 2) * (Complex.digamma (s / 2)).re := by
    rw [Complex.mul_re]; simp
  simp only [Complex.add_re]
  rw [hre_const, hre_half]
  linarith

/-- **Re L₂(2+it) ≥ ½log(|t|/2) − 3** for |t| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6005991cec012a0a73717175399c62d2a53bded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
