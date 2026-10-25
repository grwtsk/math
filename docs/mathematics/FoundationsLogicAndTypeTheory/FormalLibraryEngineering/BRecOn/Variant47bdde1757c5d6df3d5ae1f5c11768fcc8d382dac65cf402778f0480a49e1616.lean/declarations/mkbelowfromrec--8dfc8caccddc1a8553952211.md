# mkBelowFromRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:782c7f54b922c4be0aa4ee1733285cd6dd71a1a1550e4da35feea7bbc1a29819",
  "kind": "def",
  "lexical_name": "mkBelowFromRec",
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
  "slug": "mkbelowfromrec--8dfc8caccddc1a8553952211",
  "source": {
    "blob": "eb887ec1c026a8c1c24e2c225561ca654801a6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dfc8caccddc1a855395221181af1ecf2fe3b7c6ee60a22c85dd97e116f96431",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:782c7f54b922c4be0aa4ee1733285cd6dd71a1a1550e4da35feea7bbc1a29819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBelowFromRec (recName : Name) (nParams : Nat)
  (belowName : Name) : MetaM Unit := do
  -- The construction follows the type of `ind.rec`
  let .recInfo recVal ← getConstInfo recName
    | throwError "{recName} not a .recInfo"
  let lvl::lvls := recVal.levelParams.map (Level.param ·)
    | throwError "recursor {recName} has no levelParams"

  let decl ← forallTelescope recVal.type fun refArgs _ => do
    assert! refArgs.size > nParams + recVal.numMotives + recVal.numMinors
    let params  : Array Expr := refArgs[*...nParams]
    let motives : Array Expr := refArgs[nParams...(nParams + recVal.numMotives)]
    let minors  : Array Expr := refArgs[(nParams + recVal.numMotives)...(nParams + recVal.numMotives + recVal.numMinors)]
    let indices : Array Expr := refArgs[(nParams + recVal.numMotives + recVal.numMinors)...(refArgs.size - 1)]
    let major   : Expr       := refArgs[refArgs.size - 1]!

    -- universe parameter of the type fomer.
    -- same as `typeFormerTypeLevel indVal.type`, but we want to infer it from the
    -- type of the recursor, to be more robust when facing nested induction
    let majorTypeType ← inferType (← inferType major)
    let .some ilvl ← typeFormerTypeLevel majorTypeType
      | throwError "type of type of major premise {major} not a type former"

    -- universe level of the resultant type
    let rlvl : Level := mkLevelMax ilvl lvl

    let mut val := .const recName (rlvl.succ :: lvls)
    -- add parameters
    val := mkAppN val params
    -- add type formers
    for motive in motives do
      let arg ← forallTelescope (← inferType motive) fun targs _ =>
        mkLambdaFVars targs (.sort rlvl)
      val := .app val arg
    -- add minor premises
    for minor in minors do
      let arg ← buildBelowMinorPremise rlvl motives (← inferType minor)
      val := .app val arg
    -- add indices and major premise
    val := mkAppN val indices
    val := mkApp val major

    -- All parameters of `.rec` besides the `minors` become parameters of `.below`
    let below_params := params ++ motives ++ indices ++ #[major]
    let type ← mkForallFVars below_params (.sort rlvl)
    val ← mkLambdaFVars below_params val

    mkDefinitionValInferringUnsafe belowName recVal.levelParams type val .abbrev

  addDecl (.defnDecl decl)
  setReducibleAttribute decl.name
  modifyEnv fun env => markAuxRecursor env decl.name
  modifyEnv fun env => addProtected env decl.name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant47bdde1757c5d6df3d5ae1f5c11768fcc8d382dac65cf402778f0480a49e1616.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb887ec1c026a8c1c24e2c225561ca654801a6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
