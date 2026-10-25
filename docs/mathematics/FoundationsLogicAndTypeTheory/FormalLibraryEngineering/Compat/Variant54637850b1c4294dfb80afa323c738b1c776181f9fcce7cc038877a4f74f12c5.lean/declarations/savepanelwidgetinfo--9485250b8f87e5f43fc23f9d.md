# savePanelWidgetInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2efb3c63ef6b691c7a412300802cc8cfc6b950866be187b86866ac7bde7d62dc",
  "kind": "def",
  "lexical_name": "savePanelWidgetInfo",
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
  "slug": "savepanelwidgetinfo--9485250b8f87e5f43fc23f9d",
  "source": {
    "blob": "c428ee876d36b561eae78551f1063f851143cf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9485250b8f87e5f43fc23f9d2eb28b0c138f123b141dadde89476e763a8c0a36",
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

Occurrence: `declaration:2efb3c63ef6b691c7a412300802cc8cfc6b950866be187b86866ac7bde7d62dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def savePanelWidgetInfo [Monad m] [MonadInfoTree m] [MonadNameGenerator m]
    (stx : Syntax) (id : Name) (props : LazyEncodable Json) : m Unit := do
  let infoId := `panelWidget ++ (← mkFreshId)
  pushInfoLeaf <| .ofUserWidgetInfo {
    stx
    widgetId := ``metaWidget
    props := json% {
      infoId : $(infoId)
    }
  }
  let wi : PanelWidgetInfo := { id, props, infoId }
  pushInfoLeaf <| .ofCustomInfo { stx, value := Dynamic.mk wi }

end ProofWidgets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant54637850b1c4294dfb80afa323c738b1c776181f9fcce7cc038877a4f74f12c5.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c428ee876d36b561eae78551f1063f851143cf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
