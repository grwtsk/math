# instantiate'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcab952612bd05dfbccd14c0c5ca2f2346be27fec3e053da5442d23d8e1d3c3e",
  "kind": "def",
  "lexical_name": "instantiate'",
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
  "slug": "instantiate--bdf2ecbe242b3d8170d76cbd",
  "source": {
    "blob": "df0be615599db85624cb413aa4503aa7e779e553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdf2ecbe242b3d8170d76cbd42fb0643cde8e2c969f21b002af14f593d214097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcab952612bd05dfbccd14c0c5ca2f2346be27fec3e053da5442d23d8e1d3c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def instantiate' : Action := fun goal kna kp => do
  let saved? ← saveStateIfTracing
  let ((progress, map), goal') ← GoalM.run goal ematch'
  if progress then
    match (← kp goal') with
    | .closed seq =>
      if (← getConfig).trace then
        let proof ← instantiateMVars (mkMVar goal.mvarId)
        let usedThms := collect proof map
        let (allThms, map) := getAllTheorems map
        -- We must have at least the ones used in the proof
        let initMask ← mkMask map usedThms
        let testMask (mask : Array Bool) : GrindM Bool := do
          checkSystem "`grind` `instantiate` tactic parameter optimizer"
          let thms := maskToThms allThms mask
          let newSeq ← mkNewSeq goal thms seq (approx := false)
          checkSeqAt saved? goal newSeq
        let r ← Util.ParamMinimizer.search initMask testMask
        let newSeq ← match r.status with
          | .missing => mkNewSeq goal #[] seq (approx := true)
          | .approx => mkNewSeq goal (maskToThms allThms r.paramMask) seq (approx := true)
          | .precise => mkNewSeq goal (maskToThms allThms r.paramMask) seq (approx := false)
        return .closed newSeq
      else
        return .closed []
    | r => return r
  else
    kna goal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0be615599db85624cb413aa4503aa7e779e553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
