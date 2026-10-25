# runCoreMCapturingInfoTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af5d49abb242ac83cb0c7679f1b02eee9005dca18c6c1fcd914fb7d701d61451",
  "kind": "def",
  "lexical_name": "runCoreMCapturingInfoTree",
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
  "slug": "runcoremcapturinginfotree--9e5737ea24f7ee2f3fb6749f",
  "source": {
    "blob": "198c85c3815ddfd136f69195115bd27f3868e50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variant3945cdd7482da7dea229da4fa72d43f3b7be11e19be49ed091be20d35a775601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e5737ea24f7ee2f3fb6749fcbd358fb31da9c017c79221ed59ae13d39022aef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variant3945cdd7482da7dea229da4fa72d43f3b7be11e19be49ed091be20d35a775601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af5d49abb242ac83cb0c7679f1b02eee9005dca18c6c1fcd914fb7d701d61451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runCoreMCapturingInfoTree (info : ContextInfo) (x : CoreM α) :
    CommandElabM (α × PersistentArray InfoTree) := do
  let env := info.env.setExporting false
  let ctx ← read
  let (result, newState) ←
    (withOptions (fun _ => info.options) x).toIO
      { currNamespace := info.currNamespace, openDecls := info.openDecls
        fileName := ctx.fileName, fileMap := ctx.fileMap }
      { env, ngen := info.ngen, auxDeclNGen := { namePrefix := info.parentDecl?.getD .anonymous } }
  -- Migrate logs back to the main context
  modify fun state => { state with
    messages := state.messages ++ newState.messages,
    traceState.traces := state.traceState.traces ++ newState.traceState.traces }
  return (result, newState.infoState.trees)

/-- Embeds a `MetaM` action in `CommandElabM`, returning both the result and InfoTrees produced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variant3945cdd7482da7dea229da4fa72d43f3b7be11e19be49ed091be20d35a775601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variant3945cdd7482da7dea229da4fa72d43f3b7be11e19be49ed091be20d35a775601.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `198c85c3815ddfd136f69195115bd27f3868e50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
