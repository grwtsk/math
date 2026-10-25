# elabShowPanelWidgetsCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:939f10836ecff3da377785cf313448505263af68cb6783398a7fe4e0f6ec9199",
  "kind": "def",
  "lexical_name": "elabShowPanelWidgetsCmd",
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
  "slug": "elabshowpanelwidgetscmd--d59a52c261b07783c13cf99d",
  "source": {
    "blob": "5697e0624319f20be3fa00559b4dd227bc68a326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantb91fa77b54431cb3165544222f8ac4c898fe25158ffb391fc6e97a71a59cd360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d59a52c261b07783c13cf99dd60105b55513c51d60d48a3093e98bcb7d76d054",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantb91fa77b54431cb3165544222f8ac4c898fe25158ffb391fc6e97a71a59cd360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:939f10836ecff3da377785cf313448505263af68cb6783398a7fe4e0f6ec9199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab showPanelWidgetsCmd] meta def elabShowPanelWidgetsCmd : CommandElab
  | `(show_panel_widgets [ $ws ,*]) => liftTermElabM do
    for w in ws.getElems do
      match w with
      | `(showWidgetSpec| - $mod:ident) =>
        let mod : Term ← ``(ToModule.toModule $mod)
        let mod : Expr ← Term.elabTerm (expectedType? := mkConst ``Module) mod
        let mod : Module ← evalModule mod
        erasePanelWidget mod.javascriptHash
      | `(showWidgetSpec| $attr:attrKind $spec:widgetInstanceSpec) =>
        let attr ← liftMacroM <| toAttributeKind attr
        let wiExpr ← elabWidgetInstanceSpec spec
        let wi ← evalWidgetInstance wiExpr
        if let .local := attr then
          addPanelWidgetLocal wi
        else
          let name ← mkFreshUserName (wi.id ++ `_instance)
          let wiExpr ← instantiateMVars wiExpr
          if wiExpr.hasMVar then
            throwError "failed to compile expression, it contains metavariables{indentExpr wiExpr}"
          addAndCompile <| Declaration.defnDecl {
            name
            levelParams := []
            type := mkConst ``WidgetInstance
            value := wiExpr
            hints := .opaque
            safety := .safe
          }
          if let .global := attr then
            addPanelWidgetGlobal wi.javascriptHash name
          else
            addPanelWidgetScoped wi.javascriptHash name
      | _ => throwUnsupportedSyntax
  | _ => throwUnsupportedSyntax

/-! ## `#widget` command -/

/-- Use `#widget <widget>` to display a panel widget,
and `#widget <widget> with <props>` to display it with the given props.
Useful for debugging widgets.

The type of `<widget>` must implement `Widget.ToModule`,
and the type of `<props>` must implement `Server.RpcEncodable`.
In particular, `<props> : Json` works. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantb91fa77b54431cb3165544222f8ac4c898fe25158ffb391fc6e97a71a59cd360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variantb91fa77b54431cb3165544222f8ac4c898fe25158ffb391fc6e97a71a59cd360.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5697e0624319f20be3fa00559b4dd227bc68a326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
