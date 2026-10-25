# processIdent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5e7601de30a6acb9e1ee44f512de6a1bd46b58daeed6f575001bfc7183c2da2",
  "kind": "def",
  "lexical_name": "processIdent",
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
  "slug": "processident--81d9771f63265b4c77fa37d3",
  "source": {
    "blob": "5587f76577504f00b0d317d1eb63f3370758204b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Panel/Variant2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81d9771f63265b4c77fa37d3654a2486b196dd28992e9b6d4fd5a187477eb56d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Panel/Variant2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5e7601de30a6acb9e1ee44f512de6a1bd46b58daeed6f575001bfc7183c2da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def processIdent (stx : Syntax) (nmStx : TSyntax `ident) : CoreM Unit := do
  let nm ← resolveGlobalConstNoOverloadWithInfo nmStx
  let const ← getConstInfo nm
  if ← (pure (!const.type.isAppOfArity' ``Component 1) <||>
        pure (!const.type.appArg!'.isConstOf ``PanelWidgetProps)) then
    let expType := Expr.app (mkConst ``Component) (mkConst ``PanelWidgetProps)
    logWarningAt nmStx
      m!"unexpected panel widget type, got{indentExpr const.type}\nbut expected{indentExpr expType}"
  if !Widget.userWidgetRegistry.contains (← getEnv) (nm ++ widgetDefPostfix) then
    logWarningAt nmStx
      m!"panel widget{indentExpr (mkConst nm)}\nwas not registered with `@[widget_module]`"
  savePanelWidgetInfo stx nm (pure .null)

/-- Display the selected panel widgets in the nested tactic script. For example,
assuming we have written a `GeometryDisplay` component,
```lean
by with_panel_widgets [GeometryDisplay]
  simp
  rfl
```
will show the geometry display alongside the usual tactic state throughout the proof.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Panel/Variant2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Panel/Variant2393a43e7ba5ac63c1645b7e28915878d2370f7c160d89c487107fb78d1811ac.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5587f76577504f00b0d317d1eb63f3370758204b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
