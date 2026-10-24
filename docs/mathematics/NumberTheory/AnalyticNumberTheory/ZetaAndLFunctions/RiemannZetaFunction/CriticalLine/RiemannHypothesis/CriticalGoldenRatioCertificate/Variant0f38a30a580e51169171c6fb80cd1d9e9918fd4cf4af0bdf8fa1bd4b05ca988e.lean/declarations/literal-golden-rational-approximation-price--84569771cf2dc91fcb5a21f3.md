# literal_golden_rational_approximation_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b8a8dc-e43c-348f-f4e9-ec84c19204ec",
  "kind": "theorem",
  "lexical_name": "literal_golden_rational_approximation_price",
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
  "slug": "literal-golden-rational-approximation-price--84569771cf2dc91fcb5a21f3",
  "source": {
    "blob": "f4a29a0e3df68ae8fb0b7db5b0a4265c778f9ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84569771cf2dc91fcb5a21f3e53b32de3ebeb52ac748a2c7b2867ca8a4172fe8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b8a8dc-e43c-348f-f4e9-ec84c19204ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_golden_rational_approximation_price (m : ℕ) (hm : 1 ≤ m) (n : ℤ) :
    1/(5*(m : ℝ)^2) ≤ |goldenFrequency-(n : ℝ)/(m : ℝ)| := by
  have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hm1 : (1 : ℝ) ≤ (m : ℝ) := by exact_mod_cast hm
  let q : ℝ := (n : ℝ)/(m : ℝ)
  by_cases hfar : 1 ≤ |goldenFrequency-q|
  · have hden : (1 : ℝ) ≤ 5*(m : ℝ)^2 := by nlinarith
    have hsmall : (1 : ℝ)/(5*(m : ℝ)^2) ≤ 1 :=
      (div_le_one (by positivity : (0 : ℝ) < 5*(m : ℝ)^2)).mpr hden
    exact hsmall.trans hfar
  · have hnear : |q-goldenFrequency| < 1 := by rw [abs_sub_comm]; exact lt_of_not_ge hfar
    have hsqrt : Real.sqrt 5 ≤ 3 := by
      nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5),Real.sqrt_nonneg 5]
    have hdiff : goldenFrequency-conjugateFrequency = Real.sqrt 5 := by
      unfold goldenFrequency conjugateFrequency
      ring
    have hsecond : |q-conjugateFrequency| ≤ 4 := by
      have h := abs_sub_le q goldenFrequency conjugateFrequency
      rw [hdiff,abs_of_nonneg (Real.sqrt_nonneg 5)] at h
      linarith
    have hne := literal_golden_quadratic_integer_ne_zero m hm n
    have hZ : (1 : ℤ) ≤ |n^2-n*(m : ℤ)-(m : ℤ)^2| := by
      have hpos := abs_pos.mpr hne
      omega
    have hR : (1 : ℝ) ≤ |(n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2| := by exact_mod_cast hZ
    have hscaled : (q-goldenFrequency)*(q-conjugateFrequency) =
        ((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2 := by
      rw [literal_golden_quadratic_factor]
      dsimp [q]
      field_simp [hmR.ne']
    have hprice : 1/(m : ℝ)^2 ≤ |q-goldenFrequency| * |q-conjugateFrequency| := by
      calc
        _ ≤ |(n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2|/(m : ℝ)^2 :=
          div_le_div_of_nonneg_right hR (sq_nonneg (m : ℝ))
        _ = |((n : ℝ)^2-(n : ℝ)*(m : ℝ)-(m : ℝ)^2)/(m : ℝ)^2| := by
          rw [abs_div,abs_of_pos (sq_pos_of_pos hmR)]
        _ = _ := by rw [← hscaled,abs_mul]
    have hupper : |q-goldenFrequency| * |q-conjugateFrequency| ≤ |q-goldenFrequency| * 4 :=
      mul_le_mul_of_nonneg_left hsecond (abs_nonneg _)
    have hpaid := (div_le_iff₀ (sq_pos_of_pos hmR)).mp (hprice.trans hupper)
    rw [abs_sub_comm]
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < 5*(m : ℝ)^2)).mpr
    nlinarith [mul_nonneg (abs_nonneg (q-goldenFrequency)) (sq_nonneg (m : ℝ))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalGoldenRatioCertificate/Variant0f38a30a580e51169171c6fb80cd1d9e9918fd4cf4af0bdf8fa1bd4b05ca988e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a29a0e3df68ae8fb0b7db5b0a4265c778f9ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
