# WidgetInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6b7c86b074c1938ae39e4b992bf66151038d4ecf415770a15e6e1c8797ef0a4",
  "kind": "structure",
  "lexical_name": "WidgetInstance",
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
  "slug": "widgetinstance--f8c106b88eb1407a85c1d22f",
  "source": {
    "blob": "0f60ecdd2fc2b734a435dabf5ece4fe28192e1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8c106b88eb1407a85c1d22f64a33a6d38bc916aed0b717584fb361707d07b00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6b7c86b074c1938ae39e4b992bf66151038d4ecf415770a15e6e1c8797ef0a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WidgetInstance where
  /-- Name of the `@[widget_module]`. -/
  id : Name
  /-- Hash of the JS source of the widget module. -/
  javascriptHash : UInt64
  /-- Arguments to be passed to the component's default exported function.
  Must be a JSON object.

  In certain contexts
  (such as when rendering as a panel widget; see `Widget.savePanelWidgetInfo`),
  the Lean infoview appends additional fields to this object.

  Props may contain RPC references,
  so must be stored as a `StateM` computation
  with access to the RPC object store. -/
  props : StateM Server.RpcObjectStore Json
  deriving Server.RpcEncodable

/-- A widget module is a unit of source code that can execute in the infoview.

Every module definition must either be annotated with `@[widget_module]`,
or use a value of `javascript` identical to that of another definition
annotated with `@[widget_module]`.
This makes it possible for the infoview to load the module.

See the [manual entry](https://lean-lang.org/examples/1900-1-1-widgets/)
for more information on how to use the widgets system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf5e9ca3a519c8a1631c370224ad4d1ccadd8a6ee974ae1ab56d12b3180624ae7.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f60ecdd2fc2b734a435dabf5ece4fe28192e1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
