# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293486b8fe5f8263037878c695e0f452eb506f0b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293486b8fe5f8263037878c695e0f452eb506f0b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommGrp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/commgrp--8fd8b734a809d7fc1a3e3d56.md) | 20 | `declaration-track:8fd8b734a809d7fc1a3e3d56884b953cecd8c09d254b802201c48d3f064c3d4b` |
| 2 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/trivial--bd5cacad3ad30e794845aabf.md) | 31 | `declaration-track:bd5cacad3ad30e794845aabfce927aa899d177e69074e76bafe65743cc2844b4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--64dce6d4f9ece7dbf83d6ad3.md) | 34 | `declaration-track:64dce6d4f9ece7dbf83d6ad34ee33c57f708646a337dd1671a1cc23f517e1959` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--f67dcbda4834708af7d7808e.md) | 39 | `declaration-track:f67dcbda4834708af7d7808e3ff35fe62d4c1a5a06e22634d29ea577e082729c` |
| 5 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/id-hom--aec5b27b63d8ad1f1c7ea760.md) | 44 | `result-track:aec5b27b63d8ad1f1c7ea7601c975d7585ba23e2ceb8e02dacc228d52513952f` |
| 6 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/comp-hom--f96af9ebd4b16aa46c3cc689.md) | 48 | `result-track:f96af9ebd4b16aa46c3cc689db0b74753b340a5e6de7160c9660be8b1dfff615` |
| 7 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/hom-ext--4a2c4027604446e5b19b69b3.md) | 53 | `result-track:4a2c4027604446e5b19b69b3c4239a189fc09facf08fecbb0151e1560f43f025` |
| 8 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/id--2e8ca0e48db0d01d066b3000.md) | 57 | `result-track:2e8ca0e48db0d01d066b3000612e9b4780d4a4d7f0c732f5776af70838404f5a` |
| 9 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/comp--f92d058af0814c9aeeb20e51.md) | 60 | `result-track:f92d058af0814c9aeeb20e51f19ef3bfa33e93b001feb8fcab3e7ecddf0270af` |
| 10 | `def` | [forget₂Grp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-grp--e230cf07b4ac2202163f485b.md) | 68 | `declaration-track:e230cf07b4ac2202163f485bfbd6169d523ced828861578ac2b8e6c1ef3eb1a3` |
| 11 | `def` | [fullyFaithfulForget₂Grp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/fullyfaithfulforget-grp--3bb7496cdc318d1a43249ab7.md) | 72 | `declaration-track:3bb7496cdc318d1a43249ab746924358ad0f69069a648257723dc7a9d38091e8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--964696acce762c9457b4c032.md) | 75 | `declaration-track:964696acce762c9457b4c032538b4f2f7d34856b504d8b6b8253ce3326dc1832` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--07773d7275b82655eec7a3ee.md) | 76 | `declaration-track:07773d7275b82655eec7a3ee322b06ac35f07d996ee99691a1743c0ff1533c57` |
| 14 | `theorem` | [forget₂Grp_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-grp-obj-one--efca68b79d6772a5a0d15baf.md) | 79 | `result-track:efca68b79d6772a5a0d15baf266324254f7bc8c3ad1e0ffdb533d06523fdb575` |
| 15 | `theorem` | [forget₂Grp_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-grp-obj-mul--44373c8c7f74e38893936610.md) | 83 | `result-track:44373c8c7f74e38893936610a6dd413d9cd699049dc8a4547943cd6310734e9f` |
| 16 | `theorem` | [forget₂Grp_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-grp-map-hom--d542a0cfc13e3f1235028932.md) | 87 | `result-track:d542a0cfc13e3f123502893243562ed7c118837586b005e467d4218c105c9616` |
| 17 | `def` | [forget₂CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-commmon--28e5ddb05ca53129be5ae34b.md) | 91 | `declaration-track:28e5ddb05ca53129be5ae34be45bc2784a557be0b07ee074aa721caffd72a119` |
| 18 | `def` | [fullyFaithfulForget₂CommMon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/fullyfaithfulforget-commmon--5923eab1ecbb03348f50b1bf.md) | 96 | `declaration-track:5923eab1ecbb03348f50b1bf6f7b1b550ce516e9c76e603bd21c882b4d2bf168` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--e840826339fb1acfddffc901.md) | 99 | `declaration-track:e840826339fb1acfddffc901927738623ff4ac20f27f35c934eb60538e6812e2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--8ee9a597eef5d0a21d5bb746.md) | 100 | `declaration-track:8ee9a597eef5d0a21d5bb74602aaba8a8738e605ca88b94bd5c42badbeddd298` |
| 21 | `theorem` | [forget₂CommMon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-commmon-obj-one--63f39c55940c16a490c80921.md) | 103 | `result-track:63f39c55940c16a490c8092181d706c32f5a584bc0bb3eec5d8949e9feec1def` |
| 22 | `theorem` | [forget₂CommMon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-commmon-obj-mul--5dfe0c1457443f6e4cbe0ebe.md) | 107 | `result-track:5dfe0c1457443f6e4cbe0ebe3e0ce8481b1eda8bc4f68032a76d1294f1890cb5` |
| 23 | `theorem` | [forget₂CommMon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-commmon-map-hom--238ca926171407901deec9b7.md) | 111 | `result-track:238ca926171407901deec9b770042cea690ce7e9b88a4cce67782ac3296429a0` |
| 24 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget--4b31ecd7994eb015868c10b0.md) | 117 | `declaration-track:4b31ecd7994eb015868c10b071875b235578331f6993e9bcce05fc72ef28c7f7` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--4415b5f70650bcf3dc57eb99.md) | 120 | `declaration-track:4415b5f70650bcf3dc57eb990a936e93f9a8fe0b0087e668fd26a374fc0d7b06` |
| 26 | `theorem` | [forget₂Grp_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-grp-comp-forget--19f206216ab201d6ff12e1ec.md) | 123 | `result-track:19f206216ab201d6ff12e1ec02a00deabe7c0b3b83bc41a3dc55cf0857c140a0` |
| 27 | `theorem` | [forget₂CommMon_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/forget-commmon-comp-forget--97402a9e25412e0d45c61b94.md) | 126 | `result-track:97402a9e25412e0d45c61b9499bfd461c6282f1fe0862e35ad436f68516add27` |
| 28 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mkiso--8977970b4d21b690dee40142.md) | 136 | `declaration-track:8977970b4d21b690dee4014251003ae2c883deee138f9a4da5da996600631785` |
| 29 | `lemma` | [mkIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mkiso-hom-hom--4b19d81f0a65cca0298397a5.md) | 139 | `result-track:4b19d81f0a65cca0298397a5e621380fb6eb09a07ecf2b1105ddc476417fb93a` |
| 30 | `lemma` | [mkIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mkiso-inv-hom--cdfcd9a1b09966ea6889da5e.md) | 140 | `result-track:cdfcd9a1b09966ea6889da5e486b9617143d5c11b087fb2363f25b9394e76e03` |
| 31 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/uniquehomfromtrivial--a261b70e66173830005a778e.md) | 144 | `declaration-track:a261b70e66173830005a778e1d60d36ce58688c84f6ab92c5e35348909dfdbea` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/instance--b870925fb7f5e875dbef33c7.md) | 147 | `declaration-track:b870925fb7f5e875dbef33c794a7c885c2c68da430e8cef2b25386634777e920` |
| 33 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrp--74e3f64d580c835836c885c1.md) | 166 | `declaration-track:74e3f64d580c835836c885c12f75112fbb7069961c403583eb08ba2eef3c555e` |
| 34 | `def` | [mapCommGrpIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrpidiso--5d7974aaa85e804e758f7300.md) | 176 | `declaration-track:5d7974aaa85e804e758f730083d86950affccf333e2d1ff8c23f344da20877d3` |
| 35 | `def` | [mapCommGrpCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrpcompiso--4a133a3941febe3e0ad40548.md) | 182 | `declaration-track:4a133a3941febe3e0ad4054893d9b6e09a42f9173df756eb3f2308fdf7e86e7b` |
| 36 | `def` | [mapCommGrpNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrpnattrans--9dd14f7c5a422c24c1335b2e.md) | 188 | `declaration-track:9dd14f7c5a422c24c1335b2e2c5c6374dc8f091f7b935ef9852eb3b3d6656293` |
| 37 | `def` | [mapCommGrpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrpnatiso--4f5081591f0f0f685de39c7c.md) | 193 | `declaration-track:4f5081591f0f0f685de39c7cfc2caac7b922da80a3dd7e4b82ef25a642e76b54` |
| 38 | `def` | [mapCommGrpFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrpfunctor--c2548abd05ae81ae9d281567.md) | 199 | `declaration-track:c2548abd05ae81ae9d281567be910c5761365f80c5264f839d62b39bd81defc2` |
| 39 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrp--0995edea107dd5581d6ae93a.md) | 212 | `declaration-track:0995edea107dd5581d6ae93adf9611d0b7e8aa2990afb4dd3cb7bfc938c0768b` |
| 40 | `def` | [mapCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant4126cd9c7ec4a9b59d834636aa8d4b006a1635e2298585ba3b339465789d9a61.lean/declarations/mapcommgrp--467d4916a8ffa1a52baa660a.md) | 222 | `declaration-track:467d4916a8ffa1a52baa660ae9c7ae0eb85c55b4abf04c7e24661a4992ed8e01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
