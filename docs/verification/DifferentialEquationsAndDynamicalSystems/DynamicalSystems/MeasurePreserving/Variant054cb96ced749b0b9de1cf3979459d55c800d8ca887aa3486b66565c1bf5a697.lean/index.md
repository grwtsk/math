# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d11834edd029a5eefa26c99e4f3f94de6fdfda99",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d11834edd029a5eefa26c99e4f3f94de6fdfda99`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/measurepreserving--d2010d222a3f77412333b2ee.md) | 50 | `declaration-track:d2010d222a3f77412333b2eea22730cac872b06d3a8a0a99d66cf429ae54026e` |
| 2 | `theorem` | [_root_.GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant54f139e78e74bfc7a62c8b1089b25a67eb3339721bf8629aea1ff4917775c285.Measurable.measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/root-grwtsk-differentialequationsanddynamicalsystems-dynamicalsystems-me--d04e27233fa79b0206959bb1.md) | 58 | `result-track:d04e27233fa79b0206959bb1b2219590b10e88c681a0c22b766af591acc17e92` |
| 3 | `theorem` | [id](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/id--85e2d4df411af5b3d79038e6.md) | 65 | `result-track:85e2d4df411af5b3d79038e6e17a5ea51cd81fd33524fb91287dffc5564384d8` |
| 4 | `theorem` | [aemeasurable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/aemeasurable--d58880b289b84dc8feea0954.md) | 69 | `result-track:d58880b289b84dc8feea0954973a193969c4f9c9bb49b0619af7c889ccbf8bf3` |
| 5 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/symm--a9abd71be90af7b8ed58b81b.md) | 73 | `result-track:a9abd71be90af7b8ed58b81bb56af0e16d250fd6122fc752ce1ba0db709b0dcb` |
| 6 | `theorem` | [restrict_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/restrict-preimage--720bc68d9a3f4d73b645aad8.md) | 79 | `result-track:720bc68d9a3f4d73b645aad8c5153871272f4e2ae7306427da41c6de7fccd3bd` |
| 7 | `theorem` | [restrict_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/restrict-preimage-emb--2c6220ee95d01c489f3daf0e.md) | 84 | `result-track:2c6220ee95d01c489f3daf0eee5c58d5855a75f09a3aa2808ba51912d0c04d8e` |
| 8 | `theorem` | [restrict_image_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/restrict-image-emb--4e1f5a8eced3799e1825bb4f.md) | 90 | `result-track:4e1f5a8eced3799e1825bb4f16a9d241a5eb4189d3a0987bfbbd3430d1bdda28` |
| 9 | `theorem` | [aemeasurable_comp_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/aemeasurable-comp-iff--742391820e61118397ead881.md) | 95 | `result-track:742391820e61118397ead88103250e6bd5471050d4c29f09d90b864f401670da` |
| 10 | `theorem` | [quasiMeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/quasimeasurepreserving--fb097ecc039a6146fb594ce0.md) | 100 | `result-track:fb097ecc039a6146fb594ce002ed0286f906a3b8d3040285c9bab4d87464d6ad` |
| 11 | `theorem` | [comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/comp--e0e6db58528821aee5f73c7e.md) | 105 | `result-track:e0e6db58528821aee5f73c7e1c6371aa8a942512e051ddf14262cb1c015e7feb` |
| 12 | `theorem` | [comp_left_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/comp-left-iff--47689678fd6bb75672cea1e5.md) | 110 | `result-track:47689678fd6bb75672cea1e5dcb73840643a0d4575df828483c8ca4cc3e1f6ae` |
| 13 | `theorem` | [comp_right_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/comp-right-iff--492fd3cff770f53a3ca6401f.md) | 117 | `result-track:492fd3cff770f53a3ca6401fd1bc98f8b542c3b4f5a293b4b2aaa12a41f47982` |
| 14 | `theorem` | [sigmaFinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/sigmafinite--4c78d6f6710838b65ef72369.md) | 124 | `result-track:4c78d6f6710838b65ef72369cd3b9c0eee0f5924413a39ec378ca80ea9f2b08c` |
| 15 | `theorem` | [measure_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/measure-preimage--8c04434a32f181f69190bdfa.md) | 129 | `result-track:8c04434a32f181f69190bdfa4fc6c68fd8a4c75deadfbeb81fd1239dfde44dde` |
| 16 | `theorem` | [measure_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/measure-preimage-emb--7dadb31dfe81011fd441e192.md) | 133 | `result-track:7dadb31dfe81011fd441e192b24a5164c3001b23f00ce1c05c97f0b86110ff38` |
| 17 | `theorem` | [iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/iterate--ac10839b5b793f927e0b8233.md) | 138 | `result-track:ac10839b5b793f927e0b8233a586a523158ed1cd7aaa39466c904ea0d81e06d3` |
| 18 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/measure-symmdiff-preimage-iterate-le--4d9b0d5a7a56b115dab5c9d7.md) | 146 | `result-track:4d9b0d5a7a56b115dab5c9d73b6552f77e872d052d2e1b54cc3709c11fc5a43b` |
| 19 | `theorem` | [exists_mem_image_mem_of_volume_lt_mul_volume](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/exists-mem-image-mem-of-volume-lt-mul-volume--c143c0d5a9ca64a559297857.md) | 157 | `result-track:c143c0d5a9ca64a559297857e562cf1e5589f6078861d031a17746e5062b50ab` |
| 20 | `theorem` | [exists_mem_image_mem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/exists-mem-image-mem--b24ab06baa3b18cefa79a571.md) | 177 | `result-track:b24ab06baa3b18cefa79a571f578578aaa1765035025a5515755f58860599351` |
| 21 | `theorem` | [measurePreserving_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant054cb96ced749b0b9de1cf3979459d55c800d8ca887aa3486b66565c1bf5a697.lean/declarations/measurepreserving-symm--0b18f3d56fcb6c421b388f10.md) | 188 | `result-track:0b18f3d56fcb6c421b388f102ca9d7f509a98d54074b5f91edbdfdc075df7a15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
