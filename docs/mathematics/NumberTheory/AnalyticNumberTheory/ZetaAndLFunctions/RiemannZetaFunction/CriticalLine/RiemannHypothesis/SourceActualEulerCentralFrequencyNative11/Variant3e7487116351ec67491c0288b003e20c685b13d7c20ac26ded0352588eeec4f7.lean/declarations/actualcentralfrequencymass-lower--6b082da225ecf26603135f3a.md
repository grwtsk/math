# actualCentralFrequencyMass_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cae000c-9c85-3ef0-51a0-f33405dfcf19",
  "kind": "theorem",
  "lexical_name": "actualCentralFrequencyMass_lower",
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
  "slug": "actualcentralfrequencymass-lower--6b082da225ecf26603135f3a",
  "source": {
    "blob": "15ffda90dad773e8d74a02a5af12a6ae0f549291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 401,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b082da225ecf26603135f3a56f68e75e7e8766acef10e2101fa5c1ccfd07d11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cae000c-9c85-3ef0-51a0-f33405dfcf19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCentralFrequencyMass_lower {A : ℝ} (hA : 1 ≤ A) :
    (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (actualInitialPrimeMellin A (3 / 2)).re ≤
        actualCentralFrequencyMass A := by
  have hp : 0 < A := by linarith
  have hr : 0 ≤ actualCentralFrequencyRadius A := by
    unfold actualCentralFrequencyRadius
    positivity
  have hh := intervalIntegral.integral_mono_on (μ := volume) (by linarith :
      -actualCentralFrequencyRadius A ≤ actualCentralFrequencyRadius A)
    intervalIntegrable_const ((density_continuous hA).intervalIntegrable _ _)
    (fun t ht => actualCentralFrequencyDensity_lower hA
      (abs_le.mpr ⟨ht.1, ht.2⟩))
  rw [intervalIntegral.integral_const] at hh
  simp only [smul_eq_mul] at hh
  unfold actualCentralFrequencyMass
  have hi := mul_le_mul_of_nonneg_left hh
    (show 0 ≤ 1 / (2 * Real.pi) by positivity)
  dsimp [actualCentralFrequencyRadius] at hi
  have he : (1 / (2 * Real.pi)) *
      ((1 / (100 * A) - -(1 / (100 * A))) *
        ((actualInitialPrimeMellin A (3 / 2)).re * actualClosedPrimeRightMass A / 2)) =
      actualClosedPrimeRightMass A / (200 * Real.pi * A) *
        (actualInitialPrimeMellin A (3 / 2)).re := by ring
  rw [he] at hi
  have hm' : (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (actualInitialPrimeMellin A (3 / 2)).re ≤
      actualClosedPrimeRightMass A / (200 * Real.pi * A) *
        (actualInitialPrimeMellin A (3 / 2)).re := by
    exact mul_le_mul_of_nonneg_right
      (div_le_div_of_nonneg_right (closed_mass_two_lower hA) (by positivity))
      (real_mellin_nonneg hA)
  exact hm'.trans hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15ffda90dad773e8d74a02a5af12a6ae0f549291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
