# sourceBump_autocorrelation_eq_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cae80a94-5d42-f05d-b7ae-538335f00b77",
  "kind": "theorem",
  "lexical_name": "sourceBump_autocorrelation_eq_profile",
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
  "slug": "sourcebump-autocorrelation-eq-profile--8264098047da5dec197154a2",
  "source": {
    "blob": "faad474718c8fef8dbffa53ef3bd196f12b71022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8264098047da5dec197154a20a9293f3cfdd057b6244d0482f08a4f0c6f2a18b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae80a94-5d42-f05d-b7ae-538335f00b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBump_autocorrelation_eq_profile {u : ℝ} (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    (∫ x : ℝ, SourcePairing.sourceBump x * SourcePairing.sourceBump (x-u)) =
      overlapProfile u := by
  rw [sourceBump_overlap_eq_indicator hu0,
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.zeroExtension_integral
      _ (u-1) 1 (by linarith), unitBump_overlap_integral]

/-- The L² dilation cancels the Jacobian at every positive real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faad474718c8fef8dbffa53ef3bd196f12b71022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
