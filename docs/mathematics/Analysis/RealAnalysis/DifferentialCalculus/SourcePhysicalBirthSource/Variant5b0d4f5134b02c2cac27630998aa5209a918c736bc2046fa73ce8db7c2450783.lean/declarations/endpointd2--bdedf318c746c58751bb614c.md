# endpointD2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a3f42c4547a386b3f290dfd0497e6cdcf27a6eb0b356dd8382dd29583d891ea",
  "kind": "def",
  "lexical_name": "endpointD2",
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
  "slug": "endpointd2--bdedf318c746c58751bb614c",
  "source": {
    "blob": "e893ec68f92ad4a0514de17344a01829240a1e48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant5b0d4f5134b02c2cac27630998aa5209a918c736bc2046fa73ce8db7c2450783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdedf318c746c58751bb614c4035d0f32307b3edf40a3f5ac3bbca2ff7127e5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant5b0d4f5134b02c2cac27630998aa5209a918c736bc2046fa73ce8db7c2450783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a3f42c4547a386b3f290dfd0497e6cdcf27a6eb0b356dd8382dd29583d891ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointD2 (r y : ℝ) : ℝ :=
  (24576) * y ^ 3 +
    ((-3072 / 5)) * y ^ 5 +
    ((64 / 35)) * y ^ 7 +
    (-122880) * r * y ^ 4 +
    (2048) * r * y ^ 6 +
    ((-32 / 7)) * r * y ^ 8 +
    (233472) * r ^ 2 * y ^ 5 +
    ((-19456 / 7)) * r ^ 2 * y ^ 7 +
    ((304 / 63)) * r ^ 2 * y ^ 9 +
    (-227328) * r ^ 3 * y ^ 6 +
    ((14208 / 7)) * r ^ 3 * y ^ 8 +
    ((-296 / 105)) * r ^ 3 * y ^ 10 +
    ((887808 / 7)) * r ^ 4 * y ^ 7 +
    ((-18496 / 21)) * r ^ 4 * y ^ 9 +
    ((1156 / 1155)) * r ^ 4 * y ^ 11 +
    (-42240) * r ^ 5 * y ^ 8 +
    ((704 / 3)) * r ^ 5 * y ^ 10 +
    ((-2 / 9)) * r ^ 5 * y ^ 12 +
    (8320) * r ^ 6 * y ^ 9 +
    ((-416 / 11)) * r ^ 6 * y ^ 11 +
    ((1 / 33)) * r ^ 6 * y ^ 13 +
    (-896) * r ^ 7 * y ^ 10 +
    ((112 / 33)) * r ^ 7 * y ^ 12 +
    ((-1 / 429)) * r ^ 7 * y ^ 14 +
    ((448 / 11)) * r ^ 8 * y ^ 11 +
    ((-56 / 429)) * r ^ 8 * y ^ 13 +
    ((1 / 12870)) * r ^ 8 * y ^ 15

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant5b0d4f5134b02c2cac27630998aa5209a918c736bc2046fa73ce8db7c2450783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePhysicalBirthSource/Variant5b0d4f5134b02c2cac27630998aa5209a918c736bc2046fa73ce8db7c2450783.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e893ec68f92ad4a0514de17344a01829240a1e48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
