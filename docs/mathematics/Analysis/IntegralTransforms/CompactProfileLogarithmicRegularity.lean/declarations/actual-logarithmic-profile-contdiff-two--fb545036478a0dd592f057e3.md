# actual_logarithmic_profile_contDiff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f1f798-1d93-6a52-106c-1bba2af829ba",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_profile_contDiff_two",
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
  "slug": "actual-logarithmic-profile-contdiff-two--fb545036478a0dd592f057e3",
  "source": {
    "blob": "e3df198a1cf7b07f0df23f89fd32ebf643f8bea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb545036478a0dd592f057e3bf45b7cee08a354445609a49656a782c43d1e7c8",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f1f798-1d93-6a52-106c-1bba2af829ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_profile_contDiff_two {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 2 (fun x : ℝ ↦ Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) := by
  have first : ContDiff ℝ 2 (deriv (correlation A)) :=
    (correlation_first_contDiff_three hA).of_le (by norm_num)
  have profile : ContDiff ℝ 2 (fun u : ℝ ↦ deriv (deriv (correlation A)) u -
      (1 / 2 : ℝ) * deriv (correlation A) u) :=
    (correlation_second_contDiff_two hA).sub (contDiff_const.mul first)
  apply LogarithmicProfileRegularity.logarithmic_profile_contDiff (lo := -(2 * A)) profile _ t
  intro u hu
  obtain ⟨firstZero, secondZero⟩ := correlation_derivatives_zero_left hA hu
  rw [firstZero, secondZero]
  ring

end

end GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3df198a1cf7b07f0df23f89fd32ebf643f8bea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
