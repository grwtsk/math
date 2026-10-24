# Verification target: GRWTSK.NumberTheory.Moebius.SignedResidueConvolutionShiftAffine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7236c21cf397007ff1cdb40726e575081a87ce71",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7236c21cf397007ff1cdb40726e575081a87ce71`.

Source path: `GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParitySignedResidueConvolution`](../../../../mathematics/NumberTheory/Moebius/ParitySignedResidueConvolution.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEndpointShiftSet](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/positiveendpointshiftset--210c6adfbf2520a5471ca505.md) | 48 | `declaration-track:210c6adfbf2520a5471ca5051278a9201f3c7c234a230889dabf5b988f694cab` |
| 2 | `def` | [parityAffineShiftBaseSet](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/parityaffineshiftbaseset--cf0bb3bc15d9a90b0a35f961.md) | 56 | `declaration-track:cf0bb3bc15d9a90b0a35f961e48d34030d15f34ca8abe717103aaedc43e817b9` |
| 3 | `def` | [endpointParityFixedShiftPairSet](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/endpointparityfixedshiftpairset--7135e8032574a45b2a730bc0.md) | 61 | `declaration-track:7135e8032574a45b2a730bc0008c7e274a62ea130d9d4871a712a4d0cfc0bbeb` |
| 4 | `theorem` | [endpointParityStrictPair_shift_spec](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/endpointparitystrictpair-shift-spec--dd11e4526bf630e70a558705.md) | 68 | `result-track:dd11e4526bf630e70a558705be9a55d9e26856bbc03748637fbd035e00186205` |
| 5 | `theorem` | [endpointParityStrictPair_shift_mem](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/endpointparitystrictpair-shift-mem--b4f79da2c07782628586b3c1.md) | 82 | `result-track:b4f79da2c07782628586b3c16230ec08c59c707e909d27d2f5bd7ea9ea316210` |
| 6 | `theorem` | [half_add_two_mul](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/half-add-two-mul--5ce39f61a43eca468dd292a7.md) | 97 | `result-track:5ce39f61a43eca468dd292a773c5df310931a976e9d44070fa9d6ce5d0f3210b` |
| 7 | `theorem` | [parityResidueCoordinate_add_two_shift](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/parityresiduecoordinate-add-two-shift--c577f6bbe7afc197ec23f95e.md) | 103 | `result-track:c577f6bbe7afc197ec23f95eaf1423c493e8aaa472d47199be68eac73bf1bcd8` |
| 8 | `def` | [parityAffineShiftResidueCoordinate](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/parityaffineshiftresiduecoordinate--562c988d357dee446f3b366b.md) | 114 | `declaration-track:562c988d357dee446f3b366ba3038faabb0ffa62f9e2c4f71363e9116bbb28ea` |
| 9 | `theorem` | [pairResidueCoordinate_eq_affineShift](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/pairresiduecoordinate-eq-affineshift--9edfb3e04aea2b0b60dcbd34.md) | 122 | `result-track:9edfb3e04aea2b0b60dcbd34438cc0c9b799d7f9f45b2c5d4cc5feb295497ef6` |
| 10 | `def` | [parityPairShiftResidueCorrelation](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritypairshiftresiduecorrelation--9de0bae3d5649c20252b75d1.md) | 132 | `declaration-track:9de0bae3d5649c20252b75d17ce04f2f74dea55d264d299f87a1078060fb5cb4` |
| 11 | `def` | [parityAffineShiftResidueCorrelation](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/parityaffineshiftresiduecorrelation--66cded38a3667311e83e641b.md) | 142 | `declaration-track:66cded38a3667311e83e641bea3af34fac2cb7daf5f764a63df76c15aa2eb43c` |
| 12 | `theorem` | [parityPairShiftResidueCorrelation_eq_affine](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritypairshiftresiduecorrelation-eq-affine--fb5ddf832a421389f33ea8d1.md) | 153 | `result-track:fb5ddf832a421389f33ea8d10d6187e587d0a3497c93dc665f9328e6cc28d668` |
| 13 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_pairShifts](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritysignedresidueconvolutionbucket-eq-sum-pairshifts--09a25a0a35ff88f48ab8641c.md) | 218 | `result-track:09a25a0a35ff88f48ab8641cb4939eed0e24e5cf13c1cc558fda90af439a0f16` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_affineShifts](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritysignedresidueconvolutionbucket-eq-sum-affineshifts--79763f46719adfd3a52eec43.md) | 246 | `result-track:79763f46719adfd3a52eec4306e00754ce848c94c30b07e4bf7f47ec9f6a51ca` |
| 15 | `def` | [parityGrowingShiftAffineChowlaTwist](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlatwist--6b0a5ec8ff1ca024209fce81.md) | 259 | `declaration-track:6b0a5ec8ff1ca024209fce812d91cd87dd1771a2a43f46098f1b22a84656e4f6` |
| 16 | `theorem` | [sum_shiftResidueCorrelation_mul_char](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/sum-shiftresiduecorrelation-mul-char--84210c40bf33f278383fd57c.md) | 270 | `result-track:84210c40bf33f278383fd57cdc1bd81c0f3c193122b3a504d20c9ef6f79c955f` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritysignedresidueconvolutionfourier-eq-sum-affinechowlatwists--e2acde4898c881a0eb143058.md) | 291 | `result-track:e2acde4898c881a0eb143058c267c579cad02c46625bccb01355d6bb1c41922f` |
| 18 | `def` | [parityGrowingShiftAffineChowlaFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlafrequencymajorant--c2391c98998b406009fbe4e8.md) | 306 | `declaration-track:c2391c98998b406009fbe4e80b9ff13c60138927660481f13ab397372890fe9d` |
| 19 | `theorem` | [parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlafrequencymajorant-eq-signed--e3f3c561982e81723b9451c5.md) | 317 | `result-track:e3f3c561982e81723b9451c5744e0608701621ead6aa44d18bf2e323d94e2c24` |
| 20 | `def` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant--6672244f86dd4529b79d1fd4.md) | 329 | `declaration-track:6672244f86dd4529b79d1fd4fc9204216d0aba87041a96965068e5bd2449b0b0` |
| 21 | `theorem` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant-eq-signed--53df7475b1718cb74858849c.md) | 336 | `result-track:53df7475b1718cb74858849c8c2ee6859024b553166a2feb8393d7da10fc6f20` |
| 22 | `def` | [parityGrowingShiftAffineChowlaEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlaendpointmajorant--23d6a2d9c0ce8ad823ab7304.md) | 349 | `declaration-track:23d6a2d9c0ce8ad823ab7304840b486032c893b6853f37e497b272a58611af03` |
| 23 | `theorem` | [parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/paritygrowingshiftaffinechowlaendpointmajorant-eq-signed--b0244aa56dec6f1a6131414f.md) | 358 | `result-track:b0244aa56dec6f1a6131414fa69cfe92a1b46b078a3209161402ac414b80f9ff` |
| 24 | `def` | [DyadicNaturalScaleGrowingShiftAffineChowlaBudget](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget--65e21536e370779dacadb5a4.md) | 375 | `declaration-track:65e21536e370779dacadb5a42aceea047f9be04a12ccca18267d9e70df5fe81e` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget-iff-signedresidueconvol--407a96ea9c6dda2ba146fa35.md) | 385 | `result-track:407a96ea9c6dda2ba146fa35e2029b4cadb567ea48813b8b4a90396b5492bd88` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla](../../../../mathematics/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftaffinechowl--c391c106ed331c44680bb7b5.md) | 404 | `result-track:c391c106ed331c44680bb7b53a15361ec26f33d4239a8af9b6d190b680e533ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
