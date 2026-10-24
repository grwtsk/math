# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LinOrd.Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "761e958de18d4b8e8540abe936092e531885d80e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `761e958de18d4b8e8540abe936092e531885d80e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.Lat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/linord--7f488e995f227619c2e5ea74.md) | 20 | `declaration-track:7f488e995f227619c2e5ea7450741b20fe6502076753eecc14ff29487d083a61` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/instance--d641725dab6eaef1bad9ae34.md) | 31 | `declaration-track:d641725dab6eaef1bad9ae3453cda8352020c7ea776c0398169fb265f4957a65` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/of--dd403c65cd0a1eb52ce6afe5.md) | 37 | `declaration-track:dd403c65cd0a1eb52ce6afe55dbeaab9de0044de8261d1e55be23c7bc32b836b` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom--a9008286d7836e79d3413472.md) | 41 | `declaration-track:a9008286d7836e79d341347268cdc7d264a73f4aa8645870d40523f709498e89` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/instance--7d33b20d483236af89f174b0.md) | 46 | `declaration-track:7d33b20d483236af89f174b028b731d70763d2ce44a0c9ba1333b1ed1fa912ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/instance--8ff1e259c57f8692e1dd9cbb.md) | 51 | `declaration-track:8ff1e259c57f8692e1dd9cbbb9699dc427ade749e3d721584b87e0a991eaae1e` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-hom--9a7365cd150f688b72d52662.md) | 56 | `declaration-track:9a7365cd150f688b72d5266292697aac9f294867112269012365cea26ef57214` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ofhom--0158e8b0cb31a0070d6b3f54.md) | 60 | `declaration-track:0158e8b0cb31a0070d6b3f54bcc0581ce01e919d1aae1f0784c50aab4837208a` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-simps-hom--3cc460e43d70f13706fb9ceb.md) | 65 | `declaration-track:3cc460e43d70f13706fb9ceb556e366816d005106b61909eda3873a292ecaa6e` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/coe-id--70a1572e830fb04d284df87b.md) | 75 | `result-track:70a1572e830fb04d284df87ba40512595bc93d88ad031fa9df384278745f816c` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/coe-comp--0cdb03d4fda897d60535903d.md) | 78 | `result-track:0cdb03d4fda897d60535903d587d07c4b28fc020a876f3228632752fb17b6bea` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/forget-map--ef296914bb8ebec5680b1e2b.md) | 81 | `result-track:ef296914bb8ebec5680b1e2b7a843c0b41abb2801cd0f2ebddc7df2f37f7aeaf` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ext--e6226b2362bba9642e8f5264.md) | 85 | `result-track:e6226b2362bba9642e8f526429ee79e7c7a8e4cb13c0eaf4141ceb18562efb34` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/coe-of--e44572a95cbe324af669f2c9.md) | 89 | `result-track:e44572a95cbe324af669f2c9b7974a61d5134603765226059632de534188b7bb` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-id--52a3c7513aa2309265bf4ded.md) | 92 | `result-track:52a3c7513aa2309265bf4ded77ab9a27ac62533620ee3e9833e9599b60e29503` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/id-apply--4bedd572f31720ace7db3248.md) | 95 | `result-track:4bedd572f31720ace7db32488342d47d604cdf4af9528907867d8cced448c533` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-comp--1b1c2dad3a622ea1f134af0a.md) | 99 | `result-track:1b1c2dad3a622ea1f134af0a10d6692faa4742a3a586e1403f91dcd366aa344d` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/comp-apply--1aa6ebeae86ee024ed2b2b68.md) | 103 | `result-track:1aa6ebeae86ee024ed2b2b68688d02ad05852fca31ba258d2b7fc079d58818a1` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-ext--a2a711246ada6ddf9b3c0b4d.md) | 107 | `result-track:a2a711246ada6ddf9b3c0b4de2e3688a675dca4e4334019334c56752a7bc15ee` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-ofhom--6f742e97513d321bb34c2d00.md) | 111 | `result-track:6f742e97513d321bb34c2d005cf7c14ac06a1fe1b8042fd52a4abfca89976ead` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ofhom-hom--62dd7001737cb45bcf9da914.md) | 115 | `result-track:62dd7001737cb45bcf9da914834243db2270f92333975a0873f289aa351af818` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ofhom-id--c7265b4bce798b4c51b3754d.md) | 119 | `result-track:c7265b4bce798b4c51b3754d1f966a5fab8f6fd5a381928ff0dfad934a054e9f` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ofhom-comp--8647051d6bff4694536ce36a.md) | 122 | `result-track:8647051d6bff4694536ce36a1c0716333a579b875d56143bf79fc2dc1a6b8c73` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/ofhom-apply--a4cfa24a4784f07c293c4690.md) | 127 | `result-track:a4cfa24a4784f07c293c46908baa64903a6d9d02d63d02b6096ab2d88c4cd4df` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/inv-hom-apply--950693e1490cfc06f786fde9.md) | 130 | `result-track:950693e1490cfc06f786fde95ee9c7b373403b644f858edf8d48d37985c9f7bc` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hom-inv-apply--6e421d3edc24c285c81d1c56.md) | 133 | `result-track:6e421d3edc24c285c81d1c5615af5f8002d48c331c3eb21f1bf202ae25914c89` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/instance--ae6f2d445ce719a732e5acd5.md) | 136 | `declaration-track:ae6f2d445ce719a732e5acd598a60a83e43fdf9be9f7743ad5c2429a8a96a3b7` |
| 28 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/hasforgettolat--653edbf1a7d784761f031b96.md) | 139 | `declaration-track:653edbf1a7d784761f031b96ceb87d12e00b8b776984b25c71d532e41b1faa31` |
| 29 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/iso-mk--05bcf7e9d71836ba1b758734.md) | 145 | `declaration-track:05bcf7e9d71836ba1b7587346b0260e9b6282b2b1676572f323536635eaa369e` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/dual--c80ffad99da8dd5f3d709764.md) | 151 | `declaration-track:c80ffad99da8dd5f3d7097641d49040f7e37afd07537c1e5415273650b38fe16` |
| 31 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/dualequiv--036506210271f49234fbd4d6.md) | 157 | `declaration-track:036506210271f49234fbd4d6b555f262c112a8aba85c491f9cc1001c9a0d5e4c` |
| 32 | `theorem` | [linOrd_dual_comp_forget_to_Lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinOrd/Variant14f7f6359186c2bec9956709f27e8499bd0c85e91f5114cd95a094b90e843a98.lean/declarations/linord-dual-comp-forget-to-lat--045a32288df701a9318226d0.md) | 165 | `result-track:045a32288df701a9318226d0294861b5cfba8a8f25df039932e9d609bbb34c0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
