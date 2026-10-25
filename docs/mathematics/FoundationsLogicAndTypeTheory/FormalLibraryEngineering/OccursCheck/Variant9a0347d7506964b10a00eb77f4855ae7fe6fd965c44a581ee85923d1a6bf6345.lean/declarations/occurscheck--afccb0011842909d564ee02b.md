# occursCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec82d88669c30f092f926f8b7ba68c73935732672ca6d567820b8b39a5345aac",
  "kind": "def",
  "lexical_name": "occursCheck",
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
  "slug": "occurscheck--afccb0011842909d564ee02b",
  "source": {
    "blob": "f7c24e7cbbf0f7ff4f31ede9c51ab17ec3ee4703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OccursCheck/Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afccb0011842909d564ee02b520474113569033f8471b38082e6881f089b251d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OccursCheck/Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec82d88669c30f092f926f8b7ba68c73935732672ca6d567820b8b39a5345aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def occursCheck [Monad m] [MonadMCtx m] (mvarId : MVarId) (e : Expr) : m Bool := do
  if !e.hasExprMVar then
    return true
  else
    match (← visit e |>.run |>.run {}) with
    | (.ok .., _)    => return true
    | (.error .., _) => return false
where
  visitMVar (mvarId' : MVarId) : ExceptT Unit (StateT ExprSet m) Unit := do
    if mvarId == mvarId' then
      throw () -- found
    else
      match (← getExprMVarAssignment? mvarId') with
      | some v => visit v
      | none   =>
        match (← getDelayedMVarAssignment? mvarId') with
        | some d => visitMVar d.mvarIdPending
        | none   => return ()

  visit (e : Expr) : ExceptT Unit (StateT ExprSet m) Unit := do
    if !e.hasExprMVar then
      return ()
    else if (← get).contains e then
      return ()
    else
      modify fun s => s.insert e
      match e with
      | Expr.proj _ _ s      => visit s
      | Expr.forallE _ d b _ => visit d; visit b
      | Expr.lam _ d b _     => visit d; visit b
      | Expr.letE _ t v b _  => visit t; visit v; visit b
      | Expr.mdata _ b       => visit b
      | Expr.app f a         => visit f; visit a
      | Expr.mvar mvarId     => visitMVar mvarId
      | _                    => return ()

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OccursCheck/Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OccursCheck/Variant9a0347d7506964b10a00eb77f4855ae7fe6fd965c44a581ee85923d1a6bf6345.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c24e7cbbf0f7ff4f31ede9c51ab17ec3ee4703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
