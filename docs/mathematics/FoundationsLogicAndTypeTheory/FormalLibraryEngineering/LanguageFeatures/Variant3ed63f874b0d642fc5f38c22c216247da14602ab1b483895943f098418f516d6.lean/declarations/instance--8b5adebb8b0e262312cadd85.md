# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56e90c8258062b36b4523bd2e74d6e79e5d2460ac41568c37b3e9a78ea5f3284",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8b5adebb8b0e262312cadd85",
  "source": {
    "blob": "7763c8cc9d7971362df672b5fc497ca9ac71c0f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 327,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant3ed63f874b0d642fc5f38c22c216247da14602ab1b483895943f098418f516d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b5adebb8b0e262312cadd85cfd54d8c766494abe3ed9bb310c03dec3e20ccb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant3ed63f874b0d642fc5f38c22c216247da14602ab1b483895943f098418f516d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56e90c8258062b36b4523bd2e74d6e79e5d2460ac41568c37b3e9a78ea5f3284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToJson SymbolKind where
  toJson
    | .file          => 1
    | .module        => 2
    | .namespace     => 3
    | .package       => 4
    | .class         => 5
    | .method        => 6
    | .property      => 7
    | .field         => 8
    | .constructor   => 9
    | .enum          => 10
    | .interface     => 11
    | .function      => 12
    | .variable      => 13
    | .constant      => 14
    | .string        => 15
    | .number        => 16
    | .boolean       => 17
    | .array         => 18
    | .object        => 19
    | .key           => 20
    | .null          => 21
    | .enumMember    => 22
    | .struct        => 23
    | .event         => 24
    | .operator      => 25
    | .typeParameter => 26

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant3ed63f874b0d642fc5f38c22c216247da14602ab1b483895943f098418f516d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LanguageFeatures/Variant3ed63f874b0d642fc5f38c22c216247da14602ab1b483895943f098418f516d6.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7763c8cc9d7971362df672b5fc497ca9ac71c0f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
