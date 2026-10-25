# liftCommandElabMCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0d6f0a29ccd36764a0d55b0aa2bd0eca41a54d92596f84f934db728efaf8d43",
  "kind": "def",
  "lexical_name": "liftCommandElabMCore",
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
  "slug": "liftcommandelabmcore--2b08827b7e74708ab730c0ea",
  "source": {
    "blob": "112bf0606c1b16af59d7953c32ac7959b6508ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 843,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b08827b7e74708ab730c0ea15d405b03d07d067ef05023e0d73070cbf73bd80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0d6f0a29ccd36764a0d55b0aa2bd0eca41a54d92596f84f934db728efaf8d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def liftCommandElabMCore (cmd : CommandElabM α) (throwOnError : Bool) : CoreM α := do
  let s : Core.State ← get
  let ctx : Core.Context ← read
  let (a, commandState) ←
    cmd.run {
      fileName := ctx.fileName
      fileMap := ctx.fileMap
      currRecDepth := ctx.currRecDepth
      currMacroScope := ctx.currMacroScope
      ref := ctx.ref
      snap? := none
      cancelTk? := ctx.cancelTk?
      suppressElabErrors := ctx.suppressElabErrors
    } |>.run {
      env := s.env
      nextMacroScope := s.nextMacroScope
      maxRecDepth := ctx.maxRecDepth
      ngen := s.ngen
      auxDeclNGen := s.auxDeclNGen
      scopes := [{ header := "", opts := ctx.options }]
      infoState.enabled := s.infoState.enabled
    }
  modify fun coreState => { coreState with
    env := commandState.env
    nextMacroScope := commandState.nextMacroScope
    ngen := commandState.ngen
    auxDeclNGen := commandState.auxDeclNGen
    traceState.traces := coreState.traceState.traces ++ commandState.traceState.traces
  }
  if throwOnError then
    if let some err := commandState.messages.toArray.find? (·.severity matches .error) then
      throwError err.data
  modify fun coreState => { coreState with
    infoState.trees := coreState.infoState.trees.append commandState.infoState.trees
    messages := coreState.messages ++ commandState.messages
  }
  return a

/--
Lifts an action in `CommandElabM` into `CoreM`, updating the environment,
messages, info trees, traces, the name generator, and macro scopes.
The action is run in a context with an empty message log, empty trace state, and empty info trees.

If `throwOnError` is true, then if the command produces an error message, it is converted into an exception.
In this case, info trees and messages are not carried over.

Commands that modify the processing of subsequent commands,
such as `open` and `namespace` commands,
only have an effect for the remainder of the `CommandElabM` computation passed here,
and do not affect subsequent commands.

*Warning:* when using this from `MetaM` monads, the caches are *not* reset.
If the command defines new instances for example, you should use `Lean.Meta.resetSynthInstanceCache`
to reset the instance cache.
While the `modifyEnv` function for `MetaM` clears its caches entirely,
`liftCommandElabM` has no way to reset these caches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112bf0606c1b16af59d7953c32ac7959b6508ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
