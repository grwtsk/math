# highlightSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e88550d8a9388bf36835f83aba7857cc9c8f8a246a083a7194bcd984a9be66d6",
  "kind": "def",
  "lexical_name": "highlightSyntax",
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
  "slug": "highlightsyntax--28d34d9056588ad94b83b2c5",
  "source": {
    "blob": "54c9b797ff124c8665b7ec5a1bbc43a9feca52c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 887,
    "line": 789,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28d34d9056588ad94b83b2c54823f6d9fb4e07972fef001b853a132c5b6e94f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e88550d8a9388bf36835f83aba7857cc9c8f8a246a083a7194bcd984a9be66d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–887.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def highlightSyntax
    [Monad m] [MonadLiftT IO m]
    (trees : PersistentArray InfoTree) (stx : Syntax) : m DocCode := do
  (go stx).run {} <&> (·.2)
where
  go (stx : Syntax) : StateT DocCode m Unit := do
    match stx with
    | .node info kind args =>
      emitLeading info
      if kind == hygieneInfoKind then
        -- hygieneInfo nodes contain no source text; skip content but preserve whitespace
        for arg in args do
          emitLeading arg.getHeadInfo
          emitTrailing arg.getHeadInfo
        emitTrailing info
        return
      if isLitKind kind then
        match args with
        | #[.atom info' str] =>
          emitLeading info'
          let ty? ← typeFromInfo <| deepestNodes trees fun ci i _ =>
            if i.stx == stx then some (ci, i) else none
          emit str (some <| .literal kind ty?)
          emitTrailing info'
          emitTrailing info
          return
        | _ => pure ()
      args.forM go
      emitTrailing info
    | .ident info _x str _pre =>
      -- TODO: find projections in the info tree as well as syntactically (see comment on
      -- `identProjKind`)
      let docInfo? ← toDocInfo <| deepestNodes trees fun ci i _ =>
        if i.stx == stx then some (ci, i) else none
      emitLeading info
      emit str.toString docInfo?
      emitTrailing info
    | .atom info str =>
      emitLeading info
      emit str (some .keyword)
      emitTrailing info
    | .missing => return

  emit (code : String) (info? : Option DocHighlight := none) : StateT DocCode m Unit :=
    modify (fun st => st.push code info?)

  emitLeading : SourceInfo → StateT DocCode m Unit
  | .original leading .. => emit leading.toString
  | _ => pure ()

  emitTrailing : SourceInfo → StateT DocCode m Unit
  | .original _ _ trailing .. => emit trailing.toString
  | _ => pure ()

  typeFromInfo (infos : List (ContextInfo × Info)) : m (Option Format) := do
    for (ci, i) in infos do
      if let some ty ← ci.runMetaM i.lctx do
        (← i.type?).mapM (PrettyPrinter.ppExpr)
      then return some ty
    return none

  deepestNodes
      (trees : PersistentArray InfoTree)
      (f : ContextInfo → Info → PersistentArray InfoTree → Option (ContextInfo × Info)) :=
    trees.foldl (init := []) fun xs t => xs ++ (t.deepestNodes f)

  toDocInfo (infos : List (ContextInfo × Info)) : m (Option DocHighlight) := do
    let mut best := none
    for (ci, i) in infos do
      match i with
      | .ofTermInfo ti =>
        if let some (.var ..) := best then
          if let .const n _ := ti.expr then
            let sig ← ci.runMetaM ti.lctx <| PrettyPrinter.ppSignature n
            best := some <| .const n sig.fmt
        else if best.isNone then
          match ti.expr with
          | .const n .. =>
            let sig ← ci.runMetaM ti.lctx <| PrettyPrinter.ppSignature n
            best := some <| .const n sig.fmt
          | .fvar fvid =>
            let docInfo? ← ci.runMetaM ti.lctx do
              if let some ldecl := (← getLCtx).find? fvid then
                let type ← PrettyPrinter.ppExpr ldecl.type
                pure <| some <| .var ldecl.userName fvid type
              else pure none
            if let some docInfo := docInfo? then
              best := some docInfo
          | _ => continue
      | .ofFieldInfo fi =>
        let docInfo ← ci.runMetaM fi.lctx do
          let sig ← PrettyPrinter.ppSignature fi.projName
          pure <| .field fi.projName sig.fmt
        best := some docInfo
      | .ofOptionInfo oi =>
        best := some <| .option oi.optionName oi.declName
      | _ => continue
    return best

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c9b797ff124c8665b7ec5a1bbc43a9feca52c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
