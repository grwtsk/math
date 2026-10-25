# getPanelWidgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f52f37440ed28403229b85cad95b3dea70af39c8f70ae755472c910357eb7d86",
  "kind": "def",
  "lexical_name": "getPanelWidgets",
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
  "slug": "getpanelwidgets--9b389dae08c4cc0c0b3f4fcf",
  "source": {
    "blob": "c428ee876d36b561eae78551f1063f851143cf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b389dae08c4cc0c0b3f4fcf0211c3bd948f64ba849970314bee709ef3e842f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f52f37440ed28403229b85cad95b3dea70af39c8f70ae755472c910357eb7d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getPanelWidgets (args : GetPanelWidgetsParams) : RequestM (RequestTask GetPanelWidgetsResponse)
    := do
  let doc ← readDoc
  let filemap := doc.meta.text
  let pos := filemap.lspPosToUtf8Pos args.pos
  withWaitFindSnap doc (·.endPos >= pos) (notFoundX := return ⟨∅⟩) fun snap => do
    let ws := customInfosAt? filemap snap.infoTree pos
    let mut widgets := #[]
    for w in ws do
      let some wi := w.value.get? PanelWidgetInfo
        -- We may encounter other custom infos of unknown type. Ignore them.
        | continue
      let some widgetDef := Widget.userWidgetRegistry.find? snap.env (wi.id ++ widgetDefPostfix)
        | throw <| RequestError.invalidParams s!"No registered widget source with id {wi.id}"
      widgets := widgets.push { wi with
        srcHash := widgetDef.javascriptHash
        range? := String.Range.toLspRange filemap <$> Syntax.getRange? w.stx
      }
    return {widgets}

@[widget]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c428ee876d36b561eae78551f1063f851143cf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
