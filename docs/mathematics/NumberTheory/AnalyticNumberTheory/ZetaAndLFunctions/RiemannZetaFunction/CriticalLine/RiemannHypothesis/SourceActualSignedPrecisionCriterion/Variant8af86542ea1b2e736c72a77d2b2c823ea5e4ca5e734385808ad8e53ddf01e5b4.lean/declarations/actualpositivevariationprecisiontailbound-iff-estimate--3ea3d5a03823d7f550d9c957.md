# actualPositiveVariationPrecisionTailBound_iff_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37c33849-3701-c2b2-a148-d68e2f0385de",
  "kind": "theorem",
  "lexical_name": "actualPositiveVariationPrecisionTailBound_iff_estimate",
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
  "slug": "actualpositivevariationprecisiontailbound-iff-estimate--3ea3d5a03823d7f550d9c957",
  "source": {
    "blob": "c1f76d4309daa8693983b45185794020c44f3034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8af86542ea1b2e736c72a77d2b2c823ea5e4ca5e734385808ad8e53ddf01e5b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ea3d5a03823d7f550d9c9571e960eb5110720d01c40d6420c4acd06e0e73bcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8af86542ea1b2e736c72a77d2b2c823ea5e4ca5e734385808ad8e53ddf01e5b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37c33849-3701-c2b2-a148-d68e2f0385de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPositiveVariationPrecisionTailBound_iff_estimate :
    ActualPositiveVariationPrecisionTailBound ↔ CorrelationAssembly.EstimateObligation := by
  rw [actualPositiveVariationPrecisionTailBound_iff_residual]
  constructor
  · exact estimate_of_mertens_residual_tail
  · rintro ⟨lower,hlower⟩
    let K := max 0 ((archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) - lower) / 2)
    refine ⟨K,le_max_left _ _,1,le_rfl,?_⟩
    intro A hA
    have harch := actual_archimedean_uniform_upper hA
    have hsource := hlower A hA
    have heq : sourceQuadraticValue explicitSecondDerivative A =
        archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
      rw [sourceQuadraticValue,
        EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
        ← mertensResidual_eq_closedPrimeMoment A hA]
    have hr : mertensResidual A ≤
        (archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) - lower) / 2 := by
      linarith
    exact hr.trans (le_max_right _ _)

/-- The independently proved true mass lower bound bounds its reciprocal exponentially. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8af86542ea1b2e736c72a77d2b2c823ea5e4ca5e734385808ad8e53ddf01e5b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant8af86542ea1b2e736c72a77d2b2c823ea5e4ca5e734385808ad8e53ddf01e5b4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1f76d4309daa8693983b45185794020c44f3034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
