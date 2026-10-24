# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "960080b339418e57e8c04eade3bbb478d0af4810",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `960080b339418e57e8c04eade3bbb478d0af4810`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/measurepreserving--326dea47b43090161312c8ad.md) | 42 | `declaration-track:326dea47b43090161312c8adffd3f10ccabee2f86f0853013350c94137b0e98c` |
| 2 | `theorem` | [_root_.Measurable.measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/root-measurable-measurepreserving--56f54f72db9620cebf5f0d5b.md) | 50 | `result-track:56f54f72db9620cebf5f0d5b399b0ab1947892700e98967245bd882760543975` |
| 3 | `theorem` | [id](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/id--b71e4c116bb049e5b32b46d7.md) | 57 | `result-track:b71e4c116bb049e5b32b46d7f7d19758d5740f45e7387bccf8159dde17c2c427` |
| 4 | `theorem` | [aemeasurable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/aemeasurable--3f4f3b5faee3786d98274ac8.md) | 61 | `result-track:3f4f3b5faee3786d98274ac8845676cce28d04a1c5613d8ad277df088d4e668c` |
| 5 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/symm--c4de0ec2161f67ca6644c62a.md) | 65 | `result-track:c4de0ec2161f67ca6644c62a6fc1336420d15b07d92c45ab760c6b5abf212ad3` |
| 6 | `theorem` | [restrict_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/restrict-preimage--07fe622ab0522ea694e23a8d.md) | 71 | `result-track:07fe622ab0522ea694e23a8d9aeacafc05f949a731adeb707ffb23928df3be3d` |
| 7 | `theorem` | [restrict_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/restrict-preimage-emb--bee26d5c22cd7faf486dd393.md) | 76 | `result-track:bee26d5c22cd7faf486dd39345e9ad7287094b2fac953ae6aad93a329d0d74eb` |
| 8 | `theorem` | [restrict_image_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/restrict-image-emb--87e1cecd7af1390d5669b664.md) | 82 | `result-track:87e1cecd7af1390d5669b6642fd1221323855a0595a8caf99af831a7fd7c67b1` |
| 9 | `theorem` | [aemeasurable_comp_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/aemeasurable-comp-iff--7043019adc4e886fa06a0fbf.md) | 87 | `result-track:7043019adc4e886fa06a0fbfa6072ccab05ff485e5607dd841c8b1392bee009a` |
| 10 | `theorem` | [quasiMeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/quasimeasurepreserving--8dab05bf4e70d9f47c62a889.md) | 92 | `result-track:8dab05bf4e70d9f47c62a8898dadd19586942ec84f8110e0e216af1771886239` |
| 11 | `theorem` | [comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/comp--d9e629e08d39c0b934707fba.md) | 97 | `result-track:d9e629e08d39c0b934707fba833079f27dc92f312e4a2938e7016d90b54232a3` |
| 12 | `theorem` | [comp_left_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/comp-left-iff--99773eab618dd34cc9196265.md) | 102 | `result-track:99773eab618dd34cc9196265c84f0fddd4e22906bbd5c4a2f92b156cd8ce7fc0` |
| 13 | `theorem` | [comp_right_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/comp-right-iff--4c5f9573cb51cf947d6629d6.md) | 109 | `result-track:4c5f9573cb51cf947d6629d6151acf018179ee9f42875f65bc3c4ea8bd3662ae` |
| 14 | `theorem` | [sigmaFinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/sigmafinite--8917a6468d87f321fc084941.md) | 116 | `result-track:8917a6468d87f321fc084941456740453f8e4589faa327fac295c05e91acb626` |
| 15 | `theorem` | [measure_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/measure-preimage--c1ab206661f3a6f91f6514dd.md) | 121 | `result-track:c1ab206661f3a6f91f6514dd84a8eed12ae74855f90ed22d25e19ecf217456ae` |
| 16 | `theorem` | [measure_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/measure-preimage-emb--766788ea541643bc36137234.md) | 125 | `result-track:766788ea541643bc361372347af2eeeef320b2f35149bd835a60a1a6fabe73f6` |
| 17 | `theorem` | [iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/iterate--21f8d6640755164da3291edd.md) | 130 | `result-track:21f8d6640755164da3291edd252b914ccdb8afbbae11c787e95f0a2452a66d4a` |
| 18 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/measure-symmdiff-preimage-iterate-le--24464aa268f84cf4d1fc079f.md) | 138 | `result-track:24464aa268f84cf4d1fc079fc55ef6dcd9165aba659998f3bcaa30fd5d9e3b7c` |
| 19 | `theorem` | [exists_mem_image_mem_of_volume_lt_mul_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/exists-mem-image-mem-of-volume-lt-mul-volume--b865959212e9e4f2d50072d0.md) | 149 | `result-track:b865959212e9e4f2d50072d027cb30ba624e719160d008a0e9aaea8ca6ee4173` |
| 20 | `theorem` | [exists_mem_image_mem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/exists-mem-image-mem--2ab9d97bea28cdb18f836b4f.md) | 169 | `result-track:2ab9d97bea28cdb18f836b4f14d3843c38e313a7daf2ff079d8a9e2d2326f522` |
| 21 | `theorem` | [measurePreserving_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.lean/declarations/measurepreserving-symm--6f02a7d3e930a5ba088c0a12.md) | 180 | `result-track:6f02a7d3e930a5ba088c0a12e202ab96a40ca6d439edd89964a0dbade2518771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
