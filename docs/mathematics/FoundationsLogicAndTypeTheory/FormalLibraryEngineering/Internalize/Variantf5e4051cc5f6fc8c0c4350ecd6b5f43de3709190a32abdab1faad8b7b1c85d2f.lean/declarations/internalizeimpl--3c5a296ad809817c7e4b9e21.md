# internalizeImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6ebb4af5a887c811c659a27fb2d75f93ca7e0736439ccc5d7b979f6d7d0723b",
  "kind": "def",
  "lexical_name": "internalizeImpl",
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
  "slug": "internalizeimpl--3c5a296ad809817c7e4b9e21",
  "source": {
    "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c5a296ad809817c7e4b9e214e56e421968bde2d64fe394d22e46588a79397ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6ebb4af5a887c811c659a27fb2d75f93ca7e0736439ccc5d7b979f6d7d0723b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def internalizeImpl (e : Expr) (generation : Nat) (parent? : Option Expr := none) : GoalM Unit := withIncRecDepth do
  if (← alreadyInternalized e) then
    trace_goal[grind.debug.internalize] "already internalized: {e}"
    /-
    Even if `e` has already been internalized, we must check whether it has also been internalized in
    the satellite solvers. For example, suppose we have already internalized the term `f (a + 1)`.
    The `1` in this term is treated as an offset for the offset term `a + 1` by the arithmetic module, and
    only nodes for `a` and `a+1` are created. However, an ENode for `1` is created here.
    Later, if we try to internalize `f 1`, the arithmetic module must create a node for `1`.
    Otherwise, it will not be able to propagate that `a + 1 = 1` when `a = 0`
    -/
    Solvers.internalize e parent?
  else
    go
    propagateEtaStruct e generation
where
  go : GoalM Unit := do
    trace_goal[grind.internalize] "[{generation}] {e}"
    match e with
    | .bvar .. => unreachable!
    | .sort .. =>
      /-
      **Note**: It may seem wasteful to create ENodes for sorts, but it is useful for the E-matching module.
      The E-matching module assumes that the arguments of an internalized application have also been internalized,
      unless they are `grind` gadgets.
      -/
      mkENode' e generation
    | .fvar .. =>
      mkENode' e generation
      checkAndAddSplitCandidate e
    | .letE .. =>
      mkENode' e generation
    | .lam .. =>
      addSplitCandidatesForFunext e generation parent?
      mkENode' e generation
      tryEta e generation
    | .forallE _ d b _ =>
      mkENode' e generation
      internalizeImpl d generation e
      registerParent e d
      unless b.hasLooseBVars do
        internalizeImpl b generation e
        registerParent e b
        addCongrTable e
      if (← isProp d <&&> isProp e) then
        propagateUp e
        checkAndAddSplitCandidate e
    | .lit .. =>
      mkENode e generation
    | .const declName _ =>
      updateIndicesFound (.const declName)
      mkENode e generation
      activateTheorems declName generation
    | .mvar .. =>
      mkENode' e generation
    | .mdata .. =>
      reportIssue! "unexpected metadata found during internalization{indentExpr e}\n`grind` uses a pre-processing step that eliminates metadata"
      mkENode' e generation
    | .proj .. =>
      reportIssue! "unexpected kernel projection term during internalization{indentExpr e}\n`grind` uses a pre-processing step that folds them as projection applications, the pre-processor failed to fold this term"
      mkENode' e generation
    | .app .. =>
      if (← isNonParametricLitValue e) then
        internalizeNonParametricLiteral e generation parent?
      else if (← isOfNatFinBitVecLiteral e) then
        internalizeOfNatFinBitVecLiteral e generation parent?
      else if e.isAppOfArity ``Grind.MatchCond 1 then
        internalizeMatchCond e generation
      else e.withApp fun f args => do
        let funCC ← useFunCongrAtFn f
        mkENode e generation (funCC := funCC)
        updateAppMap e
        checkAndAddSplitCandidate e
        addMatchEqns f generation
        if args.size == 2 && f.isConstOf ``Grind.nestedProof then
          -- We only internalize the proposition. We can skip the proof because of
          -- proof irrelevance
          let c := args[0]!
          internalizeImpl c generation e
          registerParent e c
          pushEqTrue c <| mkApp2 (mkConst ``eq_true) c args[1]!
        else if args.size == 2 && f.isConstOf ``Grind.nestedDecidable then
          -- We only internalize the proposition. We can skip the instance because it is
          -- a subsingleton
          let c := args[0]!
          internalizeImpl c generation e
          registerParent e c
        else if f.isConstOf ``ite && args.size == 5 then
          let c := args[1]!
          internalizeImpl c generation e
          registerParent e c
        else
          if let .const fName _ := f then
            activateTheorems fName generation
            if funCC then
              internalizeImpl f generation e
          else
            internalizeImpl f generation e
          registerParent e f
          if funCC then
            let rec traverse (curr : Expr) : GoalM Unit := do
              let .app f a := curr | return ()
              mkENode curr generation (funCC := true)
              internalizeImpl a generation e
              traverse f
              registerParent curr a
              registerParent curr f
              addCongrTable curr
            let .app curr a := e | unreachable!
            internalizeImpl a generation e
            traverse curr
            registerParent e a
            registerParent e curr
          else
            for h : i in *...args.size do
              let arg := args[i]
              internalizeImpl arg generation e
              registerParent e arg
        pushCastHEqs e
        addCongrTable e
        Solvers.internalize e parent?
        propagateUp e
        propagateBetaForNewApp e
        mkInjEq e

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
