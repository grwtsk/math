# eventually_membership_eq_of_not_mem_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ecd2acb-7c7a-d3e3-88a7-fb22ed1912d0",
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
  "slug": "eventually-membership-eq-of-not-mem-frontier--61db6824b0173bbba2de3977",
  "source": {
    "blob": "e7b0f7037ba95af8c09114f31e78989bff627c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61db6824b0173bbba2de397760090fb99230e285ea555cb705014236269a82ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ecd2acb-7c7a-d3e3-88a7-fb22ed1912d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b0f7037ba95af8c09114f31e78989bff627c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
