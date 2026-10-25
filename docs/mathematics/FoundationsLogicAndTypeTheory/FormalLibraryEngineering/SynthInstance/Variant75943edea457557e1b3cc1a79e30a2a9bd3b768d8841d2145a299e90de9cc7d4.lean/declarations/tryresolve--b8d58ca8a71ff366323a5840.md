# tryResolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd3f0b444cc8dbe8e17be1126bf58f866fcbcc7d19e81eaa06fddebbd803c5ce",
  "kind": "def",
  "lexical_name": "tryResolve",
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
  "slug": "tryresolve--b8d58ca8a71ff366323a5840",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8d58ca8a71ff366323a5840b86e48f7423a9c65e9b52080a0898e3c00465a07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd3f0b444cc8dbe8e17be1126bf58f866fcbcc7d19e81eaa06fddebbd803c5ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def tryResolve (mvar : Expr) (inst : Instance) : MetaM (Option (MetavarContext × List Expr)) := do
  if (← isDiagnosticsEnabled) then
    if let .const declName _ := inst.val.getAppFn then
      recordInstance declName
  let mvarType   ← inferType mvar
  let lctx       ← getLCtx
  let localInsts ← getLocalInstances
  forallTelescopeReducing mvarType fun xs mvarTypeBody => do
    let { subgoals, instVal, instTypeBody } ← getSubgoals lctx localInsts xs inst
    withTraceNode `Meta.synthInstance.tryResolve (fun _ => do withMCtx (← getMCtx) do
        return m!"{← instantiateMVars mvarTypeBody} ≟ {← instantiateMVars instTypeBody}") do
    if (← isDefEq mvarTypeBody instTypeBody) then
      /-
      We set `etaReduce := true`.
      For example, suppose `e` is the local variable `inst x y`, and `xs` is `#[x, y]`, then
      the result is `inst` instead of `fun x y => inst x y`.

      Consider the following definition.
      ```
      def filter (p : α → Prop) [inst : DecidablePred p] (xs : List α) : List α :=
        match xs with
        | [] => []
        | x :: xs' => if p x then x :: filter p xs' else filter p xs'
      ```
      Without `etaReduce := true`, the implicit instance at the `filter` applications would be `fun x => inst x` instead of `inst`.
      Moreover, the equation lemmas associated with `filter` would have `fun x => inst x` on their right-hand-side. Then,
      we would start getting terms such as `fun x => (fun x => inst x) x` when using the equational theorem.
      -/
      let instVal ← mkLambdaFVars xs instVal (etaReduce := true)
      /-
      When the goal type is metavariable-free, we assign `instVal` directly: the final
      `isDefEq mvar instVal` recheck is redundant (the goal type and `instTypeBody` have
      just been unified, and the type of `instVal` is `instTypeBody` by construction) and
      can be very expensive, since it re-infers the type of `instVal` and re-unifies it
      with the goal type.

      When the goal type contains metavariables, re-unifying the two (definitionally equal, but not
      necessarily syntactically equal) types has side effects that elaboration relies on.
      In particular, `isDefEqArgs` runs `trySynthPending` on metavariables in
      instance-implicit argument positions of the applications it descends into. Example:
      the goal `IsPredArchimedean ι ?pre ?pd` (from Mathlib) — created when elaborating a class
      projection, whose class parameters are demoted to plain implicit binders — matches a
      candidate by assigning the candidate's fresh metavariables to `?pre`/`?pd` without
      determining them. No other component is responsible for these metavariables, and the
      recheck's `trySynthPending` is what synthesizes them; without it, the answer is
      parametric in `?pd` and elaboration fails with "don't know how to synthesize
      implicit argument" (see `tests/elab/synthPendingClassMVars.lean`).

      Moreover, the set of metavariables the recheck synthesizes is not a function of the
      goal alone: `isDefEqArgs` only descends into subterms whose two spellings differ
      (e.g. rechecking `C (f a ?m) =?= C (f a' ?m)` pends `?m` iff `a` and `a'` are
      syntactically different), so the side effects cannot be replayed after a direct
      assignment, which has only one spelling. Explicit replacements fail in both
      directions: synthesizing all pending class metavariables in the goal breaks stage2
      (`Init/Internal/Order/Basic.lean`: a higher-order `[Nonempty ε]` metavariable inside
      the goal's subject argument must be left to unification), and synthesizing none
      breaks Mathlib (`Mathlib/Order/SuccPred/LinearLocallyFinite.lean`). Hence we keep
      the recheck whenever the goal type contains metavariables.

      **Note**: We should consider eliminating this nasty side effect and fixing
      Mathlib in the few places that rely on it. There are ~10 such places.

      Remark: we check only `mvarTypeBody`. The goal's hypotheses could contain
      metavariables too, but checking the body is cheaper and good enough in practice,
      and we want to remove this check altogether (see note above).
      -/
      if !(← instantiateMVars mvarTypeBody).hasExprMVar then
        -- Remark: `mvar` is not assigned here: `tryResolve` runs on the generator node's
        -- metavariable context snapshot, in which `mvar` is fresh.
        mvar.mvarId!.assign instVal
      else
        unless (← isDefEq mvar instVal) do return none
      return some ((← getMCtx), subgoals)
    return none

/--
  Assign a precomputed answer to `mvar`.
  If it succeeds, the result is a new updated metavariable context and a new list of subgoals. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
