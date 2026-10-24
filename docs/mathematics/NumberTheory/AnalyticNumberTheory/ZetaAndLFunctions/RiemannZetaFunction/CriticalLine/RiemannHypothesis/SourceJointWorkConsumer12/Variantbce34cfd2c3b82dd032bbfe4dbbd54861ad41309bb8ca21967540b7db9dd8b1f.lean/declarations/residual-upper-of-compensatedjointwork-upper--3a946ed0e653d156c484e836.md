# residual_upper_of_compensatedJointWork_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9e35d52-c08d-d8b8-163d-81c574b83329",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_compensatedJointWork_upper",
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
  "slug": "residual-upper-of-compensatedjointwork-upper--3a946ed0e653d156c484e836",
  "source": {
    "blob": "77f26a70e86dc11a9ca6f5ffe7a01edff0821432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointWorkConsumer12/Variantbce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a946ed0e653d156c484e836fbd110a041cac5e719f8e2977fd78b9227ecdb06",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointWorkConsumer12/Variantbce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9e35d52-c08d-d8b8-163d-81c574b83329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_compensatedJointWork_upper
    (A D C_F : ℝ) (hA : 1 ≤ A)
    (hwork : compensatedJointWork A ≤ D)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A +
      independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 12 + C_F := by
  have hs : strictColumnInterior A ≤ D := by
    rwa [compensatedJointWork_eq_strictColumnInterior A hA] at hwork
  have ht := (strictColumnInterior_pointwise_upper_transfers A D hA).2 hs
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hledger).2
  linarith

/-- A future literal signed witness propagates at its original radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointWorkConsumer12/Variantbce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceJointWorkConsumer12/Variantbce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f26a70e86dc11a9ca6f5ffe7a01edff0821432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
