# replaceBinderAnnotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73902cbb911cab783f392b3f8c1829bc80d246edbb3939344648afeb4041a04d",
  "kind": "def",
  "lexical_name": "replaceBinderAnnotation",
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
  "slug": "replacebinderannotation--025bd32403c7d6ee109ab17a",
  "source": {
    "blob": "5c934363894991f60574ad47ab04c5bd4afd44c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:025bd32403c7d6ee109ab17a87bc831228ce7d791022f90ff6cc93727b8e7533",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73902cbb911cab783f392b3f8c1829bc80d246edbb3939344648afeb4041a04d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def replaceBinderAnnotation (binder : TSyntax ``Parser.Term.bracketedBinder) : CommandElabM (Array (TSyntax ``Parser.Term.bracketedBinder)) := do
  let some (binderIds, binderInfo) := typelessBinder? binder | return #[binder]
  let varDecls := (← getScope).varDecls
  let mut varDeclsNew := #[]
  let mut binderIds := binderIds
  let mut binderIdsIniSize := binderIds.size
  let mut modifiedVarDecls := false
  -- Go through declarations in reverse to respect shadowing
  for varDecl in varDecls.reverse do
    let (ids, ty?, binderInfo') ← match varDecl with
      | `(bracketedBinderF|($ids* $[: $ty?]? $(annot?)?)) =>
        if annot?.isSome then
          for binderId in binderIds do
            if containsId ids binderId then
              throwErrorAt binderId "cannot update binder annotation of variables with default values/tactics"
        pure (ids, ty?, .default)
      | `(bracketedBinderF|{$ids* $[: $ty?]?}) =>
        pure (ids, ty?, .implicit)
      | `(bracketedBinderF|⦃$ids* $[: $ty?]?⦄) =>
        pure (ids, ty?, .strictImplicit)
      | `(bracketedBinderF|[$id : $ty]) =>
        pure (#[⟨id⟩], some ty, .instImplicit)
      | _ =>
        varDeclsNew := varDeclsNew.push varDecl; continue
    if binderInfo == binderInfo' then
      -- no update, ensure we don't have redundant annotations.
      for binderId in binderIds do
        if containsId ids binderId then
          throwErrorAt binderId "redundant binder annotation update"
      varDeclsNew := varDeclsNew.push varDecl
    else if binderIds.all fun binderId => !containsId ids binderId then
      -- `binderIds` and `ids` are disjoint
      varDeclsNew := varDeclsNew.push varDecl
    else
      let mkBinder (id : TSyntax [`ident, ``Parser.Term.hole]) (binderInfo : BinderInfo) : CommandElabM (TSyntax ``Parser.Term.bracketedBinder) :=
        match binderInfo with
        | .default => `(bracketedBinderF| ($id $[: $ty?]?))
        | .implicit => `(bracketedBinderF| {$id $[: $ty?]?})
        | .strictImplicit => `(bracketedBinderF| {{$id $[: $ty?]?}})
        | .instImplicit => do
          let some ty := ty?
            | throwErrorAt binder "cannot update binder annotation of variable `{id}` to instance implicit:\n\
                variable was originally declared without an explicit type"
          `(bracketedBinderF| [$(⟨id⟩) : $ty])
      for id in ids.reverse do
        if let some idx := binderIds.findFinIdx? fun binderId => binderId.raw.isIdent && binderId.raw.getId == id.raw.getId then
          binderIds := binderIds.eraseIdx idx
          modifiedVarDecls := true
          let newBinder ← mkBinder id binderInfo
          if binderInfo.isInstImplicit then
            -- We elaborate the new binder to make sure it's valid as instance implicit
            try
              runTermElabM fun _ => Term.withSynthesize <| Term.withAutoBoundImplicit <|
                Term.elabBinder newBinder fun _ => pure ()
            catch e =>
              throwErrorAt binder m!"cannot update binder annotation of variable `{id}` to instance implicit:\n\
                {e.toMessageData}"
          varDeclsNew := varDeclsNew.push (← mkBinder id binderInfo)
        else
          varDeclsNew := varDeclsNew.push (← mkBinder id binderInfo')
  if modifiedVarDecls then
    modifyScope fun scope => { scope with varDecls := varDeclsNew.reverse }
  if binderIds.size != binderIdsIniSize then
    binderIds.mapM fun binderId =>
      match binderInfo with
        | .default => `(bracketedBinderF| ($binderId))
        | .implicit => `(bracketedBinderF| {$binderId})
        | .strictImplicit => `(bracketedBinderF| {{$binderId}})
        | .instImplicit => throwUnsupportedSyntax
  else
    return #[binder]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinCommand/Variant8bcff87f9531e047cdb1d151a7831ed4e0bc144fcc7543bf65183e624925a2c0.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c934363894991f60574ad47ab04c5bd4afd44c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
