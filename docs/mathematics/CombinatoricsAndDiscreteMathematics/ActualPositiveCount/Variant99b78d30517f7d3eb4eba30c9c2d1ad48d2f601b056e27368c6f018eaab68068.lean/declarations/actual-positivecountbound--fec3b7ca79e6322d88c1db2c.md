# actual_positiveCountBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887b814b-d6dc-75da-69cd-c40bdbf4af45",
  "kind": "theorem",
  "lexical_name": "actual_positiveCountBound",
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
  "slug": "actual-positivecountbound--fec3b7ca79e6322d88c1db2c",
  "source": {
    "blob": "0232cd3b93d385167f35cee12f11e31977ef1e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fec3b7ca79e6322d88c1db2c58fceea1582b376c1503f1583dd6b2444364178d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887b814b-d6dc-75da-69cd-c40bdbf4af45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positiveCountBound :
    ∃ C : ℝ, ContinuousResearch.LogarithmicTail.PositiveCountBound C := by
  simpa only [ContinuousResearch.LogarithmicTail.PositiveCountBound,
    positiveCount_eq_Ncount] using actual_Ncount_logarithmic

end ContinuousResearch.ActualPositiveCount

-- Exact types and transitive trusted dependency closure for every new declaration.
#check ContinuousResearch.ActualPositiveCount.PositiveOccurrences
#print axioms ContinuousResearch.ActualPositiveCount.PositiveOccurrences
#check ContinuousResearch.ActualPositiveCount.WindowOccurrences
#print axioms ContinuousResearch.ActualPositiveCount.WindowOccurrences
#check ContinuousResearch.ActualPositiveCount.occurrenceEquiv
#print axioms ContinuousResearch.ActualPositiveCount.occurrenceEquiv
#check ContinuousResearch.ActualPositiveCount.positiveOccurrences_finite
#print axioms ContinuousResearch.ActualPositiveCount.positiveOccurrences_finite
#check ContinuousResearch.ActualPositiveCount.occurrence_card_eq_Ncount
#print axioms ContinuousResearch.ActualPositiveCount.occurrence_card_eq_Ncount
#check ContinuousResearch.ActualPositiveCount.Ncount_same
#print axioms ContinuousResearch.ActualPositiveCount.Ncount_same
#check ContinuousResearch.ActualPositiveCount.cumulative_nat_of_unit_bound
#print axioms ContinuousResearch.ActualPositiveCount.cumulative_nat_of_unit_bound
#check ContinuousResearch.ActualPositiveCount.cumulative_real_of_unit_bound
#print axioms ContinuousResearch.ActualPositiveCount.cumulative_real_of_unit_bound
#check ContinuousResearch.ActualPositiveCount.actual_Ncount_logarithmic
#print axioms ContinuousResearch.ActualPositiveCount.actual_Ncount_logarithmic
#check ContinuousResearch.ActualPositiveCount.actual_occurrence_count_logarithmic
#print axioms ContinuousResearch.ActualPositiveCount.actual_occurrence_count_logarithmic
#check ContinuousResearch.ActualPositiveCount.positiveCount_eq_Ncount
#print axioms ContinuousResearch.ActualPositiveCount.positiveCount_eq_Ncount
#check ContinuousResearch.ActualPositiveCount.actual_positiveCountBound
#print axioms ContinuousResearch.ActualPositiveCount.actual_positiveCountBound
#check Zeta23.zerosIn_union
#print axioms Zeta23.zerosIn_union
#check Zeta23.Ncount_add
#print axioms Zeta23.Ncount_add
#check Zeta23.Ncount_mono
#print axioms Zeta23.Ncount_mono
#check Zeta23.RvM.zeta_local_zero_count
#print axioms Zeta23.RvM.zeta_local_zero_count
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualPositiveCount/Variant99b78d30517f7d3eb4eba30c9c2d1ad48d2f601b056e27368c6f018eaab68068.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0232cd3b93d385167f35cee12f11e31977ef1e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
