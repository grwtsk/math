# negativeFirstMoment_abs_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329bc973-ad33-509d-c52d-edd19ba96405",
  "kind": "theorem",
  "lexical_name": "negativeFirstMoment_abs_le_four",
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
  "slug": "negativefirstmoment-abs-le-four--4a8be0a469e9f8300aee2106",
  "source": {
    "blob": "c99fdc0e1608430691533c02d5e9599eb4e43d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 360,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant6ac8d6155a205143b1836b5798e305f3888e231483d79f3f5724bb4ea5a4072e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8be0a469e9f8300aee2106e5502e4b86aa0201b1872e9313a7c41b8d7caa37",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant6ac8d6155a205143b1836b5798e305f3888e231483d79f3f5724bb4ea5a4072e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329bc973-ad33-509d-c52d-edd19ba96405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeFirstMoment_abs_le_four (A : ℝ) (hA : 1 ≤ A) :
    |negativeFirstMoment A| ≤ 4 := by
  have hp : 0 < A := by linarith
  have hc := (sourceCorrelation_contDiff A hp).continuous
  have he : Continuous (fun s : ℝ => s * Real.exp (-s / 2)) := by fun_prop
  have hi : IntervalIntegrable (fun s : ℝ => s * Real.exp (-s / 2) *
      sourceCorrelation explicitSecondDerivative A s) volume 0 (2 * A) :=
    (he.mul hc).intervalIntegrable 0 (2 * A)
  have hm : |negativeFirstMoment A| ≤ ∫ s in 0..2 * A, s * Real.exp (-s / 2) := by
    apply (intervalIntegral.abs_integral_le_integral_abs (by linarith : 0 ≤ 2 * A)).trans
    apply intervalIntegral.integral_mono_on (by linarith) hi.abs (he.intervalIntegrable _ _)
    intro s hs
    have hs0 : 0 ≤ s * Real.exp (-s / 2) := mul_nonneg hs.1 (Real.exp_pos _).le
    rw [abs_mul, abs_of_nonneg hs0]
    simpa only [mul_one] using
      mul_le_mul_of_nonneg_left (actual_correlation_abs_le_one A s hA) hs0
  have hd (s : ℝ) : HasDerivAt (fun t : ℝ => -2 * (t + 2) * Real.exp (-t / 2))
      (s * Real.exp (-s / 2)) s := by
    exact ((((hasDerivAt_id s).add_const 2).const_mul (-2)).mul
      (((hasDerivAt_id s).neg.div_const 2).exp)).congr_deriv (by dsimp; ring)
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => hd s) (he.intervalIntegrable 0 (2 * A))
  have hn : (∫ s in 0..2 * A, s * Real.exp (-s / 2)) ≤ 4 := by
    rw [hf]
    simp only [zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    have hne : 0 ≤ (2 * A + 2) * Real.exp (-(2 * A) / 2) := by positivity
    nlinarith
  exact hm.trans hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant6ac8d6155a205143b1836b5798e305f3888e231483d79f3f5724bb4ea5a4072e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant6ac8d6155a205143b1836b5798e305f3888e231483d79f3f5724bb4ea5a4072e.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99fdc0e1608430691533c02d5e9599eb4e43d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
