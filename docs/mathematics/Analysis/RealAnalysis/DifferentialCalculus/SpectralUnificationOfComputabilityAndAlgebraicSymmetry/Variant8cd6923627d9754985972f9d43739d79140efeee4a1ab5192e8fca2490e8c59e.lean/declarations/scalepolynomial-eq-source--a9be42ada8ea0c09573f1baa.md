# scalePolynomial_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7889e909-b913-fe4d-0e46-b50f657f84a4",
  "kind": "theorem",
  "lexical_name": "scalePolynomial_eq_source",
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
  "slug": "scalepolynomial-eq-source--a9be42ada8ea0c09573f1baa",
  "source": {
    "blob": "a5bc4d278435adb27f5a567e17ca9763436c5950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cd6923627d9754985972f9d43739d79140efeee4a1ab5192e8fca2490e8c59e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9be42ada8ea0c09573f1baab83b363779362a2026208f03ce415567427fe22d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cd6923627d9754985972f9d43739d79140efeee4a1ab5192e8fca2490e8c59e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7889e909-b913-fe4d-0e46-b50f657f84a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalePolynomial_eq_source (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) (htA : t ≤ 2 * A) :
    scalePolynomial A t = scaleWeight A * sourceCorrelation explicitSecondDerivative A t := by
  have hA0 : 0 < A := by linarith
  have hz := ne_of_gt (source_normalization_pos A hA)
  have hs := sourceCorrelation_eq_polynomial A (t/A) hA (div_nonneg ht hA0.le)
    ((div_le_iff₀ hA0).2 (by linarith))
  rw [mul_div_cancel₀ _ hA0.ne'] at hs
  rw [hs]
  norm_num [scalePolynomial, scaleCoefficient, bumpCoefficient, Finset.sum_range_succ,
    scaleWeight, bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
  field_simp
  ring

/-- The supported weighted source has a genuine interval integral with this primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cd6923627d9754985972f9d43739d79140efeee4a1ab5192e8fca2490e8c59e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8cd6923627d9754985972f9d43739d79140efeee4a1ab5192e8fca2490e8c59e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bc4d278435adb27f5a567e17ca9763436c5950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
