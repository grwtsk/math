# PolarizedPacketGeometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fae5d967fdb0c9b0b05d2ef2d4eab025cc9e6e818f4ac79219c51d31ed6bc7f",
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
  "slug": "polarizedpacketgeometry--339cf2b95635ed35ef248cd4",
  "source": {
    "blob": "5d5dc4a02565be88cea1db929f03179a0e3784c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 146,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variant4bd39ee18d82bf32b6305295ce1f5cb117a1558e8e1c8bc27e7905a0791699ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:339cf2b95635ed35ef248cd43fb9a7497f51ed1217767078d6b850b8a824c44d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variant4bd39ee18d82bf32b6305295ce1f5cb117a1558e8e1c8bc27e7905a0791699ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fae5d967fdb0c9b0b05d2ef2d4eab025cc9e6e818f4ac79219c51d31ed6bc7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–163.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variant4bd39ee18d82bf32b6305295ce1f5cb117a1558e8e1c8bc27e7905a0791699ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variant4bd39ee18d82bf32b6305295ce1f5cb117a1558e8e1c8bc27e7905a0791699ec.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d5dc4a02565be88cea1db929f03179a0e3784c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
