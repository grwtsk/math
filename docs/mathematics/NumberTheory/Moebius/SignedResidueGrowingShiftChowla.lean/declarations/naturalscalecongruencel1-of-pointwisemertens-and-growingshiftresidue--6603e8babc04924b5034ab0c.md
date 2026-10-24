# naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a949193-5693-6648-8123-c71e5280b031",
  "kind": "theorem",
  "lexical_name": "naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue",
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
  "slug": "naturalscalecongruencel1-of-pointwisemertens-and-growingshiftresidue--6603e8babc04924b5034ab0c",
  "source": {
    "blob": "09313398bceac03b13fc67b9def98561da23ea41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 444,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6603e8babc04924b5034ab0c08caf12e9b0589fd22bc778a1fbc0d7352e5dfbf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a949193-5693-6648-8123-c71e5280b031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hShift : DyadicNaturalScaleGrowingShiftResidueFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution
    hPoint
    (dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution.mp
      hShift)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionFourier_eq_sum_shiftFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09313398bceac03b13fc67b9def98561da23ea41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
