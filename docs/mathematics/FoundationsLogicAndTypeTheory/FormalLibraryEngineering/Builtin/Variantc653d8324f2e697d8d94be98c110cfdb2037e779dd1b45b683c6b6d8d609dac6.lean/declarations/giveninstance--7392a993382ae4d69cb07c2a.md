# givenInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c9411416a680194f934009b1715599304ae13f41cb801e8edff8ac0ee67eea6",
  "kind": "def",
  "lexical_name": "givenInstance",
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
  "slug": "giveninstance--7392a993382ae4d69cb07c2a",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 654,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7392a993382ae4d69cb07c2ab60c84fedbb41ad63caa7337ecd75d6d234662b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c9411416a680194f934009b1715599304ae13f41cb801e8edff8ac0ee67eea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def givenInstance («show» : flag true) (xs : TSyntaxArray `inline) :
    DocM (Inline ElabInline) := do
  let s ← onlyCode xs

  let stxs ← parseStrLit givenInstanceContents s
  let stxs := stxs.getArgs.mapIdx Prod.mk |>.filterMap fun (n, s) =>
    if n % 2 = 0 then some s else none
  let mut lctx ← getLCtx
  let mut localInstances ← Meta.getLocalInstances
  let mut instCounter := 0
  for stx in stxs do
    let nameColonOpt := stx[0][0]
    let tyStx := stx[1]

    let ty' : Expr ← elabType tyStx
    registerDocMVar decl_name% ty' tyStx m!"instance type"
    let class? ← Meta.isClass? ty'
    let some className := class?
      | throwError m!"Expected a type class, but got `{.ofExpr ty'}`"

    -- Generate a fresh name if no name is provided
    let (userName, hasUserName) ←
      if nameColonOpt.isMissing then
        instCounter := instCounter + 1
        let n ← mkFreshUserName (`inst ++ className)
        pure (n, false)
      else
        pure (nameColonOpt.getId, true)

    let fv ← mkFreshFVarId
    lctx := lctx.mkLocalDecl fv userName ty' BinderInfo.instImplicit
    localInstances := localInstances.push { fvar := .fvar fv, className }

    if hasUserName then
      addTermInfo' nameColonOpt[0] (.fvar fv)
        (lctx? := some lctx) (isBinder := true) (expectedType? := some ty')

  modify fun st => { st with lctx, localInstances }

  if «show» then
    let text ← getFileMap
    let mut outStrs := #[]
    let mut failed := false
    for stx in stxs do
      let nameColonOpt := stx[0][0]
      let thisStr ←
        if let some ⟨b', e'⟩ := stx[1].getRange? then
          -- Has type annotation
          if nameColonOpt.isMissing then
            -- No name, just show type
            pure <| String.Pos.Raw.extract text.source b' e'
          else
            -- Has name and type, nameColonOpt is `identFn >> symbolFn ":"`
            if let some ⟨b, e⟩ := nameColonOpt[0].getRange? then
              pure <| s!"{b.extract text.source e} : {b'.extract text.source e'}"
            else
              failed := true
              break
        else
          failed := true
          break
      outStrs := outStrs.push thisStr
    if failed then
      return .code s.getString
    else
      return outStrs.map Inline.code
        |>.toList |>.intersperse (Inline.text ", ") |>.toArray
        |> Inline.concat
  else return .empty


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
