# strictColumnInterior_pointwise_upper_transfers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81c518de3a30964b6517bb56dda7914478f99960",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:815413e1-c600-54b1-6d1d-8d812ce92748",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c3a85ce-fbf6-f9a1-fa55-84622f00550c",
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
  "slug": "strictcolumninterior-pointwise-upper-transfers--319f7055c9ec6d5aea87d115",
  "source": {
    "blob": "81c518de3a30964b6517bb56dda7914478f99960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictColumnInterior/Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:319f7055c9ec6d5aea87d1150aabd965fd43eca4a831b36d16d6efea12a7fa22",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictColumnInterior/Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3a85ce-fbf6-f9a1-fa55-84622f00550c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictColumnInterior/Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictColumnInterior/Variantf2e7d7a0bcd7174e70fb28d302bc102c1f3ffca498492f57df7df12be6e94508.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81c518de3a30964b6517bb56dda7914478f99960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
