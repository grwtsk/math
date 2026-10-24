# isOpen_inter_eq_singleton_of_mem_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48556c7a-8842-0b89-0f45-4442d5abf560",
  "kind": "theorem",
  "lexical_name": "isOpen_inter_eq_singleton_of_mem_discrete",
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
  "slug": "isopen-inter-eq-singleton-of-mem-discrete--8690f97dd0065f797a02672e",
  "source": {
    "blob": "c717452f9310dda1e60e8cbc0e58775814c1b268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 810,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8690f97dd0065f797a02672e89a15d4bd58d9c81b3ecd04429c95e8d3533f8a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48556c7a-8842-0b89-0f45-4442d5abf560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_inter_eq_singleton_of_mem_discrete {s : Set X} [DiscreteTopology s] {x : X}
    (hx : x ∈ s) : ∃ U : Set X, IsOpen U ∧ U ∩ s = {x} := by
  obtain ⟨U, hU_nhds, hU_inter⟩ := nhds_inter_eq_singleton_of_mem_discrete hx
  obtain ⟨t, ht_sub, ht_open, ht_x⟩ := mem_nhds_iff.mp hU_nhds
  refine ⟨t, ht_open, Set.Subset.antisymm ?_ ?_⟩
  · exact hU_inter ▸ Set.inter_subset_inter_left s ht_sub
  · rw [Set.subset_inter_iff, Set.singleton_subset_iff, Set.singleton_subset_iff]
    exact ⟨ht_x, hx⟩

/-- For point `x` in a discrete subset `s` of a topological space, there is a set `U`
such that
1. `U` is a punctured neighborhood of `x` (ie. `U ∪ {x}` is a neighbourhood of `x`),
2. `U` is disjoint from `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a613ac5598acfbb56c978614e442734e1bf8b76ca9b24dcfb322ebb53004707.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c717452f9310dda1e60e8cbc0e58775814c1b268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
