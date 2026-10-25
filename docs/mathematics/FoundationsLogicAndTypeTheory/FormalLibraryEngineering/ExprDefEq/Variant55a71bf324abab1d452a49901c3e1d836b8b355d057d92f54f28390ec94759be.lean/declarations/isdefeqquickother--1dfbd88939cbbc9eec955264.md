# isDefEqQuickOther

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:757bf4b978cef98d5def5e151b9c91e802dc8ff22c529b83e837e66179bf0a08",
  "kind": "def",
  "lexical_name": "isDefEqQuickOther",
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
  "slug": "isdefeqquickother--1dfbd88939cbbc9eec955264",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1970,
    "line": 1850,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dfbd88939cbbc9eec9552642c60e4d88bffd247b9443ed0e9da72b0eeca8b7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:757bf4b978cef98d5def5e151b9c91e802dc8ff22c529b83e837e66179bf0a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1850–1970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def isDefEqQuickOther (t s : Expr) : MetaM LBool := do
  /-
    We used to eagerly consume all metadata (see commented lines at `isDefEqQuick`),
    but it was unnecessarily removing helpful annotations
    for the pretty-printer. For example, consider the following example.
    ```
    constant p : Nat → Prop
    constant q : Nat → Prop

    theorem p_of_q : q x → p x := sorry

    theorem pletfun : p (let_fun x := 0; x + 1) := by
      -- ⊢ p (let_fun x := 0; x + 1)
      apply p_of_q -- If we eagerly consume all metadata, the let_fun annotation is lost during `isDefEq`
      -- ⊢ q ((fun x => x + 1) 0)
      sorry
    ```
    However, pattern annotations (`inaccessible?` and `patternWithRef?`) must be consumed.
    The frontend relies on the fact that is must not be propagated by `isDefEq`.
    Thus, we consume it here. This is a bit hackish since it is very adhoc.
    We might have other annotations in the future that we should not preserve.
    Perhaps, we should mark the annotations we do want to preserve
    (e.g., hints for the pretty printer), and consume all others.
  -/
  if let some t := patternAnnotation? t then
    isDefEqQuick t s
  else if let some s := patternAnnotation? s then
    isDefEqQuick t s
  else if t == s then
    return LBool.true
  else if etaEq t s || etaEq s t then
    return LBool.true  -- t =?= (fun xs => t xs)
  else
    let tFn := t.getAppFn
    let sFn := s.getAppFn
    if !tFn.isMVar && !sFn.isMVar then
      return LBool.undef
    else if (← isAssigned tFn) then
      let t ← instantiateMVars t
      isDefEqQuick t s
    else if (← isAssigned sFn) then
      let s ← instantiateMVars s
      isDefEqQuick t s
    else if let some t ← expandDelayedAssigned? t then
      isDefEqQuick t s
    else if let some s ← expandDelayedAssigned? s then
      isDefEqQuick t s
    /- Remark: we do not eagerly synthesize synthetic metavariables when the constraint is not stuck.
       Reason: we may fail to solve a constraint of the form `?x =?= A` when the synthesized instance
       is not definitionally equal to `A`. We left the code here as a reminder of this issue. -/
--    else if (← isSynthetic tFn <&&> trySynthPending tFn) then
--      let t ← instantiateMVars t
--     isDefEqQuick t s
--    else if (← isSynthetic sFn <&&> trySynthPending sFn) then
--      let s ← instantiateMVars s
--      isDefEqQuick t s
    else if tFn.isMVar && sFn.isMVar && tFn == sFn then
      Bool.toLBool <$> isDefEqMVarSelf tFn t.getAppArgs s.getAppArgs
    else
      let tAssign? ← isAssignable tFn
      let sAssign? ← isAssignable sFn
      let assignableMsg (b : Bool) := if b then "[assignable]" else "[nonassignable]"
      trace[Meta.isDefEq] "{t} {assignableMsg tAssign?} =?= {s} {assignableMsg sAssign?}"
      if tAssign? && !sAssign? then
        toLBoolM <| processAssignment' t s
      else if !tAssign? && sAssign? then
        toLBoolM <| processAssignment' s t
      else if !tAssign? && !sAssign? then
        /- Trying to unify `?m ... =?= ?n ...` where both `?m` and `?n` cannot be assigned.
           This can happen when both of them are `syntheticOpaque` (e.g., metavars associated with tactics), or a metavariables
           from previous levels.

           If their types are propositions and are defeq, we can solve the constraint by proof irrelevance.
           This test is important for fixing a performance problem exposed by test `isDefEqPerfIssue.lean`.
           Without the proof irrelevance check, this example timeouts. Recall that:

           1- The elaborator has a pending list of things to do: Tactics, TC, etc.
           2- The elaborator only tries tactics after it tried to solve pending TC problems, delayed elaboration, etc.
              The motivation: avoid unassigned metavariables in goals.
           3- Each pending tactic goal is represented as a metavariable. It is marked as `syntheticOpaque` to make it clear
              that it should not be assigned by unification.
           4- When we abstract a term containing metavariables, we often create new metavariables.
              Example: when abstracting `x` at `f ?m`, we obtain `fun x => f (?m' x)`. If `x` is in the scope of `?m`.
              If `?m` is `syntheticOpaque`, so is `?m'`, and we also have the delayed assignment `?m' x := ?m`
           5- When checking a metavariable assignment, `?m := v` we check whether the type of `?m` is defeq to type of `v`
              with default reducibility setting.

           Now consider the following fragment
           ```
             let a' := g 100 a ⟨i, h⟩ ⟨i - Nat.zero.succ, by exact Nat.lt_of_le_of_lt (Nat.pred_le i) h⟩
             have : a'.size - i >= 0 := sorry
             f (i+1) a'
           ```
           The elaborator tries to synthesize the instance `OfNat Nat 1` before we generate the tactic proof for `by exact ...` (remark 2).
           The solution `instOfNatNat 1` is synthesized. Let `m? a i h a' this` be the "hole" associated with the pending instance.
           Then, `isDefEq` tries to assign `m? a i h a' this := instOfNatNat 1` which is reduced to
           `m? := mkLambdaFVars #[a, i, h, a', this] (instOfNatNat 1)`. Note that, this is an abstraction step (remark 4), and the type
           contains the `syntheticOpaque` metavariable for the pending tactic proof (remark 3). Thus, a new `syntheticOpaque`
           opaque is created (remark 4). Then, `isDefEq` must check whether the type of `?m` is defeq to
           `mkLambdaFVars #[a, i, h, a', this] (instOfNatNat 1)` (remark 5). The two types are almost identical, but they
           contain different `syntheticOpaque` in the subterm corresponding to the `by exact ...` tactic proof. Without the following
           proof irrelevance test, the check will fail, and `isDefEq` timeouts unfolding `g` and its dependencies.

           Note that this test does not prevent a similar performance problem in a use-case where the tactic is used to synthesize a
           term that is not a proof. TODO: add better support for checking the delayed assignments. This is not high priority because
           tactics are usually only used for synthesizing proofs.
        -/
        match (← isDefEqProofIrrel t s) with
        | LBool.true => return LBool.true
        | LBool.false => return LBool.false
        | _ =>
          let cfg ← getConfig
          if cfg.isDefEqStuckEx then do
            trace[Meta.isDefEq.stuck] "{t} =?= {s}"
            Meta.throwIsDefEqStuck
          else
            return LBool.false
      else
        isDefEqQuickMVarMVar t s

/-- Both `t` and `s` are terms of the form `?m ...` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L1850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
