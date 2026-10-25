# processLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29b6dc43d6024d05895de71379c4f14cd6d40802bc973c9cf0a93ce6625c9d30",
  "kind": "def",
  "lexical_name": "processLevel",
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
  "slug": "processlevel--36e42431a75fbe131b98719a",
  "source": {
    "blob": "171627a1f2c4709561f698cb175364ff4dc27c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36e42431a75fbe131b98719a1cef10fd9e8425476e7a674e605afd0d9fef331e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29b6dc43d6024d05895de71379c4f14cd6d40802bc973c9cf0a93ce6625c9d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def processLevel (u : Level) (v : Level) : UnifyM Bool := do
  /-
  **Note**: If new uvars in `u` have been assigned, we continue replace them, and
  continue the search. The motivation for using `substAssignedUVarsAndNormalize` is
  `processLevels [_uvar.0, max _uvar.0 _uvar.1] [0, u_1]`
  which invokes `processLevel _uvar.0 0` and assigns `_uvar.0` before we invoke
  `processLevel (max _uvar.0 _uvar.1) u_1`
  -/
  let u ← substAssignedUVarsAndNormalize u
  go u v.normalize
where
  go (u : Level) (v : Level) : UnifyM Bool := do
    match u, v with
    | .zero, .zero => return true
    | .succ u, .succ v => go u v
    | .zero, .succ _ => return false
    | .succ _, .zero => return false
    | .zero, .max v₁ v₂ => go .zero v₁ <&&> go .zero v₂
    | .max u₁ u₂, .zero => go u₁ .zero <&&> go u₂ .zero
    | .zero, .imax _ v => go .zero v
    | .imax _ u, .zero => go u .zero
    | .max u₁ u₂, .max v₁ v₂ =>
      -- tryApproxMaxMax: find a shared concrete arg between both sides
      if u₂ == v₁ then go u₁ v₂
      else if u₁ == v₂ then go u₂ v₁
      else go u₁ v₁ <&&> go u₂ v₂
    | .imax u₁ u₂, .imax v₁ v₂ => go u₁ v₁ <&&> go u₂ v₂
    | .param uName, _ =>
      if let some uidx := isUVar? uName then
        assignLevel uidx v
      else if u == v then
        return true
      else if v.isMVar && (← read).unify then
        pushLevelPending u v
        return true
      else
        return false
    | .mvar _, _ | _, .mvar _ =>
      if (← read).unify then
        pushLevelPending u v
        return true
      else
        return false
    | _, _ =>
      if (← tryApproxSelfMax u v) then
        return true
      if let .succ u := u then
        if let some v := decLevel? v then
          return (← go u v)
      if let .succ v := v then
        if let some u := decLevel? u then
          return (← go u v)
      if (← tryPostponeMaxCnstr u v) then
        return true
      return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171627a1f2c4709561f698cb175364ff4dc27c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
