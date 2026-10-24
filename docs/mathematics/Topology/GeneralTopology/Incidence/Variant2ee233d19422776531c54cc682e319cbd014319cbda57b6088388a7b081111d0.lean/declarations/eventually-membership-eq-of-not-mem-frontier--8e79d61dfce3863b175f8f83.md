# eventually_membership_eq_of_not_mem_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84510d7c244b755477f6cab1b35769e0d3da2b37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dc8e2ad-3195-622f-c795-69a738bb2424",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ca8bbc8-9234-1698-8228-886e7bf874b0",
  "kind": "theorem",
  "lexical_name": "eventually_membership_eq_of_not_mem_frontier",
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
  "slug": "eventually-membership-eq-of-not-mem-frontier--8e79d61dfce3863b175f8f83",
  "source": {
    "blob": "84510d7c244b755477f6cab1b35769e0d3da2b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e79d61dfce3863b175f8f839244df358d2bff381f57a337390025e2dd22a0a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ca8bbc8-9234-1698-8228-886e7bf874b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_membership_eq_of_not_mem_frontier
    [TopologicalSpace Time] [TopologicalSpace State]
    (path : Time → State) (U : Set State) (t : Time)
    (hpath : ContinuousAt path t)
    (hfrontier : path t ∉ frontier U) :
    ∀ᶠ s in 𝓝 t, (path s ∈ U ↔ path t ∈ U) := by
  by_cases ht : path t ∈ U
  · have hinterior : path t ∈ interior U :=
      (mem_interior_iff_notMem_frontier ht).2 hfrontier
    filter_upwards [hpath (isOpen_interior.mem_nhds hinterior)] with s hs
    exact ⟨fun _ => ht, fun _ => interior_subset hs⟩
  · have htcompl : path t ∈ Uᶜ := ht
    have hfrontierCompl : path t ∉ frontier Uᶜ := by
      simpa [frontier_compl] using hfrontier
    have hinterior : path t ∈ interior Uᶜ :=
      (mem_interior_iff_notMem_frontier htcompl).2 hfrontierCompl
    filter_upwards [hpath (isOpen_interior.mem_nhds hinterior)] with s hs
    have hsU : path s ∉ U := interior_subset hs
    exact ⟨fun h => (hsU h).elim, fun h => (ht h).elim⟩

/-- Every genuine local membership change occurs on the observed frontier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84510d7c244b755477f6cab1b35769e0d3da2b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
