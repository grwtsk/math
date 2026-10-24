# TypeIIBilinearPacketFactorization.packetMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:758c9f96a112698cfa4b01398e59290bf9a1ea61c7b06500187f5d97835f3ce8",
  "kind": "def",
  "lexical_name": "TypeIIBilinearPacketFactorization.packetMatrix",
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
  "slug": "typeiibilinearpacketfactorization-packetmatrix--1bb40046b6e19ced1239f731",
  "source": {
    "blob": "9720bc3ca0f50f995d9b09ab0c19715237c812d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bb40046b6e19ced1239f731b3dcfbd221a41e7cb5bf9d4346f65c973232debb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:758c9f96a112698cfa4b01398e59290bf9a1ea61c7b06500187f5d97835f3ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIBilinearPacketFactorization.packetMatrix
    {N : ℕ} {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (factorization : TypeIIBilinearPacketFactorization N Left Right
      LeftPacketSpace RightPacketSpace)
    (x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    ⟪factorization.leftSynthesis (EuclideanSpace.single left 1),
      factorization.incidence x
        (factorization.rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ

/-- The intrinsic packet pairing.  Unlike a uniform scalar readout, this
retains the two Vaughan coefficient vectors and the localized incidence
operator between their separate packet spaces. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant8d5d708684ada785323b460ecb9ad3d67a470d8a90caeeb57685f47d7905d9c8.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9720bc3ca0f50f995d9b09ab0c19715237c812d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
