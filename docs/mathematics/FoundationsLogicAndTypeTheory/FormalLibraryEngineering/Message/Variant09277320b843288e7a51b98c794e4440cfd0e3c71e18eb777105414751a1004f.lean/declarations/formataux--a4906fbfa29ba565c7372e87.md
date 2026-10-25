# formatAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29d987d91171dd8d97600b3dbabf3ece2133f0c318be1e52854265f586eb2f4e",
  "kind": "def",
  "lexical_name": "formatAux",
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
  "slug": "formataux--a4906fbfa29ba565c7372e87",
  "source": {
    "blob": "5e2281389fe25ed6d76c50e2d78bed7a16b3ab36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4906fbfa29ba565c7372e8779146130f2ed53f2c359f45d5f13f3e865c72164",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29d987d91171dd8d97600b3dbabf3ece2133f0c318be1e52854265f586eb2f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def formatAux : NamingContext → Option MessageDataContext → MessageData → BaseIO Format
  | _,    _,         ofFormatWithInfos fmt    => return fmt.1
  | _,    none,      ofGoal mvarId            => return formatRawGoal mvarId
  | nCtx, some ctx,  ofGoal mvarId            => ppGoal (mkPPContext nCtx ctx) mvarId
  | nCtx, ctx,       ofWidget _ d             => formatAux nCtx ctx d
  | nCtx, _,         withContext ctx d        => formatAux nCtx ctx d
  | _,    ctx,       withNamingContext nCtx d => formatAux nCtx ctx d
  | nCtx, ctx,       tagged _ d               => formatAux nCtx ctx d
  | nCtx, ctx,       ofOriginatingSyntax _ d              => formatAux nCtx ctx d
  | nCtx, ctx,       nest n d                 => Format.nest n <$> formatAux nCtx ctx d
  | nCtx, ctx,       compose d₁ d₂            => return (← formatAux nCtx ctx d₁) ++ (← formatAux nCtx ctx d₂)
  | nCtx, ctx,       group d                  => Format.group <$> formatAux nCtx ctx d
  | nCtx, ctx,       trace data header children => do
    let childFmts ← children.mapM (formatAux nCtx ctx)
    if data.cls.isAnonymous then
      -- Sequence of top-level traces collected by `addTraceAsMessages`, do not indent.
      return .joinSep childFmts.toList "\n"

    let mut msg := f!"[{data.cls}]"
    if data.startTime != 0 then
      msg := f!"{msg} [{data.stopTime - data.startTime}]"
    let headerFmt ← formatAux nCtx ctx header
    let headerFmt := match data.result? with
      | some r => f!"{r.toEmoji} {headerFmt}"
      | none => headerFmt
    msg := f!"{msg} {headerFmt.nest 2}"
    let mut children := children
    if let some maxNum := ctx.map (maxTraceChildren.get ·.opts) then
      if maxNum > 0 && children.size > maxNum then
        children := children.take maxNum |>.push <|
          ofFormat f!"{children.size - maxNum} more entries... (increase `maxTraceChildren` to see more)"
    return .nest 2 (.joinSep (msg::childFmts.toList) "\n")
  | nCtx, ctx?,      ofLazy pp _             => do
    let dyn ← pp (ctx?.map (mkPPContext nCtx))
    let some msg := dyn.get? MessageData
      | panic! s!"MessageData.ofLazy: expected MessageData in Dynamic, got {dyn.typeName}"
    formatAux nCtx ctx? msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant09277320b843288e7a51b98c794e4440cfd0e3c71e18eb777105414751a1004f.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2281389fe25ed6d76c50e2d78bed7a16b3ab36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
