# pole_correlation_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea22b814-3f77-378d-932e-3730cdc592e8",
  "kind": "theorem",
  "lexical_name": "pole_correlation_certificate",
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
  "slug": "pole-correlation-certificate--18148427586d7dcb889107f4",
  "source": {
    "blob": "d080552deabf0d65e653948b8f44ad4de8e6e5c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 231,
    "path": "GRWTSK/Analysis/Convolution/ExponentialMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18148427586d7dcb889107f4065f4344a226f60e865969f24f872f24c58159ea",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/ExponentialMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea22b814-3f77-378d-932e-3730cdc592e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_correlation_certificate (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) +
      (∫ t in 0..2 * A, Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hpos : 0 < A := by linarith
  have hsupport : ∀ t, t ∉ Icc (-(2 * A)) (2 * A) →
      sourceCorrelation explicitSecondDerivative A t = 0 := by
    intro t ht
    apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hpos
    by_contra h
    exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
  have hi : Integrable (fun t ↦ Real.exp ((1 / 2 : ℝ) * t) *
      sourceCorrelation explicitSecondDerivative A t) volume :=
    weighted_correlation_integrable _ _
      (weighted_normalizedTest_integrable A (1 / 2) hA)
      (weighted_normalizedTest_integrable A (-(1 / 2)) hA)
  have h := half_interval_moment_of_even (sourceCorrelation explicitSecondDerivative A)
    (2 * A) (1 / 2) (by linarith) (sourceCorrelation_even A) hsupport hi
    (full_correlation_moment_zero A hA)
  have hscale (t : ℝ) : (1 / 2 : ℝ) * t = t / 2 := by ring
  have hnegative (t : ℝ) : (-(1 / 2) : ℝ) * t = -t / 2 := by ring
  simpa only [hscale, hnegative] using h

end

end GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/ExponentialMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/ExponentialMoments.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d080552deabf0d65e653948b8f44ad4de8e6e5c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
