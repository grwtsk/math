# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8c6c21ea8691824f4cd05be86a399faafa2d753",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8c6c21ea8691824f4cd05be86a399faafa2d753`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr--1a3ec07916b8f969b8c257cf.md) | 34 | `declaration-track:1a3ec07916b8f969b8c257cf0a4d63db0428811d2b5e90fd6befa54d06f15c81` |
| 2 | `theorem` | [optionCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr-refl--116fcc1525b005b3c1eceabe.md) | 41 | `result-track:116fcc1525b005b3c1eceabe48fbe7c622e0bca87379d95fda974de9abf9bfa4` |
| 3 | `theorem` | [optionCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr-symm--2f9a74274feb31cf65df0247.md) | 45 | `result-track:2f9a74274feb31cf65df024715960126b3d4d1890b0651476ab6740583938d26` |
| 4 | `theorem` | [optionCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr-trans--a37c623919cdaeef7b916a31.md) | 49 | `result-track:a37c623919cdaeef7b916a31f0f94ff862d8b05d091e4cbf1f7b5873d753de4a` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr-eq-equivfunctor-mapequiv--64b4e6557fbf4c96c46d44e7.md) | 55 | `result-track:64b4e6557fbf4c96c46d44e72fd29b05b312684b98323ea6d333bd44ee960530` |
| 6 | `def` | [removeNone_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-aux--7966583285e3cfc4ed4275be.md) | 68 | `declaration-track:7966583285e3cfc4ed4275be26b4fbfc065e72226d9f3cc79faa2e09824df011` |
| 7 | `theorem` | [removeNone_aux_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-aux-some--26dc3011c71c440b626609ac.md) | 78 | `result-track:26dc3011c71c440b626609ac77e66121a1624efbb6b7ba07241194a6863abafe` |
| 8 | `theorem` | [removeNone_aux_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-aux-none--3ef851b10910428f8da321a7.md) | 82 | `result-track:3ef851b10910428f8da321a7928c503643c99f730ae2279388de7ed9a86892cc` |
| 9 | `theorem` | [removeNone_aux_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-aux-inv--a4f13b95a4c2ec9dbdb7b84c.md) | 86 | `result-track:a4f13b95a4c2ec9dbdb7b84c47a7e56f814671867c17501a9f01690896abbf6a` |
| 10 | `def` | [removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone--b1ef960865b763ecd617de80.md) | 105 | `declaration-track:b1ef960865b763ecd617de80318e181924ac6014f222dc79e093ce33865420a6` |
| 11 | `theorem` | [removeNone_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-symm--4b728fc8223d1d8ccaefd9c5.md) | 112 | `result-track:4b728fc8223d1d8ccaefd9c588e75ab933c554eb67e4f07132fc8eb6c8a3c8bb` |
| 12 | `theorem` | [removeNone_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-some--94e1b8afb5250fc0c4fa3382.md) | 115 | `result-track:94e1b8afb5250fc0c4fa33829643dacd679b5f89d9865fdfd1f5262701fc0f43` |
| 13 | `theorem` | [removeNone_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-none--957ef209c5b065aae773c25c.md) | 119 | `result-track:957ef209c5b065aae773c25c6978c52ab2a383cdc358355b0bee015c5180d23e` |
| 14 | `theorem` | [option_symm_apply_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/option-symm-apply-none-iff--adc35009a67470a22932d5fe.md) | 123 | `result-track:adc35009a67470a22932d5fe330f3a235842987ecca426a3b891f0f30c1bebcf` |
| 15 | `theorem` | [some_removeNone_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/some-removenone-iff--bd359604fd772a69cb02b59c.md) | 126 | `result-track:bd359604fd772a69cb02b59cb068a05d1528b825b757e415ca4d66ee1cf7c0a2` |
| 16 | `theorem` | [removeNone_optionCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/removenone-optioncongr--11391aa991c3378851e6d4a8.md) | 137 | `result-track:11391aa991c3378851e6d4a8a80e6b56c9eb8cea19ed5e155e5af95faedb187c` |
| 17 | `theorem` | [optionCongr_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optioncongr-injective--f05955f9ce8a9ca8f498ca5a.md) | 142 | `result-track:f05955f9ce8a9ca8f498ca5ac3cdc87522dcea3dc88a3a81cef94079e9c8d028` |
| 18 | `def` | [optionSubtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype--cc1f229b7ee55bf37fde0e2a.md) | 147 | `declaration-track:cc1f229b7ee55bf37fde0e2af261ee87cb73426ef3f1373983ac446db5d4e3bb` |
| 19 | `theorem` | [optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-apply-apply--e9cd49f28176b64e79b1f25a.md) | 186 | `result-track:e9cd49f28176b64e79b1f25a1ccfeacc438a3778c568a26ae84b83efa16d839e` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/coe-optionsubtype-apply-apply--0ac86c114207aaf7f5ec73f3.md) | 193 | `result-track:0ac86c114207aaf7f5ec73f3d72bfd291782534192707fed4ebb0f5a2df3c728` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-apply-symm-apply--50e5a8235186beff4be78173.md) | 199 | `result-track:50e5a8235186beff4be7817392c3111b479ddb21ad3f1b998f57dfc608c91e70` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-symm-apply-apply-coe--2ce74d59be611407e529e39b.md) | 207 | `result-track:2ce74d59be611407e529e39b404169a72165c97bd57195c274be3c60278ed76d` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-symm-apply-apply-some--7fabf0c134675878c84011f2.md) | 212 | `result-track:7fabf0c134675878c84011f29b709ec815a7a33fdc14b8686205901ceab0ed0d` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-symm-apply-apply-none--cb686e85381f68d0c8aa88df.md) | 220 | `result-track:cb686e85381f68d0c8aa88dfff199edff3c43c6fa66754dbb15111bac15f7cef` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtype-symm-apply-symm-apply--d0209b01fa7f50e49dc1e606.md) | 227 | `result-track:d0209b01fa7f50e49dc1e606b3e50d5beba2b7940f3848d34ea1a50ac4025a10` |
| 26 | `def` | [optionSubtypeNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtypene--f94240bde3f9b49687913d36.md) | 238 | `declaration-track:f94240bde3f9b49687913d36fdb208725628579ef3c9f82e7fba13b39291cb14` |
| 27 | `lemma` | [optionSubtypeNe_symm_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtypene-symm-self--16d3647fac509f24e8cd70a4.md) | 240 | `result-track:16d3647fac509f24e8cd70a457b722fe75ae5736660eaf1dd56aeba0c31c5dfc` |
| 28 | `lemma` | [optionSubtypeNe_symm_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtypene-symm-of-ne--acf3995b3c284a5dea10b631.md) | 241 | `result-track:acf3995b3c284a5dea10b6314bd7cc706b3a4b11f2611666d580e6e73fbf042a` |
| 29 | `lemma` | [optionSubtypeNe_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtypene-none--e51611e980a0bf2871d5f628.md) | 244 | `result-track:e51611e980a0bf2871d5f6282081e32fa1259cb9352d4e70e8c4157ed306d09d` |
| 30 | `lemma` | [optionSubtypeNe_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionsubtypene-some--b4d402b1541fa18802ca7ce8.md) | 245 | `result-track:b4d402b1541fa18802ca7ce8decc4d8a7e6648bfe4e6b0f38bcee6ccac4e4817` |
| 31 | `def` | [optionEquivSumPUnit.](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit--3ee0d48f22cfbb966aa94e93.md) | 250 | `declaration-track:3ee0d48f22cfbb966aa94e93f7d32fadaa3a94f03e273db38ff3eef2a9455c8e` |
| 32 | `theorem` | [optionEquivSumPUnit_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit-none--7d3c4d8b6559762480645756.md) | 256 | `result-track:7d3c4d8b65597624806457562c6e4dcbd1c3febec17fb8075eca740d27ac0ec0` |
| 33 | `theorem` | [optionEquivSumPUnit_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit-some--009e4719e05a0ef6b59f5f76.md) | 260 | `result-track:009e4719e05a0ef6b59f5f7606f9799100a516f5bb087020aff051783887227a` |
| 34 | `theorem` | [optionEquivSumPUnit_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit-coe--791a08d1ec67c39103335117.md) | 264 | `result-track:791a08d1ec67c39103335117f486cfe32e2378029cee54ec8903412e2f010f9e` |
| 35 | `theorem` | [optionEquivSumPUnit_symm_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit-symm-inl--b6f777875c18765178c177bc.md) | 268 | `result-track:b6f777875c18765178c177bc3f53368e0cd1bdfea8136edc5718cfe2f15de027` |
| 36 | `theorem` | [optionEquivSumPUnit_symm_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionequivsumpunit-symm-inr--26295603ddb7fdbea120107a.md) | 272 | `result-track:26295603ddb7fdbea120107a769a3e5bfa922c9749c7cd4373ce1852abb2c0a5` |
| 37 | `def` | [optionIsSomeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantbb29a183d739958cb44759d1531e54bb6f478ee3da8400bd1d880d373b452061.lean/declarations/optionissomeequiv--8bbb4bc299966143b01fc095.md) | 277 | `declaration-track:8bbb4bc299966143b01fc095e1eb0d7940a1d7f6a6fbe6a461d9fa0844bb7550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
