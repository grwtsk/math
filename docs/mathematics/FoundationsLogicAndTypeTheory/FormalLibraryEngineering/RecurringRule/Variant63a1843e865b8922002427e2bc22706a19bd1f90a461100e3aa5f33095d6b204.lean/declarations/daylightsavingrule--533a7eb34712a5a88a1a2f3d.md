# DaylightSavingRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d51c5085406247f22ad1a5ce12587ce31d3eca24f0a75928f6f29d880240e96e",
  "kind": "structure",
  "lexical_name": "DaylightSavingRule",
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
  "slug": "daylightsavingrule--533a7eb34712a5a88a1a2f3d",
  "source": {
    "blob": "4d9d8845f02af88ba323d75acdbc6914c1b8e96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:533a7eb34712a5a88a1a2f3d37f568e9e02a536438fda79001c85886dc324a2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d51c5085406247f22ad1a5ce12587ce31d3eca24f0a75928f6f29d880240e96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DaylightSavingRule where

  /--
  DST abbreviation.
  -/
  name : String

  /--
  DST UTC offset (east-positive).
  -/
  offset : TimeZone.Offset

  /--
  Rule for the start of DST, if any.
  -/
  start : Option TransitionRule := none

  /--
  Rule for the end of DST, if any.
  -/
  end_ : Option TransitionRule := none
deriving Repr

/--
Recurring rule describing standard and DST zones, as found in a POSIX TZ string or TZif footer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9d8845f02af88ba323d75acdbc6914c1b8e96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
