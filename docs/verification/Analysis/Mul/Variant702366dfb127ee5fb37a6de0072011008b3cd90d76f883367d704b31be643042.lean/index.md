# Verification target: GRWTSK.Analysis.Mul.Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f47ef7384bdfd6b983ec65cfa08dc854474f45f",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/index.md) · [Full source](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f47ef7384bdfd6b983ec65cfa08dc854474f45f`.

Source path: `GRWTSK/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/mul--4859cffb097a3abfcfd7cde2.md) | 40 | `declaration-track:4859cffb097a3abfcfd7cde2e2bf2ac9ddeb62f77a2231a942994070a75852dc` |
| 2 | `theorem` | [mul_apply'](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/mul-apply--fa4d3948d8792769f7b480bf.md) | 44 | `result-track:fa4d3948d8792769f7b480bf000994a51a958a48066d4e813dd489ecea74450c` |
| 3 | `theorem` | [opNorm_mul_apply_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mul-apply-le--2c9e290b53e1d266bd3cce5d.md) | 48 | `result-track:2c9e290b53e1d266bd3cce5dada94112ba13cd6c104d08bd82dd61b2b5b44935` |
| 4 | `theorem` | [opNorm_mul_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mul-le--cd607ed0bda897951727419c.md) | 51 | `result-track:cd607ed0bda897951727419c5baf41a4c49b20aaa8540703111b67ee4a2ece67` |
| 5 | `def` | [_root_.NonUnitalAlgHom.Lmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/root-nonunitalalghom-lmul--90ea1b6b7690ca9cb72f7c8b.md) | 62 | `declaration-track:90ea1b6b7690ca9cb72f7c8b28feb14d13b947c34f9fe2469953bbceff5ea378` |
| 6 | `theorem` | [_root_.NonUnitalAlgHom.coe_Lmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/root-nonunitalalghom-coe-lmul--43660f8e71b21e1df97138ba.md) | 69 | `result-track:43660f8e71b21e1df97138ba17bf8e382673b6ea0dbfeda84d042734d286e38d` |
| 7 | `def` | [mulLeftRight](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/mulleftright--8bea18c808dd5112a0a53600.md) | 75 | `declaration-track:8bea18c808dd5112a0a53600955a2c8c3feffe423d2fdb6faba13a17d3904e54` |
| 8 | `theorem` | [mulLeftRight_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/mulleftright-apply--c06c9209d8071cd77a09375d.md) | 79 | `result-track:c06c9209d8071cd77a09375ddafd314c367cbcc3aa25b93c71241b4a73e2f312` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mulleftright-apply-apply-le--5771962acabddf9b240199f5.md) | 82 | `result-track:5771962acabddf9b240199f5cb3c7df9f0dc3105c30975eeee3a15334842a76a` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mulleftright-apply-le--aafec021bbe24a0ad2b395a0.md) | 89 | `result-track:aafec021bbe24a0ad2b395a055c5d95f109267af9cff235b21fe2fe07cc3199c` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mulleftright-le--84d5adf3a3267580f7a7d39f.md) | 92 | `result-track:84d5adf3a3267580f7a7d39fdb1f88fe26e43d0260ee5b84a60bf9a051d54842` |
| 12 | `class` | [_root_.RegularNormedAlgebra](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/root-regularnormedalgebra--3c55c687c31cfdbd683eebfd.md) | 105 | `declaration-track:3c55c687c31cfdbd683eebfd3fc98c4939a53be77ae5b126212d4631a54dac79` |
| 13 | `instance` | [_root_.NormedAlgebra.instRegularNormedAlgebra](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/root-normedalgebra-instregularnormedalgebra--cb18a65783b271ca9038397b.md) | 110 | `declaration-track:cb18a65783b271ca9038397b177958bd5d81ef3026f562324e51928c29c064cd` |
| 14 | `lemma` | [isometry_mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/isometry-mul--ab3d838423b2873c9c99332f.md) | 119 | `result-track:ab3d838423b2873c9c99332fbf90412fcf7dbdf025f1a81c7aa9b3759048d1dc` |
| 15 | `lemma` | [opNorm_mul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mul-apply--7fd3c606c63c9623b1291b2d.md) | 123 | `result-track:7fd3c606c63c9623b1291b2d29644aa91e2c3f2cc9aa0609cf24b5c57f6a99b4` |
| 16 | `lemma` | [opNNNorm_mul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-mul-apply--e69cceaff79d4970f28769b1.md) | 127 | `result-track:e69cceaff79d4970f28769b13d8be234d74f12f19ee6fdf3b2371d3911108dd6` |
| 17 | `def` | [mulₗᵢ](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/mul--5f92666f9963523900204249.md) | 132 | `declaration-track:5f92666f99635239002042492b17ab1f16cd574d58fc7587282a44dc4ff94669` |
| 18 | `theorem` | [coe_mulₗᵢ](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/coe-mul--bf134bc9c386891ceee7fa6c.md) | 137 | `result-track:bf134bc9c386891ceee7fa6ce3b5f52626bbf2a27bbc711bdf274b9daec978d0` |
| 19 | `lemma` | [flip_mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/flip-mul--25b94acbfa48cfaef8d2a12e.md) | 146 | `result-track:25b94acbfa48cfaef8d2a12e71068739e7bc34bfdc0ca7f45347b46b6ca92b38` |
| 20 | `def` | [toSpanSingletonLIE](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/tospansingletonlie--286eb4883dbf1c594544a9e4.md) | 156 | `declaration-track:286eb4883dbf1c594544a9e44369cae7ed8c6cad22e9a23c87876b9fb5bb3410` |
| 21 | `lemma` | [toSpanSingletonLIE_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/tospansingletonlie-apply--01a49bb84a29c3e318f9b62d.md) | 161 | `result-track:01a49bb84a29c3e318f9b62d56ecf8beb995ff952eb6dc4a7329273018e209fb` |
| 22 | `lemma` | [toSpanSingletonLIE_symm_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/tospansingletonlie-symm-apply--869921ac4fe14eb0d660447a.md) | 163 | `result-track:869921ac4fe14eb0d660447a8c87af73013cc22c299b3a018e7491fa41b529a4` |
| 23 | `lemma` | [toLinearEquiv_toSpanSingletonLIE](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/tolinearequiv-tospansingletonlie--17f05976ac6bcebba02ff450.md) | 166 | `result-track:17f05976ac6bcebba02ff450ccd6c4b76314c1384be9cdd98a33bb26478bc57f` |
| 24 | `lemma` | [toContinuousLinearEquiv_toSpanSingletonLIE](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/tocontinuouslinearequiv-tospansingletonlie--e13f61a8bfbb61263596e186.md) | 169 | `result-track:e13f61a8bfbb61263596e186e0379bbf36e5ceb299ff0570564c68f2f32bb395` |
| 25 | `def` | [lsmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/lsmul--60b12d77ca625fd3faa91226.md) | 188 | `declaration-track:60b12d77ca625fd3faa91226672bfa41c7f0a0e85e242c5527701c37cb01c993` |
| 26 | `theorem` | [lsmul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/lsmul-apply--062044403bc0308b1ee36330.md) | 193 | `result-track:062044403bc0308b1ee36330f5ed6e159a97155cad86a4055d17bce8fbb71160` |
| 27 | `theorem` | [lsmul_flip_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/lsmul-flip-apply--5facd9011618b844ffb5a12f.md) | 198 | `result-track:5facd9011618b844ffb5a12f9260baea28a7c0e82a0201f289cadc62036361e4` |
| 28 | `theorem` | [lsmul_flip_inj](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/lsmul-flip-inj--0758d43799146e9f28683590.md) | 203 | `result-track:0758d43799146e9f28683590f5736589156251b2a06e0563605ca1c891630205` |
| 29 | `theorem` | [opNorm_lsmul_apply_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-lsmul-apply-le--eafc8ee5c9ee9f3260db0d8f.md) | 209 | `result-track:eafc8ee5c9ee9f3260db0d8f7e689ee4e5c87a9334adc9d9a567de4ba9fe0630` |
| 30 | `theorem` | [opNNNorm_lsmul_apply_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-lsmul-apply-le--7dffbf30a4bb4074cae5a0bf.md) | 212 | `result-track:7dffbf30a4bb4074cae5a0bf5dc7ae56144962ecee7247a6e627fc2f578ddd88` |
| 31 | `theorem` | [opNorm_lsmul_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-lsmul-le--fc930f026f5e0b79ff265307.md) | 216 | `result-track:fc930f026f5e0b79ff265307af3a12ae761fb868aaee5e55ef0f353b926dd025` |
| 32 | `theorem` | [opNNNorm_lsmul_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-lsmul-le--fb7c0194545e07375098314e.md) | 219 | `result-track:fb7c0194545e07375098314e14b38f98ab14be97f6f6216e9ccdc40d36da8149` |
| 33 | `theorem` | [opENorm_lsmul_le](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/openorm-lsmul-le--d89a1e81d9ce0baa59fd14db.md) | 223 | `result-track:d89a1e81d9ce0baa59fd14db4264c30d6d6ff1d9e3314dd021de907e97b443e3` |
| 34 | `theorem` | [opNorm_mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-mul--0a51ce32f8b04e3dce507feb.md) | 246 | `result-track:0a51ce32f8b04e3dce507feb754be360b0ed159e6d5f0357756bece309255c28` |
| 35 | `theorem` | [opNNNorm_mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-mul--78a99488cd1f6af919c10a79.md) | 250 | `result-track:78a99488cd1f6af919c10a798996ab886dd0bbb97906935f1702b5bf1d3faaae` |
| 36 | `theorem` | [opENorm_mul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/openorm-mul--0c7e8fde966af18017ed09e0.md) | 254 | `result-track:0c7e8fde966af18017ed09e01114439bf8f406c0b5874cc9be90d3522c6e0129` |
| 37 | `theorem` | [opNorm_lsmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-lsmul--4a09fa7c1b736473649c91b3.md) | 263 | `result-track:4a09fa7c1b736473649c91b3fc1be8a63676cc071ecf33c39b0a9f1baa9d413b` |
| 38 | `theorem` | [opNNNorm_lsmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-lsmul--3d99d03aa824bcce3e8366e3.md) | 273 | `result-track:3d99d03aa824bcce3e8366e37b411a2993395c6728022e3844e149b0b96e27f3` |
| 39 | `theorem` | [opENorm_lsmul](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/openorm-lsmul--ac581c5e63194a09ef91007b.md) | 279 | `result-track:ac581c5e63194a09ef91007b29b667fddd6117795ee1b910f894496b83ca3fab` |
| 40 | `theorem` | [opNorm_lsmul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnorm-lsmul-apply--5bee975b49e1066f1cfb2592.md) | 287 | `result-track:5bee975b49e1066f1cfb2592c7c26d58994215bd5ff0467fa3bbce3cbd243314` |
| 41 | `theorem` | [opNNNorm_lsmul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/opnnnorm-lsmul-apply--1613d52bc1b62bf15f39e567.md) | 297 | `result-track:1613d52bc1b62bf15f39e567af037b8d05224500736423172511b398a35be02a` |
| 42 | `theorem` | [opENorm_lsmul_apply](../../../../mathematics/Analysis/Mul/Variant702366dfb127ee5fb37a6de0072011008b3cd90d76f883367d704b31be643042.lean/declarations/openorm-lsmul-apply--bca6d4d3fe939126516156ee.md) | 304 | `result-track:bca6d4d3fe939126516156eed55e329b19961c1a19c79b93f19c0da7a35c71e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
