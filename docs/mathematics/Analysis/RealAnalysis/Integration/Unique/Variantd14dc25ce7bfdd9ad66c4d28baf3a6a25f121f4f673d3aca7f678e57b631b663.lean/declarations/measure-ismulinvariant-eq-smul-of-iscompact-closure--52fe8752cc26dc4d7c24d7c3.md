# measure_isMulInvariant_eq_smul_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 646,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a827c0b-4a09-83e8-f12d-6d5724afce0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:363c2c20-c557-6270-45ed-6ce9696113f1",
  "kind": "theorem",
  "lexical_name": "measure_isMulInvariant_eq_smul_of_isCompact_closure",
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
  "slug": "measure-ismulinvariant-eq-smul-of-iscompact-closure--52fe8752cc26dc4d7c24d7c3",
  "source": {
    "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 646,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52fe8752cc26dc4d7c24d7c3c33a6a98e02f7b1101a33868dd91642c4cbf9e51",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:363c2c20-c557-6270-45ed-6ce9696113f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_isMulInvariant_eq_smul_of_isCompact_closure [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ']
    {s : Set G} (h's : IsCompact (closure s)) :
    μ' s = haarScalarFactor μ' μ • μ s := by
  let ν := haarScalarFactor μ' μ • μ
  apply le_antisymm
  · calc
    μ' s ≤ μ' ((toMeasurable ν s) ∩ (closure s)) :=
      measure_mono <| subset_inter (subset_toMeasurable ν s) subset_closure
    _ = ν ((toMeasurable ν s) ∩ (closure s)) := by
      apply measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet _ _ _ _
      · exact (measurableSet_toMeasurable ν s).inter isClosed_closure.measurableSet
      · exact h's.closure_of_subset inter_subset_right
    _ ≤ ν (toMeasurable ν s) := measure_mono inter_subset_left
    _ = ν s := measure_toMeasurable s
  · calc
    ν s ≤ ν ((toMeasurable μ' s) ∩ (closure s)) :=
      measure_mono <| subset_inter (subset_toMeasurable μ' s) subset_closure
    _ = μ' ((toMeasurable μ' s) ∩ (closure s)) := by
      apply (measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet _ _ _ _).symm
      · exact (measurableSet_toMeasurable μ' s).inter isClosed_closure.measurableSet
      · exact h's.closure_of_subset inter_subset_right
    _ ≤ μ' (toMeasurable μ' s) := measure_mono inter_subset_left
    _ = μ' s := measure_toMeasurable s

/-- **Uniqueness of Haar measures**:
Two Haar measures on a compact group coincide up to a multiplicative factor. -/
@[to_additive isAddInvariant_eq_smul_of_compactSpace
/-- **Uniqueness of additive Haar measures**:
Two additive Haar measures on a compact additive group coincide up to a multiplicative factor. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f27cee36e757273dbc80d255aaf98ed21bc354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
