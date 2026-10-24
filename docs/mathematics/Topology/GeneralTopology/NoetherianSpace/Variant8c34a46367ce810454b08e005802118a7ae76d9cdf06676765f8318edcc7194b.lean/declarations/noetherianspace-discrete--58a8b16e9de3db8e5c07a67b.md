# NoetherianSpace.discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290392ea-9ae2-33f8-d894-813152ecad67",
  "kind": "theorem",
  "lexical_name": "NoetherianSpace.discrete",
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
  "slug": "noetherianspace-discrete--58a8b16e9de3db8e5c07a67b",
  "source": {
    "blob": "44974b9c146f4c833c82f6cc72737d762d723de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a8b16e9de3db8e5c07a67b3eaf7c6e75db587f9e1952e2c334a9301102b273",
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

Occurrence: `result:290392ea-9ae2-33f8-d894-813152ecad67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoetherianSpace.discrete [NoetherianSpace α] [T2Space α] : DiscreteTopology α :=
  ⟨eq_bot_iff.mpr fun _ _ => isClosed_compl_iff.mp (NoetherianSpace.isCompact _).isClosed⟩
#align topological_space.noetherian_space.discrete TopologicalSpace.NoetherianSpace.discrete

attribute [local instance] NoetherianSpace.discrete

/-- Spaces that are both Noetherian and Hausdorff are finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44974b9c146f4c833c82f6cc72737d762d723de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
