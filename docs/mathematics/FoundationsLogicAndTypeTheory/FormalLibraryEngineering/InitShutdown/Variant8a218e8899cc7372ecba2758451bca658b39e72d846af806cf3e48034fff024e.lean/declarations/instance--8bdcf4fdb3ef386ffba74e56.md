# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d389eb6e657ac3c5eae887391cf8a11ec70f7e568c1d7b82eca656a0b7eb4bee",
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
  "slug": "instance--8bdcf4fdb3ef386ffba74e56",
  "source": {
    "blob": "a91cb35db48be7d1a1c18d215b965b21d32be828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitShutdown/Variant8a218e8899cc7372ecba2758451bca658b39e72d846af806cf3e48034fff024e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bdcf4fdb3ef386ffba74e563928fed74d4953b331550a2a9ca07a33b6df1d58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitShutdown/Variant8a218e8899cc7372ecba2758451bca658b39e72d846af806cf3e48034fff024e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d389eb6e657ac3c5eae887391cf8a11ec70f7e568c1d7b82eca656a0b7eb4bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromJson InitializeParams where
  fromJson? j := do
    /- Many of these params can be null instead of not present.
    For ease of implementation, we're liberal:
    missing params, wrong json types and null all map to none,
    even if LSP sometimes only allows some subset of these.
    In cases where LSP makes a meaningful distinction
    between different kinds of missing values, we'll
    follow accordingly. -/
    let processId? := j.getObjValAs? Int "processId"
    let clientInfo? := j.getObjValAs? ClientInfo "clientInfo"
    let rootUri? := j.getObjValAs? String "rootUri"
    let initializationOptions? := j.getObjValAs? InitializationOptions "initializationOptions"
    let capabilities ← j.getObjValAs? ClientCapabilities "capabilities"
    let trace := (j.getObjValAs? Trace "trace").toOption.getD Trace.off
    let workspaceFolders? := j.getObjValAs? (Array WorkspaceFolder) "workspaceFolders"
    return ⟨
      processId?.toOption,
      clientInfo?.toOption,
      rootUri?.toOption,
      initializationOptions?.toOption,
      capabilities,
      trace,
      workspaceFolders?.toOption⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitShutdown/Variant8a218e8899cc7372ecba2758451bca658b39e72d846af806cf3e48034fff024e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitShutdown/Variant8a218e8899cc7372ecba2758451bca658b39e72d846af806cf3e48034fff024e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91cb35db48be7d1a1c18d215b965b21d32be828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
