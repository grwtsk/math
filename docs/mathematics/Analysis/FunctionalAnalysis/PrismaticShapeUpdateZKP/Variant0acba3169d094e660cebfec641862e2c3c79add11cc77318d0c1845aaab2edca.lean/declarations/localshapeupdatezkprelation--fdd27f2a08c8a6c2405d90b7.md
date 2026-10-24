# LocalShapeUpdateZKPRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1565b22699171109c87769fc75b75854d7342a9dd52ab84236feac9099e04b7e",
  "kind": "structure",
  "lexical_name": "LocalShapeUpdateZKPRelation",
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
  "slug": "localshapeupdatezkprelation--fdd27f2a08c8a6c2405d90b7",
  "source": {
    "blob": "6396686b643722db1295f2e7b251fdd0e0016d1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 448,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdd27f2a08c8a6c2405d90b7faa5900920b51f64689453b7fad8fd5b5febb215",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1565b22699171109c87769fc75b75854d7342a9dd52ab84236feac9099e04b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalShapeUpdateZKPRelation
    {k : Nat}
    (pub : ShapeUpdatePublicStatement)
    (witness : ShapeUpdatePrivateWitness k) : Prop where
  publicPriorOK :
    witness.priorMatchesPublic
  publicNextOK :
    witness.nextMatchesPublic
  publicValuationOK :
    witness.valuationMatchesPublic
  publicMobiusOK :
    witness.mobiusMatchesPublic
  publicTreeOK :
    witness.treeMatchesPublic
  publicMatrixOK :
    witness.matrixMatchesPublic
  publicProjectionOK :
    witness.projectionMatchesPublic
  publicDyadicScaleOK :
    witness.dyadicScaleMatchesPublic
  publicDyadicErrorOK :
    witness.dyadicErrorMatchesPublic
  publicDeterminantOK :
    witness.determinantMatchesPublic
  publicPrismaticOK :
    witness.prismaticMatchesPublic
  publicSpectralTraceOK :
    witness.spectralTraceMatchesPublic
  publicTorsionOK :
    witness.torsionMatchesPublic
  boundedValuationOK :
    ∀ i : Fin k,
      witness.input.mobius.box.value i ≤ witness.input.mobius.box.bound i
  supportOK :
    witness.input.mobius.squareFreeSupport =
      SpectralDeterminantBoundary.ValuationBox.support
        witness.input.mobius.box.value
  primePowerFlagOK :
    witness.input.mobius.hasPrimePowerDependence =
      SpectralDeterminantBoundary.ValuationBox.hasRepeatedPrimePower
        witness.input.mobius.box.value
  mobiusOK :
    witness.input.mobius.mobiusWeight =
      valuationMobius
        witness.input.mobius.box.value
  projectionOK :
    witness.input.projection.finiteProjectionSound
  dyadicStabilityOK :
    witness.input.dyadicStability.totalErrorBoundSound
  determinantOK :
    witness.input.determinantAuthority.regularizationSound
  prismaticOK :
    witness.input.prismaticAuthority.prismaticComparisonSound
  spectralTraceRoutedExternally :
    witness.input.spectralAuthority.spectralTraceSound
  torsionOK :
    witness.input.torsionAuthority.witnessSound
  torsionNotFromFieldHomology :
    witness.input.torsionAuthority.notInferredFromFieldHomology
  projectionFlagOK :
    pub.acceptedProjectionCertificateFlag = true →
      witness.input.projection.finiteProjectionSound
  prismaticFlagOK :
    pub.acceptedPrismaticCertificateFlag = true →
      witness.input.prismaticAuthority.prismaticComparisonSound
  spectralFlagOK :
    pub.acceptedSpectralCertificateFlag = true →
      witness.input.spectralAuthority.spectralTraceSound
  determinantFlagOK :
    pub.acceptedDeterminantCertificateFlag = true →
      witness.input.determinantAuthority.regularizationSound
  torsionFlagOK :
    pub.acceptedTorsionWitnessFlag = true →
      witness.input.torsionAuthority.witnessSound
  noRawForwardCycleFlatness :
    ¬ AssumesExactRawForwardCycleFlatness witness.input.dyadicStability
  noKernelConnesTraceInternalization :
    ¬ KernelInternalizesGlobalConnesTrace witness.input.spectralAuthority

/-! ## Main plumbing soundness theorems -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant0acba3169d094e660cebfec641862e2c3c79add11cc77318d0c1845aaab2edca.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6396686b643722db1295f2e7b251fdd0e0016d1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
