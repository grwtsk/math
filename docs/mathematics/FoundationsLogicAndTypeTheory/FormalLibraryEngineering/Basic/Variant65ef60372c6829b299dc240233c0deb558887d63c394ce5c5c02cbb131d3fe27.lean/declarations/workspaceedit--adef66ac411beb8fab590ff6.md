# WorkspaceEdit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d54e24ca61654468b5d42fa490748a558931c4788837e9ddc12f859284962b1",
  "kind": "structure",
  "lexical_name": "WorkspaceEdit",
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
  "slug": "workspaceedit--adef66ac411beb8fab590ff6",
  "source": {
    "blob": "ee3c970c401054f3f7fcda360e52f1dd8661e02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adef66ac411beb8fab590ff61b28264486d69ddf02228550429389619f092569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d54e24ca61654468b5d42fa490748a558931c4788837e9ddc12f859284962b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WorkspaceEdit where
  /-- Changes to existing resources. -/
  changes? : Option (Std.TreeMap DocumentUri TextEditBatch) := none
  /-- Depending on the client capability
    `workspace.workspaceEdit.resourceOperations` document changes are either
    an array of `TextDocumentEdit`s to express changes to n different text
    documents where each text document edit addresses a specific version of
    a text document. Or it can contain above `TextDocumentEdit`s mixed with
    create, rename and delete file / folder operations.

    Whether a client supports versioned document edits is expressed via
    `workspace.workspaceEdit.documentChanges` client capability.

    If a client neither supports `documentChanges` nor
    `workspace.workspaceEdit.resourceOperations` then only plain `TextEdit`s
    using the `changes` property are supported. -/
  documentChanges? : Option (Array DocumentChange) := none
  /-- A map of change annotations that can be referenced in
      `AnnotatedTextEdit`s or create, rename and delete file / folder
      operations.

      Whether clients honor this property depends on the client capability
      `workspace.changeAnnotationSupport`. -/
  changeAnnotations? : Option (Std.TreeMap String ChangeAnnotation) := none
  deriving ToJson, FromJson

namespace WorkspaceEdit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65ef60372c6829b299dc240233c0deb558887d63c394ce5c5c02cbb131d3fe27.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c970c401054f3f7fcda360e52f1dd8661e02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
