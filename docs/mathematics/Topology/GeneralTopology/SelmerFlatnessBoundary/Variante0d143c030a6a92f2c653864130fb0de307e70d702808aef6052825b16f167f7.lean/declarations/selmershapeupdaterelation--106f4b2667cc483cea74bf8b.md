# SelmerShapeUpdateRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:789cf0dfcedd2260b9ec9ed705bea3ebd158751cc0877032003dd0042611117f",
  "kind": "structure",
  "lexical_name": "SelmerShapeUpdateRelation",
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
  "slug": "selmershapeupdaterelation--106f4b2667cc483cea74bf8b",
  "source": {
    "blob": "457890dbd6e6d9c34f36d77e91fb2a4286de837e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:106f4b2667cc483cea74bf8b5c38f1a41b527582b31f776517cfe18b7c05f557",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:789cf0dfcedd2260b9ec9ed705bea3ebd158751cc0877032003dd0042611117f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SelmerShapeUpdateRelation
    {k : Nat}
    (pub : ShapeUpdatePublicStatement)
    (witness : SelmerShapeUpdateWitness k) : Prop where
  baseRelation :
    LocalShapeUpdateZKPRelation pub witness.baseWitness
  selmerExactnessOK :
    witness.ghc1.selmerExactness.exactnessSound
  selmerMembershipOK :
    witness.ghc1.selmerExactness.selmerMembershipSound
  obstructionClassOK :
    witness.ghc1.obstructionClassSound
  orientationCorrectionOK :
    witness.ghc1.orientationCorrectionSound
  dyadicFlatnessOK :
    witness.ghc1.dyadicFlatnessSound
  determinantBoundaryOK :
    witness.ghc1.compatibleWithDeterminantBoundary
  prismaticBoundaryOK :
    witness.ghc1.compatibleWithPrismaticBoundary
  spectralTraceBoundaryOK :
    witness.ghc1.compatibleWithSpectralTraceBoundary
  valuationBoxOK :
    witness.ghc1.compatibleWithValuationBox
  localSelmerRoutingOK :
    witness.localSelmerRoutingSound
  noSelmerContinuousDeterminant :
    ¬ SelmerShadowConstructsContinuousDeterminant
      witness.ghc1.selmerExactness.selmerShadow
  noSelmerPrismaticCohomology :
    ¬ SelmerShadowConstructsPrismaticCohomology
      witness.ghc1.selmerExactness.selmerShadow
  noSelmerConnesTrace :
    ¬ SelmerShadowConstructsConnesTrace
      witness.ghc1.selmerExactness.selmerShadow

/-! ## Projection theorems -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variante0d143c030a6a92f2c653864130fb0de307e70d702808aef6052825b16f167f7.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457890dbd6e6d9c34f36d77e91fb2a4286de837e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
