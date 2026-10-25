# runAndCollectMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cb7f006d7179008f73c0bfad8a1f1a82b499c0cd7e4441470a89e890e11bf6a",
  "kind": "def",
  "lexical_name": "runAndCollectMessages",
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
  "slug": "runandcollectmessages--446d63abc84a491dc402d7f8",
  "source": {
    "blob": "7c2ee08defb381768cd32c43caab17a657ca1bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:446d63abc84a491dc402d7f8907e96d717ccfd57127822be4a1bacfc800e0edb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cb7f006d7179008f73c0bfad8a1f1a82b499c0cd7e4441470a89e890e11bf6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def runAndCollectMessages (cmd : Syntax) : CommandElabM (Array Message) := do
  let saved := (← get).messages
  -- `elabCommandTopLevel` resets the info state; save the trees recorded so far (e.g. for the
  -- postprocessor term) so that hovers and completions keep working
  let savedTrees := (← get).infoState.trees
  modify fun st => { st with messages := {} }
  try
    -- do not forward the snapshot as we don't want messages assigned to it to leak outside
    withReader ({ · with snap? := none }) do
      elabCommandTopLevel cmd
    let msgs := (← get).messages ++
      (← get).snapshotTasks.foldl (· ++ ·.get.getAll.foldl (· ++ ·.diagnostics.msgLog) .empty) .empty
    modify fun st => { st with snapshotTasks := #[], messages := {} }
    return msgs.toArray
  finally
    modify fun st => { st with
      infoState.trees := savedTrees ++ st.infoState.trees
      messages        := saved ++ st.messages }

/--
Evaluates a term of type `TracePostprocessor`, with the `Lean.PostprocessTraces` namespace opened so
that the built-in operations and patterns are available unqualified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2ee08defb381768cd32c43caab17a657ca1bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
