# addConstAsync

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d02b65cd580785bfba053cbcf6d245cdb2716db6b0914b63113c12cae83a2f1c",
  "kind": "def",
  "lexical_name": "addConstAsync",
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
  "slug": "addconstasync--6b88d071f69442c80cfe7528",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1023,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b88d071f69442c80cfe7528656dfd011fb3ef27c938de334064a6c9e03452e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d02b65cd580785bfba053cbcf6d245cdb2716db6b0914b63113c12cae83a2f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1023–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addConstAsync (env : Environment) (constName : Name) (kind : ConstantKind)
    (exportedKind? : Option ConstantKind := some kind) (reportExts := true) (checkMayContain := true) :
    IO AddConstAsyncResult := do
  if checkMayContain then
    if let some ctx := env.asyncCtx? then
      if !ctx.mayContain constName then
        throw <| .userError s!"cannot add declaration {constName} to environment as it is \
          restricted to the prefix {ctx.declPrefix}"
  let sigPromise ← IO.Promise.new
  let constPromise ← IO.Promise.new
  let allRealizationsPromise ← IO.Promise.new
  let checkedEnvPromise ← IO.Promise.new

  let privateAsyncConst := {
    constInfo := {
      name := constName
      kind
      sig := sigPromise.resultD (mkFallbackConstInfo constName kind).toConstantVal
      constInfo := constPromise.result?.map (sync := true) fun
        | some c => c.privateConstInfo
        | none   => mkFallbackConstInfo constName kind
    }
    exts? := guard reportExts *> some (constPromise.result?.map (sync := true) fun
      | some v => v.exts
      -- any value should work here, `base` does not block
      | none   => env.base.private.extensions)
    aconstsImpl := constPromise.result?.map (sync := true) fun
      | some v => .mk v.nestedConsts.private
      | none   => .mk (α := AsyncConsts) default
  }
  let exportedAsyncConst? := exportedKind?.map fun exportedKind => { privateAsyncConst with
    constInfo := { privateAsyncConst.constInfo with
      kind := exportedKind
      constInfo := constPromise.result?.map (sync := true) fun
        | some c => c.exportedConstInfo
        | none   => mkFallbackConstInfo constName exportedKind
    }
    aconstsImpl := constPromise.result?.map (sync := true) fun
      | some v => .mk v.nestedConsts.public
      | none   => .mk (α := AsyncConsts) default
  }
  return {
    constName, kind, exportedKind?
    mainEnv := { env with
      asyncConstsMap := {
        «private» := env.asyncConstsMap.private.add privateAsyncConst
        «public»  := exportedAsyncConst?.map (env.asyncConstsMap.public.add ·)
          |>.getD env.asyncConstsMap.public
      }
      checked := checkedEnvPromise.result?.bind (sync := true) fun
        | some kenv => .pure kenv
        | none      => env.checked
      allRealizations := allRealizationsPromise.result?.bind (sync := true) fun
        | some r => .pure r
        | none   => env.allRealizations }
    asyncEnv := env.enterAsync constName
    sigPromise, constPromise, allRealizationsPromise, checkedEnvPromise
  }

/--
Commits the signature of the constant to the main environment branch. The declaration name must
match the name originally given to `addConstAsync`. It is optional to call this function but can
help in unblocking corresponding accesses to the constant on the main branch.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L1023).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
