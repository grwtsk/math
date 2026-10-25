# simpUsingCongrThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b36c6352018d08786f2228743d377a7b259de9ffef36a22adb7218b86167e64",
  "kind": "def",
  "lexical_name": "simpUsingCongrThm",
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
  "slug": "simpusingcongrthm--44ff056896ed0687d15ec5b2",
  "source": {
    "blob": "559b0157c620291795eaf092087dd0ad761dabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44ff056896ed0687d15ec5b22a00d2ff625b1d32fccd50568fea0f19169c4689",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b36c6352018d08786f2228743d377a7b259de9ffef36a22adb7218b86167e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpUsingCongrThm (e : Expr) (thm : CongrTheorem) : SimpM Result := do
  let argKinds := thm.argKinds
  /-
  Constructs the non-`rfl` result. `argResults` contains the result for arguments with kind `.eq`.
  There is at least one non-`rfl` result in `argResults`.
  -/
  let mkNonRflResult (argResults : Array Result) : SimpM Result := do
    let mut proof := thm.proof
    let mut type  := thm.type
    let mut j := 0 -- index at argResults
    let mut subst := #[]
    let args := e.getAppArgs
    for arg in args, kind in argKinds do
      proof := mkApp proof arg
      type := type.bindingBody!
      match kind with
      | .fixed => subst := subst.push arg
      | .cast  => subst := subst.push arg
      | .subsingletonInst =>
        subst := subst.push arg
        let clsNew := type.bindingDomain!.instantiateRev subst
        let instNew ← if (← isDefEqI (← inferType arg) clsNew) then
          pure arg
        else
          let .some val ← trySynthInstance clsNew | return .rfl
          pure val
        proof := mkApp proof instNew
        subst := subst.push instNew
        type := type.bindingBody!
      | .eq =>
        subst := subst.push arg
        match argResults[j]! with
        | .rfl _ _ =>
          let h ← mkEqRefl arg
          proof := mkApp2 proof arg h
          subst := subst.push arg |>.push h
        | .step arg' h _ _ =>
          proof := mkApp2 proof arg' h
          subst := subst.push arg' |>.push h
        type := type.bindingBody!.bindingBody!
        j := j + 1
      | _ => unreachable!
    let_expr Eq _ _ rhs := type | unreachable!
    let rhs := rhs.instantiateRev subst
    let hasCast := argKinds.any (· matches .cast)
    let rhs ← if hasCast then Simp.removeUnnecessaryCasts rhs else pure rhs
    let rhs ← share rhs
    -- The result is context-dependent if any simplified argument was.
    let cd := argResults.any (·.isContextDependent)
    return .step rhs proof (contextDependent := cd)
  /-
  Recursively simplifies arguments of kind `.eq`. The array `argResults` is initialized lazily
  as soon as the simplifier returns a non-`rfl` result for some arguments.
  `numEqs` is the number of `.eq` arguments found so far.
  -/
  -- `anyCD` tracks cd from `.rfl` results that `pushResult` may not store
  -- (due to lazy initialization of `argResults`). Without this, cd from `.rfl`
  -- sub-results would be silently dropped.
  let rec simpEqArgs (e : Expr) (i : Nat) (numEqs : Nat) (argResults : Array Result)
      (anyCD : Bool) : SimpM Result := do
    match e with
    | .app f a =>
      match argKinds[i]! with
      | .subsingletonInst
      | .fixed => simpEqArgs f (i-1) numEqs argResults anyCD
      | .cast => simpEqArgs f (i-1) numEqs argResults anyCD
      | .eq =>
        let r ← simp a
        simpEqArgs f (i-1) (numEqs+1) (pushResult argResults numEqs r) (anyCD || r.isContextDependent)
      | _ => unreachable!
    | _ =>
      if argResults.isEmpty then
        return mkRflResultCD anyCD
      else
        let r ← mkNonRflResult argResults.reverse
        return if anyCD && !r.isContextDependent then r.withContextDependent else r
  let numArgs := e.getAppNumArgs
  if numArgs > argKinds.size then
    simpOverApplied e (numArgs - argKinds.size) (simpEqArgs · (argKinds.size - 1) 0 #[] false)
  else if numArgs < argKinds.size then
    /-
    **Note**: under-applied case. This can be optimized, but this case is so
    rare that it is not worth doing it. We just reuse `simpOverApplied`
    -/
    simpOverApplied e e.getAppNumArgs (fun _ => return .rfl)
  else
    simpEqArgs e (argKinds.size - 1) 0 #[] false

/--
Main entry point for simplifying function application arguments.
Dispatches to the appropriate strategy based on the function's `CongrInfo`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559b0157c620291795eaf092087dd0ad761dabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
