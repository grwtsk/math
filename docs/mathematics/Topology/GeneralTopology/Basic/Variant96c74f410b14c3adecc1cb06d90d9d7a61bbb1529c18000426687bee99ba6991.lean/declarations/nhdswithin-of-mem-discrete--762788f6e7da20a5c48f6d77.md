# nhdsWithin_of_mem_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d39660bfd78f367e80c7ee07b36871de306e3f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 875,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dabe0723-a47a-72bc-ffea-8e5d2ff76f46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3205e79a-e01b-2e90-4efc-0fb2b08e504c",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_of_mem_discrete",
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
  "slug": "nhdswithin-of-mem-discrete--762788f6e7da20a5c48f6d77",
  "source": {
    "blob": "2d39660bfd78f367e80c7ee07b36871de306e3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 875,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:762788f6e7da20a5c48f6d771dd77776294fc1b53753b2cde3e4392606c653db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3205e79a-e01b-2e90-4efc-0fb2b08e504c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsWithin_of_mem_discrete {s : Set X} (hs : IsDiscrete s) {x : X} (hx : x ∈ s) :
    𝓝[s] x = pure x :=
  (le_pure_iff.2 <| singleton_mem_nhdsWithin_of_mem_discrete hs hx).antisymm (pure_le_nhdsWithin hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d39660bfd78f367e80c7ee07b36871de306e3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
