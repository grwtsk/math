# Subgroup.discreteTopology_iff_of_isFiniteRelIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84f632c-a1b1-7dda-41d9-2842132f1ce8",
  "kind": "lemma",
  "lexical_name": "Subgroup.discreteTopology_iff_of_isFiniteRelIndex",
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
  "slug": "subgroup-discretetopology-iff-of-isfiniterelindex--6f2062031c8fc9f7f59cd8c9",
  "source": {
    "blob": "346ce87c1ac3b9ffffdb6f7a63d702ec7b228e7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f2062031c8fc9f7f59cd8c93f12defd43ee85801ac71edb92f7d4f6cfa43d0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84f632c-a1b1-7dda-41d9-2842132f1ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.discreteTopology_iff_of_isFiniteRelIndex {H K : Subgroup G} (hHK : H ≤ K)
    [IsFiniteRelIndex H K] : DiscreteTopology H ↔ DiscreteTopology K := by
  have : (H.subgroupOf K).FiniteIndex := IsFiniteRelIndex.to_finiteIndex_subgroupOf
  rw [← (subgroupOfContinuousMulEquivOfLe hHK).discreteTopology_iff,
    discreteTopology_iff_of_finiteIndex]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DiscreteSubgroup/Variant887173ef062ee2b31b9c6a6e5426c3571120847e2b061fecc672a874420e8b75.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346ce87c1ac3b9ffffdb6f7a63d702ec7b228e7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
