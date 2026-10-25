# DateFormat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8be28a857cc57b400efc52b3f76183f72b36963c636afbc699c0ac7698d254e6",
  "kind": "structure",
  "lexical_name": "DateFormat",
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
  "slug": "dateformat--43488d0473e60c5ced1998ac",
  "source": {
    "blob": "8baee55986edd430a38f7680add71582730ba6d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43488d0473e60c5ced1998acfafc383b9e6bf764b1d130cd00ac8427f4a7a6b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8be28a857cc57b400efc52b3f76183f72b36963c636afbc699c0ac7698d254e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DateFormat where

  /--
  The first day of the week for this locale (e.g., `Weekday.sunday` for US, `Weekday.monday` for ISO 8601).
  -/
  firstDayOfWeek : Weekday

  /--
  The minimum number of days that a week must have in the new year to count as week 1.
  ISO 8601 uses 4 (week 1 must contain the first Thursday); US locale uses 1 (any week
  containing Jan 1 is week 1).
  -/
  minimalDaysInFirstWeek : Bounded.LE 0 6

  /--
  Locale-specific symbols used for formatting and parsing text fields.
  -/
  symbols : DateFormatSymbols

namespace DateFormat

/--
English (US) locale.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateFormat/Variantf56691e516cba4b622ce1a86233d3665bc452370eaa268da416208aab50cc7bd.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baee55986edd430a38f7680add71582730ba6d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
