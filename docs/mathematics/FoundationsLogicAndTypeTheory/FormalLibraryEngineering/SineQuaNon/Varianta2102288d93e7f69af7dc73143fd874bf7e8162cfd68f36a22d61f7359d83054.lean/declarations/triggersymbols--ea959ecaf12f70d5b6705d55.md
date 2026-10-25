# triggerSymbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaa85fad4691a3c3d88eeb778ee60ca9c04ae4bfff94c620eb76438bb4e93ff6",
  "kind": "def",
  "lexical_name": "triggerSymbols",
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
  "slug": "triggersymbols--ea959ecaf12f70d5b6705d55",
  "source": {
    "blob": "7323ee005f7c0a0d049b946879c9f4c15147f549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea959ecaf12f70d5b6705d555c822ff9414de71562ffd445606564c614f743c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaa85fad4691a3c3d88eeb778ee60ca9c04ae4bfff94c620eb76438bb4e93ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triggerSymbols (ci : ConstantInfo) (maxTolerance : Float := 3.0) : MetaM (Array (Name × Float)) := do
  let denyList := triggerDenyListExt.getState (← getEnv)
  let consts ← ci.type.relevantConstants
  let frequencies ← consts.filterMapM fun n => do
    if denyList.contains n then
      return none
    let f := (← symbolFrequency n) + (← localSymbolFrequency n)
    return if f = 0 then
      none
    else
      some (n, f.toFloat)
  if frequencies.isEmpty then
    return #[]
  let minFrequency := frequencies.foldl (fun acc (_, f) => min acc f) (frequencies[0]!.2)
  return frequencies.filterMap
    (fun (n, f) => if f ≤ minFrequency * maxTolerance then some (n, f / minFrequency) else none)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Varianta2102288d93e7f69af7dc73143fd874bf7e8162cfd68f36a22d61f7359d83054.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7323ee005f7c0a0d049b946879c9f4c15147f549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
