# getStructId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b74041f0207462a1f4fa7d9da1c3d25b356ce260d634f68248f52f53ab0a1ab4",
  "kind": "def",
  "lexical_name": "getStructId?",
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
  "slug": "getstructid--dc0483a5849f42a1e6f4bd97",
  "source": {
    "blob": "3215359795c3b32b14a1164752943938e3f0c36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructId/Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc0483a5849f42a1e6f4bd97d57268b3f989b05eb346e7a910e0b0f4fc188abe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructId/Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b74041f0207462a1f4fa7d9da1c3d25b356ce260d634f68248f52f53ab0a1ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getStructId? (type : Expr) : GoalM (Option Nat) := do
  unless (← getConfig).order do return none
  if let some id? := (← get').typeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with typeIdOf := s.typeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    let some u ← getDecLevel? type | return none
    let some leInst ← getInst? ``LE u type | return none
    let some isPreorderInst ← mkIsPreorderInst? u type (some leInst) | return none
    -- **TODO** compute `isPartialInst?` and `isLinearPreInst?` on demand
    let isPartialInst? ← mkIsPartialOrderInst? u type (some leInst)
    let isLinearPreInst? ← mkIsLinearPreorderInst? u type (some leInst)
    let ltInst? ← getInst? ``LT u type
    let leFn ← internalizeFn <| mkApp2 (mkConst ``LE.le [u]) type leInst
    let (lawfulOrderLTInst?, ltFn?) ← if let some ltInst := ltInst? then
      let inst? ← mkLawfulOrderLTInst? u type ltInst? (some leInst)
      if inst?.isNone then
        pure (none, none)
      else
        let ltFn ← internalizeFn <| mkApp2 (mkConst ``LT.lt [u]) type ltInst
        pure (inst?, some ltFn)
    else
      pure (none, none)
    let (ringId?, ringInst?, orderedRingInst?, isCommRing) ← if lawfulOrderLTInst?.isNone then
      pure (none, none, none, false)
    else if let some ringId ← getCommRingId? type then
      let ringInst ← RingM.run ringId do return (← getRing).ringInst
      let semiringInst ← RingM.run ringId do return (← getRing).semiringInst
      let some ordRingInst ← mkOrderedRingInst? u type semiringInst leInst ltInst?.get! isPreorderInst
        | pure (none, none, none, true)
      pure (some ringId, some ringInst, some ordRingInst, true)
    else if let some ringId ← getNonCommRingId? type then
      let semiringInst ← NonCommRingM.run ringId do return (← getRing).semiringInst
      let ringInst ← NonCommRingM.run ringId do return (← getRing).ringInst
      let some ordRingInst ← mkOrderedRingInst? u type semiringInst leInst ltInst?.get! isPreorderInst
        | pure (none, none, none, true)
      pure (some ringId, some ringInst, some ordRingInst, false)
    else
      pure (none, none, none, false)
    let id := (← get').structs.size
    let struct := {
      id,  type, u, leInst, isPreorderInst, ltInst?, leFn, isPartialInst?, ringInst?, orderedRingInst?
      isLinearPreInst?, ltFn?, lawfulOrderLTInst?, ringId?, isCommRing
     }
    modify' fun s => { s with structs := s.structs.push struct }
    return some id

end Lean.Meta.Grind.Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructId/Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructId/Variantd7a6064d40aefb01e755d6a7a8a2cacc87830a2c1ac8b2365660a77a7a7efea5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3215359795c3b32b14a1164752943938e3f0c36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
