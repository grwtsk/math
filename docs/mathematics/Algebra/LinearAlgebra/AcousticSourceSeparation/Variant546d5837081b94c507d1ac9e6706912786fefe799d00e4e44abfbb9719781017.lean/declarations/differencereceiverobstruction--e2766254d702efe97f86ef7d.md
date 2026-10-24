# differenceReceiverObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbc1e75553f2d319e8b1496a6f9ee80087ad661d7f8a549198ed06a7c5419173",
  "kind": "def",
  "lexical_name": "differenceReceiverObstruction",
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
  "slug": "differencereceiverobstruction--e2766254d702efe97f86ef7d",
  "source": {
    "blob": "007139266dfb082d9fe9791e75c2dd4868366cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2766254d702efe97f86ef7d6c70c825272b9c717d4ef37a39f3883b74314e03",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbc1e75553f2d319e8b1496a6f9ee80087ad661d7f8a549198ed06a7c5419173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def differenceReceiverObstruction : DescentObstruction differenceReceiver
    (fun source : SourceChannels => source.1) where
  left := (fun _ => 1, fun _ => 1)
  right := (fun _ => 0, fun _ => 0)
  sameCarrier := by funext t; norm_num [differenceReceiver]
  targetSeparated := by intro h; have := congrFun h 0; norm_num at this

/-- Source mixing creates a proof-bearing obstruction to first-channel recovery. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007139266dfb082d9fe9791e75c2dd4868366cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
