# elabOpenPrivateLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44115e4682e8d1184a246132f00ab166799a7ccde9aee01cb94c5db30886e609",
  "kind": "def",
  "lexical_name": "elabOpenPrivateLike",
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
  "slug": "elabopenprivatelike--84e1cf9788298e08bf378775",
  "source": {
    "blob": "cae8e3d2256195c7441271608174bcb5b76d3c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84e1cf9788298e08bf37877518a2d08e5a45761930e85a2c8e454cd414e0191e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44115e4682e8d1184a246132f00ab166799a7ccde9aee01cb94c5db30886e609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabOpenPrivateLike (ids : Array Ident) (tgts mods : Option (Array Ident))
  (f : (priv full user : Name) → CommandElabM Name) : CommandElabM Unit := do
  let mut names := NameSet.empty
  for tgt in tgts.getD #[] do
    let n ← liftCoreM <| realizeGlobalConstNoOverloadWithInfo tgt
    names ← Meta.collectPrivateIn n names
  let env ← getEnv
  for mod in mods.getD #[] do
    let some modIdx := env.moduleIdxForModule? mod.getId
      | throwError "unknown module {mod}"
    addModuleInfo mod
    for declName in env.declsInModuleIdx modIdx do
      if isPrivateName declName then
        names := names.insert declName
  let appendNames (msg : MessageData) : MessageData := Id.run do
    let mut msg := msg
    for c in names do
      if let some info := env.findConstVal? c then
        msg := msg ++ m!"{mkConst c (info.levelParams.map mkLevelParam)}\n"
      else if let some name := privateToUserName? c then
        msg := msg ++ s!"{name}\n"
    msg
  if ids.isEmpty && !names.isEmpty then
    logInfo (appendNames "found private declarations:\n")
  let mut decls := #[]
  for id in ids do
    let n := id.getId
    let rec
      /-- finds private declarations `n ++ suff` where `n` resolves and `n ++ suff` realizes -/
      findAll n suff := do
        let mut found := []
        for c in names do
          if n.isSuffixOf c then
            let (c', ok) ← if suff.isAnonymous then
              pure (c, true)
            else
              let c' := c ++ suff
              if (← getEnv).contains c' then pure (c', true)
              else try
                liftCoreM (executeReservedNameAction c')
                pure (c', (← getEnv).containsOnBranch c')
              catch _ => pure (c', false)
            if ok then
              addConstInfo id c'
              found := c'::found
        unless found = [] do return found
        match n with
        | .str p s => findAll p (Name.mkSimple s ++ suff)
        | _ => pure []
    match ← findAll n .anonymous with
    | [] => throwError appendNames m!"'{n}' not found in the provided declarations:\n"
    | [c] =>
      if let some name := privateToUserName? c then
        let new ← f c name n
        decls := decls.push (.explicit n new)
      else unreachable!
    | found => throwError s!"provided name is ambiguous: found {found.map privateToUserName?}"
  modifyScope fun scope => Id.run do
    let mut openDecls := scope.openDecls
    for decl in decls do
      openDecls := decl::openDecls
    { scope with openDecls := openDecls }

/--
The command `open private a b c in foo bar` will look for private definitions named `a`, `b`, `c`
in declarations `foo` and `bar` and open them in the current scope. This does not make the
definitions public, but rather makes them accessible in the current section by the short name `a`
instead of the (unnameable) internal name for the private declaration, something like
`_private.Other.Module.0.Other.Namespace.foo.a`, which cannot be typed directly because of the `0`
name component.

It is also possible to specify the module instead with
`open private a b c from Other.Module`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Varianta7258d60e4d27e4599bb1247dd742b01de5fd933e328a19d118e68af7e5ff4dc.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae8e3d2256195c7441271608174bcb5b76d3c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
