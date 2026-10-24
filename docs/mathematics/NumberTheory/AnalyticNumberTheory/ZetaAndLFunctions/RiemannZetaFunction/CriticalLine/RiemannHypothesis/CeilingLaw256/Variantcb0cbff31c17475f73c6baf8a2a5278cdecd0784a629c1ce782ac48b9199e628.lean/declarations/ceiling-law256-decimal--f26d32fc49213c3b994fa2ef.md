# ceiling_law256_decimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd565d3a-9e99-3903-0863-f4d0caa23d6d",
  "kind": "theorem",
  "lexical_name": "ceiling_law256_decimal",
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
  "slug": "ceiling-law256-decimal--f26d32fc49213c3b994fa2ef",
  "source": {
    "blob": "34ac75ef1951ccd2055c2349e9ddd91dc0520fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f26d32fc49213c3b994fa2efddbd8d4d15f1c7b0b7dc2220d4039bc802921641",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd565d3a-9e99-3903-0863-f4d0caa23d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceiling_law256_decimal (S : ℕ → ℝ) (hS : EnclOK LawN256.K S 0 LawN256.encl)
    {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {c₀ p : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 256, massOf S 256 j * r ((j:ℝ)/256) ≤ p) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x
      ≤ p + 0.82395317 * |r 1| + 2.5431316e-6 * |g 1| + 2.5431316e-6 * ∫ x in (0:ℝ)..1, |h x| := by
  have h0 := ceiling_law256 S hS hT hr hg hgh hh hvalid
  have hc : (1 / (6 * (256 : ℝ) ^ 2) + ((3 : ℝ) / 10 ^ 40) / (2 * 256)) ≤ 2.5431316e-6 := by norm_num
  have hd : (82395317 : ℝ) / 10 ^ 8 = 0.82395317 := by norm_num
  have ha : 0 ≤ |r 1| := abs_nonneg _
  have hb : 0 ≤ |g 1| := abs_nonneg _
  have hI : 0 ≤ ∫ x in (0:ℝ)..1, |h x| := intervalIntegral.integral_nonneg zero_le_one fun x _ => abs_nonneg _
  rw [hd] at h0
  nlinarith [mul_le_mul_of_nonneg_right hc hb, mul_le_mul_of_nonneg_right hc hI]

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variantcb0cbff31c17475f73c6baf8a2a5278cdecd0784a629c1ce782ac48b9199e628.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ac75ef1951ccd2055c2349e9ddd91dc0520fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
