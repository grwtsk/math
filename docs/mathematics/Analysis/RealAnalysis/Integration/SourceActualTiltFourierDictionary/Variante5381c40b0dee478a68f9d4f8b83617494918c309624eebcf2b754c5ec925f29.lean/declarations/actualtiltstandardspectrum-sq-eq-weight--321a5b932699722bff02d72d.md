# actualTiltStandardSpectrum_sq_eq_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ad2022-207f-4367-3c1e-b7a9764a5d46",
  "kind": "theorem",
  "lexical_name": "actualTiltStandardSpectrum_sq_eq_weight",
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
  "slug": "actualtiltstandardspectrum-sq-eq-weight--321a5b932699722bff02d72d",
  "source": {
    "blob": "d3612e14f3fa47a8c232bf97016a83fea04d8e2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variante5381c40b0dee478a68f9d4f8b83617494918c309624eebcf2b754c5ec925f29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:321a5b932699722bff02d72d2d8d070285279fdceb59bc741a00451ce4d98194",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variante5381c40b0dee478a68f9d4f8b83617494918c309624eebcf2b754c5ec925f29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ad2022-207f-4367-3c1e-b7a9764a5d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltStandardSpectrum_sq_eq_weight {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    actualTiltStandardSpectrum A ξ ^ 2 =
      bumpMellinWeight A ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [actualTiltStandardSpectrum, ← actualBilateralCorrelationTransform_eq_square hA]
  have he : (1 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I =
      ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) - 1 / 2 := by ring
  rw [he, actualBilateralCorrelationTransform_eq_bump hA]
  rfl

/-- The energy density is the norm of the ordinary square; head phases are not replaced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variante5381c40b0dee478a68f9d4f8b83617494918c309624eebcf2b754c5ec925f29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltFourierDictionary/Variante5381c40b0dee478a68f9d4f8b83617494918c309624eebcf2b754c5ec925f29.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3612e14f3fa47a8c232bf97016a83fea04d8e2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
