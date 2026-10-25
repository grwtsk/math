# getKeyArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67e18d6ac84c766c4dc7b0fc42370fb0031b49543583b6fc714d25d2e136ddc8",
  "kind": "def",
  "lexical_name": "getKeyArgs",
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
  "slug": "getkeyargs--e370dc863eac9a512f0ce068",
  "source": {
    "blob": "025913f51556b1e46a1c3372f25441f81f96ad7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e370dc863eac9a512f0ce0689fb0e3a9d1e9870966809186755a7f1ace9c4204",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67e18d6ac84c766c4dc7b0fc42370fb0031b49543583b6fc714d25d2e136ddc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def getKeyArgs (e : Expr) (isMatch root : Bool) : MetaM (Key × Array Expr) := do
  let e ← reduceDT e root
  unless root do
    -- See pushArgs
    if let some v := toNatLit? e then
      return (.lit v, #[])
  match e.getAppFn with
  | .lit v         => return (.lit v, #[])
  | .const c _     =>
    if (← getConfig).isDefEqStuckEx && e.hasExprMVar then
      if (← isReducible c) then
        /- `e` is a term `c ...` s.t. `c` is reducible and `e` has metavariables, but it was not unfolded.
           This can happen if the metavariables in `e` are "blocking" smart unfolding.
           If `isDefEqStuckEx` is enabled, then we must throw the `isDefEqStuck` exception to postpone TC resolution.
           Here is an example. Suppose we have
           ```
            inductive Ty where
              | bool | fn (a ty : Ty)


            @[reducible] def Ty.interp : Ty → Type
              | bool   => Bool
              | fn a b => a.interp → b.interp
           ```
           and we are trying to synthesize `BEq (Ty.interp ?m)`
        -/
        Meta.throwIsDefEqStuck
      else if let some matcherInfo := isMatcherAppCore? (← getEnv) e then
        -- A matcher application is stuck is one of the discriminants has a metavariable
        let args := e.getAppArgs
        for arg in args[matcherInfo.getFirstDiscrPos...(matcherInfo.getFirstDiscrPos + matcherInfo.numDiscrs)] do
          if arg.hasExprMVar then
            Meta.throwIsDefEqStuck
      else if (← isRec c) then
        /- Similar to the previous case, but for `match` and recursor applications. It may be stuck (i.e., did not reduce)
           because of metavariables. -/
        Meta.throwIsDefEqStuck
    let nargs := e.getAppNumArgs
    return (.const c nargs, e.getAppRevArgs)
  | .fvar fvarId   =>
    let nargs := e.getAppNumArgs
    return (.fvar fvarId nargs, e.getAppRevArgs)
  | .mvar mvarId   =>
    if isMatch then
      return (.other, #[])
    else do
      let cfg ← getConfig
      if cfg.isDefEqStuckEx then
        /-
          When the configuration flag `isDefEqStuckEx` is set to true,
          we want `isDefEq` to throw an exception whenever it tries to assign
          a read-only metavariable.
          This feature is useful for type class resolution where
          we may want to notify the caller that the TC problem may be solvable
          later after it assigns `?m`.
          The method `DiscrTree.getUnify e` returns candidates `c` that may "unify" with `e`.
          That is, `isDefEq c e` may return true. Now, consider `DiscrTree.getUnify d (Add ?m)`
          where `?m` is a read-only metavariable, and the discrimination tree contains the keys
          `HadAdd Nat` and `Add Int`. If `isDefEqStuckEx` is set to true, we must treat `?m` as
          a regular metavariable here, otherwise we return the empty set of candidates.
          This is incorrect because it is equivalent to saying that there is no solution even if
          the caller assigns `?m` and try again. -/
        return (.star, #[])
      else if (← mvarId.isReadOnlyOrSyntheticOpaque) then
        return (.other, #[])
      else
        return (.star, #[])
  | .proj s i a .. =>
    let nargs := e.getAppNumArgs
    return (.proj s i nargs, #[a] ++ e.getAppRevArgs)
  | .forallE _ d _ _ => return (.arrow, #[d])
  | _ => return (.other, #[])

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant78e92a63078947f26e875c52fe6b87c89349eeb9b3e6f9e69238c733179d4f72.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025913f51556b1e46a1c3372f25441f81f96ad7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
