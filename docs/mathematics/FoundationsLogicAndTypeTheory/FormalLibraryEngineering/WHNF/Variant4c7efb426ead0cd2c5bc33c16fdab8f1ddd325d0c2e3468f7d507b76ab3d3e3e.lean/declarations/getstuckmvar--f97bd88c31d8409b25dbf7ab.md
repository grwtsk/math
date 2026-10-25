# getStuckMVar?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dc5d5f3ab5bb9c5ea9a60ae9c7736553065a1c1a7f9c37e151205face599ea1",
  "kind": "def",
  "lexical_name": "getStuckMVar?",
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
  "slug": "getstuckmvar--f97bd88c31d8409b25dbf7ab",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f97bd88c31d8409b25dbf7ab63e606b1fe2d268eb7adb014e331ece748402efe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dc5d5f3ab5bb9c5ea9a60ae9c7736553065a1c1a7f9c37e151205face599ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def getStuckMVar? (e : Expr) : MetaM (Option MVarId) := do
    match e with
    | .mdata _ e  => getStuckMVar? e
    | .proj _ _ e => getStuckMVar? (← whnf e)
    | .mvar .. =>
      let e ← instantiateMVars e
      match e with
      | .mvar mvarId => return some mvarId
      | _ => getStuckMVar? e
    | .app f .. =>
      let f := f.getAppFn
      match f with
      | .mvar .. =>
        let e ← instantiateMVars e
        match e.getAppFn with
        | .mvar mvarId => return some mvarId
        | _ => getStuckMVar? e
      | .const fName _ =>
        match (← getEnv).find? fName with
        | some <| .recInfo recVal  => isRecStuck? recVal e.getAppArgs
        | some <| .quotInfo recVal => isQuotRecStuck? recVal e.getAppArgs
        | _  =>
          unless e.hasExprMVar do return none
          let args := e.getAppArgs
          -- Projection function support
          if let some projInfo ← getProjectionFnInfo? fName then
            -- This branch is relevant if `e` is a type class projection that is stuck because the instance has not been synthesized yet.
            unless projInfo.fromClass do return none
            -- First check whether `e`s instance is stuck.
            if let some major := args[projInfo.numParams]? then
              if let some mvarId ← getStuckMVar? (← whnf major) then
                return mvarId
            /-
            Then, recurse on the explicit arguments
            We want to detect the stuck instance in terms such as
            `HAdd.hAdd Nat Nat Nat (instHAdd Nat instAddNat) n (OfNat.ofNat Nat 2 ?m)`
            See issue https://github.com/leanprover/lean4/issues/1408 for an example where this is needed.
            -/
            let info ← getFunInfo f
            for pinfo in info.paramInfo, arg in args do
              if pinfo.isExplicit then
                if let some mvarId ← getStuckMVar? arg then
                  return some mvarId
            return none
          -- Auxiliary parent projections created for diamond inheritance (not registered as projections).
          else if let some auxInfo ← getAuxParentProjectionInfo? fName then
            unless auxInfo.fromClass do return none
            if let some major := args[auxInfo.numParams]? then
              if let some mvarId ← getStuckMVar? (← whnf major) then
                return mvarId
            return none
          else
            return none
      | .proj _ _ e => getStuckMVar? (← whnf e)
      | _ => return none
    | _ => return none
end

-- ===========================
/-! # Weak Head Normal Form auxiliary combinators -/
-- ===========================

/-- Auxiliary combinator for handling easy WHNF cases. It takes a function for handling the "hard" cases as an argument -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
