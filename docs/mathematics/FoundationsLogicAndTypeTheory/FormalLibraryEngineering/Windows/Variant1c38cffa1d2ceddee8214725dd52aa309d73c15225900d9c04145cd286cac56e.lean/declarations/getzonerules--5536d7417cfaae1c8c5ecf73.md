# getZoneRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d78327805fd9643d65234c5eaac4f3db2bbc6fc571a66397832608c6503fa11f",
  "kind": "def",
  "lexical_name": "getZoneRules",
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
  "slug": "getzonerules--5536d7417cfaae1c8c5ecf73",
  "source": {
    "blob": "a8d51cb1a39d17e7d97ea1d439d6c42735ef1c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Windows/Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5536d7417cfaae1c8c5ecf73316a8ea06db6a2ca6054cc35d5643ffac06d8411",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Windows/Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d78327805fd9643d65234c5eaac4f3db2bbc6fc571a66397832608c6503fa11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getZoneRules (id : String) : IO TimeZone.ZoneRules := do
  let mut start := -2147483648
  let mut transitions : Array TimeZone.Transition := #[]

  let mut initialLocalTimeType ←
    if let some res := ← Windows.getNextTransition id start true
      then pure (toLocalTime res.snd)
      else throw (IO.userError "cannot find first transition in zone rules")

  while true do
    let result ← Windows.getNextTransition id start false

    if let some res := result then
      transitions := transitions.push { time := Second.Offset.ofInt start.toInt, localTimeType := toLocalTime res.snd }

      -- Avoid zone rules for more than year 3000
      if res.fst ≤ start ∨ res.fst >= 32503690800 then
        break

      start := res.fst
    else
      break

  return { transitions, initialLocalTimeType }

  where
    toLocalTime (res : TimeZone) : TimeZone.LocalTimeType :=
      {
        gmtOffset := res.offset,
        abbreviation := res.abbreviation,
        identifier := res.name,
        isDst := res.isDST,
        wall := .wall,
        utLocal := .local
      }

end Windows

/--
Represents a Time Zone Database that we get from ICU available on Windows SDK.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Windows/Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Windows/Variant1c38cffa1d2ceddee8214725dd52aa309d73c15225900d9c04145cd286cac56e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d51cb1a39d17e7d97ea1d439d6c42735ef1c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
