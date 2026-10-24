# residual_upper_of_compensatedJointWork_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b406689a-907b-1139-91f9-eefe7115b69a",
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
  "slug": "residual-upper-of-compensatedjointwork-upper--ee99af33bb6b63abf153f133",
  "source": {
    "blob": "f8cbcf99e6a61df3108b45d25681102499f18025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8a15348f7d9480adbabSourceJointWorkConsumer/Variantf6695477750ec16f71e69849838f1cde7f11c199a023b37f1eef880e7511d299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee99af33bb6b63abf153f13310b92084e98a9734c16649d96ff6a199e304db57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8a15348f7d9480adbabSourceJointWorkConsumer/Variantf6695477750ec16f71e69849838f1cde7f11c199a023b37f1eef880e7511d299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b406689a-907b-1139-91f9-eefe7115b69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_compensatedJointWork_upper
    (A D C_F : ℝ) (hA : 1 ≤ A)
    (hwork : compensatedJointWork A ≤ D)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A +
      independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 3 + C_F := by
  have hs : strictColumnInterior A ≤ D := by
    rwa [compensatedJointWork_eq_strictColumnInterior A hA] at hwork
  have ht := (strictColumnInterior_pointwise_upper_transfers_three A D hA).2 hs
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hledger).2
  linarith

/-- A future literal signed witness propagates at its original radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8a15348f7d9480adbabSourceJointWorkConsumer/Variantf6695477750ec16f71e69849838f1cde7f11c199a023b37f1eef880e7511d299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A8a15348f7d9480adbabSourceJointWorkConsumer/Variantf6695477750ec16f71e69849838f1cde7f11c199a023b37f1eef880e7511d299.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cbcf99e6a61df3108b45d25681102499f18025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
