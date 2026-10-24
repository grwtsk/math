# exampleCertifiedShadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:019bbb4208fbcfb724bf98d5e85b6bccc8d4b36d9716f77f97ddd14757747435",
  "kind": "def",
  "lexical_name": "exampleCertifiedShadow",
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
  "slug": "examplecertifiedshadow--ff289474845da396518b611f",
  "source": {
    "blob": "e68e1ba6e6db552c8a8172458ce7397930cc4110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 144,
    "path": "GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff289474845da396518b611f404a6362b9ff907a0d0ca715654a5fe71327f1c2",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:019bbb4208fbcfb724bf98d5e85b6bccc8d4b36d9716f77f97ddd14757747435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleCertifiedShadow : CertifiedFinitePrismaticSpinedShadow where
  state :=
    { label := "toy generated DOM"
      stateHash := 101 }
  stableClass :=
    { label := "toy stable class"
      classHash := 202 }
  descriptor :=
    { label := "toy prismatic descriptor"
      descriptorHash := 303
      spineIsPrismaticComparison := True
      spineIsPrismaticComparisonProof := True.intro }

  semanticBoundaryZero := True
  semanticBoundaryZeroProof := True.intro

  prismaticSpineBoundaryZero := True
  prismaticSpineBoundaryZeroProof := True.intro

  projectedFlow :=
    { finiteCertificate := exampleProjectedFlowCertificate }
  minimumEnergy :=
    { minimumAttained := True
      minimumAttainedProof := True.intro
      minimizersOneClass := True
      minimizersOneClassProof := True.intro
      energyGap := True
      energyGapProof := True.intro }
  cooling :=
    { piecewiseConstantCooling := False
      quasiStaticCooling := False
      scheduleAdjustedDissipation := True
      dissipationProof := Or.inr (Or.inr True.intro) }
  plateau :=
    { entropyPlateau := True
      entropyPlateauProof := True.intro
      freeEnergyPlateau := True
      freeEnergyPlateauProof := True.intro }
  chainMap :=
    { finiteCertificate := exampleChainMapCertificate }
  rankPreservation :=
    { torsionFreeStableSubcomplex := True
      torsionFreeStableSubcomplexProof := True.intro
      rankPreservedAfterTensorReal := True
      rankPreservedAfterTensorRealProof := True.intro
      realHomologicalEquivalence := True
      realHomologicalEquivalenceProof := True.intro }
  backwardRecovery :=
    { finiteCertificate := exampleBackwardRecoveryCertificate }
  torsion :=
    { familyCertificates := exampleTorsionEquivarianceCertificate }
  residue :=
    { allLocalResidueWitnessed := True
      allLocalResidueWitnessedProof := True.intro }
  authorityAudit :=
    { obligationsDischargedOrUnavailable := True
      obligationsProof := True.intro
      finiteSyntaxDoesNotOwnAuthority := True
      finiteSyntaxDoesNotOwnAuthorityProof := True.intro
      finiteShadowsDoNotConstructPrismaticCohomology := True
      finiteShadowsDoNotConstructPrismaticCohomologyProof := True.intro }
  disclaimer :=
    { disclaimer := exampleDisclaimerText
      noPrismaticConstruction := True
      noPrismaticConstructionProof := True.intro
      noComparisonTheorem := True
      noComparisonTheoremProof := True.intro
      noGeneratedDomAuthority := True
      noGeneratedDomAuthorityProof := True.intro
      noCssAuthority := True
      noCssAuthorityProof := True.intro }

  fixedPointSound := True
  fixedPointSoundProof := True.intro

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PrismaticShadowExamples/Variant14cafac5cc26c21b8b8bb8c7c433adc391a76638751e4976629e5b324adb8726.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68e1ba6e6db552c8a8172458ce7397930cc4110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
