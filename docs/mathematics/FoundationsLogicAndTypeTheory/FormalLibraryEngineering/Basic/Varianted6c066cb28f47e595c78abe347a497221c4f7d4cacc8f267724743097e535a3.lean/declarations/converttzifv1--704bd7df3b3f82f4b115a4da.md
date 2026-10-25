# convertTZifV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6afe02dc430957617bbcb3e2358714b8f57a5b0b37417041108c764e7b94b2f4",
  "kind": "def",
  "lexical_name": "convertTZifV1",
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
  "slug": "converttzifv1--704bd7df3b3f82f4b115a4da",
  "source": {
    "blob": "32564e74db677b03254b3549ce2481c6afebc496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:704bd7df3b3f82f4b115a4da844069b91f50cf065cb31a80eac52d260c2a26e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6afe02dc430957617bbcb3e2358714b8f57a5b0b37417041108c764e7b94b2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convertTZifV1 (tz : TZif.TZifV1) (id : String) : Except String ZoneRules := do
  let mut times : Array LocalTimeType := #[]

  for i in *...tz.header.typecnt.toNat do
    if let some result := convertLocalTimeType i tz id
      then times := times.push result
      else .error s!"cannot convert local time {i} of the file"

  let mut transitions := #[]

  for i in *...tz.transitionTimes.size do
    if let some result := convertTransition times i tz
      then transitions := transitions.push result
      else .error s!"cannot convert transition {i} of the file"

  -- Local time for timestamps before the first transition is specified by the first time
  -- type (time type 0).

  let initialLocalTimeType ←
    if let some res := convertLocalTimeType 0 tz id
      then .ok res
      else .error s!"empty transitions for {id}"

  .ok { transitions, initialLocalTimeType }


/--
Converts a `TZif.TZifV2` structure to a `ZoneRules` structure, extending transitions beyond
the last stored entry using the POSIX TZ footer string when present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianted6c066cb28f47e595c78abe347a497221c4f7d4cacc8f267724743097e535a3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32564e74db677b03254b3549ce2481c6afebc496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
