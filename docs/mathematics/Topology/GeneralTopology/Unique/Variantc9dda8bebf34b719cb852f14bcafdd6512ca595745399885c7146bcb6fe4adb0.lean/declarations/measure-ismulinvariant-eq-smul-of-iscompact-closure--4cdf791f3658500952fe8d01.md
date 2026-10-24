# measure_isMulInvariant_eq_smul_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dee27a5-2c6d-3ba3-2262-098a0e1a7f38",
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
  "slug": "measure-ismulinvariant-eq-smul-of-iscompact-closure--4cdf791f3658500952fe8d01",
  "source": {
    "blob": "39ab965024e0bac57bd24f01951a70af90276218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 620,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cdf791f3658500952fe8d0198ed2c7c29c367a587fe74c1329e61f5d7f8ec20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dee27a5-2c6d-3ba3-2262-098a0e1a7f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–647.

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
@[to_additive isAddInvariant_eq_smul_of_compactSpace]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantc9dda8bebf34b719cb852f14bcafdd6512ca595745399885c7146bcb6fe4adb0.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ab965024e0bac57bd24f01951a70af90276218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
