# reduceAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:368c59676805aba0fb448b2943651b3a32e5a8c8c01a209ee00a0867766438ce",
  "kind": "def",
  "lexical_name": "reduceAtom",
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
  "slug": "reduceatom--271a765eb2a1741c13c2ae2f",
  "source": {
    "blob": "1371b55261c3cfac087f917bf0fec207320963f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 495,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:271a765eb2a1741c13c2ae2fcb76eb1f62c51641cd45d56eb5c8d416bbd0dd56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:368c59676805aba0fb448b2943651b3a32e5a8c8c01a209ee00a0867766438ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceAtom {k : Nat} : SpectralAtom k → BoundaryReport
  | .squareFreeSupport S =>
      { BoundaryReport.identity with
        finiteMobiusWeight := squareFreeMobius S }
  | .valuation v =>
      { BoundaryReport.identity with
        finiteMobiusWeight := valuationMobius v
        sawPrimePower := ValuationBox.hasRepeatedPrimePower v
        squareFreeReductionComplete :=
          !ValuationBox.hasRepeatedPrimePower v }
  | .spectralBoundary _ =>
      { BoundaryReport.identity with
        needsAnalyticCertificate := true }
  | .certifiedSpectralDeterminant C =>
      { BoundaryReport.identity with
        finiteMobiusWeight := C.determinantValue }
  | .prismaticBoundary evidence =>
      match reducePrismaticEvidence evidence with
      | .notRequested =>
          BoundaryReport.identity
      | .certificateRequired =>
          { BoundaryReport.identity with
            needsPrismaticCertificate := true }
      | .certificateAccepted =>
          { BoundaryReport.identity with
            acceptedPrismaticCertificate := true }
  | .prismaticUpdate W =>
      { BoundaryReport.identity with
        needsPrismaticCertificate :=
          !shapeUpdateWitnessPublicShadowCompatible W
        acceptedPrismaticCertificate :=
          shapeUpdateWitnessPublicShadowCompatible W }
  | .mobiusBoundary report =>
      report
  | .analyticPrimeBridge data =>
      { BoundaryReport.identity with
        finiteMobiusWeight := data.squareFreeMobiusWeight
        relativeDeterminantCoeffs := data.relativeDeterminantCoeffs
        valuationSupport := data.valuationSupport
        sawPrimePower := data.hasPrimePowerDependence
        squareFreeReductionComplete := !data.hasPrimePowerDependence
        needsAnalyticCertificate := !data.hasSpectralCertificate
        needsPrismaticCertificate := !data.hasPrismaticCertificate
        needsTorsionWitness := data.needsTorsionWitness
        acceptedTorsionWitness := data.acceptedZKPWitness }
  | .torsion evidence =>
      match reduceTorsionEvidence evidence with
      | .notRequested =>
          BoundaryReport.identity
      | .witnessRequired =>
          { BoundaryReport.identity with
            needsTorsionWitness := true }
      | .witnessVerified =>
          { BoundaryReport.identity with
            acceptedTorsionWitness := true }

/--
Reduce a formal spectral-determinant product.

This is the computational boundary map:
finite square-free/valuation data is reduced;
analytic determinant claims and torsion claims are reported as boundaries unless
certificates or witnesses are present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1371b55261c3cfac087f917bf0fec207320963f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
