# tendsto_compactOpen_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13f01ec2-a2f2-3252-2258-09c70e940269",
  "kind": "theorem",
  "lexical_name": "tendsto_compactOpen_restrict",
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
  "slug": "tendsto-compactopen-restrict--2cc924f9e16df8bc1227150d",
  "source": {
    "blob": "4147406fcaf630234d7511a9db4a78a189f9b18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 288,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc924f9e16df8bc1227150d1dd99578110f0a1ae6d117b2724072bd8356b5a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13f01ec2-a2f2-3252-2258-09c70e940269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_compactOpen_restrict {ι : Type*} {l : Filter ι} {F : ι → C(α, β)} {f : C(α, β)}
    (hFf : Filter.Tendsto F l (𝓝 f)) (s : Set α) :
    Filter.Tendsto (fun i => (F i).restrict s) l (𝓝 (f.restrict s)) :=
  (continuous_restrict s).continuousAt.tendsto.comp hFf
#align continuous_map.tendsto_compact_open_restrict ContinuousMap.tendsto_compactOpen_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4147406fcaf630234d7511a9db4a78a189f9b18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
