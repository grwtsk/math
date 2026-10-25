# liftMacroM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcb23d49db0a9d0981828140dd5d47fc5ece4c8d1466eeb0520ef6b7d11739f3",
  "kind": "def",
  "lexical_name": "liftMacroM",
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
  "slug": "liftmacrom--f15a35c8f7fd034e95aeb022",
  "source": {
    "blob": "788fd795259e07aa11a895de0cdd12482cfde37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f15a35c8f7fd034e95aeb022e6c38d86197cfd9962fd09872e1d450db9f3fbf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcb23d49db0a9d0981828140dd5d47fc5ece4c8d1466eeb0520ef6b7d11739f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftMacroM [Monad m] [MonadMacroAdapter m] [MonadEnv m] [MonadRecDepth m] [MonadError m] [MonadResolveName m] [MonadTrace m] [MonadOptions m] [AddMessageContext m] [MonadLiftT IO m] (x : MacroM α) : m α := do
  let env  ← getEnv
  let opts ← getOptions
  let currNamespace ← getCurrNamespace
  let openDecls ← getOpenDecls
  let methods := Macro.mkMethods {
    -- TODO: record recursive expansions in info tree?
    expandMacro?     := fun stx => do
      match (← expandMacroImpl? env stx) with
      | some (_, stx?) => liftExcept stx?
      | none           => return none
    hasDecl          := fun declName => do
      -- this is used (by mkUnusedBaseName) to find available names, so check
      -- for both private and public names
      let env := env.setExporting false
      return env.contains (mkPrivateName env declName) || env.contains (privateToUserName declName)
    getCurrNamespace := return currNamespace
    resolveNamespace := fun n => return ResolveName.resolveNamespace env currNamespace openDecls n
    resolveGlobalName := fun n => return ResolveName.resolveGlobalName env opts currNamespace openDecls n
  }
  match x { methods        := methods
            ref            := ← getRef
            currMacroScope := ← MonadQuotation.getCurrMacroScope
            quotContext    := ← MonadQuotation.getContext
            currRecDepth   := ← MonadRecDepth.getRecDepth
            maxRecDepth    := ← MonadRecDepth.getMaxRecDepth
          } { macroScope := (← MonadMacroAdapter.getNextMacroScope) } with
  | EStateM.Result.error Macro.Exception.unsupportedSyntax _ => throwUnsupportedSyntax
  | EStateM.Result.error (Macro.Exception.error ref msg) _   =>
    if msg == maxRecDepthErrorMessage then
      -- Make sure we can detect exception using `Exception.isMaxRecDepth`
      throwMaxRecDepthAt ref
    else
      throwErrorAt ref msg
  | EStateM.Result.ok a s =>
    for n in s.expandedMacroDecls do
      recordExtraModUseFromDecl (isMeta := true) n
    MonadMacroAdapter.setNextMacroScope s.macroScope
    s.traceMsgs.reverse.forM fun (clsName, msg) => trace clsName fun _ => msg
    return a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant0229d7d09b7a6769dc7453c281a4b89afaad5494eb4219c1a2e18f58ec311292.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788fd795259e07aa11a895de0cdd12482cfde37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
