# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f12eda1666a51639bf62d8714a992f6bc23a7812559dcd2e5bc79b9ee5d910b7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--8d79b92d3acdac26f9c5f878",
  "source": {
    "blob": "249ad25a1db6ffb5c88edb6013f3d2e6010a30e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d79b92d3acdac26f9c5f87805b1f47e57e0d0099548721d2f643349e4f24fbc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f12eda1666a51639bf62d8714a992f6bc23a7812559dcd2e5bc79b9ee5d910b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (hX : 2 ≤ X) :
    0 < epsilonSchedule X ∧ epsilonSchedule X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X :=
  schedule_admissible X hX
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249ad25a1db6ffb5c88edb6013f3d2e6010a30e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
