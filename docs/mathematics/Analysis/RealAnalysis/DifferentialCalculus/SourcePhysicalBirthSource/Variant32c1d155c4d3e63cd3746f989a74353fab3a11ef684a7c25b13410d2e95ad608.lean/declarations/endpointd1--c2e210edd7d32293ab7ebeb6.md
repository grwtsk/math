# endpointD1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3daf21e85f9b369bc5c43444190239bd6a95901d324542edbe354150cd74ff86",
  "kind": "def",
  "lexical_name": "endpointD1",
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
  "slug": "endpointd1--c2e210edd7d32293ab7ebeb6",
  "source": {
    "blob": "ab99ee353b0a1a28ac1f31e91bf952d31984519c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e210edd7d32293ab7ebeb66cb3ba1c68b6b991115ebd55956aec9ddce831e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3daf21e85f9b369bc5c43444190239bd6a95901d324542edbe354150cd74ff86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointD1 (r y : ℝ) : ℝ :=
  (6144) * y ^ 4 +
    ((-512 / 5)) * y ^ 6 +
    ((8 / 35)) * y ^ 8 +
    (-24576) * r * y ^ 5 +
    ((2048 / 7)) * r * y ^ 7 +
    ((-32 / 63)) * r * y ^ 9 +
    (38912) * r ^ 2 * y ^ 6 +
    ((-2432 / 7)) * r ^ 2 * y ^ 8 +
    ((152 / 315)) * r ^ 2 * y ^ 10 +
    ((-227328 / 7)) * r ^ 3 * y ^ 7 +
    ((4736 / 21)) * r ^ 3 * y ^ 9 +
    ((-296 / 1155)) * r ^ 3 * y ^ 11 +
    ((110976 / 7)) * r ^ 4 * y ^ 8 +
    ((-9248 / 105)) * r ^ 4 * y ^ 10 +
    ((289 / 3465)) * r ^ 4 * y ^ 12 +
    ((-14080 / 3)) * r ^ 5 * y ^ 9 +
    ((64 / 3)) * r ^ 5 * y ^ 11 +
    ((-2 / 117)) * r ^ 5 * y ^ 13 +
    (832) * r ^ 6 * y ^ 10 +
    ((-104 / 33)) * r ^ 6 * y ^ 12 +
    ((1 / 462)) * r ^ 6 * y ^ 14 +
    ((-896 / 11)) * r ^ 7 * y ^ 11 +
    ((112 / 429)) * r ^ 7 * y ^ 13 +
    ((-1 / 6435)) * r ^ 7 * y ^ 15 +
    ((112 / 33)) * r ^ 8 * y ^ 12 +
    ((-4 / 429)) * r ^ 8 * y ^ 14 +
    ((1 / 205920)) * r ^ 8 * y ^ 16

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant32c1d155c4d3e63cd3746f989a74353fab3a11ef684a7c25b13410d2e95ad608.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab99ee353b0a1a28ac1f31e91bf952d31984519c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
