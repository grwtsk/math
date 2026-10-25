# NamingEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8376471f38035a5b41b8f413b77fc5e372fe020719d8674acc9924a1040dc25b",
  "kind": "structure",
  "lexical_name": "NamingEdge",
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
  "slug": "namingedge--d6e650b48fe21d39ed3e9157",
  "source": {
    "blob": "67e519975f3d85ed5b39144901c0d9eac302a60f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6e650b48fe21d39ed3e915725035c34f4f510f781db5223905e7d72bc1a7cbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8376471f38035a5b41b8f413b77fc5e372fe020719d8674acc9924a1040dc25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NamingEdge where
  source : NamingVertex
  target : NamingVertex
  kind : NamingEventKind
  actor : NamingActor
  inputDigest : Digest
  outputDigest : Digest
  recordedDelta : NameFeatureVector

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/A82c7e19a94fed8eb/Variant89948592d5cc999a39f45c3c351b64b1069ee1ecb5d5660836102cd7ec8e8344.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e519975f3d85ed5b39144901c0d9eac302a60f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
