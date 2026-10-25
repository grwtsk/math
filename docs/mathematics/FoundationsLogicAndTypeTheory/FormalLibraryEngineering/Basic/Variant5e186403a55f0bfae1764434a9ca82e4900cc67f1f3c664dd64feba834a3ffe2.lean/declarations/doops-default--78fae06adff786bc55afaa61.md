# DoOps.default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e1a84d287ac41c648e00f47f524d1ffd1bc98e416d84f56023e71318acc89cc",
  "kind": "def",
  "lexical_name": "DoOps.default",
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
  "slug": "doops-default--78fae06adff786bc55afaa61",
  "source": {
    "blob": "d0c31f6213534340fa7b33f8a3eca82a2214a819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78fae06adff786bc55afaa612ae4c722d7874fcc9d219b763aea26a663f7eb8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e1a84d287ac41c648e00f47f524d1ffd1bc98e416d84f56023e71318acc89cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DoOps.default : DoOps where
  mkPureApp α e := do
    let info := (← read).monadInfo
    if (← read).deadCode matches .deadSyntactically then
      -- There is no dead syntax here. Just return a fresh metavariable so that we don't
      -- do the `Term.ensureHasType` check below.
      return ← mkFreshExprMVar (mkApp info.m α)
    let α ← Term.ensureHasType (mkSort (mkLevelSucc info.u)) α
    let e ← Term.ensureHasType α e
    let instPure ← Term.mkInstMVar (mkApp (mkConst ``Pure [info.u, info.v]) info.m)
    let instPure ← instantiateMVars instPure
    return mkApp4 (mkConst ``Pure.pure [info.u, info.v]) info.m instPure α e
  mkBindApp α β e k := do
    let info := (← read).monadInfo
    let α ← Term.ensureHasType (mkSort (mkLevelSucc info.u)) α
    let mα := mkApp info.m α
    let e ← Term.ensureHasType mα e
    let k ← Term.ensureHasType (← mkArrow α (mkApp info.m β)) k
    let instBind ← Term.mkInstMVar (mkApp (mkConst ``Bind [info.u, info.v]) info.m)
    return mkApp6 (mkConst ``Bind.bind [info.u, info.v]) info.m instBind α β e k
  isPureApp? e :=
    if e.isAppOfArity ``Pure.pure 4 then some (e.getArg! 3) else none
  splitMonadApp? type := do
    let .app m resultType := type.consumeMData | return none
    unless ← isType resultType do return none
    let u ← getDecLevel resultType
    let v ← getDecLevel type
    return some ({ m, u := u.normalize, v := v.normalize }, resultType)
  mkMonadApp α := do
    return mkApp (← read).monadInfo.m α

/-- Register the given name as that of a `mut` variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5e186403a55f0bfae1764434a9ca82e4900cc67f1f3c664dd64feba834a3ffe2.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0c31f6213534340fa7b33f8a3eca82a2214a819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
