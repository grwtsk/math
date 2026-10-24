# weightedCorrelation_eq_native_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32427842-a26e-a10c-5fcf-01b886161ca9",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_eq_native_inverse",
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
  "slug": "weightedcorrelation-eq-native-inverse--2278af3a6303635adde62dbb",
  "source": {
    "blob": "43d32f31edaa8977c2d490c768a6699143f8e182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2278af3a6303635adde62dbb2f2d0a4e3bc76e8dc8536e7fed234124dadcd612",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32427842-a26e-a10c-5fcf-01b886161ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_eq_native_inverse (A : ℝ) (hA : 1 ≤ A) (u : ℝ) :
    (weightedCorrelation A u : ℂ) = (1 / (2 * Real.pi) : ℝ) *
      ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have heq : sourceFourier (weightedCorrelation A) =
      fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) := by
    funext t
    exact (nativeMellin_two_eq_sourceFourier A t).symm
  have hF : Integrable (sourceFourier (weightedCorrelation A)) := by
    rw [heq]
    exact nativeMellin_two_integrable A hA
  simp_rw [nativeMellin_two_eq_sourceFourier]
  exact sourceFourier_inversion (weightedCorrelation A) (weightedCorrelation_continuous A hA)
    ((weightedCorrelation_continuous A hA).integrable_of_hasCompactSupport
      (weightedCorrelation_compact A hA)) hF u

end
end FormalResearch.RiemannHypothesis.SourceNativeReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d32f31edaa8977c2d490c768a6699143f8e182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
