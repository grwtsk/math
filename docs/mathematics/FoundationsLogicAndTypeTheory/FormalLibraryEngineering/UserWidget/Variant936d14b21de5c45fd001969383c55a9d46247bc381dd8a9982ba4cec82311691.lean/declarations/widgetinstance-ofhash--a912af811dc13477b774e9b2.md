# WidgetInstance.ofHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a87930f1f04044f4240b9b6a21b4f59ab1ff9c762551eb47a8aac2f9fcaba74a",
  "kind": "def",
  "lexical_name": "WidgetInstance.ofHash",
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
  "slug": "widgetinstance-ofhash--a912af811dc13477b774e9b2",
  "source": {
    "blob": "7a0568328191b2749f03986b08ed1a9fea94a04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a912af811dc13477b774e9b230db4c189fc112f7b35240be3b0a997150a7e748",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a87930f1f04044f4240b9b6a21b4f59ab1ff9c762551eb47a8aac2f9fcaba74a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WidgetInstance.ofHash (hash : UInt64) (props : StateM Server.RpcObjectStore Json) :
    CoreM WidgetInstance := do
  let env ← getEnv
  let builtins ← builtinModulesRef.get
  let some id :=
    (builtins.get? hash |>.map (·.1)) <|> (moduleRegistry.getState env |>.get? hash |>.map (·.1))
    | throwError s!"No widget module with hash {hash} registered"
  return { id, javascriptHash := hash, props }

/-- Save the data of a panel widget which will be displayed whenever the text cursor is on `stx`.

`hash` must be as in `WidgetInstance.ofHash`.

For panel widgets, the Lean infoview appends additional fields to the `props` object:
see https://github.com/leanprover/vscode-lean4/blob/master/lean4-infoview/src/infoview/userWidget.tsx#L145. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserWidget/Variant936d14b21de5c45fd001969383c55a9d46247bc381dd8a9982ba4cec82311691.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0568328191b2749f03986b08ed1a9fea94a04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
