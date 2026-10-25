# realizeValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f9b73d4e2b72c62add57e9b019e90c10c88281172bdd9a25f611c76b5bea1c3",
  "kind": "def",
  "lexical_name": "realizeValue",
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
  "slug": "realizevalue--ce98a0863f01dc288ede800d",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2704,
    "line": 2651,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce98a0863f01dc288ede800d4bd2c1e45715746f55143eab17870651d3cd279f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f9b73d4e2b72c62add57e9b019e90c10c88281172bdd9a25f611c76b5bea1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2651–2704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def realizeValue [BEq α] [Hashable α] [TypeName α] (env : Environment) (forConst : Name) (key : α)
    (realize : Environment → Options → BaseIO Dynamic) : IO Dynamic := do
  -- the following code is inherently non-deterministic in number of heartbeats, reset them at the
  -- end
  let heartbeats ← IO.getNumHeartbeats
  -- find `RealizationContext` for `forConst` in `importRealizationCtx?` or `localRealizationCtxMap`
  let ctx ← if env.base.get env |>.const2ModIdx.contains forConst then
    env.importRealizationCtx?.getDM <|
      throw <| .userError s!"Environment.realizeConst: `realizedImportedConsts` is empty"
  else
    match env.localRealizationCtxMap.find? forConst with
    | some ctx => pure ctx
    | none =>
      throw <| .userError s!"trying to realize `{TypeName.typeName α}` value but \
        `enableRealizationsForConst` must be called for '{forConst}' first"
  let res ← (do
    -- First try checking for the key non-atomically as (de)allocating the promise is expensive.
    let m ← ctx.realizeMapRef.get
    if let some m' := m.find? (TypeName.typeName α) then
      -- Safety: `typeName α` should uniquely identify `PHashMap α (Task Dynamic)`; there are no other
      -- accesses to `private realizeMapRef` outside this function.
      let m' := unsafe unsafeCast (β := PHashMap α (Task Dynamic)) m'
      if let some t := m'[key] then
        return t.get

    -- Now check atomically.
    let prom ← IO.Promise.new
    let existingConsts? ← ctx.realizeMapRef.modifyGet fun m =>
      let m' := match m.find? (TypeName.typeName α) with
        | some m' => unsafe unsafeCast (β := PHashMap α (Task Dynamic)) m'
        | none    => {}
      match m'[key] with
      | some prom' => (some prom', m)
      | none =>
        let m' := m'.insert key prom.result!
        let m := m.insert (TypeName.typeName α) (unsafe unsafeCast (β := NonScalar) m')
        (none, m)
    if let some t := existingConsts? then
      pure t.get
    else
      -- safety: `RealizationContext` is private
      let realizeEnv : Environment := unsafe unsafeCast ctx.env
      let realizeEnv := { realizeEnv with
        -- allow realizations to recursively realize other constants for `forConst`. Do note that
        -- this allows for recursive realization of `α` itself, which will deadlock.
        localRealizationCtxMap := realizeEnv.localRealizationCtxMap.insert forConst ctx
        importRealizationCtx? := env.importRealizationCtx?
      }
      let res ← realize realizeEnv ctx.opts
      prom.resolve res
      pure res)
  IO.setNumHeartbeats heartbeats
  return res

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
