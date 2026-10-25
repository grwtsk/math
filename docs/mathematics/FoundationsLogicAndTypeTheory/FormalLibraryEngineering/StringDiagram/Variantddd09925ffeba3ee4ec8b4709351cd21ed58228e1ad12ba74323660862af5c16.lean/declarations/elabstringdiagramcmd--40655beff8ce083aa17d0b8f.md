# elabStringDiagramCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fae8acc4f5c9001120c2efb077241ec6f626cc1e035bbbea18c40c03a1629090",
  "kind": "def",
  "lexical_name": "elabStringDiagramCmd",
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
  "slug": "elabstringdiagramcmd--40655beff8ce083aa17d0b8f",
  "source": {
    "blob": "e80cbab1f050a569cdd190954ad886813596d826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 443,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40655beff8ce083aa17d0b8f7229437a76b3ee3d409887bd0ca59d0fb6c2e956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fae8acc4f5c9001120c2efb077241ec6f626cc1e035bbbea18c40c03a1629090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabStringDiagramCmd : CommandElab := fun
  | stx@`(#string_diagram $t:term) => do
    let html ← runTermElabM fun _ => do
      let e ← try mkConstWithFreshMVarLevels (← realizeGlobalConstNoOverloadWithInfo t)
        catch _ => Term.levelMVarToParam (← instantiateMVars (← Term.elabTerm t none))
      match ← StringDiagram.stringMorOrEqM? e with
      | some html => return html
      | none => throwError "could not find a morphism or equality: {e}"
    liftCoreM <| Widget.savePanelWidgetInfo
      (hash HtmlDisplay.javascript)
      (return json% { html: $(← Server.RpcEncodable.rpcEncode html) })
      stx
  | stx => throwError "Unexpected syntax {stx}."

end Mathlib.Tactic.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantddd09925ffeba3ee4ec8b4709351cd21ed58228e1ad12ba74323660862af5c16.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80cbab1f050a569cdd190954ad886813596d826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
