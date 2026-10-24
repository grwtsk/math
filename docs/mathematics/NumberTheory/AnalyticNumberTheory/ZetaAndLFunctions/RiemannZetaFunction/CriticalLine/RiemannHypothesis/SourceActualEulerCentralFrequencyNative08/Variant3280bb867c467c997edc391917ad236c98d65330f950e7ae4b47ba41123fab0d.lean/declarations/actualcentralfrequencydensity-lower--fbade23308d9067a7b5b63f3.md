# actualCentralFrequencyDensity_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:733040e8-d96f-67b0-5184-ec355cf219af",
  "kind": "theorem",
  "lexical_name": "actualCentralFrequencyDensity_lower",
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
  "slug": "actualcentralfrequencydensity-lower--fbade23308d9067a7b5b63f3",
  "source": {
    "blob": "d9d96db34ba79076f62c6edd64f64e960514c19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 287,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative08/Variant3280bb867c467c997edc391917ad236c98d65330f950e7ae4b47ba41123fab0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbade23308d9067a7b5b63f3b2c56c2df26cd95fc7e7f5c1f97d27c1af4c6709",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative08/Variant3280bb867c467c997edc391917ad236c98d65330f950e7ae4b47ba41123fab0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733040e8-d96f-67b0-5184-ec355cf219af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCentralFrequencyDensity_lower {A t : ℝ} (hA : 1 ≤ A)
    (ht : |t| ≤ actualCentralFrequencyRadius A) :
    (actualInitialPrimeMellin A (3 / 2)).re * actualClosedPrimeRightMass A / 2 ≤
      actualClosedFrequencyDensity A t := by
  have hp : 0 < A := by linarith
  have hz := source_normalization_pos A hA
  have hB := realBumpMass_nonneg A
  have hM := actualClosedPrimeRightMass_nonneg A
  have htA : |A * t| ≤ 1 / 100 := by
    have hh := (le_div_iff₀ (by positivity : 0 < 100 * A)).mp ht
    rw [abs_mul, abs_of_pos hp]
    nlinarith
  have htt : |t| ≤ 1 / 100 := by
    have he : |t| * A ≤ 1 / 100 := by
      simpa only [abs_mul, abs_of_pos hp, mul_comm] using htA
    nlinarith [mul_le_mul_of_nonneg_left hA (abs_nonneg t)]
  have hb := bump_phase_error A t
  have hb' : ‖bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) -
      (realBumpMass A : ℂ)‖ ≤ realBumpMass A / 100 :=
    hb.trans (by nlinarith)
  have hl := product_phase_lower hB hM hb' (closed_phase_error hA ht)
    (factor_phase_error htt)
  have hh := mul_le_mul_of_nonneg_left hl
    (show 0 ≤ A / sourceNormalization A by positivity)
  have harg : (A : ℂ) * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1 / 2) =
      (A : ℂ) + I * (A * t : ℝ) := by push_cast; ring
  unfold actualClosedFrequencyDensity
  rw [real_mellin hA, Complex.ofReal_re,
    actualInitialPrimeMellin_eq_bumpMellinWeight hA ((3 / 2 : ℂ) + (t : ℂ) * I)]
  unfold bumpMellinWeight
  rw [harg]
  have he : (((A / sourceNormalization A : ℝ) : ℂ) *
      ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
      (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
      bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
      actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re =
      A / sourceNormalization A *
        (((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
          (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
          bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
          actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re := by
    rw [show ((A / sourceNormalization A : ℝ) : ℂ) *
        ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
        (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
        bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
        actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I) =
        ((A / sourceNormalization A : ℝ) : ℂ) *
        (((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
          (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
          bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
          actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)) by ring]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      zero_mul, sub_zero]
  rw [he]
  nlinarith [mul_nonneg (show 0 ≤ A / sourceNormalization A by positivity)
    (show 0 ≤ realBumpMass A ^ 2 * actualClosedPrimeRightMass A by positivity)]

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative08/Variant3280bb867c467c997edc391917ad236c98d65330f950e7ae4b47ba41123fab0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative08/Variant3280bb867c467c997edc391917ad236c98d65330f950e7ae4b47ba41123fab0d.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9d96db34ba79076f62c6edd64f64e960514c19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
