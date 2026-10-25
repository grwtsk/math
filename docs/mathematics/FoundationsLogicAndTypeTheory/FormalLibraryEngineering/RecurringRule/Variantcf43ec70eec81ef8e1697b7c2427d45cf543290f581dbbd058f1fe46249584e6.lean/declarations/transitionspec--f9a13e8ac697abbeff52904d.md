# TransitionSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a4e613379c1d3d1d861693010e00d05834cee6453a0158623a2b530088a9e31",
  "kind": "inductive",
  "lexical_name": "TransitionSpec",
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
  "slug": "transitionspec--f9a13e8ac697abbeff52904d",
  "source": {
    "blob": "56e413d5e7f46ccecffacc4685ac395fc0f151ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9a13e8ac697abbeff52904dc0b5adb23bb9659d1cd6f1043f55c2c07944e394",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a4e613379c1d3d1d861693010e00d05834cee6453a0158623a2b530088a9e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TransitionSpec where

  /--
  `Mm.w.d` form: month `m`, week `w` (1–5; 5 = last), ISO weekday `d`.
  -/
  | mwd (month : Month.Ordinal) (week : Week.Aligned.Ordinal) (day : Weekday.Ordinal)

  /--
  `Jn` form: Julian day 1–365 (Feb 29 never counted, even in leap years).
  -/
  | julian (day : Bounded.LE 1 365)

  /--
  `n` form: zero-based day 0–365 (Feb 29 counted in leap years).
  -/
  | julian0 (day : Bounded.LE 0 365)
deriving Repr

namespace TransitionSpec

/--
Returns the `Day.Offset` (days since epoch) for a `TransitionSpec.mwd` in the given year.

`Mm.w.d`: month `m`, week `w` (1–5; 5 = last), ISO weekday `d` (1 = Monday, 7 = Sunday).
Finds the `w`-th occurrence of weekday `d` in month `m`; if `w = 5`, returns the last occurrence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e413d5e7f46ccecffacc4685ac395fc0f151ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
