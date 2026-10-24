# Verification target: GRWTSK.Algebra.LinearAlgebra.SpinGroup.Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0f04e96e14a22c9e8b3b6902f47c51eb82253a6",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0f04e96e14a22c9e8b3b6902f47c51eb82253a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.ConjAct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Star` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Even` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Inversion` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/lipschitzgroup--9f87cb3e5d4bb6cb911e8da5.md) | 66 | `declaration-track:9f87cb3e5d4bb6cb911e8da5fe34dc0ef8f999a88d9098936a576b7d18e91f3a` |
| 2 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-mem-range--649988028a5129d0cdb00868.md) | 72 | `result-track:649988028a5129d0cdb008685a4fddfa09f900094fd1accc411720ce17584afb` |
| 3 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/involute-act-mem-range--22206156c9b2b9bd826e060c.md) | 102 | `result-track:22206156c9b2b9bd826e060c6e680588dcec7ce434a67d4b7edf3f67a423471a` |
| 4 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-range--587fddfc7411cd20cf707e43.md) | 134 | `result-track:587fddfc7411cd20cf707e430815ec76e4b2113ba5afb74bcaad8ac06a128c65` |
| 5 | `theorem` | [coe_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-mem-iff-mem--36148e5970ec5e1cdfe0f79f.md) | 149 | `result-track:36148e5970ec5e1cdfe0f79fbcea4dc572cc0306d8b44bccb5dfb4b73037f4b0` |
| 6 | `def` | [pinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/pingroup--cad3d5eca59869e4ff247682.md) | 160 | `declaration-track:cad3d5eca59869e4ff247682d5ee6962645b7f83613637bce08477a2a5ae9402` |
| 7 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-iff--cdaa98e17b9ff167b813439e.md) | 166 | `result-track:cdaa98e17b9ff167b813439e7752fb82a23c5e383d51020f58ea0a8c0669dbfb` |
| 8 | `theorem` | [mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-lipschitzgroup--0c25c506f1e9c6c0860c0f8f.md) | 172 | `result-track:0c25c506f1e9c6c0860c0f8f11587a60c7518cdc49c87232f4ecdfd65bea7698` |
| 9 | `theorem` | [mem_unitary](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-unitary--c1e22a0b1678a556039c95d3.md) | 176 | `result-track:c1e22a0b1678a556039c95d3d656149501bf741a4cc9d61669d43351ff5fcf64` |
| 10 | `theorem` | [units_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/units-mem-iff--40f36089324de41e1f7ba87c.md) | 180 | `result-track:40f36089324de41e1f7ba87c789fde8c778ccef9f123e6aa6d31168c9a2fe99f` |
| 11 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/units-mem-lipschitzgroup--7da3fd8e91e476cb9d41c2fc.md) | 184 | `result-track:7da3fd8e91e476cb9d41c2fce3fc0b16715f513f4b66b01221c8a303e6fab850` |
| 12 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-mem-range--2b42bfd33c99cf0df446b57f.md) | 189 | `result-track:2b42bfd33c99cf0df446b57f8f61122593e4bf2fbf68274d6afa4f9574cb7495` |
| 13 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/involute-act-mem-range--219246758f0e063c69c0f0cd.md) | 194 | `result-track:219246758f0e063c69c0f0cd62b2939e929a4c3619ac8ffd89ff03968070b8b2` |
| 14 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-range--d9e0b2b6efb12a66563df274.md) | 200 | `result-track:d9e0b2b6efb12a66563df274baf648810f830232b1e7297979babba1dea04588` |
| 15 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mul-self-of-mem--8375ee04e22a9054d54ab7fb.md) | 205 | `result-track:8375ee04e22a9054d54ab7fbc2f04a5ad5d1a373cd0f2e458d5925a72ff38737` |
| 16 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mul-star-self-of-mem--aa9b2bf260eccad0befa86ca.md) | 209 | `result-track:aa9b2bf260eccad0befa86caa2602f8ccde12b660d7de29e910069a5cf657d8b` |
| 17 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mem--3c93a6bcfbee7bc93153044c.md) | 213 | `result-track:3c93a6bcfbee7bc93153044cd8043c523b8c462499f9c54916bf20e187d1ad90` |
| 18 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mem-iff--969cec1844d84c4be9289c8c.md) | 232 | `result-track:969cec1844d84c4be9289c8c7ae721a4cc3844947048e95fcdeefb89262833ae` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--3776ae261872f8549b8592e4.md) | 238 | `declaration-track:3776ae261872f8549b8592e44ce5fa5128d939bcb2c345fe4d9ba49636a5acf9` |
| 20 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-star--ff4b6481ec8466476d235eb6.md) | 242 | `result-track:ff4b6481ec8466476d235eb6801e41496d5d644a109a19e98b73f44ef9ede83e` |
| 21 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-star-mul-self--e36f3c5955fbdd291793bfaf.md) | 245 | `result-track:e36f3c5955fbdd291793bfafe47f91c95fc01bd788d46dfd94d7a8e1f6d7c244` |
| 22 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-mul-star-self--c969169abc1e6e0d25edaaa8.md) | 248 | `result-track:c969169abc1e6e0d25edaaa850f64f5bc3d197164bb21fbb341ddf3a0c90094e` |
| 23 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mul-self--cae8f747f77d9838db4ac095.md) | 252 | `result-track:cae8f747f77d9838db4ac09589eccd619a0cf2509776bfe8c431e33787b9bb52` |
| 24 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mul-star-self--9e4dcf82344f64a9d898dcea.md) | 256 | `result-track:9e4dcf82344f64a9d898dcea82ea282a15aea7ac35d0f4c23ddab3ab3e9cac14` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--d86918d4ef3bc9890d22a28c.md) | 260 | `declaration-track:d86918d4ef3bc9890d22a28c3560c9704a3aa362cb384e0c239b4456573ea4dc` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--9cbb0354e5f219bc940a2174.md) | 264 | `declaration-track:9cbb0354e5f219bc940a2174a081aaec28543b73a92a3cbf6aa7d9434951ab66` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--59d95a4d0f0c3cdab6054068.md) | 268 | `declaration-track:59d95a4d0f0c3cdab60540689af2acc256e04dcc5f135dc206c887dd11bb7def` |
| 28 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-eq-inv--ef788e8d17ccb7651df8f89c.md) | 271 | `result-track:ef788e8d17ccb7651df8f89c19d723b1b0eb695e753c1c7cd8f90f119ef84355` |
| 29 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-eq-inv--31d52d72ae84db6c2c1bde8d.md) | 274 | `result-track:31d52d72ae84db6c2c1bde8dfc9bc7045769b951edc38da49c4e69d4166824aa` |
| 30 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/tounits--cd4077e2de65f7b44470cd86.md) | 279 | `declaration-track:cd4077e2de65f7b44470cd86490091c5a58497072edc945ee3d40cad14ad9b5a` |
| 31 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/tounits-injective--cd16d071963f6713216a3d42.md) | 284 | `result-track:cd16d071963f6713216a3d426314fecd096a6daca63bf52f04e610ac6affa60f` |
| 32 | `def` | [spinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/spingroup--07ace11e1830a6edadc1bb29.md) | 299 | `declaration-track:07ace11e1830a6edadc1bb2971293deb31a6f558423e6ca03e59a990c9407e9a` |
| 33 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-iff--2bd7f0bcdf612e9fc7ea9d60.md) | 305 | `result-track:2bd7f0bcdf612e9fc7ea9d60e657c6eab5b6d53c9d5da3c5a9df3a755f51b1be` |
| 34 | `theorem` | [mem_pin](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-pin--d3c0972f82fec974c51e5d8a.md) | 308 | `result-track:d3c0972f82fec974c51e5d8a09940b63bb9619c77d43190d69905e4834e09251` |
| 35 | `theorem` | [mem_even](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mem-even--5eb2646ce155234297fb7d19.md) | 311 | `result-track:5eb2646ce155234297fb7d1910b5c36eb94194405bac2d781f67fbceed712782` |
| 36 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/units-mem-lipschitzgroup--fb1f26cde070358f42303100.md) | 314 | `result-track:fb1f26cde070358f4230310025b0d1e2211b8053be77faafa8124ff070bf2c53` |
| 37 | `theorem` | [involute_eq](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/involute-eq--f26a3390638fd051cf7f1993.md) | 319 | `result-track:f26a3390638fd051cf7f1993e1cbd8a07bfdb4b28544fb65a2850ce201e6a197` |
| 38 | `theorem` | [units_involute_act_eq_conjAct](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/units-involute-act-eq-conjact--215489137d0e9e38becd2b86.md) | 322 | `result-track:215489137d0e9e38becd2b86b49f77c1279c3dc4a6092c7fbf7e3c4bf2b13493` |
| 39 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-mem-range--bb83095b0f73c77dd0857ebe.md) | 327 | `result-track:bb83095b0f73c77dd0857ebee6bcd81cfa8367597069c0d1d0212a245b15279c` |
| 40 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/involute-act-mem-range--c0aa47659c0df16fc5d7849c.md) | 332 | `result-track:c0aa47659c0df16fc5d7849c917cf776af655200ef12c15252c4da85343c292f` |
| 41 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/conjact-smul-range--5bf5aa1d4e1a00f687bab81a.md) | 338 | `result-track:5bf5aa1d4e1a00f687bab81a5aaefe90128a70681be60950c7c4593fb4cfcb0a` |
| 42 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mul-self-of-mem--55859a899ec6ef5f817f095c.md) | 343 | `result-track:55859a899ec6ef5f817f095ca896c943c985acfa693b2091b28562eaddc9d015` |
| 43 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mul-star-self-of-mem--fb9c6c46cd8dd39f38910b22.md) | 347 | `result-track:fb9c6c46cd8dd39f38910b22d8b8cdb01a05913bb0926c35933626b7de1fc876` |
| 44 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mem--b8346888b416b09c9832e986.md) | 351 | `result-track:b8346888b416b09c9832e986e45230dbe263abe40779572f4bfba4bfcfb81316` |
| 45 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mem-iff--1cc5fc9e4944091b4ddef704.md) | 363 | `result-track:1cc5fc9e4944091b4ddef70400a2b149da0df70f6645ebcef7782f664189c8df` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--058fa8497ef9c02776be399a.md) | 369 | `declaration-track:058fa8497ef9c02776be399a5ddd0dfe2584ce6feb6ef25a6c961995360ea143` |
| 47 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-star--0e92547f72169396eaf4be01.md) | 373 | `result-track:0e92547f72169396eaf4be019030dd41f076f9f02b968a2a5fb8d1b345358a6a` |
| 48 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-star-mul-self--a58a9074369212dafa80153c.md) | 376 | `result-track:a58a9074369212dafa80153cbfa040de50a80b6152d1741a731d71b9c9012ffc` |
| 49 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/coe-mul-star-self--36ae9843f69a7c1bc3f7af17.md) | 379 | `result-track:36ae9843f69a7c1bc3f7af17cf895ac073fb9ada294eb45d179a45d15626dff8` |
| 50 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-mul-self--272a9797de4c23381e9f96f8.md) | 383 | `result-track:272a9797de4c23381e9f96f8586a170330f0a8f0a992924ad210e01e8c9e119f` |
| 51 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/mul-star-self--732b0a5d2f7de02590628944.md) | 387 | `result-track:732b0a5d2f7de025906289444f0f43e328f8c1bdc96420d927fad5c021d2311c` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--3769e6f2bea823de9465f0b2.md) | 391 | `declaration-track:3769e6f2bea823de9465f0b2dc9fd42f763f1cd96422ef10af6b2af9e812ea5d` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--3d5c025a7fb92c1fd0bfe1c3.md) | 395 | `declaration-track:3d5c025a7fb92c1fd0bfe1c39afacf6f7d9d8c526babc1f8e133ca0a195462b5` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/instance--3a52ef95c6517f5578c0eab4.md) | 399 | `declaration-track:3a52ef95c6517f5578c0eab483f2664980e4ba399df0abc9aaa1afba98838939` |
| 55 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-eq-inv--b67ba9b6339a22baa2ae6dc7.md) | 402 | `result-track:b67ba9b6339a22baa2ae6dc7efeaa6ba84c05df418a8f4a43638eafebba93c6b` |
| 56 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/star-eq-inv--cc6495a67a0a7341d1bc59c2.md) | 405 | `result-track:cc6495a67a0a7341d1bc59c24592323e24829fc6f7d16cc7c9c769131fd5ee81` |
| 57 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/tounits--610c1e5fab44389b2f3ce2dd.md) | 410 | `declaration-track:610c1e5fab44389b2f3ce2ddfbca8a07d2fce13c6ced7b09d38e36bf985db2bf` |
| 58 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant46117465362050be4aad5784ec4f6927ba2ad52f1de7f6adf9855580ef17b2e6.lean/declarations/tounits-injective--b06f0759068a2eda0e5fff71.md) | 415 | `result-track:b06f0759068a2eda0e5fff7128763aff910ecb73912667e8c8bd7568e3e68bc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
