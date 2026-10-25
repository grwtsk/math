# TransverseTerminalCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6121298ddbf75eedc4947d441653722776dac2288669fe6d1224b37911982fd3",
  "kind": "structure",
  "lexical_name": "TransverseTerminalCertificate",
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
  "slug": "transverseterminalcertificate--7973eee5d336003c9765aa68",
  "source": {
    "blob": "39dd5058274da910d9780ab0b559fec54a74f6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 342,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7973eee5d336003c9765aa68fcf7e655d278818e80a69d177d95a9cbd356a44a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6121298ddbf75eedc4947d441653722776dac2288669fe6d1224b37911982fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TransverseTerminalCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N} where
  leftBlock : scale.packetData.Left → Bool
  rightBlock : scale.packetData.Right → Bool
  leftBlock_surjective : Function.Surjective leftBlock
  rightBlock_surjective : Function.Surjective rightBlock
  separation : ∀ left right,
    leftBlock left ≠ rightBlock right →
      (N + 1 : ℝ)⁻¹ ≤
        ‖scale.packetDirection (.inl left) -
          scale.packetDirection (.inr right)‖

/-- A non-vacuous unsigned Wang--Zahl application tied to the exact packet
labels, directions, and shadings of this arithmetic scale.  It still carries
no signed cancellation theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dd5058274da910d9780ab0b559fec54a74f6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
