# Theorem.rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:136821ffc444308ccde9274b9ff27cd3475b29dbb410ee89f6015945203df196",
  "kind": "def",
  "lexical_name": "Theorem.rewrite",
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
  "slug": "theorem-rewrite--4a4c1ab1876d028870ffc74a",
  "source": {
    "blob": "9ff473028d250b2d693d243e93bbc7beb215293c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a4c1ab1876d028870ffc74aa03f2bb29a65a40ce31bbdd851eeab735fe8161f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:136821ffc444308ccde9274b9ff27cd3475b29dbb410ee89f6015945203df196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Theorem.rewrite (thm : Theorem) (e : Expr) (d : Discharger := dischargeNone) : SimpM Result :=
  /-
  **Note**: We use `withNewMCtxDepth` to ensure auxiliary metavariables used during the `match?`
  do not pollute the metavariable context.
  Thus, we must ensure that all assigned variables have be instantiate.
  -/
  withNewMCtxDepth do
  if let some result ← thm.pattern.match? e then
    -- **Note**: Potential optimization: check whether pattern covers all variables.
    let mut args := result.args.toVector
    let us ← result.us.mapM instantiateLevelMVars
    -- Track whether any discharger used context-dependent information.
    -- If so, the result is context-dependent: in another context, the discharger
    -- might succeed/fail differently, changing whether the rewrite applies.
    let mut isCD := false
    for h : i in *...args.size do
      let arg := args[i]
      if let .mvar mvarId := arg then
        if (← mvarId.isAssigned) then
          let arg ← instantiateMVarsS arg
          args := args.set i arg
        else
          let decl ← mvarId.getDecl
          match (← d decl.type) with
          | .failed cd =>
            isCD := isCD || cd
            -- Failed to discharge hypothesis.
            return mkRflResultCD isCD
          | .solved val cd =>
            isCD := isCD || cd
            let val ← instantiateMVarsS val
            mvarId.assign val
            args := args.set i val
      else if arg.hasMVar then
        let arg ← instantiateMVarsS arg
        args := args.set i arg
    let proof := mkValue thm.expr thm.pattern us args.toArray
    let rhs   := thm.rhs.instantiateLevelParams thm.pattern.levelParams us
    let rhs   ← share rhs
    let expr  ← instantiateRevBetaS rhs args.toArray
    if isSameExpr e expr then
      return mkRflResultCD isCD
    else if !(← checkPerm thm.perm e expr) then
      return mkRflResultCD isCD
    else
      return .step expr proof (contextDependent := isCD)
  else
    return .rfl
where
  checkPerm (perm : Bool) (e result : Expr) : MetaM Bool := do
    if !perm then return true
    acLt result e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff473028d250b2d693d243e93bbc7beb215293c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
