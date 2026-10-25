# delabLamAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3d9c087c0b654fd4ba158f682f6485a4cc4b9872212e026facfa1f2cd617eb9",
  "kind": "def",
  "lexical_name": "delabLamAux",
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
  "slug": "delablamaux--e3ac294285fe5288e6d255a3",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 956,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3ac294285fe5288e6d255a35cc64b48d926ddc7bb1e6f954a624a3c316a2c26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3d9c087c0b654fd4ba158f682f6485a4cc4b9872212e026facfa1f2cd617eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 956–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def delabLamAux (allNames : NameSet) : Delab := do
  let delabBody (allNames' : NameSet) : Delab := do
    if (← getExpr).isLambda then
      delabLamAux allNames'
    else
      delab
  delabBinders allNames #[] false false delabBody fun _ curNames dep ppTypes stxBody => do
    let e ← getExpr
    let mstxT := withBindingDomain delab

    -- leave lambda implicit if possible
    -- TODO: for now we just always block implicit lambdas when delaborating. We can revisit.
    -- Note: the current issue is that it requires state, i.e. if *any* previous binder was implicit,
    -- it doesn't seem like we can leave a subsequent binder implicit.
    let blockImplicitLambda := true
    /-
    let blockImplicitLambda := expl ||
      e.binderInfo == BinderInfo.default ||
      -- Note: the following restriction fixes many issues with roundtripping,
      -- but this condition may still not be perfectly in sync with the elaborator.
      e.binderInfo == BinderInfo.instImplicit ||
      Elab.Term.blockImplicitLambda stxBody ||
      dep
    -/

    if !blockImplicitLambda then
      pure stxBody
    else
      let mut (binders, stxBody) :=
        match stxBody with
        | `(fun $binderGroups* => $stxBody) => (binderGroups, stxBody)
        | _                                 => (#[], stxBody)
      if e.binderInfo.isExplicit && !ppTypes then
        binders := curNames ++ binders
      else
        let newBinder : TSyntax ``Lean.Parser.Term.funBinder ←
          match e.binderInfo, ppTypes with
          | BinderInfo.default, _ =>
            -- "default" binder group is the only one that expects binder names as a term,
            -- i.e. a single `Syntax.ident` or an application.
            let stxCurNames := Syntax.mkApp curNames[0]! curNames[1:]
            `(funBinder| ($stxCurNames : $(← mstxT)))
          | BinderInfo.implicit, true  => `(funBinder| {$curNames* : $(← mstxT)})
          | BinderInfo.implicit, false => `(funBinder| {$curNames*})
          | BinderInfo.strictImplicit, true  => `(funBinder| ⦃$curNames* : $(← mstxT)⦄)
          | BinderInfo.strictImplicit, false => `(funBinder| ⦃$curNames*⦄)
          | BinderInfo.instImplicit, _ =>
            -- here `curNames.size == 1`
            -- Approximation: if the name does not appear in the pretty printed body
            -- then don't use the name, even if it is dependent.
            if dep && curNames.any (fun n => stxBody.raw.hasIdent n.getId) then
              `(funBinder| [$curNames.back! : $(← mstxT)])
            else
              `(funBinder| [$(← mstxT)])
        binders := #[newBinder] ++ binders
      if ← getPPOption getPPUnicodeFun then
        `(fun $binders* ↦ $stxBody)
      else
        `(fun $binders* => $stxBody)

@[builtin_delab lam]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L956).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
