# upper_remainder_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3037dcfe-48f8-217e-247b-2cf38968ce56",
  "kind": "theorem",
  "lexical_name": "upper_remainder_pointwise",
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
  "slug": "upper-remainder-pointwise--6e874cf070f35257241e56ec",
  "source": {
    "blob": "b7adc52e947ca02359816f3b56a279967bf69c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e874cf070f35257241e56ec41806ef0a0432bde940e4d373fa522db5e98a369",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3037dcfe-48f8-217e-247b-2cf38968ce56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_remainder_pointwise {A u : ℝ} (hA : 1 ≤ A) (hu : 1 < u) :
    |actualRemainder A u| ≤
      ((162826/7623 : ℝ)/A^2) * (upperWeight 1 u + upperWeight 2 u/4) := by
  have hu0 : 0 < u := (by norm_num : (0 : ℝ) < 1).trans hu
  have hl : 0 ≤ Real.log u := Real.log_nonneg hu.le
  unfold actualRemainder
  rw [abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
  have h := plain_derivative_difference_abs_le hA (by norm_num : (0 : ℝ) < 1) hu0
  simp only [Real.sqrt_one, mul_one, abs_of_nonneg hl] at h
  calc
    Int.fract u * |deriv (plainProfile A 1) u - plainModelDerivative A 1 u|
        ≤ Int.fract u * (((162826/7623 : ℝ)/A^2) * u^(-3/2 : ℝ) *
          (Real.log u + (Real.log u)^2/4)) :=
      mul_le_mul_of_nonneg_left h (Int.fract_nonneg u)
    _ ≤ ((162826/7623 : ℝ)/A^2) * u^(-3/2 : ℝ) *
          (Real.log u + (Real.log u)^2/4) := by
      apply mul_le_of_le_one_left (by positivity) (Int.fract_lt_one u).le
    _ = _ := by unfold upperWeight; simp only [pow_one]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variante4fa2b5c8792d9641f603a3c78b3bc3d9bddb40732a0ce71f171a18036b7cf18.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7adc52e947ca02359816f3b56a279967bf69c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
