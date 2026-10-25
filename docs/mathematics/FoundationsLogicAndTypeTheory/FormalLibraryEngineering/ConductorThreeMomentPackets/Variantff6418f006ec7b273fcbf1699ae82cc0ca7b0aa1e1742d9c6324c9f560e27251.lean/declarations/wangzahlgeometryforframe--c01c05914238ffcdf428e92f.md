# WangZahlGeometryForFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:948e5c67f98b0a09abe2c6fea381553f1d60c82497fc944ce0b9c65c45e3646f",
  "kind": "structure",
  "lexical_name": "WangZahlGeometryForFrame",
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
  "slug": "wangzahlgeometryforframe--c01c05914238ffcdf428e92f",
  "source": {
    "blob": "d2aeed2ca6f00c47f2e031aa3f1de1476ed3d369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeMomentPackets/Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c01c05914238ffcdf428e92f4eb513a8e9632adddf747fb61a3d72d4c9a06607",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeMomentPackets/Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:948e5c67f98b0a09abe2c6fea381553f1d60c82497fc944ce0b9c65c45e3646f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WangZahlGeometryForFrame {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) where
  atomDecidableEq : DecidableEq frame.Atom
  family : @EuclideanShadedTubeFamily frame.Atom atomDecidableEq
  tubes_eq_univ : family.tubes = @Finset.univ frame.Atom
    frame.atomFintype
  tubes_nonempty : family.tubes.Nonempty
  wolffConstant : ℝ≥0∞
  convexWolff : KatzTaoConvexWolffAtMost family wolffConstant

/-- A fixed frame family and power-law tube scale.  No estimate is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeMomentPackets/Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeMomentPackets/Variantff6418f006ec7b273fcbf1699ae82cc0ca7b0aa1e1742d9c6324c9f560e27251.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2aeed2ca6f00c47f2e031aa3f1de1476ed3d369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
