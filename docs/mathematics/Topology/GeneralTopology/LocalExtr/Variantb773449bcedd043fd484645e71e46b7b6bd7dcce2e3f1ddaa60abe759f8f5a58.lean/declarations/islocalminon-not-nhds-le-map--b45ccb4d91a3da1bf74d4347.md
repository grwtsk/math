# IsLocalMinOn.not_nhds_le_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "674aef94725181532a9776d3133c835f6016b867",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:954d52ba-fd23-9c55-56d0-94a310176135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c630efc6-2245-f7c0-55d6-bddb25a2fd62",
  "kind": "theorem",
  "lexical_name": "IsLocalMinOn.not_nhds_le_map",
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
  "slug": "islocalminon-not-nhds-le-map--b45ccb4d91a3da1bf74d4347",
  "source": {
    "blob": "674aef94725181532a9776d3133c835f6016b867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b45ccb4d91a3da1bf74d434722f53f176faa8de4c5b1914c6e662e9a28f1a783",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c630efc6-2245-f7c0-55d6-bddb25a2fd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalMinOn.not_nhds_le_map [TopologicalSpace β] (hf : IsLocalMinOn f s a)
    [NeBot (𝓝[<] f a)] : ¬𝓝 (f a) ≤ map f (𝓝[s] a) := fun hle =>
  have : ∀ᶠ y in 𝓝[<] f a, f a ≤ y := (eventually_map.2 hf).filter_mono (inf_le_left.trans hle)
  let ⟨_y, hy⟩ := (this.and self_mem_nhdsWithin).exists
  hy.1.not_lt hy.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674aef94725181532a9776d3133c835f6016b867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
