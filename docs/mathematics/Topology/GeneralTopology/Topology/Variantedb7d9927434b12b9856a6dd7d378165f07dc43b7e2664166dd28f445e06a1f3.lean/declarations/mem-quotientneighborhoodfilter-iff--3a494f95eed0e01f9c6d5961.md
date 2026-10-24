# mem_quotientNeighborhoodFilter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8aaf998fec920645c7010dc1f127ab30499baab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:216422cf-c5de-1c97-f21e-2d972ae8f446",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7db9e95-374b-fbcc-7962-855258aa5c89",
  "kind": "theorem",
  "lexical_name": "mem_quotientNeighborhoodFilter_iff",
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
  "slug": "mem-quotientneighborhoodfilter-iff--3a494f95eed0e01f9c6d5961",
  "source": {
    "blob": "d8aaf998fec920645c7010dc1f127ab30499baab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a494f95eed0e01f9c6d59618b8eee79aa8065891dc81046e9be4c9655cc07a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7db9e95-374b-fbcc-7962-855258aa5c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_quotientNeighborhoodFilter_iff
    (intrinsic : Setoid State)
    (state : State)
    (neighborhood : Set (IntrinsicQuotient intrinsic)) :
    neighborhood ∈ quotientNeighborhoodFilter intrinsic state ↔
      neighborhood ∈ quotientNeighborhoods intrinsic state := by
  change
    neighborhood ∈
        @nhds _ (quotientTopology intrinsic)
          (quotientMap intrinsic state) ↔
      ∃ openSet,
        @IsOpen _ (quotientTopology intrinsic) openSet ∧
        quotientMap intrinsic state ∈ openSet ∧
        openSet ⊆ neighborhood
  constructor
  · intro member
    rcases
      (@mem_nhds_iff
        (IntrinsicQuotient intrinsic)
        (quotientTopology intrinsic)
        (quotientMap intrinsic state)
        neighborhood).mp member with
      ⟨openSet, subset, openSetOpen, classMember⟩
    exact ⟨openSet, openSetOpen, classMember, subset⟩
  · rintro ⟨openSet, openSetOpen, classMember, subset⟩
    exact
      (@mem_nhds_iff
        (IntrinsicQuotient intrinsic)
        (quotientTopology intrinsic)
        (quotientMap intrinsic state)
        neighborhood).mpr
        ⟨openSet, subset, openSetOpen, classMember⟩

/-- Saturated state-space neighborhoods obtained from quotient neighborhoods. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8aaf998fec920645c7010dc1f127ab30499baab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
