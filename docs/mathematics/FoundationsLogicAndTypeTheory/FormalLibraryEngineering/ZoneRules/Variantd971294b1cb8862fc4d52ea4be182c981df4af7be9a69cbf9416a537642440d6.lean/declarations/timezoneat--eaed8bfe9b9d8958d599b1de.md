# timezoneAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0556885a458fb93229ad7b601e47bc3244fd607e87809c6026545dd0ec040c91",
  "kind": "def",
  "lexical_name": "timezoneAt",
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
  "slug": "timezoneat--eaed8bfe9b9d8958d599b1de",
  "source": {
    "blob": "3b193debc67d4362dbd16ce30c1756a30ad5c5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaed8bfe9b9d8958d599b1deff8be65e261e9fb816df2e7bb72218963b41ac00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0556885a458fb93229ad7b601e47bc3244fd607e87809c6026545dd0ec040c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def timezoneAt (rule : RecurringRule) (tm : Timestamp) : TimeZone := Id.run do
  let stdTz := TimeZone.mk rule.stdOffset rule.stdName rule.stdName false
  let some dst := rule.dst | return stdTz
  let dstTz := TimeZone.mk dst.offset dst.name dst.name true

  let some startRule := dst.start | return stdTz
  let some endRule   := dst.end_  | return stdTz

  let secs := tm.toSecondsSinceUnixEpoch

  let year  := PlainDate.ofEpochDay (Day.Offset.ofSeconds secs) |>.year

  -- DST-start wall clock is standard time; DST-end wall clock is DST time (POSIX §8.3).
  let dstStart := transitionUtcSeconds startRule year rule.stdOffset
  let dstEnd   := transitionUtcSeconds endRule year dst.offset

  if dstStart ≤ dstEnd then
    if dstStart ≤ secs && secs < dstEnd then dstTz else stdTz
  else
    -- Southern Hemisphere: DST spans the year boundary
    if secs < dstEnd || dstStart ≤ secs then dstTz else stdTz

end RecurringRule

namespace ZoneRules

/--
Creates ZoneRules with a fixed GMT offset.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b193debc67d4362dbd16ce30c1756a30ad5c5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
