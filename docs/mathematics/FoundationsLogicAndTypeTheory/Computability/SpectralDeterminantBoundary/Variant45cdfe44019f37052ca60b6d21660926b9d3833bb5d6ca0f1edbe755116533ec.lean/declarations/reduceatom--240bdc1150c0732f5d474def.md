# reduceAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e82da41a9cebe6b3d3581826ae37094547fd7e3207f991fbc8a744f78055c10f",
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
  "slug": "reduceatom--240bdc1150c0732f5d474def",
  "source": {
    "blob": "1fc797df8c023df0dad63dfac848fd2c5854ba90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:240bdc1150c0732f5d474def3cbbd23586f3a13f30641038f04c121a9333a9f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e82da41a9cebe6b3d3581826ae37094547fd7e3207f991fbc8a744f78055c10f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–566.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc797df8c023df0dad63dfac848fd2c5854ba90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
