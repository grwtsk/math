# Modifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f69b0b33ed2445261ce8946f763f405ba9a9f0104359bedcd44ce1ca210d0a2b",
  "kind": "inductive",
  "lexical_name": "Modifier",
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
  "slug": "modifier--bff4e6c174aa95e6ba13c75c",
  "source": {
    "blob": "b5438f71fe18217e254f31f19ad16fecfdb202fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 486,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Varianta8b081194f35c7d12e12a0e66a224ec3753004c6ab3905e0ba8d5a8f22489ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bff4e6c174aa95e6ba13c75c153f46c4f0ca227226b6c493f1c91ebff9599612",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Varianta8b081194f35c7d12e12a0e66a224ec3753004c6ab3905e0ba8d5a8f22489ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f69b0b33ed2445261ce8946f763f405ba9a9f0104359bedcd44ce1ca210d0a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Modifier
  /--
  `G`: Era (e.g., AD, Anno Domini, A).
  -/
  | G (presentation : Text)

  /--
  `u`: Proleptic/astronomical year (e.g., 2004, 04, -0001, -1). Can be negative: year 0 exists and -0001 = 2 BC.
  Use `y` + `G` instead when you want the era-based (always-positive) representation.
  -/
  | u (presentation : Year)

  /--
  `y`: Year of era (e.g., 2004, 04, 0002, 2). Never negative: year 1 BC is formatted as `1` paired with a BC era
  designator. Use `u` instead when you need the proleptic/astronomical year (which can be negative).
  -/
  | y (presentation : Year)

  /--
  `D`: Day of year (e.g., 189).
  -/
  | D (presentation : Number)

  /--
  `M`: Month of year as number or text (e.g., 7, 07, Jul, July, J).
  -/
  | M (presentation : Number ⊕ Text)

  /--
  `L`: Stand-alone month of year as number or text (e.g., 7, 07, Jul, July, J).
  Stand-alone means the month is used independently (e.g., a calendar header "July") rather than as part of a full date.
  In practice the output is the same as `M`; the distinction is meaningful only in locale-aware contexts.
  -/
  | L (presentation : Number ⊕ Text)

  /--
  `d`: Day of month (e.g., 10).
  -/
  | d (presentation : Number)

  /--
  `Q`: Quarter of year as number or text (e.g., 3, 03, Q3, 3rd quarter).
  -/
  | Q (presentation : Number ⊕ Text)

  /--
  `q`: Stand-alone quarter of year as number or text (e.g., 3, 03, Q3, 3rd quarter).
  Stand-alone means the value is used independently (e.g., a calendar header) rather than as part of a full date phrase.
  In practice the output is the same as `Q`; the distinction is meaningful only in locale-aware contexts.
  -/
  | q (presentation : Number ⊕ Text)

  /--
  `Y`: ISO week-based year (e.g., 2004, 04, 0002, 2). This is the year that contains the ISO week (`w`), which can
  differ from the calendar year near year boundaries: e.g., Dec 31 may belong to week 1 of the following year.
  -/
  | Y (presentation : Year)

  /--
  `w`: Week of week-based year (e.g., 27).
  -/
  | w (presentation : Number)

  /--
  `W`: Week of month (e.g., 4).
  -/
  | W (presentation : Number)

  /--
  `E`: Day of week as text (e.g., Tue, Tuesday, T).
  -/
  | E (presentation : Text)

  /--
  `e`: Day of week as number or text (e.g., 1, 01, Mon, Monday, M).
  The numeric value uses Monday=1 through Sunday=7 (ISO 8601 convention).
  Text output is the same as `E`.
  -/
  | e (presentation : Number ⊕ Text)

  /--
  `c`: Stand-alone day of week as number or text (e.g., 2, Tue, Tuesday, T).
  Stand-alone means the day is used independently (e.g., a calendar column header) rather than as part of a full date.
  Unlike `e`, `cc` (count of 2) is not valid; the minimum is `c` (1 letter) or `ccc` (3 letters).
  -/
  | c (presentation : Number ⊕ Text)

  /--
  `F`: Day-of-week-in-month / occurrence of the weekday within the month (e.g., 2nd Sunday -> 2).
  -/
  | F (presentation : Number)

  /--
  `a`: AM/PM of day (e.g., PM).
  -/
  | a (presentation : Text)

  /--
  `b`: Day period with noon/midnight distinction (e.g., AM, noon, midnight).
  -/
  | b (presentation : Text)

  /--
  `B`: Extended day period with named segments (e.g., "in the morning", "at night").
  -/
  | B (presentation : Text)

  /--
  `h`: Clock hour of AM/PM (1-12) (e.g., 12).
  -/
  | h (presentation : Number)

  /--
  `K`: Hour of AM/PM (0-11) (e.g., 0).
  -/
  | K (presentation : Number)

  /--
  `k`: Clock hour of day (1-24) (e.g., 24).
  -/
  | k (presentation : Number)

  /--
  `H`: Hour of day (0-23) (e.g., 0).
  -/
  | H (presentation : Number)

  /--
  `m`: Minute of hour (e.g., 30).
  -/
  | m (presentation : Number)

  /--
  `s`: Second of minute (e.g., 55).
  -/
  | s (presentation : Number)

  /--
  `S`: Fraction of second (e.g., 978).
  -/
  | S (presentation : Fraction)

  /--
  `A`: Millisecond of day (e.g., 1234).
  -/
  | A (presentation : Number)

  /--
  `n`: Nanosecond of second (e.g., 987654321).
  -/
  | n (presentation : Number)

  /--
  `N`: Nanosecond of day (e.g., 1234000000).
  -/
  | N (presentation : Number)

  /--
  `V`: Time zone ID.
  - `V` (1 letter): outputs `"unk"` (unknown zone placeholder per Unicode CLDR).
  - `VV` (2 letters): outputs the IANA zone ID (e.g., `"America/Los_Angeles"`), or `"Z"` for UTC.
  -/
  | V (presentation : ZoneId)

  /--
  `z`: Time zone name (e.g., Pacific Standard Time, PST).
  -/
  | z (presentation : ZoneName)

  /--
  `v`: Generic time zone name, without DST distinction (e.g., Pacific Time, PT).
  -/
  | v (presentation : ZoneName)

  /--
  `O`: Localized zone offset using the `GMT` prefix (e.g., `GMT+8`, `GMT+08:00`).
  -/
  | O (presentation : OffsetO)

  /--
  `X`: Zone offset with 'Z' for zero (e.g., Z, -08, -0830, -08:30).
  -/
  | X (presentation : OffsetX)

  /--
  `x`: Zone offset without 'Z' (e.g., +0000, -08, -0830, -08:30).
  -/
  | x (presentation : OffsetX)

  /--
  `Z`: Zone offset.
  - `Z`, `ZZ`, `ZZZ`: output `±HHMMss` (no colon); parse `±HHMM[ss]`. Does **not** accept the literal `Z` character for UTC — use `ZZZZZ` or `XXX` for that.
  - `ZZZZ`: outputs/parses localized GMT form (e.g., `GMT+08:00`).
  - `ZZZZZ`: outputs `±HH:mm[:ss]` and uses `Z` for UTC (e.g., `Z`, `+01:30`).
  -/
  | Z (presentation : OffsetZ)
  deriving Repr, Inhabited

/--
`abstractParse` abstracts the parsing logic for any type that has a classify function.
It takes a constructor function to build the `Modifier` and a classify function that maps the pattern length to a specific type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Varianta8b081194f35c7d12e12a0e66a224ec3753004c6ab3905e0ba8d5a8f22489ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Varianta8b081194f35c7d12e12a0e66a224ec3753004c6ab3905e0ba8d5a8f22489ef4.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5438f71fe18217e254f31f19ad16fecfdb202fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
