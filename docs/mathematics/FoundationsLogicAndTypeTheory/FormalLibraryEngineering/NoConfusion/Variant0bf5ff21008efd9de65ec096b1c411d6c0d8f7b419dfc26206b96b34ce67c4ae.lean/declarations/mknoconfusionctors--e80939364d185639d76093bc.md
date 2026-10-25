# mkNoConfusionCtors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:549631ede4b78bd27377d13264433cc61ecfb7042a7802674213a61c197c4d98",
  "kind": "def",
  "lexical_name": "mkNoConfusionCtors",
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
  "slug": "mknoconfusionctors--e80939364d185639d76093bc",
  "source": {
    "blob": "22cac14cf82b8c20dc75c36b705e00f1dade1df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e80939364d185639d76093bc49597084a311d17f5552bda7e555ff7a401cd962",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:549631ede4b78bd27377d13264433cc61ecfb7042a7802674213a61c197c4d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNoConfusionCtors (declName : Name) : MetaM Unit := do
  -- Do not do anything unless can_elim_to_type.
  let .inductInfo indVal ← getConstInfo declName | return
  let recInfo ← getConstInfo (mkRecName declName)
  unless recInfo.levelParams.length > indVal.levelParams.length do return
  if (← isPropFormerType indVal.type) then return
  let noConfusionName := Name.mkStr declName "noConfusion"

  -- We take the level names from `.rec`, as that conveniently has an extra level parameter that
  -- is distinct from the ones from the inductive
  let (v::us) := recInfo.levelParams.map mkLevelParam | throwError "unexpected number of level parameters in {recInfo.name}"

  for ctor in indVal.ctors do
    let ctorInfo ← getConstInfoCtor ctor
    if ctorInfo.numFields > 0 then
      forallBoundedTelescope ctorInfo.type ctorInfo.numParams fun xs t => do
      withLocalDeclD `P (.sort v) fun P =>
      forallBoundedTelescope t ctorInfo.numFields fun fields1 _ => do
      forallBoundedTelescope t ctorInfo.numFields fun fields2 _ => do
      withPrimedNames fields2 do
      withImplicitBinderInfos (xs ++ #[P] ++ fields1 ++ fields2) do
        let ctor1 := mkAppN (mkConst ctor us) (xs ++ fields1)
        let ctor2 := mkAppN (mkConst ctor us) (xs ++ fields2)
        let is1 := (← whnf (← inferType ctor1)).getAppArgsN indVal.numIndices
        let is2 := (← whnf (← inferType ctor2)).getAppArgsN indVal.numIndices
        withNeededEqTelescope (is1.push ctor1) (is2.push ctor2) fun eqvs eqs => do
          -- When the kernel checks this definition, it will perform the potentially expensive
          -- computation that `noConfusionType h` is equal to `$kType → P`
          let kType ← mkNoConfusionCtorArg ctor P
          let kType := kType.beta (xs ++ fields1 ++ xs ++ fields2)
          -- TODO: Turn HEq to Eq in kType
          withLocalDeclD `k kType fun k => do
            let mut e := mkConst noConfusionName (v :: us)
            e := mkAppN e (#[P] ++ xs ++ is1 ++ #[ctor1] ++ xs ++ is2 ++ #[ctor2])
            -- Pass rfl equalities for parameters
            for _ in [:xs.size] do
              let eq ← whnf (← whnfForall (← inferType e)).bindingDomain!
              if let some (_,i,_,_) := eq.heq? then
                e := mkApp e (← mkHEqRefl i)
              else if let some (_,i,_) := eq.eq? then
                e := mkApp e (← mkEqRefl i)
              else
                throwError "mkNoConfusion: unexpected equality `{eq}` as next argument to{inlineExpr (← inferType e)}"
            -- Equalities for indices. May require going from Eq to HEq
            for eq in eqs do
              let needsHEq := (← whnfForall (← inferType e)).bindingDomain!.isHEq
              if needsHEq && (← inferType eq).isEq then
                e := mkApp e (← mkHEqOfEq eq)
              else
                e := mkApp e eq
            e := mkApp e k
            e ← mkExpectedTypeHint e P
            e ← mkLambdaFVars (xs ++ #[P] ++ fields1 ++ fields2 ++ eqvs ++ #[k]) e

            let name := ctor.str "noConfusion"
            addDecl (.defnDecl (← mkDefinitionValInferringUnsafe
              (name        := name)
              (levelParams := recInfo.levelParams)
              (type        := (← inferType e))
              (value       := e)
              (hints       := ReducibilityHints.abbrev)
            ))
            setReducibleAttribute name
            let arity := ctorInfo.numParams + 1 + 2 * ctorInfo.numFields + eqvs.size
            let fields := kType.getNumHeadForalls
            modifyEnv fun env => markNoConfusion env name (.perCtor arity fields)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22cac14cf82b8c20dc75c36b705e00f1dade1df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
