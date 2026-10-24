# unitBooleanLiftCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dc58304fe056ec789d4783500e2ae44e8e6177967ab388154fd508d569780c1",
  "kind": "def",
  "lexical_name": "unitBooleanLiftCertificate",
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
  "slug": "unitbooleanliftcertificate--5e9fdf3d489ab4d0bcacdf3c",
  "source": {
    "blob": "57efc6e9dea914e8922da405b7195cf236e56598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e9fdf3d489ab4d0bcacdf3c4c86574a7f59238c5ff25c5f4819126d8720e282",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dc58304fe056ec789d4783500e2ae44e8e6177967ab388154fd508d569780c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitBooleanLiftCertificate (p : Nat) :
    EdgeRelaxation.LiftCertificate (unitDeltaRing p) where
  booleanKernel := Surface.Boolean.Cube.EdgeRelaxation.laplacianSmoothingKernel
  deltaRelaxation := unitDeltaEdgeRelaxation p
  preservesBooleanMass :=
    Surface.Boolean.Cube.EdgeRelaxation.total
        Surface.Boolean.Cube.EdgeRelaxation.relaxedPoleVector =
      Surface.Boolean.Cube.EdgeRelaxation.EpsilonDensity.one
  preservesBooleanMassCertified :=
    Surface.Boolean.Cube.EdgeRelaxation.relaxedPole_totalMass
  compatibleWithDelta := True
  compatibleWithDeltaCertified := trivial
  compatibleWithFrobenius := True
  compatibleWithFrobeniusCertified := trivial
  noSpectralRigidityClaim := True
  noSpectralRigidityClaimCertified := trivial
  boundary := [
    "Finite Boolean cube edge relaxation is recorded as combinatorial input.",
    "The δ-ring relaxation is supplied separately by DeltaEdgeRelaxation.",
    "This lift certificate does not prove Hilbert self-adjointness, spectral rigidity, or prismatic comparison."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57efc6e9dea914e8922da405b7195cf236e56598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
