# msgToInteractiveAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0c737aadfd6f73ba2cb8cfd6824bbcd8f96256312cf2f6abdb205842e1870c7",
  "kind": "def",
  "lexical_name": "msgToInteractiveAux",
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
  "slug": "msgtointeractiveaux--a1a07144641c31c912871bd0",
  "source": {
    "blob": "6856437cf31cb3e2c1982ae83b8142b4cc4af33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1a07144641c31c912871bd0b06abb7e4ed4be5f9bb73a7f8e1821dea844a43b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0c737aadfd6f73ba2cb8cfd6824bbcd8f96256312cf2f6abdb205842e1870c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def msgToInteractiveAux (msgData : MessageData) : IO (Format × Array EmbedFmt) :=
  go { currNamespace := Name.anonymous, openDecls := [] } none msgData |>.run #[]
where
  pushEmbed (e : EmbedFmt) : MsgFmtM Nat :=
    modifyGet fun es => (es.size, es.push e)

  withIgnoreTags (fmt : Format) : MsgFmtM Format := do
    let t ← pushEmbed EmbedFmt.ignoreTags
    return Format.tag t fmt

  mkContextInfo (nCtx : NamingContext) (ctx : MessageDataContext) : Elab.ContextInfo := {
    env           := ctx.env
    mctx          := ctx.mctx
    fileMap       := default
    options       := ctx.opts
    currNamespace := nCtx.currNamespace
    openDecls     := nCtx.openDecls
    -- Hack: to make sure unique ids created at `ppExprWithInfos` do not collide with ones in `ctx.mctx`
    ngen          := { namePrefix := `_diag }
  }

  go (nCtx : NamingContext) : Option MessageDataContext → MessageData → MsgFmtM Format
  | none,     ofFormatWithInfos ⟨fmt, _⟩ => withIgnoreTags fmt
  | some ctx, ofFormatWithInfos ⟨fmt, infos⟩ => do
    let t ← pushEmbed <| EmbedFmt.code (mkContextInfo nCtx ctx) infos
    return Format.tag t fmt
  | none,     ofGoal mvarId            => pure $ "goal " ++ format (mkMVar mvarId)
  | some ctx, ofGoal mvarId            =>
    return .tag (← pushEmbed (.goal (mkContextInfo nCtx ctx) ctx.lctx mvarId)) default
  | ctx,       ofWidget wi d            => do
    let t ← pushEmbed <| EmbedFmt.widget wi (← go nCtx ctx d)
    return Format.tag t default
  | _,        withContext ctx d        => go nCtx ctx d
  | ctx,      withNamingContext nCtx d => go nCtx ctx d
  | ctx,      tagged _ d               => go nCtx ctx d
  | ctx,      ofOriginatingSyntax _ d   => go nCtx ctx d
  | ctx,      nest n d                 => Format.nest n <$> go nCtx ctx d
  | ctx,      compose d₁ d₂            => do let d₁ ← go nCtx ctx d₁; let d₂ ← go nCtx ctx d₂; pure $ d₁ ++ d₂
  | ctx,      group d                  => Format.group <$> go nCtx ctx d
  | ctx,      .trace data header children => do
    if data.cls.isAnonymous then
      -- Sequence of top-level traces collected by `addTraceAsMessages`, do not indent.
      -- As with nested sibling nodes, we do not separate them with newlines but rely on the client
      -- to never put trace nodes on the same line.
      return .join (← children.mapM (go nCtx ctx)).toList

    let mut header := (← go nCtx ctx header).nest 4
    header := match data.result? with
      | some r => f!"{r.toEmoji} {header}"
      | none => header
    if data.startTime != 0 then
      header := f!"[{data.stopTime - data.startTime}] {header}"
    let nodes ←
      if data.collapsed && !children.isEmpty then
        let children := children.map fun child =>
          MessageData.withNamingContext nCtx <|
            match ctx with
            | some ctx => MessageData.withContext ctx child
            | none     => child
        let blockSize := ctx.bind (maxTraceChildren.get? ·.opts)
          |>.getD maxTraceChildren.defValue
        let children := chopUpChildren data.cls blockSize children[*...*]
        pure (.lazy children)
      else
        pure (.strict (← children.mapM (go nCtx ctx)))
    let e := .trace data.cls header data.collapsed nodes
    return .tag (← pushEmbed e) default
  | ctx?,     ofLazy f _          => do
    let dyn ← f (ctx?.map (mkPPContext nCtx))
    let some msg := dyn.get? MessageData
      | throw <| IO.userError "MessageData.ofLazy: expected MessageData in Dynamic"
    go nCtx ctx? msg

  /-- Recursively moves child nodes after the first `blockSize` into a new "more" node. -/
  chopUpChildren (cls : Name) (blockSize : Nat) (children : Subarray MessageData) :
      Array MessageData :=
    if blockSize > 0 && children.size > blockSize + 1 then  -- + 1 to make idempotent
      let more := chopUpChildren cls blockSize (children.drop blockSize)
      (children.take blockSize).toArray.push <|
        .trace { collapsed := true, cls }
          f!"{children.size - blockSize} more entries..." more
    else children

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6856437cf31cb3e2c1982ae83b8142b4cc4af33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
