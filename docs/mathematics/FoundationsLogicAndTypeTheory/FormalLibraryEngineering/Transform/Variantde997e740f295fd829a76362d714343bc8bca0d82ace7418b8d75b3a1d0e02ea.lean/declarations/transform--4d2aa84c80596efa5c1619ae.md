# transform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10b85ea4db1d45f915e98e904918fe4a98021c3f834eb336e3fac86fa2707849",
  "kind": "def",
  "lexical_name": "transform",
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
  "slug": "transform--4d2aa84c80596efa5c1619ae",
  "source": {
    "blob": "e526c71d75395cac41b2cf2e6bbaddf166cb5eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d2aa84c80596efa5c1619ae2056cc04a82059228cd127e5315d0a76e9da61dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10b85ea4db1d45f915e98e904918fe4a98021c3f834eb336e3fac86fa2707849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def transform {m} [Monad m] [MonadLiftT CoreM m] [MonadControlT CoreM m]
    (input : Expr)
    (pre   : Expr → m TransformStep := fun _ => return .continue)
    (post  : Expr → m TransformStep := fun e => return .done e)
    : m Expr :=
  let _ : STWorld IO.RealWorld m := ⟨⟩
  let _ : MonadLiftT (ST IO.RealWorld) m := { monadLift := fun x => liftM (m := CoreM) (liftM (m := ST IO.RealWorld) x) }
  let rec visit (e : Expr) : MonadCacheT ExprStructEq Expr m Expr :=
    checkCache { val := e : ExprStructEq } fun _ => Core.withIncRecDepth do
      Core.checkSystem "transform"
      let rec visitPost (e : Expr) : MonadCacheT ExprStructEq Expr m Expr := do
        match (← post e) with
        | .done e      => pure e
        | .visit e     => visit e
        | .continue e? => pure (e?.getD e)
      match (← pre e) with
      | .done e  => pure e
      | .visit e => visitPost (← visit e)
      | .continue e? =>
        let e := e?.getD e
        match e with
        | .forallE _ d b _ => visitPost (e.updateForallE! (← visit d) (← visit b))
        | .lam _ d b _     => visitPost (e.updateLambdaE! (← visit d) (← visit b))
        | .letE _ t v b _  => visitPost (e.updateLetE! (← visit t) (← visit v) (← visit b))
        | .app ..          => e.withApp fun f args => do visitPost (mkAppN (← visit f) (← args.mapM visit))
        | .mdata _ b       => visitPost (e.updateMData! (← visit b))
        | .proj _ _ b      => visitPost (e.updateProj! (← visit b))
        | _                => visitPost e
  visit input |>.run

/-- Applies beta reduction to all beta-reducible subexpressions in `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variantde997e740f295fd829a76362d714343bc8bca0d82ace7418b8d75b3a1d0e02ea.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526c71d75395cac41b2cf2e6bbaddf166cb5eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
