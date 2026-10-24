# re_logDeriv_Gammaℝ_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:155a21a2-b93b-284e-62ac-0dec0687601d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f9b8d17-ffb6-51b3-0d5b-4ca28f243bb7",
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
  "slug": "re-logderiv-gamma-ge--ccbcb20b10309ad8ef1f84dd",
  "source": {
    "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 61,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccbcb20b10309ad8ef1f84ddc56b590a0fb8fc5a80c1fd15de1213a0fc5ffdfe",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9b8d17-ffb6-51b3-0d5b-4ca28f243bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–82.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
