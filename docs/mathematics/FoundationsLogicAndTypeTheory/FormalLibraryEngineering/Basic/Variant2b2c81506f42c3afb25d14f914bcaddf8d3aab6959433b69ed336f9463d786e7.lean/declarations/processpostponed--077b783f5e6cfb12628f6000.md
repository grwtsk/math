# processPostponed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2927fb4e79b21b070201ce95ecb653c9963b409f8f6593c4d22856539b0484d4",
  "kind": "def",
  "lexical_name": "processPostponed",
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
  "slug": "processpostponed--077b783f5e6cfb12628f6000",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2445,
    "line": 2409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:077b783f5e6cfb12628f600027f61d874e1250b4f17a402e63df4156e800bd5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2927fb4e79b21b070201ce95ecb653c9963b409f8f6593c4d22856539b0484d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2409–2445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def processPostponed (mayPostpone : Bool := true) (exceptionOnFailure := false) : MetaM Bool := do
  if (← getNumPostponed) == 0 then
    return true
  else
    let numPostponedBegin ← getNumPostponed
    withTraceNode `Meta.isLevelDefEq.postponed
        (fun _ => return m!"processing #{numPostponedBegin} postponed is-def-eq level constraints") do
      let rec loop : MetaM Bool := do
        let numPostponed ← getNumPostponed
        if numPostponed == 0 then
          return true
        else
          if !(← processPostponedStep exceptionOnFailure) then
            return false
          else
            let numPostponed' ← getNumPostponed
            if numPostponed' == 0 then
              return true
            else if numPostponed' < numPostponed then
              loop
            -- If we cannot postpone anymore, `Config.univApprox := true`, but we haven't tried universe approximations yet,
            -- then try approximations before failing.
            else if !mayPostpone && (← getConfig).univApprox && !(← read).univApprox then
              withReader (fun ctx => { ctx with univApprox := true }) loop
            else
              trace[Meta.isLevelDefEq.postponed] "no progress solving pending is-def-eq level constraints"
              return mayPostpone
      loop

/--
  `checkpointDefEq x` executes `x` and process all postponed universe level constraints produced by `x`.
  We keep the modifications only if `processPostponed` return true and `x` returned `true`.

  If `mayPostpone == false`, all new postponed universe level constraints must be solved before returning.
  We currently try to postpone universe constraints as much as possible, even when by postponing them we
  are not sure whether `x` really succeeded or not.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L2409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
