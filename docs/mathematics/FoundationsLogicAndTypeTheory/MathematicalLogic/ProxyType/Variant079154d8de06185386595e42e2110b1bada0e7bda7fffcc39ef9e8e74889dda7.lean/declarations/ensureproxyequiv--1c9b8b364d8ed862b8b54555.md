# ensureProxyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f95ed39f76d3b3cde378471bd2fe112d8e840872b24911e2ca3cd4c1030bb26",
  "kind": "def",
  "lexical_name": "ensureProxyEquiv",
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
  "slug": "ensureproxyequiv--1c9b8b364d8ed862b8b54555",
  "source": {
    "blob": "6bbb7a3b051263b557f6449cd39b4d240a6fe74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c9b8b364d8ed862b8b54555fd35ed59134e98467f9fb2494a96ccd9a619c173",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f95ed39f76d3b3cde378471bd2fe112d8e840872b24911e2ca3cd4c1030bb26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureProxyEquiv (config : ProxyEquivConfig) (indVal : InductiveVal) : TermElabM Unit := do
  if indVal.isRec then
    throwError
      "proxy equivalence: recursive inductive types are not supported (and are usually infinite)"
  if 0 < indVal.numIndices then
    throwError "proxy equivalence: inductive indices are not supported"

  let levels := indVal.levelParams.map Level.param
  forallBoundedTelescope indVal.type indVal.numParams fun params _sort => do
    let mut cdata := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let ctorType ← inferType <| mkAppN (mkConst ctorName levels) params
      cdata := cdata.push <| ←
        forallBoundedTelescope ctorType ctorInfo.numFields fun xs _itype => do
          let names ← xs.mapM (fun _ => mkFreshUserName `a)
          let (ty, ppatt) ← config.mkCtorProxyType (xs.zip names).toList
          let places := .replicate ctorInfo.numParams (← `(term| _))
          let argNames := names.map mkIdent
          let cpatt ← `(term| @$(mkIdent ctorName) $places* $argNames*)
          return (ctorName, ty, ppatt, cpatt)
    let (ctype, ppatts, pf) ← config.mkProxyType <|
      cdata.map (fun (ctorName, ty, ppatt, _) => (ctorName, ty, ppatt))
    let mut toFunAlts := #[]
    let mut invFunAlts := #[]
    for ppatt in ppatts, (_, _, _, cpatt) in cdata do
      toFunAlts := toFunAlts.push <| ← `(matchAltExpr| | $ppatt => $cpatt)
      invFunAlts := invFunAlts.push <| ← `(matchAltExpr| | $cpatt => $ppatt)

    -- Create the proxy type definition
    trace[Elab.ProxyType] "proxy type: {ctype}"
    let ctype' ← mkLambdaFVars params ctype
    if let some const := (← getEnv).find? config.proxyName then
      unless ← isDefEq const.value! ctype' do
        throwError "Declaration {config.proxyName} already exists and it is not the proxy type."
      trace[Elab.ProxyType] "proxy type already exists"
    else
      addAndCompile <| Declaration.defnDecl
        { name := config.proxyName
          levelParams := indVal.levelParams
          safety := DefinitionSafety.safe
          hints := ReducibilityHints.abbrev
          type := ← inferType ctype'
          value := ctype' }
      -- Set to be reducible so that typeclass inference can see it's a Fintype
      setReducibleAttribute config.proxyName
      setProtected config.proxyName
      -- Add a docstring
      addDocStringCore config.proxyName s!"A \"proxy type\" equivalent to `{indVal.name}` that is \
        constructed from `Unit`, `PLift`, `Sigma`, `Empty`, and `Sum`. \
        See `{config.proxyEquivName}` for the equivalence. \
        (Generated by the `proxy_equiv%` elaborator.)"
      trace[Elab.ProxyType] "defined {config.proxyName}"

    -- Create the `Equiv`
    let equivType ← mkAppM ``Equiv #[ctype, mkAppN (mkConst indVal.name levels) params]
    if let some const := (← getEnv).find? config.proxyEquivName then
      unless ← isDefEq const.type (← mkForallFVars params equivType) do
        throwError "Declaration {config.proxyEquivName} already exists and has the wrong type."
      trace[Elab.ProxyType] "proxy equivalence already exists"
    else
      trace[Elab.ProxyType] "constructing proxy equivalence"
      let mut toFun ← `(term| fun $toFunAlts:matchAlt*)
      let mut invFun ← `(term| fun $invFunAlts:matchAlt*)
      if indVal.numCtors == 0 then
        -- Empty matches don't elaborate, so use `nomatch` here.
        toFun ← `(term| fun x => nomatch x)
        invFun ← `(term| fun x => nomatch x)
      let equivBody ← `(term| { toFun := $toFun,
                                invFun := $invFun,
                                right_inv := by intro x; cases x <;> rfl
                                left_inv := by intro x; $pf:tactic })
      let equiv ← Term.elabTerm equivBody equivType
      Term.synthesizeSyntheticMVarsNoPostponing
      trace[Elab.ProxyType] "elaborated equivalence{indentExpr equiv}"
      let equiv' ← mkLambdaFVars params (← instantiateMVars equiv)
      addAndCompile <| Declaration.defnDecl
        { name := config.proxyEquivName
          levelParams := indVal.levelParams
          safety := DefinitionSafety.safe
          hints := ReducibilityHints.abbrev
          type := ← inferType equiv'
          value := equiv' }
      setProtected config.proxyEquivName
      addDocStringCore config.proxyEquivName s!"An equivalence between the \"proxy type\" \
        `{config.proxyName}` and `{indVal.name}`. The proxy type is a reducible definition \
        that represents the inductive type using `Unit`, `PLift`, `Sigma`, `Empty`, and `Sum` \
        (and whatever other inductive types appear within the inductive type), and the \
        intended use is to define typeclass instances uses pre-existing instances on these. \
        (Generated by the `proxy_equiv%` elaborator.)"
      trace[Elab.ProxyType] "defined {config.proxyEquivName}"

/-- Helper function for `proxy_equiv% type : expectedType` elaborators.

Elaborate `type` and get its `InductiveVal`. Uses the `expectedType`, where the
expected type should be of the form `_ ≃ type`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbb7a3b051263b557f6449cd39b4d240a6fe74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
