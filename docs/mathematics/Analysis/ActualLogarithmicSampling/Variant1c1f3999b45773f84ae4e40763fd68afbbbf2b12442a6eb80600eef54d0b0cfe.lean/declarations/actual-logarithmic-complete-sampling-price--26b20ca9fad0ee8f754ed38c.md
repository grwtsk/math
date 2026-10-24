# actual_logarithmic_complete_sampling_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b464b8-d794-336a-7c42-5cf8d31fb4dd",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_complete_sampling_price",
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
  "slug": "actual-logarithmic-complete-sampling-price--26b20ca9fad0ee8f754ed38c",
  "source": {
    "blob": "7b92e22ef52d7dc478cec6ad916b9abf4dc28622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 60,
    "path": "GRWTSK/Analysis/ActualLogarithmicSampling/Variant1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b20ca9fad0ee8f754ed38c78f2308a493fbfb615bb2c80fdc0fcb34bc9340f",
  "verification": {
    "reference": "docs/verification/Analysis/ActualLogarithmicSampling/Variant1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b464b8-d794-336a-7c42-5cf8d31fb4dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_complete_sampling_price {A r : ℝ} (hA : 1 ≤ A)
    (hr : 0 ≤ r) (N : ℕ) :
    |leftSampleSum (logarithmicSample A r) N -
      (∫ x in (1 : ℝ)..(N + 1 : ℝ), logarithmicSample A r x)| ≤
      (5 * r / A) * Real.log (N + 1 : ℝ) := by
  have hc := actual_logarithmic_derivative_continuousOn hA r
  have hleft := complete_positive_domain_sampling_price
    (logarithmicSample A r) (logarithmicDerivative A r)
    (fun x hx ↦ actual_logarithmic_hasDerivAt hA r hx) hc N
  have hpos : 0 < (N + 1 : ℝ) := by positivity
  have hab : (1 : ℝ) ≤ N + 1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hi : IntervalIntegrable (fun x ↦ |logarithmicDerivative A r x|)
      volume (1 : ℝ) (N + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one hx.1
  have hj : IntervalIntegrable (fun x : ℝ ↦ (5 * r / A) * (1 / x))
      volume (1 : ℝ) (N + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    intro x hx
    rw [uIcc_of_le hab] at hx
    exact (continuousAt_const.mul (continuousAt_const.div continuousAt_id
      (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))).continuousWithinAt
  have hb := intervalIntegral.integral_mono_on hab hi hj
    (fun x hx ↦ actual_logarithmic_derivative_price hA hr
      (lt_of_lt_of_le zero_lt_one hx.1))
  rw [intervalIntegral.integral_const_mul,
    integral_one_div_of_pos zero_lt_one hpos, div_one] at hb
  exact hleft.trans hb

end
end GRWTSK.RiemannHypothesis.Conversation.ActualLogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualLogarithmicSampling/Variant1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualLogarithmicSampling/Variant1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b92e22ef52d7dc478cec6ad916b9abf4dc28622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
