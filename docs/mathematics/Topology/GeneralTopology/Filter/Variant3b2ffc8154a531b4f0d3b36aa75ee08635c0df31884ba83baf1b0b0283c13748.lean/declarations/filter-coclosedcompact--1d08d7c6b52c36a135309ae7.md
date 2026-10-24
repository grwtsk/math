# Filter.coclosedCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70c61c63a67af1d96ab607122e0b4396fe8529a871b1ffaef648237c9da060d7",
  "kind": "def",
  "lexical_name": "Filter.coclosedCompact",
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
  "slug": "filter-coclosedcompact--1d08d7c6b52c36a135309ae7",
  "source": {
    "blob": "343fd3e5f576a8e0f0f040eb2df8e5c309106655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 358,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant3b2ffc8154a531b4f0d3b36aa75ee08635c0df31884ba83baf1b0b0283c13748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d08d7c6b52c36a135309ae7d8bbfd075c23597395861fd0ca3c2ee0c3ff6185",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant3b2ffc8154a531b4f0d3b36aa75ee08635c0df31884ba83baf1b0b0283c13748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70c61c63a67af1d96ab607122e0b4396fe8529a871b1ffaef648237c9da060d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Filter.coclosedCompact : Filter X :=
  ⨅ (s : Set X) (_ : IsClosed s) (_ : IsCompact s), 𝓟 sᶜ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant3b2ffc8154a531b4f0d3b36aa75ee08635c0df31884ba83baf1b0b0283c13748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant3b2ffc8154a531b4f0d3b36aa75ee08635c0df31884ba83baf1b0b0283c13748.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343fd3e5f576a8e0f0f040eb2df8e5c309106655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
