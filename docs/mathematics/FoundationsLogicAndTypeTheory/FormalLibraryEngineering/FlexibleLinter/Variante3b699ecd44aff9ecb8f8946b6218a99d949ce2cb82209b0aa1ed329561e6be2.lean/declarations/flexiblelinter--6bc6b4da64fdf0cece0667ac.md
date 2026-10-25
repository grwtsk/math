# flexibleLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:469bd084470f205d6606a546957df0b66f872b8f5e9d01162194be356d7532c5",
  "kind": "def",
  "lexical_name": "flexibleLinter",
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
  "slug": "flexiblelinter--6bc6b4da64fdf0cece0667ac",
  "source": {
    "blob": "37ab45bf334aaaf5f004bde7cce26d37af5ec574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bc6b4da64fdf0cece0667ac16d042ce31bd2e29e664521a8273a5e78430dd1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:469bd084470f205d6606a546957df0b66f872b8f5e9d01162194be356d7532c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def flexibleLinter : Linter where run := withSetOptionIn fun _stx => do
  unless Linter.getLinterValue linter.flexible (← getOptions) && (← getInfoState).enabled do
    return
  if (← MonadState.get).messages.hasErrors then
    return
  let trees ← getInfoTrees
  let x := trees.map (extractCtxAndGoals (fun _ => true))
  -- `stains` records pairs `(location, mvar)`, where
  -- * `location` is either a hypothesis or the main goal modified by a flexible tactic and
  -- * `mvar` is the metavariable containing the modified location
  let mut stains : Array ((FVarId × MVarId) × (Stained × Syntax)) := #[]
  let mut msgs : Array (Syntax × Syntax × Stained) := #[]
  for d in x do for (s, ctx0, ctx1, mvs0, mvs1) in d do
    let skind := s.getKind
    if stoppers.contains skind then continue
    let shouldStain? := flexible? s && mvs1.length == mvs0.length
    for d in getStained! s do
      if shouldStain? then
        for currMVar1 in mvs1 do
          let lctx1 := (ctx1.decls.findD currMVar1 default).lctx
          let locsAfter := d.toFMVarId currMVar1 lctx1
          stains := stains ++ locsAfter.map (fun l ↦ (l, (d, s)))
      else
        let stained_in_syntax := if usesGoal? skind then (toStained s).insert d else toStained s
        if !flexible.contains skind then
          for currMv0 in mvs0 do
            let lctx0 := (ctx0.decls.findD currMv0 default).lctx
            let mut foundFvs : Std.HashSet (FVarId × MVarId):= {}
            for st in stained_in_syntax do
              for d in st.toFMVarId currMv0 lctx0 do
                if !foundFvs.contains d then foundFvs := foundFvs.insert d
            for l in foundFvs do
              if let some (_stdLoc, (st, kind)) := stains.find? (Prod.fst · == l) then
                msgs := msgs.push (s, kind, st)

      -- tactics often change the name of the current `MVarId`, so we migrate the `FvarId`s
      -- in the "old" `mvars` to the "same" `FVarId` in the "new" `mvars`
      let mut new : Array ((FVarId × MVarId) × (Stained × Syntax)) := .empty
      for (fv, (stLoc, kd)) in stains do
        let psisted := reallyPersist #[fv] mvs0 mvs1 ctx0 ctx1
        if psisted == #[] && mvs1 != [] then
          new := new.push (fv, (stLoc, kd))
          dbg_trace "lost {((fv.1.name, fv.2.name), stLoc, kd)}"
        for p in psisted do new := new.push (p, (stLoc, kd))
      stains := new

  for (s, stainStx, d) in msgs do
    Linter.logLint linter.flexible stainStx m!"'{stainStx}' is a flexible tactic modifying '{d}'…"
    logInfoAt s m!"… and '{s}' uses '{d}'!"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ab45bf334aaaf5f004bde7cce26d37af5ec574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
