# mkBRecOnFromRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1357c18dc2deeb0276031374e3443d58395a07f442aa0e09a37363008104553",
  "kind": "def",
  "lexical_name": "mkBRecOnFromRec",
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
  "slug": "mkbreconfromrec--7f1a97f05b3a001faf425b4e",
  "source": {
    "blob": "7a47d1979b14d644592160eef63ef17fb45b972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f1a97f05b3a001faf425b4ed73827ccb51544c06bf3efbe0c2bf73171a30a30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1357c18dc2deeb0276031374e3443d58395a07f442aa0e09a37363008104553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBRecOnFromRec (recName : Name) (nParams : Nat)
    (all : Array Name) (brecOnName : Name) : MetaM Unit := do
  let brecOnGoName := brecOnName.str "go"
  let brecOnEqName := brecOnName.str "eq"
  let .recInfo recVal ← getConstInfo recName | return
  let lvl::lvls := recVal.levelParams.map (Level.param ·)
    | throwError "recursor {recName} has no levelParams"
  -- universe parameter names of brecOn
  let blps := recVal.levelParams

  forallTelescope recVal.type fun refArgs refBody => do
    assert! refArgs.size > nParams + recVal.numMotives + recVal.numMinors
    let params  : Array Expr := refArgs[*...nParams]
    let motives : Array Expr := refArgs[nParams...(nParams + recVal.numMotives)]
    let minors  : Array Expr := refArgs[(nParams + recVal.numMotives)...(nParams + recVal.numMotives + recVal.numMinors)]
    let indices : Array Expr := refArgs[(nParams + recVal.numMotives + recVal.numMinors)...(refArgs.size - 1)]
    let major   : Expr       := refArgs[refArgs.size - 1]!

    let some idx := motives.idxOf? refBody.getAppFn
      | throwError "result type of {recVal.type} is not one of {motives}"

    -- universe parameter of the type fomer.
    -- same as `typeFormerTypeLevel indVal.type`, but we want to infer it from the
    -- type of the recursor, to be more robust when facing nested induction
    let majorTypeType ← inferType (← inferType major)
    let .some ilvl ← typeFormerTypeLevel majorTypeType
      | throwError "type of type of major premise {major} not a type former"

    -- universe level of the resultant type
    let rlvl : Level := mkLevelMax ilvl lvl

    -- One `below` for each motive, with the same motive parameters
    let blvls := lvl::lvls
    let belows := Array.ofFn (n := motives.size) fun ⟨i,_⟩ =>
      let belowName :=
        if let some n := all[i]? then
          mkBelowName n
        else
          .str all[0]! s!"below_{i-all.size + 1}"
      mkAppN (.const belowName blvls) (params ++ motives)

    -- create types of functionals (one for each motive)
    --   (F_1 : (t : List α) → (f : List.below t) → motive t)
    -- and bring parameters of that type into scope
    let mut fDecls : Array (Name × (Array Expr -> MetaM Expr)) := #[]
    for motive in motives, below in belows, i in *...motives.size do
      let fType ← forallTelescope (← inferType motive) fun targs _ => do
        withLocalDeclD `f (mkAppN below targs) fun f =>
          mkForallFVars (targs.push f) (mkAppN motive targs)
      let fName := .mkSimple s!"F_{i + 1}"
      fDecls := fDecls.push (fName, fun _ => pure fType)
    withLocalDeclsD fDecls fun fs => do
      let mut go_val := .const recName (rlvl :: lvls)
      -- add parameters
      go_val := mkAppN go_val params
      -- add type formers
      for motive in motives, below in belows do
        -- example: (motive := fun t => PProd (motive t) (@List.below α motive t))
        let arg ← forallTelescope (← inferType motive) fun targs _ => do
          let cType := mkAppN motive targs
          let belowType := mkAppN below targs
          let arg ← mkPProd cType belowType
          mkLambdaFVars targs arg
        go_val := .app go_val arg
      -- add minor premises
      for minor in minors do
        let arg ← buildBRecOnMinorPremise rlvl motives belows fs (← inferType minor)
        go_val := .app go_val arg
      -- add indices and major premise
      go_val := mkAppN go_val indices
      go_val := mkApp go_val major

      -- All parameters of `.rec` besides the `minors` become parameters of `.bRecOn`, and the `fs`
      let below_params := params ++ motives ++ indices ++ #[major] ++ fs
      let motive_app := mkAppN motives[idx]! (indices.push major)
      let below_app := mkAppN belows[idx]! (indices.push major)
      let type ← mkForallFVars below_params (← mkPProd motive_app below_app)
      go_val ← mkLambdaFVars below_params go_val

      let go_decl ← mkDefinitionValInferringUnsafe brecOnGoName blps type go_val .abbrev

      addDecl (.defnDecl go_decl)
      setReducibleAttribute go_decl.name
      modifyEnv fun env => addProtected env go_decl.name

      -- project out first component
      let brecOnGoApp := mkAppN (.const brecOnGoName blvls) below_params
      let val ← mkPProdFstM brecOnGoApp
      let val ← mkLambdaFVars below_params val
      let type ← mkForallFVars below_params motive_app
      let decl ← mkDefinitionValInferringUnsafe brecOnName blps type val .abbrev

      addDecl (.defnDecl decl)
      setReducibleAttribute decl.name
      modifyEnv fun env => markAuxRecursor env decl.name
      modifyEnv fun env => addProtected env decl.name

      let lhs := mkAppN (.const decl.name blvls) below_params
      let rhs := fs[idx]!
      let rhs := mkAppN rhs (indices.push major)
      let rhs := mkApp rhs (← mkPProdSndM brecOnGoApp)
      let thm_type ← mkEq lhs rhs
      let thm_val ← mkFreshExprSyntheticOpaqueMVar thm_type
      let mvar := thm_val.mvarId!
      let cases ← mvar.cases major.fvarId!
      for case in cases do
        case.mvarId.refl (check := false)
      let thm_val ← instantiateMVars thm_val
      let thm_type ← mkForallFVars below_params thm_type
      let thm_val ← mkLambdaFVars below_params thm_val
      let thm_decl ← mkThmOrUnsafeDef {
        name := brecOnEqName
        levelParams := blps
        type := thm_type
        value := thm_val
      }
      addDecl thm_decl
      modifyEnv fun env => addProtected env brecOnEqName

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a47d1979b14d644592160eef63ef17fb45b972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
