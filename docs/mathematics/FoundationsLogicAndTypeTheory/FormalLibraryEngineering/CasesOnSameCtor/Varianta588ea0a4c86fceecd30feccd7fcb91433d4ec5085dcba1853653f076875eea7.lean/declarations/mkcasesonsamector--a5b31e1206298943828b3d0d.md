# mkCasesOnSameCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dad203b1d46beb4c443fd3998a76b74a071bc44d864bc93e16a76017214e28f",
  "kind": "def",
  "lexical_name": "mkCasesOnSameCtor",
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
  "slug": "mkcasesonsamector--a5b31e1206298943828b3d0d",
  "source": {
    "blob": "beb8dc6774a3298096e99471aa453299f8c4c243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5b31e1206298943828b3d0d4aac5ea86d301b4dff325eba406b77608521dad1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dad203b1d46beb4c443fd3998a76b74a071bc44d864bc93e16a76017214e28f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkCasesOnSameCtor (declName : Name) (indName : Name) : MetaM Unit := do
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!

  let casesOnSameCtorHet := declName ++ `het
  mkCasesOnSameCtorHet casesOnSameCtorHet indName
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let v::us := casesOnInfo.levelParams.map mkLevelParam | panic! "unexpected universe levels on `casesOn`"
  forallBoundedTelescope casesOnInfo.type info.numParams fun params t =>
    let t0 := t.bindingBody! -- ignore motive
    forallBoundedTelescope t0 (some info.numIndices) fun is t =>
    forallBoundedTelescope t (some 1) fun x1 _ =>
    forallBoundedTelescope t (some 1) fun x2 _ => do
      let x1 := x1[0]!
      let x2 := x2[0]!
      let ctorApp1 := mkAppN (mkConst (mkCtorIdxName indName) us) (params ++ is ++ #[x1])
      let ctorApp2 := mkAppN (mkConst (mkCtorIdxName indName) us) (params ++ is ++ #[x2])
      let heqType ← mkEq ctorApp1 ctorApp2
      withLocalDeclD `h heqType fun heq => do
      let motiveType ← mkForallFVars (is ++ #[x1,x2,heq]) (mkSort v)
      withLocalDecl `motive .implicit motiveType fun motive => do

      let (altTypes, altInfos) ← Array.unzip <$> info.ctors.toArray.mapIdxM fun i ctorName => do
        let ctor := mkAppN (mkConst ctorName us) params
        withSharedCtorIndices ctor fun zs12 is fields1 fields2 => do
          let ctorApp1 := mkAppN ctor fields1
          let ctorApp2 := mkAppN ctor fields2
          let e := mkAppN motive (is ++ #[ctorApp1, ctorApp2, (← mkEqRefl (mkNatLit i))])
          let e ← mkForallFVars zs12 e
          let e ← if zs12.isEmpty then mkArrow (mkConst ``Unit) e else pure e
          let name := match ctorName with
            | Name.str _ s => Name.mkSimple s
            | _ => Name.mkSimple s!"alt{i+1}"
          let altInfo := { numFields := zs12.size, numOverlaps := 0, hasUnitThunk := zs12.isEmpty : Match.AltParamInfo}
          return ((name, e), altInfo)
      withLocalDeclsDND altTypes fun alts => do
        forallBoundedTelescope t0 (some (info.numIndices + 1)) fun ism1' _ =>
        forallBoundedTelescope t0 (some (info.numIndices + 1)) fun ism2' _ => do
        let (motive', newRefls) ←
          withNewEqs (is.push x1) ism1' fun newEqs1 newRefls1 => do
          withNewEqs (is.push x2) ism2' fun newEqs2 newRefls2 => do
            let motive' := mkAppN motive (is ++ #[x1, x2, heq])
            let motive' ← mkForallFVars (newEqs1 ++ newEqs2) motive'
            let motive' ← mkLambdaFVars (ism1' ++ ism2') motive'
            return (motive', newRefls1 ++ newRefls2)
        let casesOn2 := mkConst casesOnSameCtorHet (v :: us)
        let casesOn2 := mkAppN casesOn2 params
        let casesOn2 := mkApp casesOn2 motive'
        let casesOn2 := mkAppN casesOn2 (is ++ #[x1] ++ is ++ #[x2])
        let casesOn2 := mkApp casesOn2 heq
        let altTypes' ← inferArgumentTypesN info.numCtors casesOn2
        let alts' ← info.ctors.toArray.mapIdxM fun i ctorName => do
          let ctor := mkAppN (mkConst ctorName us) params
          let ctorType ← inferType ctor
          forallTelescope ctorType fun zs1 _ctorRet1 => do
          forallTelescope ctorType fun zs2 _ctorRet2 => do
            let altType ← instantiateForall altTypes'[i]! (zs1 ++ zs2)
            let alt ← mkFreshExprSyntheticOpaqueMVar altType
            let goal := alt.mvarId!
            let some (goal, _) ← Cases.unifyEqs? newRefls.size goal {}
                | throwError "unifyEqns? unexpectedly closed goal"
            let hyp := alts[i]!
            let hyp := if zs1.isEmpty && zs2.isEmpty then mkApp hyp (mkConst ``Unit.unit) else hyp
            let [] ← goal.apply hyp
              | throwError "could not apply {hyp} to close\n{goal}"
            mkLambdaFVars (zs1 ++ zs2) (← instantiateMVars alt)
        let casesOn2 := mkAppN casesOn2 alts'
        let casesOn2 := mkAppN casesOn2 newRefls
        let e ← mkLambdaFVars (params ++ #[motive] ++ is ++ #[x1,x2] ++ #[heq] ++ alts) casesOn2

        let decl := .defnDecl (← mkDefinitionValInferringUnsafe
            (name        := declName)
            (levelParams := casesOnInfo.levelParams)
            (type        := (← inferType e))
            (value       := e)
            (hints       := ReducibilityHints.abbrev)
          )
        let matcherInfo : MatcherInfo := {
          numParams := info.numParams
          numDiscrs := info.numIndices + 3
          altInfos
          uElimPos? := some 0
          discrInfos := #[{}, {}, {}]
          overlaps := {}
        }

        -- Compare attributes with `mkMatcherAuxDefinition`
        withExporting (isExporting := !isPrivateName declName) do
          addDecl decl
        Elab.Term.elabAsElim.setTag declName
        Match.addMatcherInfo declName matcherInfo
        setInlineAttribute declName

        enableRealizationsForConst declName
        compileDecl decl


end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb8dc6774a3298096e99471aa453299f8c4c243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
