# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a110af7ba19f8738773bea9665533d7cf6971e1b23c6e2625d6f87e3c5993f49",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertHypotheses",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-asser--8944d4714986649e1218f7af",
  "source": {
    "blob": "ddae782e1aa4e40ca878fbdb1bb5c399a2280936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8944d4714986649e1218f7afd90f8c2a09864a6f3cec3263948b4a2698d2049b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a110af7ba19f8738773bea9665533d7cf6971e1b23c6e2625d6f87e3c5993f49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertHypotheses (mvarId : MVarId) (hs : Array Hypothesis) : MetaM (Array FVarId × MVarId) := do
  if hs.isEmpty then
    return (#[], mvarId)
  else mvarId.withContext do
    mvarId.checkNotAssigned `assertHypotheses
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let targetNew := hs.foldr (init := target) fun h targetNew =>
      .forallE h.userName h.type targetNew h.binderInfo
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
    let val := hs.foldl (init := mvarNew) fun val h => .app val h.value
    mvarId.assign val
    let (fvarIds, mvarId) ← mvarNew.mvarId!.introNP hs.size
    mvarId.modifyLCtx fun lctx => Id.run do
      let mut lctx := lctx
      for h : i in *...hs.size do
        let h := hs[i]
        if h.kind != .default then
          lctx := lctx.setKind fvarIds[i]! h.kind
      pure lctx
    return (fvarIds, mvarId)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant97572d29de8374c79099f8233f6cec66e283992a076661a487435db5b0b49bb9.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddae782e1aa4e40ca878fbdb1bb5c399a2280936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
