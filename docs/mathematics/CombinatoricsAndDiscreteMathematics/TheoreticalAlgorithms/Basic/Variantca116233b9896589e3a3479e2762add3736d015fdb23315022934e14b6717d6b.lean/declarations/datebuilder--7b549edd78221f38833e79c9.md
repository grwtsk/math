# DateBuilder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec908b2a945ed0b2c5fa845f5647d634cdc2cf2abce61077e594d385e13f7f5",
  "kind": "structure",
  "lexical_name": "DateBuilder",
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
  "slug": "datebuilder--7b549edd78221f38833e79c9",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 895,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b549edd78221f38833e79c914a360d8ccc7c19ba776999a75c085d359b20bab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec908b2a945ed0b2c5fa845f5647d634cdc2cf2abce61077e594d385e13f7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure DateBuilder where
  G : Option Year.Era := none
  y : Option Year.Offset := none
  u : Option Year.Offset := none
  Y : Option Year.Offset := none
  D : Option (Sigma Day.Ordinal.OfYear) := none
  M : Option Month.Ordinal := none
  L : Option Month.Ordinal := none
  d : Option Day.Ordinal := none
  Q : Option Month.Quarter := none
  q : Option Month.Quarter := none
  w : Option Week.OfYear.Ordinal := none
  W : Option Week.Ordinal := none
  E : Option Weekday := none
  e : Option Weekday := none
  c : Option Weekday := none
  F : Option (Bounded.LE 1 5) := none
  a : Option HourMarker := none
  b : Option DayPeriod := none
  B : Option ExtendedDayPeriod := none
  h : Option (Bounded.LE 1 12) := none
  K : Option (Bounded.LE 0 11) := none
  k : Option (Bounded.LE 1 24) := none
  H : Option Hour.Ordinal := none
  m : Option Minute.Ordinal := none
  s : Option (Second.Ordinal true) := none
  S : Option Nanosecond.Ordinal := none
  A : Option Millisecond.Offset := none
  n : Option Nanosecond.Ordinal := none
  N : Option Nanosecond.Offset := none
  V : Option String := none
  z : Option String := none
  zabbrev : Option String := none
  v : Option String := none
  O : Option Offset := none
  X : Option Offset := none
  x : Option Offset := none
  Z : Option Offset := none

namespace DateBuilder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
