# Expr.instantiateBetaRevRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcd700f906863c4ac35026d2187b0307be71c2d4ee8340f6ada816a887be4ca2",
  "kind": "def",
  "lexical_name": "Expr.instantiateBetaRevRange",
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
  "slug": "expr-instantiatebetarevrange--1e43e86055ff380155cbc7f0",
  "source": {
    "blob": "68e891218c77293ca50ef032668e98f5999063f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e43e86055ff380155cbc7f0d945426851a301a51e453dd5d81999722e51bb52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcd700f906863c4ac35026d2187b0307be71c2d4ee8340f6ada816a887be4ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Expr.instantiateBetaRevRange (e : Expr) (start : Nat) (stop : Nat) (args : Array Expr) : Expr :=
  if e.hasLooseBVars && stop > start then
    assert! stop ≤ args.size
    if args.any (·.consumeMData.isLambda) start stop then
      visit e 0 |>.run
    else
      -- If there are no lambdas, then `instantiateRevRange` suffices.
      instantiateRevRange e start stop args
  else
    e
where
  /--
  Visit a bvar `e := .bvar vidx`, assuming `offset < e.looseBVarRange`.
  -/
  visitBVar (vidx : Nat) (offset : Nat) : Expr :=
    -- Recall that `looseBVarRange` for `Expr.bvar` is `vidx+1`.
    -- So, we must have `offset ≤ vidx`, since `offset < e.looseBVarRange`
    let n := stop - start
    if vidx < offset + n then
      args[stop - (vidx - offset) - 1]!.liftLooseBVars 0 offset
    else
      Expr.bvar (vidx - n)
  visitWithoutBeta (e : Expr) (offset : Nat) : MonadStateCacheT (ExprStructEq × Nat) Expr Id Expr := do
    if offset >= e.looseBVarRange then
      -- `e` doesn't have free variables
      return e
    else
      match e with
      | .app f a =>
        -- Check the cache only here, since in the other alternative `visit` will check the cache.
        checkCache ({ val := e : ExprStructEq }, offset) fun _ => visitApp e f a offset
      | e => visit e offset
  /-- Visit an application without beta reducing the head -/
  visitApp (e f a : Expr) (offset : Nat) : MonadStateCacheT (ExprStructEq × Nat) Expr Id Expr :=
    return e.updateApp! (← visitWithoutBeta f offset) (← visit a offset)
  visit (e : Expr) (offset : Nat) : MonadStateCacheT (ExprStructEq × Nat) Expr Id Expr :=
    if offset >= e.looseBVarRange then
      -- `e` doesn't have free variables
      return e
    else checkCache ({ val := e : ExprStructEq }, offset) fun _ => do
      match e with
      | .forallE _ d b _ => return e.updateForallE! (← visit d offset) (← visit b (offset+1))
      | .lam _ d b _     => return e.updateLambdaE! (← visit d offset) (← visit b (offset+1))
      | .letE _ t v b _  => return e.updateLetE! (← visit t offset) (← visit v offset) (← visit b (offset+1))
      | .mdata _ b       => return e.updateMData! (← visit b offset)
      | .proj _ _ b      => return e.updateProj! (← visit b offset)
      | .bvar vidx       => return visitBVar vidx offset
      | .app f a =>
        let head := e.getAppFn
        -- try to beta reduce if the head is a bound variable
        if head.isBVar then
          -- using `visit` instead of `visitBVar` for the `offset >= vidx` check and for caching `liftLooseBVars`
          let head ← visit head offset
          let revArgs ← e.getAppRevArgs.mapM (visit · offset)
          return head.betaRev revArgs
        else
          visitApp e f a offset
      -- The following cases are unreachable because they never contain loose bound variables
      | .const .. => unreachable!
      | .fvar ..  => unreachable!
      | .mvar ..  => unreachable!
      | .sort ..  => unreachable!
      | .lit ..   => unreachable!

namespace Meta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e891218c77293ca50ef032668e98f5999063f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
