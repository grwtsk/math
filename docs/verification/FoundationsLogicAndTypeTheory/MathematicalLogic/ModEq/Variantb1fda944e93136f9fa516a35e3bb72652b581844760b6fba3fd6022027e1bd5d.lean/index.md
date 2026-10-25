# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ModEq.Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed34a6d4ce7686317dda642540d628afe86e140b",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed34a6d4ce7686317dda642540d628afe86e140b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ModEq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq--985c4fedc3c68832395a78ca.md) | 47 | `declaration-track:985c4fedc3c68832395a78ca0e7d76ee86a6d073b397c0c4dd56336a1232a18d` |
| 2 | `theorem` | [modEq_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-refl--eced7825fc560cdd80945342.md) | 54 | `result-track:eced7825fc560cdd80945342c16d4f99765f00da134eb7685f582dc4329a2b93` |
| 3 | `theorem` | [modEq_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-rfl--652edb8d5211135dcdec1697.md) | 57 | `result-track:652edb8d5211135dcdec1697b1ae39570e8902a8ad151aa824e10f025c8e3acf` |
| 4 | `theorem` | [modEq_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-comm--be9f1e3ece8107bda9fe9f56.md) | 60 | `result-track:be9f1e3ece8107bda9fe9f56d147f4d45fcfa919cdf2b9f03e4e72a76e0af2dd` |
| 5 | `theorem` | [ModEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-trans--b240b00630b077d9a03ece3c.md) | 68 | `result-track:b240b00630b077d9a03ece3c451be14a7ddcac40e36498eca7b5d2f7aec35ec8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/instance--d82b8d69fa31ca8718bc84c3.md) | 71 | `declaration-track:d82b8d69fa31ca8718bc84c301bc1f613419512d29b467b92aa22253e0c05fa3` |
| 7 | `theorem` | [neg_modEq_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/neg-modeq-neg--a2f6bcc6c7cc67cda7e84dae.md) | 75 | `result-track:a2f6bcc6c7cc67cda7e84dae7ecd4da89f1eb2d5e32432246411a337865e9313` |
| 8 | `theorem` | [modEq_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-neg--0a01b337e6fba09588e0f37d.md) | 81 | `result-track:0a01b337e6fba09588e0f37ddb01a1d520369933ee8eec876de54f00c07e165c` |
| 9 | `theorem` | [modEq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-sub--73c4267ae24bfc5c33536b96.md) | 86 | `result-track:73c4267ae24bfc5c33536b9637194c3f777917c75ef7b6b84b0e621eb39e610a` |
| 10 | `theorem` | [modEq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-zero--8cab275375d08bc0ea569755.md) | 90 | `result-track:8cab275375d08bc0ea569755381b0021e468054edf45b9d21c6207ff0b7c8000` |
| 11 | `theorem` | [self_modEq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/self-modeq-zero--9740262c819e7c4e1d175111.md) | 93 | `result-track:9740262c819e7c4e1d1751115ebfd035814920db22065c51598647bec657478a` |
| 12 | `theorem` | [zsmul_modEq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/zsmul-modeq-zero--a18de9e156385f6054e116cc.md) | 97 | `result-track:a18de9e156385f6054e116cc6ea452ce6d8e7c8bfdc52ce00f523718c375744a` |
| 13 | `theorem` | [add_zsmul_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-zsmul-modeq--b5dced5a49a2e43dc7e01a4b.md) | 100 | `result-track:b5dced5a49a2e43dc7e01a4ba98e40f8f477d18a7672cda27b631b1e315081af` |
| 14 | `theorem` | [zsmul_add_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/zsmul-add-modeq--3b7d2c22e5a1b03168388268.md) | 103 | `result-track:3b7d2c22e5a1b031683882683a5ccbceef692d55bceaff657e17983b7ef99e0a` |
| 15 | `theorem` | [add_nsmul_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-nsmul-modeq--e4933099fea1908c3bce1d7e.md) | 106 | `result-track:e4933099fea1908c3bce1d7e1ba9d0564681e1591b2f71cb5883913755761132` |
| 16 | `theorem` | [nsmul_add_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/nsmul-add-modeq--43aa2af47b9486757fb95669.md) | 109 | `result-track:43aa2af47b9486757fb956690f15ed2e8bc7dcd1468ad738e1179339252e6f8d` |
| 17 | `theorem` | [add_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-zsmul--682be7adf305c57881141c30.md) | 114 | `result-track:682be7adf305c57881141c30d9928a60eaac9ed4fbee944a6c06a564d3dc4e3d` |
| 18 | `theorem` | [zsmul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/zsmul-add--544011dd438d808aa771ae5f.md) | 117 | `result-track:544011dd438d808aa771ae5f70217af86a39ae6abb53ec4e36e4e00ac454732d` |
| 19 | `theorem` | [add_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-nsmul--008c51752fdccac3b248735f.md) | 120 | `result-track:008c51752fdccac3b248735f358aab0cf187d28094af7b3e7c0ea758b98e0e92` |
| 20 | `theorem` | [nsmul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/nsmul-add--401f2a7ee4b15dc9dbd3419d.md) | 123 | `result-track:401f2a7ee4b15dc9dbd3419d81b5ccf382226a31339bcc1d4c6099da83183bcc` |
| 21 | `theorem` | [of_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/of-zsmul--00b33531f6507bc456c7c8ad.md) | 126 | `result-track:00b33531f6507bc456c7c8ad52fbf55e09799886df5ff20ec2cac34f7a4eb79f` |
| 22 | `theorem` | [of_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/of-nsmul--63c95f7e8977df72c5ff907d.md) | 129 | `result-track:63c95f7e8977df72c5ff907d42b507612f4b4389232723d127697fb5fb28be8d` |
| 23 | `theorem` | [zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/zsmul--a3b32a334e274d26773932f2.md) | 132 | `result-track:a3b32a334e274d26773932f2bfd98d0556aa6f4c44d374e239fb5ccb96db2458` |
| 24 | `theorem` | [nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/nsmul--fbfb5ac0432cf645619bbd30.md) | 135 | `result-track:fbfb5ac0432cf645619bbd303f5da48022984caeb72737879768ce7638d440fa` |
| 25 | `theorem` | [zsmul_modEq_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/zsmul-modeq-zsmul--59b40b772da61b26edd17ef2.md) | 141 | `result-track:59b40b772da61b26edd17ef2f7ca87df6732d397bc4f67723c9028d5d0aa45ae` |
| 26 | `theorem` | [nsmul_modEq_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/nsmul-modeq-nsmul--233b630702955ac10edee585.md) | 146 | `result-track:233b630702955ac10edee5857a3f07f3c2fd329f168332a2f35af54f191ceaa9` |
| 27 | `theorem` | [add_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-iff-left--879c02be74074fc3892779ef.md) | 157 | `result-track:879c02be74074fc3892779ef5ae0984995ade82e7e98bdc7d41df533de6b2994` |
| 28 | `theorem` | [add_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-iff-right--b46c5b2cf893337b6a830f41.md) | 162 | `result-track:b46c5b2cf893337b6a830f4166dc1324a11761b835873834d57bb61a8e640d48` |
| 29 | `theorem` | [sub_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-iff-left--a14b6adddf8ad5c7f459322d.md) | 167 | `result-track:a14b6adddf8ad5c7f459322df2f13a6409702a49165b2ba73e4a00e8ef0f450b` |
| 30 | `theorem` | [sub_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-iff-right--4cf9a89dccee9754ef3a41a7.md) | 172 | `result-track:4cf9a89dccee9754ef3a41a782a5abe457bce6a99c7f2d5f51397fd7f50e6539` |
| 31 | `theorem` | [add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-left--e4506df1b23de6e33fc1fb4f.md) | 184 | `result-track:e4506df1b23de6e33fc1fb4fd75b211f30bda3c6665193562ae239be0f1ccadc` |
| 32 | `theorem` | [sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-left--0e83ce527387525273b2ca82.md) | 187 | `result-track:0e83ce527387525273b2ca829acd75cebe75a5eebc979b5faed079d1bede3f22` |
| 33 | `theorem` | [add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-right--363727df1852afc1bd4d587f.md) | 190 | `result-track:363727df1852afc1bd4d587f33e803d89efe1d62d5ddf1689f8476de71811f0d` |
| 34 | `theorem` | [sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-right--68faef0b4520ced3b275f73f.md) | 193 | `result-track:68faef0b4520ced3b275f73f70580ebc55bb1dea16ff86e39af93841517a0b69` |
| 35 | `theorem` | [add_left_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-left-cancel--8698b4bb66447c31984cead9.md) | 196 | `result-track:8698b4bb66447c31984cead98d8ef0345b86fbbaca6eafbdba5281301eed9c9e` |
| 36 | `theorem` | [add_right_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-right-cancel--2a8fa45c38f26160a8471784.md) | 199 | `result-track:2a8fa45c38f26160a8471784debae187d03235bd71cd4a7aaa11412e2e84cc2e` |
| 37 | `theorem` | [sub_left_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-left-cancel--74d3d9bb745c5fc9deaf6fbc.md) | 202 | `result-track:74d3d9bb745c5fc9deaf6fbcc3564d5d42defa18f6bed02ff65095ba004123a5` |
| 38 | `theorem` | [sub_right_cancel'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-right-cancel--b44faf5906e2c2aced56d295.md) | 205 | `result-track:b44faf5906e2c2aced56d2952c41b5c514c2c2d042bffb473cb696f12e98ae54` |
| 39 | `theorem` | [modEq_sub_iff_add_modEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-sub-iff-add-modeq--cd838dc58b25488799e0a273.md) | 210 | `result-track:cd838dc58b25488799e0a2736fb232b10ccd415d3871df46da44ed23389ae744` |
| 40 | `theorem` | [modEq_sub_iff_add_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-sub-iff-add-modeq--7195c06e983f1969e47a23c6.md) | 213 | `result-track:7195c06e983f1969e47a23c6e1a91d8e822e1ece6676500d6f10aa90ab74d4dd` |
| 41 | `theorem` | [sub_modEq_iff_modEq_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-modeq-iff-modeq-add--a7107b90a1c61f679222c91c.md) | 216 | `result-track:a7107b90a1c61f679222c91cea0c35a10ce46355f87896a8fe844dfb37cb90f2` |
| 42 | `theorem` | [sub_modEq_iff_modEq_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-modeq-iff-modeq-add--6e927a054d7c6575090b7ab4.md) | 219 | `result-track:6e927a054d7c6575090b7ab43465ac4a356ac29cbd3cfbdba7f1c55e716cac20` |
| 43 | `theorem` | [sub_modEq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/sub-modeq-zero--3e33fc83456172a5df3fd355.md) | 223 | `result-track:3e33fc83456172a5df3fd3553c73aca7c36ffa5035fbb913770c2e54715b08c3` |
| 44 | `theorem` | [add_modEq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-modeq-left--df67ef9837758c386340161a.md) | 226 | `result-track:df67ef9837758c386340161a21badc2db83c2d6a19c0c2c103d3e80da732cf3f` |
| 45 | `theorem` | [add_modEq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/add-modeq-right--667c8905a13f7585cc4c7a6a.md) | 229 | `result-track:667c8905a13f7585cc4c7a6a0e6b7cff8318b425eb17b478d29d949072583e2c` |
| 46 | `theorem` | [modEq_iff_eq_add_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-iff-eq-add-zsmul--908c3b6c16c8812486dcfd3c.md) | 231 | `result-track:908c3b6c16c8812486dcfd3c3ecc2f8eacedd185cdd5b3cbba83cae27c6f2bfc` |
| 47 | `theorem` | [not_modEq_iff_ne_add_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/not-modeq-iff-ne-add-zsmul--ab4c27f6745c791508afbac7.md) | 234 | `result-track:ab4c27f6745c791508afbac771b380ac7f5cff383d33da7eca1ca6c3e68923bd` |
| 48 | `theorem` | [modEq_iff_eq_mod_zmultiples](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-iff-eq-mod-zmultiples--1b8329051cd5d93881972045.md) | 237 | `result-track:1b8329051cd5d93881972045b9233abf043637aa29451ab60c840be49e298d8b` |
| 49 | `theorem` | [not_modEq_iff_ne_mod_zmultiples](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/not-modeq-iff-ne-mod-zmultiples--2817cd32fcc480c51f9022f1.md) | 241 | `result-track:2817cd32fcc480c51f9022f147f9f80cac967fe85d4692207f40fb865bdd47f5` |
| 50 | `theorem` | [modEq_iff_int_modEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/modeq-iff-int-modeq--f78a34d9b2eaebe3bf1c8f68.md) | 248 | `result-track:f78a34d9b2eaebe3bf1c8f6823db175645b7e1521d31fb1875c1095aa2f41582` |
| 51 | `theorem` | [intCast_modEq_intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/intcast-modeq-intcast--bf472818aa7d79b395ffdcda.md) | 256 | `result-track:bf472818aa7d79b395ffdcdadfa54d5146d2ca5ee930029b39999b9e50fdc013` |
| 52 | `lemma` | [intCast_modEq_intCast'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/intcast-modeq-intcast--5c02cc935e9a3707e80a1bcf.md) | 261 | `result-track:5c02cc935e9a3707e80a1bcfb941f72d4492d9512ab6c0a5ee00c2f18e94d9ab` |
| 53 | `theorem` | [natCast_modEq_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/natcast-modeq-natcast--1b2f39bd3f9b0a93f60ef93f.md) | 265 | `result-track:1b2f39bd3f9b0a93f60ef93fff074785a741104f65305694bd7b86c4c4131768` |
| 54 | `lemma` | [div_modEq_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/div-modeq-div--1bd19c63e8958138f37c0e5b.md) | 278 | `result-track:1bd19c63e8958138f37c0e5ba7ceb239a879ccaafbf0c2e2d649e26dd6a44b05` |
| 55 | `lemma` | [mul_modEq_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/mul-modeq-mul-right--d2563d6df19692dcb91ab977.md) | 281 | `result-track:d2563d6df19692dcb91ab9776f7d512a39066d2140d606c7dad3ee8e15ce3cc8` |
| 56 | `lemma` | [mul_modEq_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variantb1fda944e93136f9fa516a35e3bb72652b581844760b6fba3fd6022027e1bd5d.lean/declarations/mul-modeq-mul-left--3138ebfb541d1d9b6798b26f.md) | 289 | `result-track:3138ebfb541d1d9b6798b26f2dd93c3b69668084f92614cb0cf22095a1751c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
