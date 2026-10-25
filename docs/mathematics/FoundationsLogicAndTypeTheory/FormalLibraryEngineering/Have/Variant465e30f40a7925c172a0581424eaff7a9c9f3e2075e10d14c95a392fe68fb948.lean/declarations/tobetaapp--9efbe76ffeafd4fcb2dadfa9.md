# toBetaApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d815e76ca294d9f464501a5164aa396ce3b9de39a4197bae6058092c678e129f",
  "kind": "def",
  "lexical_name": "toBetaApp",
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
  "slug": "tobetaapp--9efbe76ffeafd4fcb2dadfa9",
  "source": {
    "blob": "344ea4561f941db7a5665f5d63f54019b2cf59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9efbe76ffeafd4fcb2dadfa92413353cdb3216a3fc24cd66103676d6780e7662",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d815e76ca294d9f464501a5164aa396ce3b9de39a4197bae6058092c678e129f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def toBetaApp (haveExpr : Expr) : SymM ToBetaAppResult := do
  go haveExpr #[] #[] #[] #[] #[] #[] {}
where
  /--
  Process the telescope recursively.

  - `e`: Current expression (remaining telescope)
  - `xs`: Original `have` binders (as fvars)
  - `xs'`: New binders with function types (as fvars)
  - `args`: Lambda-wrapped values `(fun deps => vᵢ)`
  - `subst`: Substitution mapping old vars to applications `xᵢ' sᵢ₁ ... sᵢₖ`
  - `types`: Types of the new binders
  - `varDeps`: Dependency positions for each `have`
  - `fvarIdToPos`: Map from fvar ID to telescope position
  -/
  go (e : Expr) (xs xs' args subst types : Array Expr) (varDeps : Array (Array Nat)) (fvarIdToPos : FVarIdMap Nat)
      : SymM ToBetaAppResult := do
    if let .letE n t v b (nondep := true) := e then
      let t := t.instantiateRev xs
      let v := v.instantiateRev xs
      withLocalDeclD n t fun x => do
      let fvarIds := collectFVarIdsAt v fvarIdToPos
      let varPos := fvarIds.map (fvarIdToPos.getD · 0)
      let ys := fvarIds.map mkFVar
      let arg ← mkLambdaFVars ys v
      let t' ← share (← mkForallFVars ys t)
      withLocalDeclD n t' fun x' => do
      let args' := fvarIds.map fun fvarId =>
        let pos := fvarIdToPos.get! fvarId
        subst[pos]!
      let v' ← share <| mkAppN x' args'
      let fvarIdToPos := fvarIdToPos.insert x.fvarId! xs.size
      go b (xs.push x) (xs'.push x') (args.push arg) (subst.push v') (types.push t') (varDeps.push varPos) fvarIdToPos
    else
      let e ← instantiateRevS e subst
      let α ← inferType e
      let u ← getLevel α
      let fType ← mkArrows types α
      let e ← mkLambdaFVarsS xs' e
      let e ← share <| mkAppN e args
      let eq := mkApp3 (mkConst ``Eq [u]) α haveExpr e
      let h := mkApp2 (mkConst ``Eq.refl [u]) α haveExpr
      let h := mkExpectedPropHint h eq
      return { α, u, e, h, varDeps, fType }

/--
Strip `n` leading forall binders from a type.
Used to extract the actual type from a function type when we know the number of arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variant465e30f40a7925c172a0581424eaff7a9c9f3e2075e10d14c95a392fe68fb948.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `344ea4561f941db7a5665f5d63f54019b2cf59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
