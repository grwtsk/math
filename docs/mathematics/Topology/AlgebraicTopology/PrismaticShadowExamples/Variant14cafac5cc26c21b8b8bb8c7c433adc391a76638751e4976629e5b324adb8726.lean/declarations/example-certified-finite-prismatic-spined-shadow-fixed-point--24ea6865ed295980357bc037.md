# example_certified_finite_prismatic_spined_shadow_fixed_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e68e1ba6e6db552c8a8172458ce7397930cc4110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a1332a2-53af-add6-716c-84b11d6b7216",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:904752da-f05f-ef72-c814-d35ad7b322e6",
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
  "slug": "example-certified-finite-prismatic-spined-shadow-fixed-point--24ea6865ed295980357bc037",
  "source": {
    "blob": "e68e1ba6e6db552c8a8172458ce7397930cc4110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 223,
    "path": "GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ea6865ed295980357bc037ea96b73d0aa8e98ec4322c94977baa2dd2739abf",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:904752da-f05f-ef72-c814-d35ad7b322e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–251.

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68e1ba6e6db552c8a8172458ce7397930cc4110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
