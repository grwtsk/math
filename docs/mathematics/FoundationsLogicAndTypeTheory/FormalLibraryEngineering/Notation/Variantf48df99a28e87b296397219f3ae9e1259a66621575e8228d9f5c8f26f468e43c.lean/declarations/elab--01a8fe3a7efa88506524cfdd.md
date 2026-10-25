# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:497579e692f2c2b687753cf17771878628c50c28ba790eb22f3111797031b71d",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--01a8fe3a7efa88506524cfdd",
  "source": {
    "blob": "68feb8442d81f406f4ee0316c451d10daa1b4eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 411,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01a8fe3a7efa88506524cfdde07232e2693336f123d0549d1bc7da40a4f5c3b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:497579e692f2c2b687753cf17771878628c50c28ba790eb22f3111797031b71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab doc:(docComment)? attrs?:(Parser.Term.attributes)? attrKind:Term.attrKind
    "notation3" prec?:(precedence)? name?:(namedName)? prio?:(namedPrio)? pp?:(prettyPrintOpt)?
    ppSpace items:(notation3Item)+ " => " val:term : command => do
  -- We use raw `Name`s for variables. This maps variable names back to the
  -- identifiers that appear in `items`
  let mut boundIdents : HashMap Name Ident := {}
  -- Replacements to use for the `macro`
  let mut boundValues : HashMap Name Syntax := {}
  -- The normal/foldl/foldr type of each variable (for delaborator)
  let mut boundType : HashMap Name BoundValueType := {}
  -- Function to get the keys of `boundValues`. This set is used when constructing
  -- patterns for delaboration.
  let getBoundNames (boundValues : HashMap Name Syntax) : HashSet Name :=
    HashSet.empty.insertMany <| boundValues.toArray.map Prod.fst
  -- Function to update `syntaxArgs` and `pattArgs` using `macroArg` syntax
  let pushMacro (syntaxArgs : Array (TSyntax `stx)) (pattArgs : Array Syntax)
      (mac : TSyntax ``macroArg) := do
    let (syntaxArg, pattArg) ← expandMacroArg mac
    return (syntaxArgs.push syntaxArg, pattArgs.push pattArg)
  -- Arguments for the `syntax` command
  let mut syntaxArgs := #[]
  -- Arguments for the LHS pattern in the `macro`. Also used to construct the syntax
  -- when delaborating
  let mut pattArgs := #[]
  -- The matchers to assemble into a delaborator
  let mut matchers := #[]
  -- Whether we've seen a `(...)` item
  let mut hasBindersItem := false
  -- Whether we've seen a `scoped` item
  let mut hasScoped := false
  for item in items do
    match item with
    | `(notation3Item| $lit:str) =>
      -- Can't use `pushMacro` since it inserts an extra variable into the pattern for `str`, which
      -- breaks our delaborator
      syntaxArgs := syntaxArgs.push (← `(stx| $lit:str))
      pattArgs := pattArgs.push <| mkAtomFrom lit lit.1.isStrLit?.get!
    | `(notation3Item| $_:bindersItem) =>
      if hasBindersItem then
        throwErrorAt item "Cannot have more than one `(...)` item."
      hasBindersItem := true
      -- HACK: Lean 3 traditionally puts a space after the main binder atom, resulting in
      -- notation3 "∑ "(...)", "r:(scoped f => sum f) => r
      -- but extBinders already has a space before it so we strip the trailing space of "∑ "
      if let `(stx| $lit:str) := syntaxArgs.back then
        syntaxArgs := syntaxArgs.pop.push (← `(stx| $(quote lit.getString.trimRight):str))
      (syntaxArgs, pattArgs) ← pushMacro syntaxArgs pattArgs (← `(macroArg| binders:extBinders))
    | `(notation3Item| ($id:ident $sep:str* $(prec?)? => $kind ($x $y => $scopedTerm) $init)) =>
      (syntaxArgs, pattArgs) ← pushMacro syntaxArgs pattArgs <| ←
        `(macroArg| $id:ident:sepBy(term $(prec?)?, $sep:str))
      -- N.B. `Syntax.getId` returns `.anonymous` for non-idents
      let scopedTerm' ← scopedTerm.replaceM fun s => pure (boundValues.find? s.getId)
      let init' ← init.replaceM fun s => pure (boundValues.find? s.getId)
      boundIdents := boundIdents.insert id.getId id
      match kind with
        | `(foldKind| foldl) =>
          boundValues := boundValues.insert id.getId <| ←
            `(expand_foldl% ($x $y => $scopedTerm') $init' [$$(.ofElems $id),*])
          boundType := boundType.insert id.getId .foldl
          matchers := matchers.push <|
            mkFoldlMatcher id.getId x.getId y.getId scopedTerm init (getBoundNames boundValues)
        | `(foldKind| foldr) =>
          boundValues := boundValues.insert id.getId <| ←
            `(expand_foldr% ($x $y => $scopedTerm') $init' [$$(.ofElems $id),*])
          boundType := boundType.insert id.getId .foldr
          matchers := matchers.push <|
            mkFoldrMatcher id.getId x.getId y.getId scopedTerm init (getBoundNames boundValues)
        | _ => throwUnsupportedSyntax
    | `(notation3Item| $lit:ident $(prec?)? : (scoped $scopedId:ident => $scopedTerm)) =>
      hasScoped := true
      (syntaxArgs, pattArgs) ← pushMacro syntaxArgs pattArgs <|←
        `(macroArg| $lit:ident:term $(prec?)?)
      matchers := matchers.push <|
        mkScopedMatcher lit.getId scopedId.getId scopedTerm (getBoundNames boundValues)
      let scopedTerm' ← scopedTerm.replaceM fun s => pure (boundValues.find? s.getId)
      boundIdents := boundIdents.insert lit.getId lit
      boundValues := boundValues.insert lit.getId <| ←
        `(expand_binders% ($scopedId => $scopedTerm') $$binders:extBinders,
          $(⟨lit.1.mkAntiquotNode `term⟩):term)
    | `(notation3Item| $lit:ident $(prec?)?) =>
      (syntaxArgs, pattArgs) ← pushMacro syntaxArgs pattArgs <|←
        `(macroArg| $lit:ident:term $(prec?)?)
      boundIdents := boundIdents.insert lit.getId lit
      boundValues := boundValues.insert lit.getId <| lit.1.mkAntiquotNode `term
    | stx => throwUnsupportedSyntax
  if hasScoped && !hasBindersItem then
    throwError "If there is a `scoped` item then there must be a `(...)` item for binders."

  -- 1. The `syntax` command
  let name ← mkNameFromSyntax name? syntaxArgs attrKind
  elabCommand <| ← `(command|
    $[$doc]? $(attrs?)? $attrKind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variantf48df99a28e87b296397219f3ae9e1259a66621575e8228d9f5c8f26f468e43c.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68feb8442d81f406f4ee0316c451d10daa1b4eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
