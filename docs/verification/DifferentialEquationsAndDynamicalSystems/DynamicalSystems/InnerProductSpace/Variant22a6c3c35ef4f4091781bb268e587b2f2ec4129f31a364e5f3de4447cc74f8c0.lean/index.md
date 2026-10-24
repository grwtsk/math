# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.InnerProductSpace.Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccff5045d9b2511827e4a36ab713135714b8a496",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccff5045d9b2511827e4a36ab713135714b8a496`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/tomeasurableequiv--7527ea10c2e13fa31a2a186e.md) | 46 | `declaration-track:7527ea10c2e13fa31a2a186e9e2ff68b83d0743d1a3cc44d69bb59f948428ca5` |
| 2 | `theorem` | [coe_toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/coe-tomeasurableequiv--5d541077532f00d359bd3f45.md) | 48 | `result-track:5d541077532f00d359bd3f457df5bd73c3f3c0c67123e696e384769d8d0df847` |
| 3 | `theorem` | [toMeasurableEquiv_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/tomeasurableequiv-symm--b025b408ad3df7dd1bc1b1d6.md) | 50 | `result-track:b025b408ad3df7dd1bc1b1d6f859c814a1eb308186a83259df5a1983443b1a59` |
| 4 | `lemma` | [coe_symm_toMeasurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/coe-symm-tomeasurableequiv--f10ebfb6118d9a343de6cd12.md) | 52 | `result-track:f10ebfb6118d9a343de6cd12474895ba769cfb801b8a9e05905e59144e5a4e20` |
| 5 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orientation-measure-orthonormalbasis--557ba3fd549b2ab2a7a43aad.md) | 65 | `result-track:557ba3fd549b2ab2a7a43aadc36d11063dea364bb90fad8e60b7fbbfe821e9dc` |
| 6 | `theorem` | [Orientation.measure_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orientation-measure-eq-volume--7174feb07f383d94c6fef1ea.md) | 78 | `result-track:7174feb07f383d94c6fef1ea78f2c074f610e94d3832c48d19cc70deabe9b27c` |
| 7 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-volume-parallelepiped--0665c094d494b44014f77d74.md) | 90 | `result-track:0665c094d494b44014f77d74c3004d6fa8a6b601563effb27a2b1e6f61639954` |
| 8 | `theorem` | [OrthonormalBasis.addHaar_eq_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-addhaar-eq-volume--1ad96c77e23506496bcf5f76.md) | 99 | `result-track:1ad96c77e23506496bcf5f7635605be451c05a8f010dc67b081981d57917f18c` |
| 9 | `def` | [OrthonormalBasis.measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-measurableequiv--7a74f02187e802f0ef3526e1.md) | 108 | `declaration-track:7a74f02187e802f0ef3526e15e4c79a588f2c95412ec74de7cbe8ea076dd7569` |
| 10 | `theorem` | [OrthonormalBasis.measurePreserving_measurableEquiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-measurepreserving-measurableequiv--c43468a0960f675525ae0e0d.md) | 112 | `result-track:c43468a0960f675525ae0e0d3ef195a9b056a36e24990996106a8f4e21669fcc` |
| 11 | `theorem` | [OrthonormalBasis.measurePreserving_repr](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-measurepreserving-repr--cb9da6650bb489a7904d249d.md) | 119 | `result-track:cb9da6650bb489a7904d249d67ccae7b38489a1dfa9197db0cfc7250720d0b52` |
| 12 | `theorem` | [OrthonormalBasis.measurePreserving_repr_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/orthonormalbasis-measurepreserving-repr-symm--37d0f0ab100276da98596763.md) | 122 | `result-track:37d0f0ab100276da98596763255786c276ed0705c978ff8cb162041ba363ebdb` |
| 13 | `theorem` | [EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/euclideanspace-volume-preserving-symm-measurableequiv-tolp--5ed4506e97e1340c7704de41.md) | 132 | `result-track:5ed4506e97e1340c7704de41982de5192912526bff5f4eac4858903fd630f923` |
| 14 | `theorem` | [PiLp.volume_preserving_ofLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/pilp-volume-preserving-oflp--b77cb10b3363ba921bd72b98.md) | 142 | `result-track:b77cb10b3363ba921bd72b989719ae91a948a273ee92156911f81d604a6da152` |
| 15 | `theorem` | [PiLp.volume_preserving_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/pilp-volume-preserving-tolp--483c9e6f7d46b39f69ef9fe6.md) | 147 | `result-track:483c9e6f7d46b39f69ef9fe61ba508573a94c81b019705c50093382d4aa8795e` |
| 16 | `lemma` | [volume_euclideanSpace_eq_dirac](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/volume-euclideanspace-eq-dirac--5635f49bc540aa99e113a459.md) | 150 | `result-track:5635f49bc540aa99e113a459273976432d1c922f027194df5b05405b11f7c775` |
| 17 | `theorem` | [measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/measurepreserving--bfa873b9cf8517060b7f2a5f.md) | 159 | `result-track:bfa873b9cf8517060b7f2a5f39f8250f100f45ba0fb9dffa6e10d8f619215942` |
| 18 | `def` | [volumePreservingSymmMeasurableEquivToLpProdAux](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/volumepreservingsymmmeasurableequivtolpprodaux--0a986edbdcec95d7491cfef8.md) | 178 | `declaration-track:0a986edbdcec95d7491cfef8daebb3d3891f0af7f1f5f3d995a1c07a5a7bbdb1` |
| 19 | `theorem` | [WithLp.volume_preserving_symm_measurableEquiv_toLp_prod](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/withlp-volume-preserving-symm-measurableequiv-tolp-prod--a4b95d176f03b2c894714d63.md) | 197 | `result-track:a4b95d176f03b2c894714d63819a502509c1136396a91ec16292ceedb75060fa` |
| 20 | `theorem` | [WithLp.volume_preserving_ofLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/withlp-volume-preserving-oflp--ae9f2c56efd04227db3e6b65.md) | 214 | `result-track:ae9f2c56efd04227db3e6b654edf843fbf250b3b51776457413a38a043d5f92f` |
| 21 | `theorem` | [WithLp.volume_preserving_toLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/withlp-volume-preserving-tolp--75ce530881681409d9df07ba.md) | 219 | `result-track:75ce530881681409d9df07ba0795b990c136634f317e0d78bddf6faa4c1f5c8a` |
| 22 | `theorem` | [MeasureTheory.volume_eq_of_finrank_eq_one](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/declarations/measuretheory-volume-eq-of-finrank-eq-one--a089bc2f0632c083c331a981.md) | 225 | `result-track:a089bc2f0632c083c331a981b9d39012398a3363b99fa0f0f01eeededd7b4173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
