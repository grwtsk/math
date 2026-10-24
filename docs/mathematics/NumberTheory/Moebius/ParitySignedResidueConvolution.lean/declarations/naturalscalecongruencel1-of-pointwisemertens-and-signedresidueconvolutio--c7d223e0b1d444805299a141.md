# naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fb0fb57-6d94-e3bc-3713-6af87dff426f",
  "kind": "theorem",
  "lexical_name": "naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution",
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
  "slug": "naturalscalecongruencel1-of-pointwisemertens-and-signedresidueconvolutio--c7d223e0b1d444805299a141",
  "source": {
    "blob": "8f56b38828b56c175bda30b140ad74d6a9f4e29a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7d223e0b1d444805299a141b70122f374eda48ac162b91397fb36b617faec3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb0fb57-6d94-e3bc-3713-6af87dff426f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hSigned : DyadicNaturalScaleSignedResidueConvolutionBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    hPoint
    (dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.mp
      hSigned)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionFourier_eq_square_sub_diagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedResidueConvolutionCancellationRepair
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParitySignedResidueConvolution.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f56b38828b56c175bda30b140ad74d6a9f4e29a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
