# handlePostRequestSpecialCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81a844ed79776a17858242c92998b1d8e10b5a0f9b8c1e6159e9562eb272046c",
  "kind": "def",
  "lexical_name": "handlePostRequestSpecialCases",
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
  "slug": "handlepostrequestspecialcases--474faa7b51949806975f04f9",
  "source": {
    "blob": "cf8058ac800a67394e26aa4752539ddd979877c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 804,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:474faa7b51949806975f04f9a71f9f0da6a2c087a8569c98d88db9014a374f0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81a844ed79776a17858242c92998b1d8e10b5a0f9b8c1e6159e9562eb272046c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handlePostRequestSpecialCases (id : RequestID) (method : String) (params : Json)
      (task : RequestTask SerializedLspResponse) : RequestM (RequestTask SerializedLspResponse) := do
    let doc ← RequestM.readDoc
    match method with
    | "textDocument/codeAction" =>
      let .ok (params : CodeActionParams) := fromJson? params
        | return task
      RequestM.mapRequestTaskCostly task fun r => do
        let some response := r.response?
          | return r
        let isSourceAction := params.context.only?.any fun only =>
            only.contains "source" || only.contains "source.organizeImports"
        if isSourceAction then
          let unknownIdentifierRanges ← waitAllUnknownIdentifierMessageRanges doc
          if unknownIdentifierRanges.isEmpty then
            return r
          let .ok (codeActions : Array CodeAction) := fromJson? response
            | return r
          let response := toJson <| codeActions.push <| importAllUnknownIdentifiersCodeAction params "source.organizeImports"
          return { r with response? := response, serialized := response.compress }
        else
          let requestedRange := doc.meta.text.lspRangeToUtf8Range params.range
          let (unknownIdentifierRanges, isAnyUnknownIdentifierMessage) ← waitUnknownIdentifierRanges doc requestedRange
          if unknownIdentifierRanges.isEmpty then
            return r
          let kind :=
            if isAnyUnknownIdentifierMessage then
              "quickfix"
            else
              "refactor"
          let .ok (codeActions : Array CodeAction) := fromJson? response
            | return r
          RequestM.checkCancelled
          -- Since computing the unknown identifier code actions is *really* expensive,
          -- we only do it when the user has stopped typing for a second.
          IO.sleep 1000
          RequestM.checkCancelled
          let unknownIdentifierCodeActions ← handleUnknownIdentifierCodeAction id params requestedRange kind
          let response := toJson <| codeActions ++ unknownIdentifierCodeActions
          return { r with response? := response, serialized := response.compress }
    | _ =>
      return task

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8058ac800a67394e26aa4752539ddd979877c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
