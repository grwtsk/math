# exists_mem_nhdsSet_isCompact_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c543baa6-c887-76e4-2fd9-b66b44627b86",
  "kind": "lemma",
  "lexical_name": "exists_mem_nhdsSet_isCompact_mapsTo",
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
  "slug": "exists-mem-nhdsset-iscompact-mapsto--e6afd9632e06dc7bbe4453eb",
  "source": {
    "blob": "5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6afd9632e06dc7bbe4453eb2418e457647d68a221cef8d1df9048046e7e2683",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c543baa6-c887-76e4-2fd9-b66b44627b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_nhdsSet_isCompact_mapsTo [LocallyCompactPair X Y] {f : X → Y} {K : Set X}
    {U : Set Y} (hf : Continuous f) (hK : IsCompact K) (hU : IsOpen U) (hKU : MapsTo f K U) :
    ∃ L ∈ 𝓝ˢ K, IsCompact L ∧ MapsTo f L U := by
  choose! V hxV hVc hVU using fun x (hx : x ∈ K) ↦
    exists_mem_nhds_isCompact_mapsTo hf (hU.mem_nhds (hKU hx))
  rcases hK.elim_nhds_subcover_nhdsSet hxV with ⟨s, hsK, hKs⟩
  exact ⟨_, hKs, s.isCompact_biUnion fun x hx ↦ hVc x (hsK x hx), mapsTo_iUnion₂.2 fun x hx ↦
    hVU x (hsK x hx)⟩

/-- In a locally compact space, for every containment `K ⊆ U` of a compact set `K` in an open
  set `U`, there is a compact neighborhood `L` such that `K ⊆ L ⊆ U`: equivalently, there is a
  compact `L` such that `K ⊆ interior L` and `L ⊆ U`.
  See also `exists_compact_closed_between`, in which one guarantees additionally that `L` is closed
  if the space is regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant284a7f798833941d09f9b266eaa5dc8eb991e2b1fe8ecd20b0527e41d3a5bc3e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e21cdfc86a9ba8f5606e257466cd71cc5d3cff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
