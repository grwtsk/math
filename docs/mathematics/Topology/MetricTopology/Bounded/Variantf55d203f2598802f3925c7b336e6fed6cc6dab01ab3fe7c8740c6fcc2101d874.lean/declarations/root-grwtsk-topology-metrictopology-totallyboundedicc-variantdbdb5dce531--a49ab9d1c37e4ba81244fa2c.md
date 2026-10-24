# _root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsOrderBornology.of_isCompactIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1337f67-b31f-019a-99d9-74430b556179",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsOrderBornology.of_isCompactIcc",
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
  "slug": "root-grwtsk-topology-metrictopology-totallyboundedicc-variantdbdb5dce531--a49ab9d1c37e4ba81244fa2c",
  "source": {
    "blob": "e8b44879c772a201808447253625cf36f8799167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 376,
    "path": "GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49ab9d1c37e4ba81244fa2c1fef5cd3d04e4c673fb0900d14c9615b7de9e31a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1337f67-b31f-019a-99d9-74430b556179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.MetricTopology.TotallyBoundedIcc.Variantdbdb5dce531767c8e6b56f004d9d3a4cde9173a5a11ef40733a86cb432cadd2b.IsOrderBornology.of_isCompactIcc (x : α)
    (bddBelow_ball : ∀ r, BddBelow (closedBall x r))
    (bddAbove_ball : ∀ r, BddAbove (closedBall x r)) : IsOrderBornology α where
  isBounded_iff_bddBelow_bddAbove s := by
    refine ⟨?_, fun hs ↦ Metric.isBounded_of_bddAbove_of_bddBelow hs.2 hs.1⟩
    rw [Metric.isBounded_iff_subset_closedBall x]
    rintro ⟨r, hr⟩
    exact ⟨(bddBelow_ball _).mono hr, (bddAbove_ball _).mono hr⟩

end CompactIccSpace

section CompactIccSpace_abs

variable {α : Type*} [AddCommGroup α] [LinearOrder α] [IsOrderedAddMonoid α] [PseudoMetricSpace α]
  [CompactIccSpace α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Bounded/Variantf55d203f2598802f3925c7b336e6fed6cc6dab01ab3fe7c8740c6fcc2101d874.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b44879c772a201808447253625cf36f8799167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
