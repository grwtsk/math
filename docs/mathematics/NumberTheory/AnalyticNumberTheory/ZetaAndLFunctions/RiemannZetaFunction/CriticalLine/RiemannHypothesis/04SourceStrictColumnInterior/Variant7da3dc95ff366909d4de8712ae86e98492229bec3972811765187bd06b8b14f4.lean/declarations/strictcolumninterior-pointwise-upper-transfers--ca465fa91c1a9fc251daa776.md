# strictColumnInterior_pointwise_upper_transfers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7961385c-8d4c-b03c-a3f0-e75b05e328b9",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_pointwise_upper_transfers",
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
  "slug": "strictcolumninterior-pointwise-upper-transfers--ca465fa91c1a9fc251daa776",
  "source": {
    "blob": "805f6ac0f0727798bd65fd6c63f388ae1b5f2a1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variant7da3dc95ff366909d4de8712ae86e98492229bec3972811765187bd06b8b14f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca465fa91c1a9fc251daa776dd308b642dca4e869bbc27f1b4c3718aef4df2b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variant7da3dc95ff366909d4de8712ae86e98492229bec3972811765187bd06b8b14f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7961385c-8d4c-b03c-a3f0-e75b05e328b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_pointwise_upper_transfers (A D : ℝ) (hA : 1 ≤ A) :
    (VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D → strictColumnInterior A ≤ D + 12) ∧
      (strictColumnInterior A ≤ D →
        VaughanOperatorReview.covarianceOperatorValue A / 2 -
          SourceSamplingLedger.independentMainTerm A ≤ D + 12) := by
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have hb := actual_centered_column_endpoint_abs_le_twelve A hA
  dsimp only at hs hb
  have he := abs_le.mp hb
  constructor
  · intro h
    linarith [he.1]
  · intro h
    linarith [he.2]

/-- The existing joint tail target is equivalent to the remaining raw strict interior target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variant7da3dc95ff366909d4de8712ae86e98492229bec3972811765187bd06b8b14f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceStrictColumnInterior/Variant7da3dc95ff366909d4de8712ae86e98492229bec3972811765187bd06b8b14f4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805f6ac0f0727798bd65fd6c63f388ae1b5f2a1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
