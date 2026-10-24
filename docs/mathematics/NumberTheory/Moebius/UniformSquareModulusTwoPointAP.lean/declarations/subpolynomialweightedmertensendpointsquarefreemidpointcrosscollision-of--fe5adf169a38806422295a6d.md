# subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e6f6fc-ed00-bcf4-f884-9cdf260c9663",
  "kind": "theorem",
  "lexical_name": "subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP",
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
  "slug": "subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision-of--fe5adf169a38806422295a6d",
  "source": {
    "blob": "6be4921ccdbad5fa82182c6c553580b9bba7dbb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 200,
    "path": "GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe5adf169a38806422295a6ddb1df6b94a7e55d4bd7f9bb36bf7aae635e86bfb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e6f6fc-ed00-bcf4-f884-9cdf260c9663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP
    (hAP : UniformDyadicSquareModulusMertensTwoPointAP) :
    SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision :=
  subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1
    (subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
      hAP)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.reciprocalEndpointDrop_mul_endpoint_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6be4921ccdbad5fa82182c6c553580b9bba7dbb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
