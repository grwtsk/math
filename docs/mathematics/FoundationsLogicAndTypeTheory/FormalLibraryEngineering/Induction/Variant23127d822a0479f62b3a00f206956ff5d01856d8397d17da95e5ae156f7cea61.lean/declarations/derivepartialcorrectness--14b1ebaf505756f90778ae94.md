# derivePartialCorrectness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e880e1230dff00931fa446c099e15c5c8ffdd81f388b13c3cba7bc2869b082e0",
  "kind": "def",
  "lexical_name": "derivePartialCorrectness",
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
  "slug": "derivepartialcorrectness--14b1ebaf505756f90778ae94",
  "source": {
    "blob": "dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14b1ebaf505756f90778ae94425b47f426791d3c99218c024d6eb963032260df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e880e1230dff00931fa446c099e15c5c8ffdd81f388b13c3cba7bc2869b082e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivePartialCorrectness (name : Name) (isConclusionMutual : Bool) : MetaM Unit := do
  let inductName := name ++ if isConclusionMutual then `mutual_partial_correctness else `partial_correctness
  realizeConst name inductName do
  let fixpointInductThm := name ++ if isConclusionMutual then `mutual_fixpoint_induct else `fixpoint_induct
  unless (← getEnv).contains fixpointInductThm do
    deriveInduction name isConclusionMutual

  prependError m!"Cannot derive partial correctness theorem (please report this issue)" do
    let some eqnInfo := eqnInfoExt.find? (← getEnv) name |
      throwError "{name} is not defined by partial_fixpoint"

    let infos ← eqnInfo.declNames.mapM getConstInfoDefn
    let fixedParamPerm0 := eqnInfo.fixedParamPerms.perms[0]!
    -- First open up the fixed parameters everywhere
    let e' ← fixedParamPerm0.forallTelescope infos[0]!.type fun xs => do
      let types ← infos.mapIdxM (eqnInfo.fixedParamPerms.perms[·]!.instantiateForall ·.type xs)

      -- for `f : α → β → Option γ`, we expect a `motive : α → β → γ → Prop`
      let motiveTypes ← types.mapM fun type =>
        forallTelescopeReducing type fun ys type => do
          let type ← whnf type
          let_expr Option γ := type | throwError "Expected `Option`, got:{indentExpr type}"
          withLocalDeclD (← mkFreshUserName `r) γ fun r =>
            mkForallFVars (ys.push r) (.sort 0)
      let motiveDecls ← motiveTypes.mapIdxM fun i motiveType => do
        let n := if infos.size = 1 then .mkSimple "motive"
                                   else .mkSimple s!"motive_{i+1}"
        pure (n, fun _ => pure motiveType)
      withLocalDeclsD motiveDecls fun motives => do
        -- the motives, as expected by `f.mutual_induct`:
        -- fun f => ∀ x y r, f x y = some r → motive x y r
        let motives' ← motives.mapIdxM fun i motive => do
          withLocalDeclD (← mkFreshUserName `f) types[i]! fun f => do
            forallTelescope (← inferType motive) fun ysr _ => do
              let ys := ysr.pop
              let r := ysr.back!
              let heq ← mkEq (mkAppN f ys) (← mkAppM ``some #[r])
              let motive' ← mkArrow heq (mkAppN motive ysr)
              let motive' ← mkForallFVars ysr motive'
              mkLambdaFVars #[f] motive'

        let e' ← mkAppOptM fixpointInductThm <| (xs ++ motives').map some
        let adms ← motives.mapM mkOptionAdm
        let e' := mkAppN e' adms
        let e' ← mkLambdaFVars motives e'
        let e' ← mkLambdaFVars (binderInfoForMVars := .default) (usedOnly := true) xs e'
        let e' ← instantiateMVars e'
        trace[Elab.definition.partialFixpoint.induction] "complete body of partial correctness principle:{indentExpr e'}"
        pure e'

    let eTyp ← inferType e'
    let eTyp ← elimOptParam eTyp
    let eTyp ← Core.betaReduce eTyp
    -- logInfo m!"eTyp: {eTyp}"
    let params := (collectLevelParams {} eTyp).params
    -- Prune unused level parameters, preserving the original order
    let us := infos[0]!.levelParams.filter (params.contains ·)

    addDecl <| Declaration.thmDecl
      { name := inductName, levelParams := us, type := eTyp, value := e' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant23127d822a0479f62b3a00f206956ff5d01856d8397d17da95e5ae156f7cea61.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdc1ebc613f14a2e35ff00d1aa4ead4d7eed966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
