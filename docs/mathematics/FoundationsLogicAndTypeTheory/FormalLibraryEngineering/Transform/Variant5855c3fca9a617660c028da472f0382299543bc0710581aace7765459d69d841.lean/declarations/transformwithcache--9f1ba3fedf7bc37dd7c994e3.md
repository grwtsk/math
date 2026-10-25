# transformWithCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1a2d870cac015919e8fa380c3e12960d2ee84c713f9e722f48a3d3a45c538df",
  "kind": "def",
  "lexical_name": "transformWithCache",
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
  "slug": "transformwithcache--9f1ba3fedf7bc37dd7c994e3",
  "source": {
    "blob": "e50c746d3704023bfbd43a7a027eb238c7fa5446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f1ba3fedf7bc37dd7c994e33b321588e8c62a8d6278034930d0b2bf8d9126c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1a2d870cac015919e8fa380c3e12960d2ee84c713f9e722f48a3d3a45c538df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def transformWithCache {m} [Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m]
    (input : Expr)
    (cache : Std.HashMap ExprStructEq Expr)
    (pre   : Expr → m TransformStep := fun _ => return .continue)
    (post  : Expr → m TransformStep := fun e => return .done e)
    (usedLetOnly := false)
    (skipConstInApp := false)
    (skipInstances := false)
    : m (Expr × Std.HashMap ExprStructEq Expr) :=
  let _ : STWorld IO.RealWorld m := ⟨⟩
  let _ : MonadLiftT (ST IO.RealWorld) m := { monadLift := fun x => liftM (m := MetaM) (liftM (m := ST IO.RealWorld) x) }
  let rec visit (e : Expr) : MonadCacheT ExprStructEq Expr m Expr :=
    checkCache { val := e : ExprStructEq } fun _ => Meta.withIncRecDepth do
      (Core.checkSystem "transform" : MetaM Unit)
      let rec visitPost (e : Expr) : MonadCacheT ExprStructEq Expr m Expr := do
        match (← post e) with
        | .done e      => pure e
        | .visit e     => visit e
        | .continue e? => pure (e?.getD e)
      let rec visitLambda (fvars : Array Expr) (e : Expr) : MonadCacheT ExprStructEq Expr m Expr := do
        match e with
        | .lam n d b c =>
          withLocalDecl n c (← visit (d.instantiateRev fvars)) fun x =>
            visitLambda (fvars.push x) b
        | e => visitPost (← mkLambdaFVars (usedLetOnly := usedLetOnly) fvars (← visit (e.instantiateRev fvars)))
      let rec visitForall (fvars : Array Expr) (e : Expr) : MonadCacheT ExprStructEq Expr m Expr := do
        match e with
        | .forallE n d b c =>
          withLocalDecl n c (← visit (d.instantiateRev fvars)) fun x =>
            visitForall (fvars.push x) b
        | e => visitPost (← mkForallFVars (usedLetOnly := usedLetOnly) fvars (← visit (e.instantiateRev fvars)))
      let rec visitLet (fvars : Array Expr) (e : Expr) : MonadCacheT ExprStructEq Expr m Expr := do
        match e with
        | .letE n t v b nondep =>
          withLetDecl n (← visit (t.instantiateRev fvars)) (← visit (v.instantiateRev fvars)) (nondep := nondep) fun x =>
            visitLet (fvars.push x) b
        | e => visitPost (← mkLetFVars (usedLetOnly := usedLetOnly) (generalizeNondepLet := false) fvars (← visit (e.instantiateRev fvars)))
      let visitApp (e : Expr) : MonadCacheT ExprStructEq Expr m Expr :=
        e.withApp fun f args => do
        let f ← if skipConstInApp && f.isConst then pure f else visit f
        if skipInstances then
          let infos := (← getFunInfoNArgs f args.size).paramInfo
          let mut args := args.toVector
          for h : i in *...args.size do
            let arg := args[i]
            if h : i < infos.size then
              let info := infos[i]
              if skipInstances && info.isInstance then
                continue
              args := args.set i (← visit arg)
            else
              args := args.set i (← visit arg)
          visitPost (mkAppN f args.toArray)
        else
          visitPost (mkAppN f (← args.mapM visit))
      match (← pre e) with
      | .done e  => pure e
      | .visit e => visit e
      | .continue e? =>
        let e := e?.getD e
        match e with
        | .forallE ..    => visitForall #[] e
        | .lam ..        => visitLambda #[] e
        | .letE ..       => visitLet #[] e
        | .app ..        => visitApp e
        | .mdata _ b     => visitPost (e.updateMData! (← visit b))
        | .proj _ _ b    => visitPost (e.updateProj! (← visit b))
        | _              => visitPost e
  StateRefT'.run (visit input) cache

/--
Similar to `Core.transform`, but terms provided to `pre` and `post` do not contain loose bound variables.
So, it is safe to use any `MetaM` method at `pre` and `post`.

Warning: `pre` and `post` should not depend on variables in the local context introduced by `transform`.
This is in order to allow aggressive caching.

If `skipConstInApp := true`, then for an expression `mkAppN (.const f) args`, the subexpression
`.const f` is not visited again. Put differently: every `.const f` is visited once, with its
arguments if present, on its own otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50c746d3704023bfbd43a7a027eb238c7fa5446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
