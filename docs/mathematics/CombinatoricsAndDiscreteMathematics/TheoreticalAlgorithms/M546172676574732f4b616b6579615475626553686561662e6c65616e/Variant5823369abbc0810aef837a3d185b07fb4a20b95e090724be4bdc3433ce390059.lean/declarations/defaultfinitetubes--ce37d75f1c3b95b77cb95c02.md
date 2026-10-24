# defaultFiniteTubes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4ce48f319dd68d8add0edddaf35aacec2dca26569c52a0a2e75a576e3b4afc3",
  "kind": "def",
  "lexical_name": "defaultFiniteTubes",
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
  "slug": "defaultfinitetubes--ce37d75f1c3b95b77cb95c02",
  "source": {
    "blob": "33f1c8a8137ffdb13a68e24c7573c948ffd28f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant5823369abbc0810aef837a3d185b07fb4a20b95e090724be4bdc3433ce390059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce37d75f1c3b95b77cb95c02db7373431920e1af329e9d07aa31cae061cb1c9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant5823369abbc0810aef837a3d185b07fb4a20b95e090724be4bdc3433ce390059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4ce48f319dd68d8add0edddaf35aacec2dca26569c52a0a2e75a576e3b4afc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultFiniteTubes : List FiniteTube :=
  [ { directionLabel := "finite_direction_0"
      scaleNumerator := 1
      scaleDenominator := 16
      unitSegmentClaim := false
      continuumTubeClaim := false }
  , { directionLabel := "finite_direction_1"
      scaleNumerator := 1
      scaleDenominator := 16
      unitSegmentClaim := false
      continuumTubeClaim := false }
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant5823369abbc0810aef837a3d185b07fb4a20b95e090724be4bdc3433ce390059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant5823369abbc0810aef837a3d185b07fb4a20b95e090724be4bdc3433ce390059.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33f1c8a8137ffdb13a68e24c7573c948ffd28f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
