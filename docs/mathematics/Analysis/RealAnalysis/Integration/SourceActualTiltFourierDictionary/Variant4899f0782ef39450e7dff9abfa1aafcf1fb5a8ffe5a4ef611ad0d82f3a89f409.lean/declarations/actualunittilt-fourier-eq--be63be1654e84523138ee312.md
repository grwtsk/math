# actualUnitTilt_fourier_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01653ee6-3746-2c58-931a-cf3857646284",
  "kind": "theorem",
  "lexical_name": "actualUnitTilt_fourier_eq",
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
  "slug": "actualunittilt-fourier-eq--be63be1654e84523138ee312",
  "source": {
    "blob": "b5be69788f3334c803f68d674d6917bfbb508463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant4899f0782ef39450e7dff9abfa1aafcf1fb5a8ffe5a4ef611ad0d82f3a89f409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be63be1654e84523138ee312367faf8ff6454bae4893d46f9faa580c087b0f50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant4899f0782ef39450e7dff9abfa1aafcf1fb5a8ffe5a4ef611ad0d82f3a89f409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01653ee6-3746-2c58-931a-cf3857646284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnitTilt_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (fun x => (actualUnitTilt A x : ℂ)) ξ = actualTiltStandardSpectrum A ξ := by
  rw [Real.fourier_eq']
  have he (x : ℝ) :
      Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * (actualUnitTilt A x : ℂ) =
      (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp ((1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) * (x : ℂ)) := by
    unfold actualUnitTilt
    push_cast
    rw [Complex.ofReal_exp]
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
        (Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * Complex.exp (x : ℂ)) := by ring
      _ = _ := by
        rw [← Complex.exp_add]
        congr 2
        ring
  simp_rw [he]
  rw [actualTiltStandardSpectrum, actualSourceComplexTransform,
    intervalIntegral.integral_of_le (by linarith), ← integral_Icc_eq_integral_Ioc]
  apply (setIntegral_eq_integral_of_forall_compl_eq_zero _).symm
  intro x hx
  rw [normalizedTest_eq_indicator A (by linarith : 0 < A), indicator_of_notMem hx]
  simp

/-- The actual Hilbert Fourier state equals this exact standard spectrum almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant4899f0782ef39450e7dff9abfa1aafcf1fb5a8ffe5a4ef611ad0d82f3a89f409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variant4899f0782ef39450e7dff9abfa1aafcf1fb5a8ffe5a4ef611ad0d82f3a89f409.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5be69788f3334c803f68d674d6917bfbb508463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
