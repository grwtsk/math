# getOpArgInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:157eb8c2bd72f2fc979db24a9cce690c5008e33e8d7feaa456d13b10279a5e08",
  "kind": "def",
  "lexical_name": "getOpArgInfo",
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
  "slug": "getoparginfo--40449d090681becbdf918f19",
  "source": {
    "blob": "cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40449d090681becbdf918f19863325d1f6389d31371df77dbc3d69c79c05a1b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:157eb8c2bd72f2fc979db24a9cce690c5008e33e8d7feaa456d13b10279a5e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getOpArgInfo (declName : Name) (matchExpr : Expr)
    (args : Array Expr) (sourceIdx? : Option Nat := none) :
    MetaM (Array HypArg × Array ParamArg) := do
  let registeredParams := inclusionParamExt.getState (← getEnv)
  let mut hypArgs := #[]
  let mut params := #[]
  for h : i in [:args.size] do
    let argId := args[i].mvarId!
    let argDecl ← argId.getDecl
    let argType := argDecl.type
    if let some (e, s, _) := toSetMem? argType then
      let some elemIdx := args.findIdx? (· == e)
        | throwError "The member `{e}` in premise `{argType}` of theorem `{.ofConstName declName}` \
            is not a theorem variable"
      let some setIdx := args.findIdx? (· == s)
        | throwError "The set `{s}` in premise `{argType}` of theorem `{.ofConstName declName}` \
            is not a theorem variable"
      let elemId := args[elemIdx]!.mvarId!
      unless (matchExpr.findMVar? (· == elemId)).isSome do
        throwError "The recursive input `{e}` of theorem \
          `{.ofConstName declName}` does not occur in the matched expression"
      hypArgs := hypArgs.push { elemIdx, setIdx, proofIdx := i }
    else if sourceIdx? != some i then
      let userName := argDecl.userName
      if let some param := registeredParams.find? userName then
        unless ← isDefEq argType param.type do
          throwError "Inclusion parameter `{userName}` in `{.ofConstName declName}` has \
            type {argType}, expected {param.type}"
        if (matchExpr.findMVar? (· == argId)).isSome then
          throwError "Inclusion parameter `{userName}` in `{.ofConstName declName}` occurs in the \
            matched expression"
        params := params.push { name := userName, idx := i }
  return (hypArgs, params)

/-- Validate an inclusion theorem and return its discrimination-tree path and argument metadata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
