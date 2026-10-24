# PolarizedPacketGeometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4d31e002c4c066aefdf0ab920e8fdd897f93ade690e203fb7dbf9a9d90f64de",
  "kind": "structure",
  "lexical_name": "PolarizedPacketGeometry",
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
  "slug": "polarizedpacketgeometry--1712236a10759f100fde701c",
  "source": {
    "blob": "aba8b72df7f4daa2ca5bd466fa78f81056efeea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 147,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb9b764629f54878616831375cf985f1f07fa927d7c3ee8f05d29627908b406b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1712236a10759f100fde701c8facece30e1b0c00e4289164313144a20c74a608",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb9b764629f54878616831375cf985f1f07fa927d7c3ee8f05d29627908b406b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4d31e002c4c066aefdf0ab920e8fdd897f93ade690e203fb7dbf9a9d90f64de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PolarizedPacketGeometry
    (configuration : PolarizedArithmeticPacketConfiguration) where
  Packet : Type
  instDecidableEq : DecidableEq Packet
  family : @Surface.Core.PrimeWalkWangZahlGeometry.EuclideanShadedTubeFamily
    Packet instDecidableEq
  tubes_nonempty : family.tubes.Nonempty
  scale_eq : family.delta = configuration.geometricScale
  wolffConstant : ℝ≥0∞
  convexWolff :
    Surface.Core.PrimeWalkWangZahlGeometry.KatzTaoConvexWolffAtMost
      family wolffConstant

/-- Geometric admissibility means that concrete unsigned Wang--Zahl data have
actually been constructed.  Packet-frame localization, `TT*`, two-scale
grain control, and signed off-diagonal estimates remain theorem obligations
of the large-sieve proof rather than fields of this certificate. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb9b764629f54878616831375cf985f1f07fa927d7c3ee8f05d29627908b406b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantb9b764629f54878616831375cf985f1f07fa927d7c3ee8f05d29627908b406b0.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba8b72df7f4daa2ca5bd466fa78f81056efeea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
