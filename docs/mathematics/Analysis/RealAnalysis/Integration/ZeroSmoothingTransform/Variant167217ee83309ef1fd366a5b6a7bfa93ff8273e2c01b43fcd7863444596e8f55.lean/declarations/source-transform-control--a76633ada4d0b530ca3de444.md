# source_transform_control

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad7bfb48-a084-b71b-78a6-17332f687660",
  "kind": "theorem",
  "lexical_name": "source_transform_control",
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
  "slug": "source-transform-control--a76633ada4d0b530ca3de444",
  "source": {
    "blob": "ad4aa115205e5181a9abe457bf23e104a0826106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a76633ada4d0b530ca3de4443469e644ad88149801985d6f8d825b9599632beb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad7bfb48-a084-b71b-78a6-17332f687660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_transform_control (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    (∀ z : ℂ,
      Integrable (fun x : ℝ ↦ (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) volume ∧
      Integrable (fun x : ℝ ↦ (smoothedTest A ε hε x : ℂ) *
        Complex.exp (z * (x : ℂ))) volume ∧
      Integrable (fun y : ℝ ↦ (mollifier ε hε y : ℂ) * Complex.exp (z * (y : ℂ))) volume ∧
      smoothedBilateralTransform A ε hε z = bilateralTransform A z * multiplier ε hε z) ∧
    (∀ o : ZeroObject.ZeroOccurrence,
      ‖multiplier ε hε (ZeroObject.shiftedValue o)‖ ≤ Real.exp (ε / 2)) := by
  refine ⟨fun z ↦ ?_, multiplier_norm_le_zeroOccurrence ε hε⟩
  exact ⟨ZeroTransform.actual_integrable A (by linarith) z,
    smoothed_transform_integrand_integrable A ε hA hε z,
    multiplier_integrand_integrable ε hε z, smoothed_bilateral_transform A ε hA hε z⟩

end
end ZeroSmoothingTransform
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingTransform/Variant167217ee83309ef1fd366a5b6a7bfa93ff8273e2c01b43fcd7863444596e8f55.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4aa115205e5181a9abe457bf23e104a0826106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
