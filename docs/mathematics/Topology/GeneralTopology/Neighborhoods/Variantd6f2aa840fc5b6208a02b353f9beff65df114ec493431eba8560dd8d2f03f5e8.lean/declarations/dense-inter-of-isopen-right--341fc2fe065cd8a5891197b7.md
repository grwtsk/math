# Dense.inter_of_isOpen_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:346190ad-b5d2-1d7c-9a95-df2eb808e581",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0a38bf9-6348-0077-c426-45b0d8c8174e",
  "kind": "theorem",
  "lexical_name": "Dense.inter_of_isOpen_right",
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
  "slug": "dense-inter-of-isopen-right--341fc2fe065cd8a5891197b7",
  "source": {
    "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:341fc2fe065cd8a5891197b7d974c9f6977f8ef9dd82756e96702fa309e18e9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0a38bf9-6348-0077-c426-45b0d8c8174e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.inter_of_isOpen_right (hs : Dense s) (ht : Dense t) (hto : IsOpen t) :
    Dense (s ∩ t) :=
  inter_comm t s ▸ ht.inter_of_isOpen_left hs hto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1786220817deb3a9d38e9f59e93bd22fafd0dd34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
