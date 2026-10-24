# _root_.quasispectrum.instCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e909b1d6dd4b88e26893c5a8ab70966f1136a79d396a7b7b0ab7cdba97ae5913",
  "kind": "instance",
  "lexical_name": "_root_.quasispectrum.instCompactSpace",
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
  "slug": "root-quasispectrum-instcompactspace--45ad3b00405871d0a2b8e196",
  "source": {
    "blob": "bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45ad3b00405871d0a2b8e19649bf5912b0b12dc773373b90c1cdf7533bd59e24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e909b1d6dd4b88e26893c5a8ab70966f1136a79d396a7b7b0ab7cdba97ae5913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.quasispectrum.instCompactSpace (a : B) :
    CompactSpace (quasispectrum 𝕜 a) :=
  isCompact_iff_compactSpace.mp <| quasispectrum.isCompact a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
