# UInt16.and_lt_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28cff6606b591e9dcc1d1207c4b4d451d3378e45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93742e994f15a28efddb2905405e54244a5adfcc245d8bfe1e4ff47ee6396184.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6a7e0f9-c332-e414-df40-edd63d2cf590",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d8f8c3b-3fc7-cbf0-215b-7c8348d83acd",
  "kind": "theorem",
  "lexical_name": "UInt16.and_lt_add_one",
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
  "slug": "uint16-and-lt-add-one--1fde05e3eb6a8a9aa3355ede",
  "source": {
    "blob": "28cff6606b591e9dcc1d1207c4b4d451d3378e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1346,
    "line": 1345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant93742e994f15a28efddb2905405e54244a5adfcc245d8bfe1e4ff47ee6396184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fde05e3eb6a8a9aa3355ede19cf19cc53a072307ca323c2ac5925580bdb5633",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant93742e994f15a28efddb2905405e54244a5adfcc245d8bfe1e4ff47ee6396184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8f8c3b-3fc7-cbf0-215b-7c8348d83acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1345–1346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UInt16.and_lt_add_one {b c : UInt16} (h : c ≠ -1) : b &&& c < c + 1 :=
  UInt16.lt_of_le_of_lt UInt16.and_le_right (UInt16.lt_add_one h)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant93742e994f15a28efddb2905405e54244a5adfcc245d8bfe1e4ff47ee6396184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant93742e994f15a28efddb2905405e54244a5adfcc245d8bfe1e4ff47ee6396184.lean#L1345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28cff6606b591e9dcc1d1207c4b4d451d3378e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
