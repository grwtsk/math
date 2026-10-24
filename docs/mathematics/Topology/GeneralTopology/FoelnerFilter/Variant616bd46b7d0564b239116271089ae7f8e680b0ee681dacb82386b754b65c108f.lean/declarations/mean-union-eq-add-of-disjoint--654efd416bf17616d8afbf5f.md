# mean_union_eq_add_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1b34e79-bc0e-7232-6541-cd8be263b77e",
  "kind": "theorem",
  "lexical_name": "mean_union_eq_add_of_disjoint",
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
  "slug": "mean-union-eq-add-of-disjoint--654efd416bf17616d8afbf5f",
  "source": {
    "blob": "9dc382502a9964b7efbbb15afdb03ea4e85504de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654efd416bf17616d8afbf5fc6713976fc584b80b19cce4b1113aac6ccffa431",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b34e79-bc0e-7232-6541-cd8be263b77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_union_eq_add_of_disjoint (hfoel : IsFoelner G μ u F)
    (s t : Set X) (ht : MeasurableSet t) (hdisj : Disjoint s t) :
    mean μ u F (s ∪ t) = mean μ u F s + mean μ u F t := by
  refine tendsto_nhds_unique_of_eventuallyEq
    (hfoel.tendsto_nhds_mean _) (hfoel.tendsto_nhds_mean _ |>.add <| hfoel.tendsto_nhds_mean _) ?_
  filter_upwards [hfoel.eventually_measurableSet] with i hi
  rw [union_inter_distrib_right,
    measure_union (hdisj.inter_left _ |>.inter_right _) (ht.inter hi), ENNReal.add_div]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc382502a9964b7efbbb15afdb03ea4e85504de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
