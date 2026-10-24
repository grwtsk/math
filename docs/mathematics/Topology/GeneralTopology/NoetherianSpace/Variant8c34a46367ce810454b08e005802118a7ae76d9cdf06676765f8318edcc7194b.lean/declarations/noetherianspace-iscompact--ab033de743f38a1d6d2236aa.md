# NoetherianSpace.isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9530b89-d5ef-e329-16fb-05a80de7a4d6",
  "kind": "theorem",
  "lexical_name": "NoetherianSpace.isCompact",
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
  "slug": "noetherianspace-iscompact--ab033de743f38a1d6d2236aa",
  "source": {
    "blob": "44974b9c146f4c833c82f6cc72737d762d723de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab033de743f38a1d6d2236aa4ae11a66d1f3a171be710f088197642a69e9c756",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9530b89-d5ef-e329-16fb-05a80de7a4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem NoetherianSpace.isCompact [NoetherianSpace α] (s : Set α) : IsCompact s := by
  refine isCompact_iff_finite_subcover.2 fun U hUo hs => ?_
  rcases ((noetherianSpace_iff_opens α).mp ‹_› ⟨⋃ i, U i, isOpen_iUnion hUo⟩).elim_finite_subcover U
    hUo Set.Subset.rfl with ⟨t, ht⟩
  exact ⟨t, hs.trans ht⟩
#align topological_space.noetherian_space.is_compact TopologicalSpace.NoetherianSpace.isCompact

-- porting note: fixed NS
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44974b9c146f4c833c82f6cc72737d762d723de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
