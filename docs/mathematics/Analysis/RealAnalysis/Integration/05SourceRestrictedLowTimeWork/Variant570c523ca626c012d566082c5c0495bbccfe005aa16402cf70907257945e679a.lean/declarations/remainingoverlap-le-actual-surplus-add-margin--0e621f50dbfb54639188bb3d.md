# remainingOverlap_le_actual_surplus_add_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6b305d-b6ca-e182-5afa-a996b190cf92",
  "kind": "theorem",
  "lexical_name": "remainingOverlap_le_actual_surplus_add_margin",
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
  "slug": "remainingoverlap-le-actual-surplus-add-margin--0e621f50dbfb54639188bb3d",
  "source": {
    "blob": "0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 564,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e621f50dbfb54639188bb3d9a9387c63661b80718613fbc7a5fcfae0b94d72d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6b305d-b6ca-e182-5afa-a996b190cf92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingOverlap_le_actual_surplus_add_margin {A : ℝ} (hA : 1 ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A + 45 * (Real.log 4 + 4 + Real.log 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip hA]
  have h := actual_retained_spatial_strip_abs_le_margin hA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

/-- This is an exact-target candidate equivalence, not an eventual-bound witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variant570c523ca626c012d566082c5c0495bbccfe005aa16402cf70907257945e679a.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbc775b6d014fb6d64d9ffe71d6a9a3962fe489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
