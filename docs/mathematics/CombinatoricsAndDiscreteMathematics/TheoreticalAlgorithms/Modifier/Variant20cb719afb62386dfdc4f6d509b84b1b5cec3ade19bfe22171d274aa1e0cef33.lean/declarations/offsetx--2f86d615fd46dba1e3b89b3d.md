# OffsetX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1d407f70be7a90db9beb994ab91291fdf13258cba9ce32e4a4932084c9a7911",
  "kind": "inductive",
  "lexical_name": "OffsetX",
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
  "slug": "offsetx--2f86d615fd46dba1e3b89b3d",
  "source": {
    "blob": "dc2695fc8f3e092f07179aa44390f866ab53722b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f86d615fd46dba1e3b89b3de658aa8271ef319452358efce6d75adcdafe3211",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1d407f70be7a90db9beb994ab91291fdf13258cba9ce32e4a4932084c9a7911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OffsetX

  /--
  Only the hour is output (e.g., "+01")
  -/
  | hour

  /--
  Hour and minute without colon (e.g., "+0130")
  -/
  | hourMinute

  /--
  Hour and minute with colon (e.g., "+01:30")
  -/
  | hourMinuteColon

  /--
  Hour, minute, and second without colon (e.g., "+013015")
  -/
  | hourMinuteSecond

  /--
  Hour, minute, and second with colon (e.g., "+01:30:15")
  -/
  | hourMinuteSecondColon
  deriving Repr, Inhabited

namespace OffsetX

/--
`classify` classifies the number of pattern letters into an `OffsetX` format.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modifier/Variant20cb719afb62386dfdc4f6d509b84b1b5cec3ade19bfe22171d274aa1e0cef33.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2695fc8f3e092f07179aa44390f866ab53722b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
