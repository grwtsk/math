# tendsto_of_tendstoLocallyUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6990abb7-7973-f2a1-9fca-14535f2d5f42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e578427b-c840-c221-cfa5-c7d504e4b55e",
  "kind": "theorem",
  "lexical_name": "tendsto_of_tendstoLocallyUniformly",
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
  "slug": "tendsto-of-tendstolocallyuniformly--70bfa1e38f3d7ab37c8a60b6",
  "source": {
    "blob": "8683126735ebafcd4497cb58bee1f000b20b3916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bfa1e38f3d7ab37c8a60b63307c4b45a5c6c24e095f3e9a52ed649440ae4ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e578427b-c840-c221-cfa5-c7d504e4b55e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_tendstoLocallyUniformly (h : TendstoLocallyUniformly (fun i a => F i a) f p) :
    Tendsto F p (𝓝 f) := by
  rw [tendsto_iff_forall_isCompact_tendstoUniformlyOn]
  intro K hK
  rw [← tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hK]
  exact h.tendstoLocallyUniformlyOn

/-- In a weakly locally compact space,
convergence in the compact-open topology is the same as locally uniform convergence.

The right-to-left implication holds in any topological space,
see `ContinuousMap.tendsto_of_tendstoLocallyUniformly`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8683126735ebafcd4497cb58bee1f000b20b3916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
