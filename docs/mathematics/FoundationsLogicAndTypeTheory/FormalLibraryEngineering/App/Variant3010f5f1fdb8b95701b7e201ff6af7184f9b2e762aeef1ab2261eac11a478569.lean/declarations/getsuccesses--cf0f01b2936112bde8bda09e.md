# getSuccesses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0ce572d22d0c84a6769e785ddd1377725a3701f25618a80014fa7fd3f6961fb",
  "kind": "def",
  "lexical_name": "getSuccesses",
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
  "slug": "getsuccesses--cf0f01b2936112bde8bda09e",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2189,
    "line": 2141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf0f01b2936112bde8bda09e0f2575fa270e829915fe0912d250499b3dc1c26c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0ce572d22d0c84a6769e785ddd1377725a3701f25618a80014fa7fd3f6961fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2141–2189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getSuccesses (candidates : Array (TermElabResult Expr)) : TermElabM (Array (TermElabResult Expr)) := do
  let r₁ := candidates.filter fun | EStateM.Result.ok .. => true | _ => false
  if r₁.size ≤ 1 then return r₁
  let r₂ ← candidates.filterM fun
    | .ok e s => do
      if e.isMVar then
        /- Make sure `e` is not a delayed coercion.
           Recall that coercion insertion may be delayed when the type and expected type contains
           metavariables that block TC resolution.
           When processing overloaded notation, we disallow delayed coercions at `e`. -/
        try
          s.restore
          synthesizeSyntheticMVars -- Tries to process pending coercions (and elaboration tasks)
          let e ← instantiateMVars e
          if e.isMVar then
          /- If `e` is still a metavariable, and its `SyntheticMVarDecl` is a coercion, we discard this solution -/
            if let some synDecl ← getSyntheticMVarDecl? e.mvarId! then
              if synDecl.kind matches SyntheticMVarKind.coe .. then
                return false
        catch _ =>
          -- If `synthesizeSyntheticMVars` failed, we just eliminate the candidate.
          return false
      return true
    | _ => return false
  if r₂.size == 0 then
    return r₁
  if r₂.size == 1 then
    return r₂
  /-
  If there are still more than one solution, discard solutions that have pending metavariables.
  We added this extra filter to address regressions introduced after fixing
  `isDefEqStuckEx` behavior at `ExprDefEq.lean`.
  -/
  let r₂ ← candidates.filterM fun
    | .ok _ s => do
      try
        s.restore
        synthesizeSyntheticMVars (postpone := .no)
        return true
      catch _ =>
        return false
    | _ => return false
  if r₂.size == 0 then
    return r₁
  return r₂
/--
  Throw an error message that describes why each possible interpretation for the overloaded notation and symbols did not work.
  We use a nested error message to aggregate the exceptions produced by each failure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L2141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
