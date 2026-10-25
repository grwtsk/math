# getFunInfoAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8971158e07d47149232dd1ffb8a43ef52c3b6ba5207273aae2ae868cb240e6b3",
  "kind": "def",
  "lexical_name": "getFunInfoAux",
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
  "slug": "getfuninfoaux--2764328304e8c65d13be1ef0",
  "source": {
    "blob": "44ee46ca1761fba1e1d1380294b1762d8039ed49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2764328304e8c65d13be1ef0b03b28a136abd309e275587d8d5c5e64dde8050a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8971158e07d47149232dd1ffb8a43ef52c3b6ba5207273aae2ae868cb240e6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def getFunInfoAux (fn : Expr) (maxArgs? : Option Nat) : MetaM FunInfo :=
  checkFunInfoCache fn maxArgs? do
    let fnType ← inferType fn
    withAtLeastTransparency TransparencyMode.default do
      forallBoundedTelescope fnType maxArgs? fun fvars type => do
        let mut paramInfo := #[]
        let mut higherOrderOutParams : FVarIdSet := {}
        for h : i in *...fvars.size do
          let fvar := fvars[i]
          let decl ← getFVarLocalDecl fvar
          let backDeps := collectDeps fvars decl.type
          let dependsOnHigherOrderOutParam :=
            !higherOrderOutParams.isEmpty
            && Option.isSome (decl.type.find? fun e => e.isFVar && higherOrderOutParams.contains e.fvarId!)
          let className? ← isClass? decl.type
          /-
          **Note**: We use `isClass? decl.type` instead of relying solely on binder annotations
          (`[...]`) because users sometimes use implicit binders for class types when the instance
          is already available from context. For example:
          ```
          structure OrdSet (α : Type) [Hashable α] [BEq α] where ...
          def OrdSet.insert {_ : Hashable α} {_ : BEq α} (s : OrdSet α) (a : α) : OrdSet α := ...
          ```
          Here, `Hashable` and `BEq` are classes, but implicit binders are used because the
          instances come from `OrdSet`'s parameters.

          However, we also require the binder to be non-explicit because structures extending
          classes use explicit binders for their constructor parameters:
          ```
          structure MyGroupTopology (α : Type) extends MyTopology α, IsContinuousMul α
          -- Constructor type:
          -- MyGroupTopology.mk (toMyTopology : MyTopology α) (toIsContinuousMul : IsContinuousMul α) : ...
          ```
          These explicit parameters should not be treated as instances for automation purposes.

          -/
          let isInstance := className?.isSome && !decl.binderInfo.isExplicit
          paramInfo := updateHasFwdDeps paramInfo backDeps
          paramInfo := paramInfo.push {
            backDeps, dependsOnHigherOrderOutParam, isInstance
            binderInfo := decl.binderInfo
            isProp     := (← isProp decl.type)
            isDecInst  := (← forallTelescopeReducing decl.type fun _ type => return type.isAppOf ``Decidable)
          }
          if isInstance then
            /- Collect higher order output parameters of this class IF `isInstance` is `true` -/
            let some className := className? | unreachable!
            /- Collect higher order output parameters of this class IF `isInstance` is `true` -/
            if let some outParamPositions := getOutParamPositions? (← getEnv) className then
              unless outParamPositions.isEmpty do
                let args := decl.type.getAppArgs
                for h2 : i in *...args.size do
                  if outParamPositions.contains i then
                    let arg := args[i]
                    if let some idx := fvars.idxOf? arg then
                      if (← whnf (← inferType arg)).isForall then
                        paramInfo := paramInfo.modify idx fun info => { info with higherOrderOutParam := true }
                        higherOrderOutParams := higherOrderOutParams.insert arg.fvarId!
        let resultDeps := collectDeps fvars type
        paramInfo := updateHasFwdDeps paramInfo resultDeps
        return { resultDeps, paramInfo }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44ee46ca1761fba1e1d1380294b1762d8039ed49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
