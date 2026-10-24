# sourceCorrelationPrime_contDiffOn_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30d41d6d-455e-5829-3ead-3b5c86a7d989",
  "kind": "theorem",
  "lexical_name": "sourceCorrelationPrime_contDiffOn_scale",
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
  "slug": "sourcecorrelationprime-contdiffon-scale--75fa621dbb68aaf332a91307",
  "source": {
    "blob": "79bdb291b5c9b270da56e13a2adc5da231418542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75fa621dbb68aaf332a91307ec74309dc1fccaae467b89f1efdca5e9cdd3e8c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d41d6d-455e-5829-3ead-3b5c86a7d989`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelationPrime_contDiffOn_scale (s : ℝ) :
    ContDiffOn ℝ 1 (fun A => deriv (sourceCorrelation explicitSecondDerivative A) s) (Ioi 0) := by
  rw [contDiffOn_one_iff_derivWithin isOpen_Ioi.uniqueDiffOn]
  refine ⟨fun A hA => (sourceCorrelationPrime_hasDerivAt_scale hA s).differentiableAt
    .differentiableWithinAt, ?_⟩
  apply (show ContinuousOn (fun A => correlationPrimeScaleDerivative A s) (Ioi 0) from
    fun A hA => (correlationPrimeScaleDerivative_continuousAt_scale hA s).continuousWithinAt).congr
  intro A hA
  exact (sourceCorrelationPrime_hasDerivAt_scale hA s).hasDerivWithinAt.derivWithin
    (isOpen_Ioi.uniqueDiffOn A hA)

/-- Local C1 of the literal C_A′ scale family at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79bdb291b5c9b270da56e13a2adc5da231418542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
