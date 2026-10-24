# Verification target: GRWTSK.NumberTheory.Moebius.UniformSquareModulusTwoPointAP

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6be4921ccdbad5fa82182c6c553580b9bba7dbb3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6be4921ccdbad5fa82182c6c553580b9bba7dbb3`.

Source path: `GRWTSK/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceL1`](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformDyadicSquareModulusMertensTwoPointAP](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/uniformdyadicsquaremodulusmertenstwopointap--c5c755b492af1448f446d4f7.md) | 40 | `declaration-track:c5c755b492af1448f446d4f7eb582972b9fd2306eb895182a934a6fd8696b789` |
| 2 | `theorem` | [mertensEndpointCrossCongruenceL1Mass_le_endpoint_mul](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/mertensendpointcrosscongruencel1mass-le-endpoint-mul--833b388e0f1a7b3d70b5ca3a.md) | 50 | `result-track:833b388e0f1a7b3d70b5ca3a149575706981c854e1a604f1f727cd3e5b7bc1b9` |
| 3 | `theorem` | [reciprocalEndpointDrop_mul_endpoint_eq](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/reciprocalendpointdrop-mul-endpoint-eq--7180b0363814c4a8bfcae03d.md) | 73 | `result-track:7180b0363814c4a8bfcae03d767e7f247e08b711b05379f2a061850321bf1843` |
| 4 | `theorem` | [card_dyadicEndpointIco](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/card-dyadicendpointico--06f5edb35fa309b85f0d7088.md) | 84 | `result-track:06f5edb35fa309b85f0d708804171c67e7e4be9a38377f19cc1f62f144918fae` |
| 5 | `theorem` | [reciprocalEndpointDrop_mul_endpoint_le_dyadicLeftInv](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/reciprocalendpointdrop-mul-endpoint-le-dyadicleftinv--8c04bedab37e66d1498e56e9.md) | 92 | `result-track:8c04bedab37e66d1498e56e955602de6dbf599b5a4afa8ad8ea8fa5fe3cd1f25` |
| 6 | `theorem` | [weightedMertensEndpointCrossCongruenceL1Majorant_le_of_uniformFibres](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/weightedmertensendpointcrosscongruencel1majorant-le-of-uniformfibres--7cc08bf4838c294c5ed8ab53.md) | 108 | `result-track:7cc08bf4838c294c5ed8ab5348d652db4ed56401cb3864f438d5e8dd2dd8003d` |
| 7 | `theorem` | [subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_uniformDyadicSquareModulusAP](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/subpolynomialweightedmertensendpointcrosscongruencel1-of-uniformdyadicsq--b500f7ddb337deaa01b96eef.md) | 169 | `result-track:b500f7ddb337deaa01b96eefb38a91cfaad83856392198b9e8752d2b1967a857` |
| 8 | `theorem` | [subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_uniformDyadicSquareModulusAP](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/subpolynomialweightedmertensendpointcongruencecrosscollision-of-uniformd--1d110a5f81430636ef67197d.md) | 191 | `result-track:1d110a5f81430636ef67197deddaa889f798b623541ae6ea64d73665b315774e` |
| 9 | `theorem` | [subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_uniformDyadicSquareModulusAP](../../../../mathematics/NumberTheory/Moebius/UniformSquareModulusTwoPointAP.lean/declarations/subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision-of--fe5adf169a38806422295a6d.md) | 200 | `result-track:fe5adf169a38806422295a6ddb1df6b94a7e55d4bd7f9bb36bf7aae635e86bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
