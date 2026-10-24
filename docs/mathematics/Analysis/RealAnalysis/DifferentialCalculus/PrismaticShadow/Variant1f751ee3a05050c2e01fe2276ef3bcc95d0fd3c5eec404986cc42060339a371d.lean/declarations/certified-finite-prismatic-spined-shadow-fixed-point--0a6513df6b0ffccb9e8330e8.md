# certified_finite_prismatic_spined_shadow_fixed_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85512fd2cf1111bb28b988d4f34436a828f73749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd828d5-9a41-6e64-2618-24305c994068",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65079137-7368-ddfb-6966-c8ffc82ee714",
  "kind": "theorem",
  "lexical_name": "certified_finite_prismatic_spined_shadow_fixed_point",
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
  "slug": "certified-finite-prismatic-spined-shadow-fixed-point--0a6513df6b0ffccb9e8330e8",
  "source": {
    "blob": "85512fd2cf1111bb28b988d4f34436a828f73749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 294,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6513df6b0ffccb9e8330e8b4f4840d8874a559d17855445ba8648a43f50928",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65079137-7368-ddfb-6966-c8ffc82ee714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certified_finite_prismatic_spined_shadow_fixed_point
    (C : CertifiedFinitePrismaticSpinedShadow) :
    C.semanticBoundaryZero ∧
      C.prismaticSpineBoundaryZero ∧
      C.projectedFlow.finiteCertificate.sound ∧
      C.minimumEnergy.minimumAttained ∧
      C.minimumEnergy.minimizersOneClass ∧
      C.minimumEnergy.energyGap ∧
      (C.cooling.piecewiseConstantCooling ∨
        C.cooling.quasiStaticCooling ∨
        C.cooling.scheduleAdjustedDissipation) ∧
      C.plateau.entropyPlateau ∧
      C.plateau.freeEnergyPlateau ∧
      C.chainMap.finiteCertificate.sound ∧
      C.rankPreservation.torsionFreeStableSubcomplex ∧
      C.rankPreservation.rankPreservedAfterTensorReal ∧
      C.rankPreservation.realHomologicalEquivalence ∧
      C.backwardRecovery.finiteCertificate.sound ∧
      C.torsion.familyCertificates.sound ∧
      C.residue.allLocalResidueWitnessed ∧
      C.authorityAudit.obligationsDischargedOrUnavailable ∧
      C.authorityAudit.finiteSyntaxDoesNotOwnAuthority ∧
      C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomology ∧
      C.disclaimer.noPrismaticConstruction ∧
      C.disclaimer.noComparisonTheorem ∧
      C.disclaimer.noGeneratedDomAuthority ∧
      C.disclaimer.noCssAuthority ∧
      C.fixedPointSound := by
  exact
    ⟨C.semanticBoundaryZeroProof,
      C.prismaticSpineBoundaryZeroProof,
      ProjectedFlow.projected_flow_certificate_sound
        C.projectedFlow.finiteCertificate,
      C.minimumEnergy.minimumAttainedProof,
      C.minimumEnergy.minimizersOneClassProof,
      C.minimumEnergy.energyGapProof,
      C.cooling.dissipationProof,
      C.plateau.entropyPlateauProof,
      C.plateau.freeEnergyPlateauProof,
      ChainMap.chain_map_certificate_sound C.chainMap.finiteCertificate,
      C.rankPreservation.torsionFreeStableSubcomplexProof,
      C.rankPreservation.rankPreservedAfterTensorRealProof,
      C.rankPreservation.realHomologicalEquivalenceProof,
      BackwardRecovery.backward_recovery_certificate_sound
        C.backwardRecovery.finiteCertificate,
      TorsionEquivariance.torsion_equivariance_certificate_sound
        C.torsion.familyCertificates,
      C.residue.allLocalResidueWitnessedProof,
      C.authorityAudit.obligationsProof,
      C.authorityAudit.finiteSyntaxDoesNotOwnAuthorityProof,
      C.authorityAudit.finiteShadowsDoNotConstructPrismaticCohomologyProof,
      C.disclaimer.noPrismaticConstructionProof,
      C.disclaimer.noComparisonTheoremProof,
      C.disclaimer.noGeneratedDomAuthorityProof,
      C.disclaimer.noCssAuthorityProof,
      C.fixedPointSoundProof⟩

end PrismaticShadow
end Presentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PrismaticShadow/Variant1f751ee3a05050c2e01fe2276ef3bcc95d0fd3c5eec404986cc42060339a371d.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85512fd2cf1111bb28b988d4f34436a828f73749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
