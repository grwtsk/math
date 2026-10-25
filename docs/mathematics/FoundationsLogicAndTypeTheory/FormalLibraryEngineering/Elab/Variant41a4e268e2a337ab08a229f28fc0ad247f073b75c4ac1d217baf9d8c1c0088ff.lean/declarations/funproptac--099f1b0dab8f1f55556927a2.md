# funPropTac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acdf1e3592e2a9e2256eb316934c991ad690c31c8d9a4db5b08461c71c67307d",
  "kind": "def",
  "lexical_name": "funPropTac",
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
  "slug": "funproptac--099f1b0dab8f1f55556927a2",
  "source": {
    "blob": "ed6167fb7a5b6ff873f5ebb4fdcb42ab61a256f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant41a4e268e2a337ab08a229f28fc0ad247f073b75c4ac1d217baf9d8c1c0088ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:099f1b0dab8f1f55556927a2faf6ec5c6bceb850d616ecb24ab5b98123672084",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant41a4e268e2a337ab08a229f28fc0ad247f073b75c4ac1d217baf9d8c1c0088ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acdf1e3592e2a9e2256eb316934c991ad690c31c8d9a4db5b08461c71c67307d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def funPropTac : Tactic
  | `(tactic| fun_prop $cfg:optConfig $[$d]? $[[$names,*]]?) => do

    let goal ← getMainGoal
    goal.withContext do
      let goalType ← goal.getType

      -- the whnf and telescope is here because the goal can be
      -- `∀ y, let f := fun x => x + y; Continuous fun x => x + f x`
      -- However it is still not complete solution. How should we deal with mix of let and forall?
      withReducible <| forallTelescopeReducing (← whnfR goalType) fun _ type => do
        unless (← getFunProp? type).isSome do
          let hint :=
            if let some n := type.getAppFn.constName?
            then s!" Consider marking `{n}` with `@[fun_prop]`."
            else ""
          throwError "`{← ppExpr type}` is not a `fun_prop` goal!{hint}"

      let cfg ← elabFunPropConfig cfg

      let disch ← show MetaM (Expr → MetaM (Option Expr)) from do
        match d with
        | none => pure assumptionDischarge
        | some d =>
          match d with
          | `(discharger| (discharger:=$tac)) =>
            pure <| tacticToDischarge
              (← `(tactic| first | with_reducible assumption | infer_param | ($tac)))
          | _ => pure assumptionDischarge

      let namesToUnfold ← show CoreM (Array Name) from
        match names with
        | none => pure #[]
        | some ns => ns.getElems.mapM Elab.realizeGlobalConstNoOverloadWithInfo

      let namesToUnfold := namesToUnfold.append defaultNamesToUnfold

      let ctx : Context :=
        { config := cfg,
          disch := disch
          constToUnfold := .ofArray namesToUnfold _}
      let env ← getEnv
      let s := {
        morTheorems        := morTheoremsExt.getState env
        transitionTheorems := transitionTheoremsExt.getState env }
      let (r?, s) ← funProp goalType ctx |>.run s
      if let some r := r? then
        goal.assign r.proof
      else
        let mut msg := s!"`fun_prop` was unable to prove `{← Meta.ppExpr goalType}`\n\n"

        msg := msg ++ "Issues:"
        msg := s.msgLog.foldl (init := msg) (fun msg m => msg ++ "\n  " ++ m)

        throwError msg

  | _ => throwUnsupportedSyntax



/-- Command that prints all function properties attached to a function.

For example
```
#print_fun_prop_theorems HAdd.hAdd
```
might print out
```
Continuous
  continuous_add, args: [4,5], priority: 1000
  continuous_const_add, args: [5], priority: 1000
  continuous_add_const, args [4], priority: 1000
  ...
Differentiable
  Differentiable.add, args: [4,5], priority: 1000
  Differentiable.add_const, args: [4], priority: 1000
  Differentiable.const_add, args: [5], priority: 1000
  ...
```

You can also see only theorems about a concrete function property
```
#print_fun_prop_theorems HAdd.hAdd Continuous
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant41a4e268e2a337ab08a229f28fc0ad247f073b75c4ac1d217baf9d8c1c0088ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant41a4e268e2a337ab08a229f28fc0ad247f073b75c4ac1d217baf9d8c1c0088ff.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed6167fb7a5b6ff873f5ebb4fdcb42ab61a256f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
