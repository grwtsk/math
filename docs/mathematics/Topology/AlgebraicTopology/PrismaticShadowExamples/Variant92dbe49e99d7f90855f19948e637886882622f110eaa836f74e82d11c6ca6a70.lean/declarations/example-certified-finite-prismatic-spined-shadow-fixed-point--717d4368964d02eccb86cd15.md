# example_certified_finite_prismatic_spined_shadow_fixed_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caafc5cb-73c4-8942-7dc8-8393e53c7b53",
  "kind": "theorem",
  "lexical_name": "example_certified_finite_prismatic_spined_shadow_fixed_point",
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
  "slug": "example-certified-finite-prismatic-spined-shadow-fixed-point--717d4368964d02eccb86cd15",
  "source": {
    "blob": "ef1e5919b45b09e12220b883375d5685666e8323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 231,
    "path": "GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717d4368964d02eccb86cd154c6ab0fca01a27a901ce32c0d33b5d9cae4b5136",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caafc5cb-73c4-8942-7dc8-8393e53c7b53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_certified_finite_prismatic_spined_shadow_fixed_point :
    exampleCertifiedShadow.semanticBoundaryZero ∧
      exampleCertifiedShadow.prismaticSpineBoundaryZero ∧
      exampleCertifiedShadow.projectedFlow.finiteCertificate.sound ∧
      exampleCertifiedShadow.minimumEnergy.minimumAttained ∧
      exampleCertifiedShadow.minimumEnergy.minimizersOneClass ∧
      exampleCertifiedShadow.minimumEnergy.energyGap ∧
      (exampleCertifiedShadow.cooling.piecewiseConstantCooling ∨
        exampleCertifiedShadow.cooling.quasiStaticCooling ∨
        exampleCertifiedShadow.cooling.scheduleAdjustedDissipation) ∧
      exampleCertifiedShadow.plateau.entropyPlateau ∧
      exampleCertifiedShadow.plateau.freeEnergyPlateau ∧
      exampleCertifiedShadow.chainMap.finiteCertificate.sound ∧
      exampleCertifiedShadow.rankPreservation.torsionFreeStableSubcomplex ∧
      exampleCertifiedShadow.rankPreservation.rankPreservedAfterTensorReal ∧
      exampleCertifiedShadow.rankPreservation.realHomologicalEquivalence ∧
      exampleCertifiedShadow.backwardRecovery.finiteCertificate.sound ∧
      exampleCertifiedShadow.torsion.familyCertificates.sound ∧
      exampleCertifiedShadow.residue.allLocalResidueWitnessed ∧
      exampleCertifiedShadow.authorityAudit.obligationsDischargedOrUnavailable ∧
      exampleCertifiedShadow.authorityAudit.finiteSyntaxDoesNotOwnAuthority ∧
      exampleCertifiedShadow.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomology ∧
      exampleCertifiedShadow.disclaimer.noPrismaticConstruction ∧
      exampleCertifiedShadow.disclaimer.noComparisonTheorem ∧
      exampleCertifiedShadow.disclaimer.noGeneratedDomAuthority ∧
      exampleCertifiedShadow.disclaimer.noCssAuthority ∧
      exampleCertifiedShadow.fixedPointSound :=
  certified_finite_prismatic_spined_shadow_fixed_point exampleCertifiedShadow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant92dbe49e99d7f90855f19948e637886882622f110eaa836f74e82d11c6ca6a70.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef1e5919b45b09e12220b883375d5685666e8323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
