# processDirective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1b48d772164fdd3ed3e595be377f5282dff9dd51da64a8007013128cdba2caa",
  "kind": "def",
  "lexical_name": "processDirective",
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
  "slug": "processdirective--b7253457a7af9707e68eadbe",
  "source": {
    "blob": "ebf9d6d73f7af9eb7b494c810e872de8016a4dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 686,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7253457a7af9707e68eadbe55f77b2f3011c804b3f09f71a7da06be741fd30d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1b48d772164fdd3ed3e595be377f5282dff9dd51da64a8007013128cdba2caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processDirective (_ws directive : String) (directiveTargetLineNo : Nat)
    (directiveTargetColumn : Nat) : RunnerM Unit := do
  let directive := directive.drop 1
  let colon := directive.find ':'
  let method := directive.sliceTo colon |>.trimAscii |>.copy
  -- TODO: correctly compute in presence of Unicode
  let pos : Lsp.Position := { line := directiveTargetLineNo, character := directiveTargetColumn }
  let params :=
    if h : ¬colon.IsAtEnd then
      directive.sliceFrom (colon.next h) |>.trimAscii.copy
    else "{}"
  modify fun s => { s with pos, method, params }
  match method with
  -- `delete: "foo"` deletes the given string's number of characters at the given position.
  -- We do NOT check currently that the text at this position is indeed that string.
  -- `insert: "foo"` inserts the given string at the given position.
  -- `change: "foo" "bar"` is like `delete: "foo"` followed by `insert: "bar"` in one atomic step.
  | "delete" | "insert" | "change" => processEdit
  | "collectDiagnostics" => processCollectDiagnostics
  | "waitForILeans" => processWaitForILeans
  | "sync" => processSync
  | "waitFor" => processWaitFor
  | "codeAction" => processCodeAction
  | "interactiveDiagnostics" => processInteractiveDiagnostics
  | "goals" => processGoals
  | "termGoal" => processTermGoal
  | "widgets" => processWidgets
  | "completion" => processCompletion
  | "incomingCallHierarchy" => processIncomingCallHierarchy
  | "outgoingCallHierarchy" => processOutgoingCallHierarchy
  | "references" => processReferences
  | "symbols" => processSymbols
  | "moduleHierarchyImports" => processModuleHierarchyImports
  | "moduleHierarchyImportedBy" => processModuleHierarchyImportedBy
  | "inlayHints" => processInlayHints
  | _ => processGenericRequest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runner/Variant83225ab84920337695388e6dd4a6a9d3030042559706db7a27f0537acd1fd1f5.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebf9d6d73f7af9eb7b494c810e872de8016a4dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
