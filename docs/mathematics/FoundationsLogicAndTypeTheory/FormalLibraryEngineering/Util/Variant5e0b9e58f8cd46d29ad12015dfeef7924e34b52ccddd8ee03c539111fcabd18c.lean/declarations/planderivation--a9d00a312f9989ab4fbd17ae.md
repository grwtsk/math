# planDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de96c7165dc4305f72e5cb1878d60da8573125bb1f103e7ca8f5397b54240e1",
  "kind": "def",
  "lexical_name": "planDerivation",
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
  "slug": "planderivation--a9d00a312f9989ab4fbd17ae",
  "source": {
    "blob": "f4418b7c720fd82c36fb8ea145ebb88683620284",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9d00a312f9989ab4fbd17ae8229d572622bf7ca02624cfff0c384845451aabe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de96c7165dc4305f72e5cb1878d60da8573125bb1f103e7ca8f5397b54240e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def planDerivation (className : Name) (type : Expr)
    (extraDeps : Expr → TermElabM (Array Expr)) :
    TermElabM (Array Expr) := do
  withTraceNode `Elab.ConfigEval
      (fun r => return m!"derivation plan `{.ofConstName className}` for `{type}`: "
        ++ match r with | .ok types => m!"{types}" | .error ex => ex.toMessageData) do
    go #[] {type} type
where
  go (plan : Array Expr) (processing : ExprSet) (type : Expr) : TermElabM (Array Expr) := withIncRecDepth do
    trace[Elab.ConfigEval] "plan: {plan}, processing: {processing.toList}, type: {type}"
    if plan.contains type then
      return plan
    else
      let cls ← mkAppM className #[type]
      let insts ← SynthInstance.getInstances cls
      trace[Elab.ConfigEval] "num insts for `{cls}`: {insts.size}"
      for inst in insts do
        try
          return ← tryInst plan processing cls inst
        catch _ => pure ()
      let depTypes ← extraDeps type
      trace[Elab.ConfigEval] "extra deps for `{type}`: {depTypes}"
      let plan ← useDepTypes plan processing depTypes
      return plan.push type
  tryInst (plan : Array Expr) (processing : ExprSet) (cls : Expr) (inst : SynthInstance.Instance) :
      TermElabM (Array Expr) := do
    trace[Elab.ConfigEval] "tryInst {cls}"
    let (xs, bis, cls') ← forallMetaTelescopeReducing (← inferType inst.val)
    trace[Elab.ConfigEval] "inst: {xs}, {cls'}"
    guard <| ← isDefEq cls cls'
    let mut depTypes := #[] -- types that need instances of the class
    -- Analyze instance arguments; fail if instances not of the class can't be synthesized
    for i in inst.synthOrder do
      let x := xs[i]!
      let depCls ← instantiateMVars (← whnf (← inferType x))
      if depCls.isAppOfArity className 1 then -- foralls not supported
        let depType := depCls.appArg!
        depTypes := depTypes.push depType
      else
        guard <| ← synthesizeInstMVarCore x.mvarId!
    -- Ensure everything's been solved for but the instances
    for h : i in [0:xs.size] do
      unless inst.synthOrder.contains i do
        let x ← instantiateMVars xs[i]
        guard <| !x.hasMVar
    trace[Elab.ConfigEval] "inst for `{cls}` deps: {depTypes}"
    useDepTypes plan processing depTypes
  useDepTypes (plan : Array Expr) (processing : ExprSet) (depTypes : Array Expr) : TermElabM (Array Expr) := do
    let depTypes ← depTypes.mapM instantiateMVars
    if let some depType := depTypes.find? (·.hasMVar) then
      throwError "dependency has metavariables: {depType}"
    -- Filter out those instances that are part of the derivation plan
    let depTypes := depTypes.filter (!plan.contains ·)
    -- If any are currently being processed, then we have a cyclic dependency.
    if let some depType := depTypes.find? processing.contains then
      throwError "cyclic dependency on {depType}"
    let mut plan := plan
    for depType in depTypes do
      plan ← go plan (processing.insert depType) depType
    return plan

/--
Helper for deriving instances along with all dependencies.
Given a one-parameter class `className` and a type `type`,
uses pre-existing conditional instances to figure out which types would
suffice to be implemented, then runs `mkCmd` on each type with fresh macro scopes.

The commands are generated and elaborated one at a time.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant5e0b9e58f8cd46d29ad12015dfeef7924e34b52ccddd8ee03c539111fcabd18c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4418b7c720fd82c36fb8ea145ebb88683620284` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
