# isEmpty_inter_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b569715541777893d6224cab848647db668ad74b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1020,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9724cf904f54f453fa1d8cb087fc380e7db4c599d7e97bfcf0ac095dd1002b54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dfe05a1-91b6-cd15-cc91-e258f109c1d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d0bedb5-7306-5c30-4c6f-8a44f91e830c",
  "kind": "theorem",
  "lexical_name": "isEmpty_inter_right",
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
  "slug": "isempty-inter-right--773c6a39d12f806d736defc3",
  "source": {
    "blob": "b569715541777893d6224cab848647db668ad74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 1020,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9724cf904f54f453fa1d8cb087fc380e7db4c599d7e97bfcf0ac095dd1002b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:773c6a39d12f806d736defc35c29bd340d129a41b9a91ce33980a1e6a30feb7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9724cf904f54f453fa1d8cb087fc380e7db4c599d7e97bfcf0ac095dd1002b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d0bedb5-7306-5c30-4c6f-8a44f91e830c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1020–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_inter_right [EquivBEq α] [LawfulHashable α] (h : m₂.isEmpty) :
    (m₁ ∩ m₂).isEmpty = true :=
  ExtHashMap.isEmpty_inter_right h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9724cf904f54f453fa1d8cb087fc380e7db4c599d7e97bfcf0ac095dd1002b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9724cf904f54f453fa1d8cb087fc380e7db4c599d7e97bfcf0ac095dd1002b54.lean#L1020).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b569715541777893d6224cab848647db668ad74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
