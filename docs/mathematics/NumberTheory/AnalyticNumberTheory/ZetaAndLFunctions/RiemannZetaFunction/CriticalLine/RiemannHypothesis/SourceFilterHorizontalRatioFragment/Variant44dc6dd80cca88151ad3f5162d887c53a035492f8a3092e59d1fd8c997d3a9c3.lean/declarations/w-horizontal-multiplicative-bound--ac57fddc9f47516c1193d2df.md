# W_horizontal_multiplicative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb6315c0-e65d-9bed-3757-8a16ec54d94d",
  "kind": "theorem",
  "lexical_name": "W_horizontal_multiplicative_bound",
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
  "slug": "w-horizontal-multiplicative-bound--ac57fddc9f47516c1193d2df",
  "source": {
    "blob": "a8484cd6dcab3e271b32acf447aae14c64205f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variant44dc6dd80cca88151ad3f5162d887c53a035492f8a3092e59d1fd8c997d3a9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac57fddc9f47516c1193d2df12bb24a6cc13c3bd41b9ed59ced0eee1afc569d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variant44dc6dd80cca88151ad3f5162d887c53a035492f8a3092e59d1fd8c997d3a9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb6315c0-e65d-9bed-3757-8a16ec54d94d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem W_horizontal_multiplicative_bound (ε t : ℝ) (hε : 0 ≤ ε)
    (hsmall : ε ≤ 1/4) :
    (1 - 4 * ε^2) * ‖W ((t : ℂ) * Complex.I)‖ ≤
      Real.exp ε * ‖W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hp := sourceQuadratic_horizontal_bound ε t
  have hb := bumpMoment_horizontal_norm_le ε t hε
  have hprod := mul_le_mul hp hb
    (norm_nonneg (bumpMoment 0 ((t : ℂ) * Complex.I)))
    (norm_nonneg (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  have hnorm (z : ℂ) : ‖W z‖ = Real.exp (-z.re) * ‖z^2 - 1/4‖ *
      ‖bumpMoment 0 z‖ / ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by
    rw [W_eq_bumpMoment]
    simp only [norm_div, norm_mul, Complex.norm_exp, Complex.neg_re]
  rw [hnorm, hnorm]
  have hre0 : ((t : ℂ) * Complex.I).re = 0 := by simp
  have hreε : ((ε : ℂ) + (t : ℂ) * Complex.I).re = ε := by simp
  rw [hre0, hreε, neg_zero, Real.exp_zero, one_mul]
  have hc : Real.exp ε * Real.exp (-ε) = 1 := by rw [← Real.exp_add]; simp
  calc
    _ = ((1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by ring
    _ ≤ (‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ :=
      div_le_div_of_nonneg_right hprod (norm_nonneg _)
    _ = (Real.exp ε * Real.exp (-ε)) *
        ((‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
          ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
          ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖) := by rw [hc, one_mul]
    _ = _ := by ring

/-- The original source filter ratio is bounded uniformly in the real boundary frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variant44dc6dd80cca88151ad3f5162d887c53a035492f8a3092e59d1fd8c997d3a9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variant44dc6dd80cca88151ad3f5162d887c53a035492f8a3092e59d1fd8c997d3a9c3.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8484cd6dcab3e271b32acf447aae14c64205f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
