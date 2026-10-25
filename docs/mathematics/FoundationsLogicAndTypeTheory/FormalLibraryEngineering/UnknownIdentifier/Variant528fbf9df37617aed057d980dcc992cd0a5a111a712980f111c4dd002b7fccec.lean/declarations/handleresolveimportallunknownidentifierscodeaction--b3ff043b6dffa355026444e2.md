# handleResolveImportAllUnknownIdentifiersCodeAction?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56ded986ea035eac06c5d2c1820493ca1f577fc99c60a19ca429d7b8de3ad257",
  "kind": "def",
  "lexical_name": "handleResolveImportAllUnknownIdentifiersCodeAction?",
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
  "slug": "handleresolveimportallunknownidentifierscodeaction--b3ff043b6dffa355026444e2",
  "source": {
    "blob": "075ee31be8e98698d12b0c96ccf8b75f8b3df092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 346,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3ff043b6dffa355026444e2afb6784d335a63b218cb242ab3e58ad8b707d3e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56ded986ea035eac06c5d2c1820493ca1f577fc99c60a19ca429d7b8de3ad257`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleResolveImportAllUnknownIdentifiersCodeAction?
    (id                      : JsonRpc.RequestID)
    (action                  : CodeAction)
    (unknownIdentifierRanges : Array Lean.Syntax.Range)
    : RequestM (Option CodeAction) := do
  let rc ← read
  let doc := rc.doc
  let text := doc.meta.text
  let queries ← unknownIdentifierRanges.flatMapM fun unknownIdentifierRange =>
    computeQueries doc unknownIdentifierRange.stop
  if queries.isEmpty then
    return none
  let responseTask ← RequestM.sendServerRequest LeanQueryModuleParams LeanQueryModuleResponse "$/lean/queryModule" {
    sourceRequestID := id
    queries := queries.map (·.toLeanModuleQuery)
    : LeanQueryModuleParams
  }
  let .success response := responseTask.get
    | return none
  let headerStx := doc.initSnap.stx
  let importInsertionPos : Lsp.Position :=
    match headerStx.getTailPos? with
    | some headerTailPos => {
        line := (text.utf8PosToLspPos headerTailPos |>.line) + 1
        character := 0
      }
    | none => { line := 0, character := 0 }
  let importInsertionRange : Lsp.Range := ⟨importInsertionPos, importInsertionPos⟩
  let mut edits : Array TextEdit := #[]
  let mut imports : Std.HashSet Name := ∅
  for q in queries, result in response.queryResults do
    let some ⟨mod, decl, _⟩ := result.find? fun id =>
        id.isExactMatch && ! q.ctx.env.contains id.decl
      | continue
    if mod == q.ctx.env.mainModule then
      continue
    let insertion := q.determineInsertion decl
    if ! imports.contains mod then
      edits := edits.push {
        range := importInsertionRange
        newText := mkImportText q.ctx mod
      }
    edits := edits.push insertion.edit
    imports := imports.insert mod
  return some { action with
    edit? := WorkspaceEdit.ofTextDocumentEdit {
      textDocument := doc.versionedIdentifier
      edits
    }
  }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnknownIdentifier/Variant528fbf9df37617aed057d980dcc992cd0a5a111a712980f111c4dd002b7fccec.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075ee31be8e98698d12b0c96ccf8b75f8b3df092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
