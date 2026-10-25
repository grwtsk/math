# CodeActionOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcd365a9bb9b2c436087b17e14a68cc2d81b6009c76adaf3f498fb13d5cca876",
  "kind": "structure",
  "lexical_name": "CodeActionOptions",
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
  "slug": "codeactionoptions--5850bc23c01a30161d06b5cc",
  "source": {
    "blob": "4a19f51ba610750a956f80d7a9ee063651b90a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5850bc23c01a30161d06b5cc0afa5f3d59be7b75505be9350170a66a317c4389",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcd365a9bb9b2c436087b17e14a68cc2d81b6009c76adaf3f498fb13d5cca876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CodeActionOptions extends WorkDoneProgressOptions where
  /-- CodeActionKinds that this server may return.

  The list of kinds may be generic, such as `"refactor"`, or the server may list out every specific kind they provide. -/
  codeActionKinds? : Option (Array CodeActionKind) := none
  /-- The server provides support to resolve additional information for a code action. -/
  resolveProvider? : Option Bool := none
  deriving ToJson, FromJson

/--  A code action represents a change that can be performed in code, e.g. to fix a problem or to refactor code.

A CodeAction should set either `edit` and/or a `command`.
If both are supplied, the `edit` is applied first, then the `command` is executed.
If none are supplied, the client makes a `codeAction/resolve` JSON-RPC request to compute the edit.

[reference](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#codeAction) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CodeActions/Variantfd0408fa67b1680168ce911bb7d09c4bf12becbd7152c700f6d134003f48af13.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a19f51ba610750a956f80d7a9ee063651b90a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
