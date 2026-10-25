# format

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0a9946655f03b68143ff9611bf57054322a0cb2b3010953a373c9fb70b43079",
  "kind": "def",
  "lexical_name": "format",
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
  "slug": "format--2eafbc09b9cab07ec76aaa1d",
  "source": {
    "blob": "49a3487f390111db650b0ff5ce3f50a957a3703f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2eafbc09b9cab07ec76aaa1d399c043c8dee29ef404c699c90cb3335953803a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0a9946655f03b68143ff9611bf57054322a0cb2b3010953a373c9fb70b43079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def format (date : PlainDate) (format : String) (locale : DateFormat := .enUS) : String :=
  let format : Except String (GenericFormat .any) := GenericFormat.spec format
  match format with
  | .error err => s!"error: {err}"
  | .ok res =>
    let res := res.formatGeneric fun
      | .G _ => some date.era
      | .y _ => some date.year
      | .u _ => some date.year
      | .Y _ => some (date.weekYear locale.firstDayOfWeek locale.minimalDaysInFirstWeek)
      | .D _ => some (Sigma.mk date.year.isLeap date.dayOfYear)
      | .Q _ | .q _ => some date.quarter
      | .w _ => some (date.weekOfYear locale.firstDayOfWeek locale.minimalDaysInFirstWeek)
      | .W _ => some (date.weekOfMonth locale.firstDayOfWeek)
      | .M _ | .L _ => some date.month
      | .d _ => some date.day
      | .E _ | .e _ | .c _ => some date.weekday
      | .F _ => some date.alignedWeekOfMonth
      | _ => none
    match res with
    | some res => res
    | none => "invalid time"

/--
Parses a date string in the American format (`MM-dd-uuuu`) and returns a `PlainDate`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a3487f390111db650b0ff5ce3f50a957a3703f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
