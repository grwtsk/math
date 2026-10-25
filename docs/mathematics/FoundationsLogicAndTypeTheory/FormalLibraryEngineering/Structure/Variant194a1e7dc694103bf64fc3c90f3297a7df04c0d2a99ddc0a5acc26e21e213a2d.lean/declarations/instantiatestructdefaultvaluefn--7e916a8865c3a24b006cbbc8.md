# instantiateStructDefaultValueFn?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81a0622c4417a869dc3b14de2f0ced0162643956a973f2d2292d104d6cd3ba02",
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
  "slug": "instantiatestructdefaultvaluefn--7e916a8865c3a24b006cbbc8",
  "source": {
    "blob": "131b774c312459c025a2c4021f69ec6cb0b02045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e916a8865c3a24b006cbbc829f2db14590f9ca1208fb9387193fdf7d9151d7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81a0622c4417a869dc3b14de2f0ced0162643956a973f2d2292d104d6cd3ba02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–224.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131b774c312459c025a2c4021f69ec6cb0b02045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
