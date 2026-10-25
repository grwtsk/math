# getWidgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d61667dba4ffde0a3ba5e30fe03d7507a25a7bf173f822536ec1e2f7f39646c",
  "kind": "def",
  "lexical_name": "getWidgets",
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
  "slug": "getwidgets--c0e016c3cb2a969120a768df",
  "source": {
    "blob": "6ff6cbe097ef1684ff9ee7830835e2257d984341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0e016c3cb2a969120a768df18095b0082ad9be2c1f49e39b867deceb5a47112",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d61667dba4ffde0a3ba5e30fe03d7507a25a7bf173f822536ec1e2f7f39646c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getWidgets (pos : Lean.Lsp.Position) : RequestM (RequestTask GetWidgetsResponse) := do
  let doc ← readDoc
  let filemap := doc.meta.text
  mapTaskCostly (findInfoTreeAtPos doc (filemap.lspPosToUtf8Pos pos) (includeStop := true)) fun
    | some infoTree@(.context (.commandCtx cc) _) =>
      ContextInfo.runMetaM { cc with } {} do
      let env ← getEnv
      /- Panels from the environment. -/
      let ws' ← evalPanelWidgets
      let ws' : Array PanelWidgetInstance ← ws'.mapM fun wi => do
        -- Check if the definition uses the deprecated `UserWidgetDefinition`
        -- on a best-effort basis.
        -- If it does, also send the `name` field.
        let name? ← env.find? wi.id
          |>.filter (·.type.isConstOf ``UserWidgetDefinition)
          |>.mapM fun _ => do
            let uwd ← evalUserWidgetDefinition wi.id
            return uwd.name
        return { wi with name? }
      /- Panels from the infotree. -/
      let ws := widgetInfosAt? filemap infoTree pos.line
      let ws : Array PanelWidgetInstance ← ws.toArray.mapM fun (wi : UserWidgetInfo) => do
        let name? ← env.find? wi.id
          |>.filter (·.type.isConstOf ``UserWidgetDefinition)
          |>.mapM fun _ => do
            let uwd ← evalUserWidgetDefinition wi.id
            return uwd.name
        return { wi with range? := Lean.Syntax.Range.toLspRange filemap <$> Syntax.getRange? wi.stx, name? }
      return { widgets := ws' ++ ws }
    | _ => return ⟨∅⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variantcbf2c55d3fb0188e35f1faaf1b02f7388e27739f4d06e58f6c9e13a82bfd7138.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ff6cbe097ef1684ff9ee7830835e2257d984341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
