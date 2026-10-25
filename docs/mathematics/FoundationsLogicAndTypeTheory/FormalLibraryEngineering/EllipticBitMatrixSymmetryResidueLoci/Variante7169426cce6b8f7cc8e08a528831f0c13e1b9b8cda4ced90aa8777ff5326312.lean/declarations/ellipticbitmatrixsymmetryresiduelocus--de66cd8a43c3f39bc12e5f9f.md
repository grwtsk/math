# EllipticBitMatrixSymmetryResidueLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3976cc9165797057b6087b508f29d2f4fad133b84ed21e651d1ce9b74c26721",
  "kind": "structure",
  "lexical_name": "EllipticBitMatrixSymmetryResidueLocus",
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
  "slug": "ellipticbitmatrixsymmetryresiduelocus--de66cd8a43c3f39bc12e5f9f",
  "source": {
    "blob": "5ccac3b4eb2def4e9472b4740ea5a01b3c6cc14a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixSymmetryResidueLoci/Variante7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de66cd8a43c3f39bc12e5f9f8b1a1232fc4d87c134ba7bed2bcccc1f28a8007f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixSymmetryResidueLoci/Variante7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3976cc9165797057b6087b508f29d2f4fad133b84ed21e651d1ce9b74c26721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EllipticBitMatrixSymmetryResidueLocus {α : Type}
    (s : Think.Compression.Syntax.CompressedString α) where
  slice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode s)
  carrier : EllipticQuadraticResidueCarrier
  x : Nat
  matrix : Mat2F2
  fiberKind : QuadraticResidueFiberKind
  truthToken : OneByOneBitMatrixTruthToken
  projectionMode : BitResidueProjectionMode
  residueBit : Bool
  symmetryBucket : RankIdentityBucket
  phase : Nat × Nat
  symmetryResidueClass : SymmetryResidueClass
  finiteLocalOnly : finiteLocalCarrierAuthority carrier
  spin4OrbitClaim : Bool
  conjugacyOrbitClaim : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixSymmetryResidueLoci/Variante7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixSymmetryResidueLoci/Variante7169426cce6b8f7cc8e08a528831f0c13e1b9b8cda4ced90aa8777ff5326312.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccac3b4eb2def4e9472b4740ea5a01b3c6cc14a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
