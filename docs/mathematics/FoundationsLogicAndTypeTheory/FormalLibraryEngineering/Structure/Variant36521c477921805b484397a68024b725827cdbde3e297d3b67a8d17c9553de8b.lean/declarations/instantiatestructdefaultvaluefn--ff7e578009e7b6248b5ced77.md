# instantiateStructDefaultValueFn?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091def62b2ce2ed5def0c2ae1854c5bce6e5c2140e2ef6d900996654f42ba247",
  "kind": "def",
  "lexical_name": "instantiateStructDefaultValueFn?",
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
  "slug": "instantiatestructdefaultvaluefn--ff7e578009e7b6248b5ced77",
  "source": {
    "blob": "5cc777ee07f5b1b7fdcdcb709be596b94be0081a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff7e578009e7b6248b5ced774796e103915846d3784bb1e6ee21e95bb4d9733c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091def62b2ce2ed5def0c2ae1854c5bce6e5c2140e2ef6d900996654f42ba247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def instantiateStructDefaultValueFn?
    [Monad m] [MonadEnv m] [MonadError m] [MonadLiftT MetaM m] [MonadControlT MetaM m]
    (defaultFn : Name) (levels? : Option (List Level)) (params : Array Expr)
    (fieldVal? : Name → m (Option Expr)) : m (Option (NameSet × Expr)) := do
  let cinfo ← getConstInfo defaultFn
  let us ← levels?.getDM (mkFreshLevelMVarsFor cinfo)
  assert! us.length == cinfo.levelParams.length
  let mut val ← liftMetaM <| instantiateValueLevelParams cinfo us
  for param in params do
    let .lam _ t b _ := val | return none
    -- If no levels given, need to unify to solve for level mvars.
    if levels?.isNone then
      unless (← isDefEq (← inferType param) t) do return none
    val := b.instantiate1 param
  go? {} val
where
  go? (usedFields : NameSet) (e : Expr) : m (Option (NameSet × Expr)) := do
    match e with
    | .lam n d b _ =>
      let some val ← fieldVal? n | return none
      if (← isDefEq (← inferType val) d) then
        go? (usedFields.insert n) (b.instantiate1 val)
      else
        return none
    | e =>
      let_expr id _ a := e | return some (usedFields, e)
      return some (usedFields, a)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cc777ee07f5b1b7fdcdcb709be596b94be0081a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
