# mkCasesOnSameCtorHet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d8463c37f14217f9f340463fd8aacf8c52f64f919896ef4a7282863e91df0f8",
  "kind": "def",
  "lexical_name": "mkCasesOnSameCtorHet",
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
  "slug": "mkcasesonsamectorhet--58efeebf9ed10f7a79f26e93",
  "source": {
    "blob": "beb8dc6774a3298096e99471aa453299f8c4c243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58efeebf9ed10f7a79f26e936706fdf542db9089f25d3a7d576208b95573a372",
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

Occurrence: `declaration:5d8463c37f14217f9f340463fd8aacf8c52f64f919896ef4a7282863e91df0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def mkCasesOnSameCtorHet (declName : Name) (indName : Name) : MetaM Unit := do
  let ConstantInfo.inductInfo info ← getConstInfo indName | unreachable!
  let casesOnName := mkCasesOnName indName
  let casesOnInfo ← getConstVal casesOnName
  let v::us := casesOnInfo.levelParams.map mkLevelParam | panic! "unexpected universe levels on `casesOn`"
  let e ← forallBoundedTelescope casesOnInfo.type info.numParams fun params t =>
    forallBoundedTelescope t (some 1) fun _ t => -- ignore motive
    forallBoundedTelescope t (some (info.numIndices + 1)) fun ism1 _ =>
    forallBoundedTelescope t (some (info.numIndices + 1)) fun ism2 _ => do
      let motiveType ← mkForallFVars (ism1 ++ ism2) (mkSort v)
      withLocalDecl `motive .implicit motiveType fun motive => do

      let altTypes ← info.ctors.toArray.mapIdxM fun i ctorName => do
        let ctor := mkAppN (mkConst ctorName us) params
        let ctorType ← inferType ctor
        forallTelescope ctorType fun zs1 ctorRet1 => do
          let ctorApp1 := mkAppN ctor zs1
          let ctorRet1 ← whnf ctorRet1
          let is1 : Array Expr := ctorRet1.getAppArgs[info.numParams:]
          let ism1 := is1.push ctorApp1
          forallTelescope ctorType fun zs2 ctorRet2 => do
            let ctorApp2 := mkAppN ctor zs2
            let ctorRet2 ← whnf ctorRet2
            let is2 : Array Expr := ctorRet2.getAppArgs[info.numParams:]
            let ism2 := is2.push ctorApp2
            let e := mkAppN motive (ism1 ++ ism2)
            let e ← mkForallFVars (zs1 ++ zs2) e
            let name := match ctorName with
              | Name.str _ s => Name.mkSimple s
              | _ => Name.mkSimple s!"alt{i+1}"
            return (name, e)
      withLocalDeclsDND altTypes fun alts => do

      let ctorApp1 := mkAppN (mkConst (mkCtorIdxName indName) us) (params ++ ism1)
      let ctorApp2 := mkAppN (mkConst (mkCtorIdxName indName) us) (params ++ ism2)
      let heqType ← mkEq ctorApp1 ctorApp2
      let heqType' ← mkEq ctorApp2 ctorApp1
      withLocalDeclD `h heqType fun heq => do
        let motive1 ← mkLambdaFVars ism1 (← mkArrow heqType' (mkAppN motive (ism1 ++ ism2)))
        let e := mkConst casesOnInfo.name (v :: us)
        let e := mkAppN e params
        let e := mkApp e motive1
        let e := mkAppN e ism1
        let alts1 ← info.ctors.toArray.mapIdxM fun i ctorName => do
          let ctor := mkAppN (mkConst ctorName us) params
          let ctorType ← inferType ctor
          forallTelescope ctorType fun zs1 ctorRet1 => do
            let ctorApp1 := mkAppN ctor zs1
            let ctorRet1 ← whnf ctorRet1
            let is1 : Array Expr := ctorRet1.getAppArgs[info.numParams:]
            let ism1 := is1.push ctorApp1
            -- Here we let the typecheker reduce the `ctorIdx` application
            let heq := mkApp3 (mkConst ``Eq [1]) (mkConst ``Nat) ctorApp2 (mkRawNatLit i)
            withLocalDeclD `h heq fun h => do
              let motive2 ← mkLambdaFVars ism2 (mkAppN motive (ism1 ++ ism2))
              let alt ← forallTelescope ctorType fun zs2 _ => do
                mkLambdaFVars zs2 <| mkAppN alts[i]! (zs1 ++ zs2)
              let e := if info.numCtors = 1 then
                let casesOn := mkConst (mkCasesOnName indName) (v :: us)
                mkAppN casesOn (params ++ #[motive2] ++ ism2 ++ #[alt])
              else
                let casesOn := mkConst (mkConstructorElimName indName ctorName) (v :: us)
                mkAppN casesOn (params ++ #[motive2] ++ ism2 ++ #[h, alt])
              mkLambdaFVars (zs1.push h) e
        let e := mkAppN e alts1
        let e := mkApp e (← mkEqSymm heq)
        mkLambdaFVars (params ++ #[motive] ++ ism1 ++ ism2 ++ #[heq] ++ alts) e

  withExporting (isExporting := !isPrivateName declName) do
    addDecl (.defnDecl (← mkDefinitionValInferringUnsafe
      (name        := declName)
      (levelParams := casesOnInfo.levelParams)
      (type        := (← inferType e))
      (value       := e)
      (hints       := ReducibilityHints.abbrev)
    ))
  modifyEnv fun env => markMatcherLike env declName
  modifyEnv fun env => markAuxRecursor env declName
  modifyEnv fun env => addToCompletionBlackList env declName
  modifyEnv fun env => addProtected env declName
  Elab.Term.elabAsElim.setTag declName
  setReducibleAttribute declName

/--
This constructs a matcher for a match statement that matches on the constructors of
a data type in parallel. So if `h : x1.ctorIdx = x2.ctorIdx`, then it implements
```
match x1, x2, h with
| ctor1 .. , ctor1 .. , _ => ...
| ctor2 .. , ctor2 .. , _ => ...
```
The normal matcher supports such matches, but implements them using nested `casesOn`, which
leads to a quadratic blow-up. This function uses the per-constructor eliminators to implement this
more efficiently.

This is useful for implementing or deriving functionality like `BEq`, `DecidableEq`, `Ord` and
proving their lawfulness.

One could imagine a future where `match` compilation is smart enough to do that automatically; then
this module can be dropped.

Note that for some data types where the indices determine the constructor (e.g. `Vec`), this leads
to less efficient code than the normal matcher, as this needs to read the constructor tag on both
arguments, whereas the normal matcher produces code that reads just the first argument’s tag, and
then boldly reads the second argument’s fields.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesOnSameCtor/Varianta588ea0a4c86fceecd30feccd7fcb91433d4ec5085dcba1853653f076875eea7.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb8dc6774a3298096e99471aa453299f8c4c243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
