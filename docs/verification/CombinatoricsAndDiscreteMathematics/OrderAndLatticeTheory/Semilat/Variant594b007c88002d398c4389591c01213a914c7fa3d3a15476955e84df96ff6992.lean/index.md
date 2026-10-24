# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Semilat.Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8daebb672b4e184493297e08f8cb1b156dedc06f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8daebb672b4e184493297e08f8cb1b156dedc06f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.BoundedLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/semilatsupcat--36f7e0177b0344d1dee111f9.md) | 34 | `declaration-track:36f7e0177b0344d1dee111f9d9a28c995956145bc6f11404779c809fa6670661` |
| 2 | `structure` | [SemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/semilatinfcat--23de309324bd99f1adf21602.md) | 41 | `declaration-track:23de309324bd99f1adf216029de9416d35a781a4be0bfc9ef26262f5f94eebb3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--0a9863b9c7537d69eb7e117b.md) | 49 | `declaration-track:0a9863b9c7537d69eb7e117bc79a54de0bfb2245d239d7f658ed8fde6b01fb0e` |
| 4 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/of--1fbc115c0c897a520aa7b52d.md) | 55 | `declaration-track:1fbc115c0c897a520aa7b52d6456f04fd572406b1074a3caab992e5c3b97896e` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/coe-of--3c19302e58aac56baa4bc56f.md) | 58 | `result-track:3c19302e58aac56baa4bc56fb0a53cb9aa79d3c52e0fb10a0af7f542c3cd4ef9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--b7af9600a9c7d4e9819ade1f.md) | 61 | `declaration-track:b7af9600a9c7d4e9819ade1f5f78e1ad937198783e6db4b707e8c186239bbd01` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--09e0c77dfb9af96fda89b2ca.md) | 64 | `declaration-track:09e0c77dfb9af96fda89b2ca67ff5c50f8e2e54ab88f17813b1c36815b6c6ddb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--340c925f68dec04be3558b6c.md) | 72 | `declaration-track:340c925f68dec04be3558b6cf00dd8c8ccc75491ee71e32fa48607a533d44a57` |
| 9 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/hasforgettopartord--17acf46ae3f2ecc332ea8cd8.md) | 76 | `declaration-track:17acf46ae3f2ecc332ea8cd8d9f0472bff232abcc8d8653f4a5dc51a3891073c` |
| 10 | `theorem` | [coe_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/coe-forget-to-partord--a6937be72c909958f7825988.md) | 81 | `result-track:a6937be72c909958f782598889b32fe9120450df0e5d08f12a7583dc16f03ece` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--cc3ea198991f89da936dd4c9.md) | 89 | `declaration-track:cc3ea198991f89da936dd4c911ccb96bb83a64849c855e060d5f7755196fe09d` |
| 12 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/of--40a2c11fb269b439e6e54164.md) | 95 | `declaration-track:40a2c11fb269b439e6e5416477a799113a49c9e7612a7952ce64cf395128b28e` |
| 13 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/coe-of--49a7e43f9b0886a845208a93.md) | 98 | `result-track:49a7e43f9b0886a845208a9317d5942b234946a8cb49989fe352e1823b3f6dab` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--ed2f631d66dbe1285f5905cd.md) | 101 | `declaration-track:ed2f631d66dbe1285f5905cd5e7b208cf46769a5c1725bbbd8ab0bd0412e87dd` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--3d71658f2688d3b7b2028e8e.md) | 104 | `declaration-track:3d71658f2688d3b7b2028e8ec135946396e8cf8bafa8e10f331e329b576cb4f6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/instance--c7b1674fe3770f0743e3ab6f.md) | 112 | `declaration-track:c7b1674fe3770f0743e3ab6ff36bcc3c1a861a582fdcf7ca1ec54bec2bddebbe` |
| 17 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/hasforgettopartord--792db06730a704762827f58d.md) | 116 | `declaration-track:792db06730a704762827f58db91e9225413ec0821c80e2452793d7f119d46b8a` |
| 18 | `theorem` | [coe_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/coe-forget-to-partord--faa6e596a5299f02369a1e59.md) | 121 | `result-track:faa6e596a5299f02369a1e59981c7315aab685506306564fab9e451c6eb1fd75` |
| 19 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/iso-mk--8f473369ca794f657705f249.md) | 133 | `declaration-track:8f473369ca794f657705f2492a07ae0dc174414d8730b57bed41db1c1412376c` |
| 20 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/dual--652651aeb32ef0c7dc38be0a.md) | 141 | `declaration-track:652651aeb32ef0c7dc38be0a8fa72f0a4e7fa864aed7d9af6ddd36ca41a2fc4c` |
| 21 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/iso-mk--f5ddb48ce8bf824f00188ad9.md) | 151 | `declaration-track:f5ddb48ce8bf824f00188ad96bfa9ed6ee5f0ac6b93563f87672638242cc33b5` |
| 22 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/dual--234e6aa594dfb87ad4808a5d.md) | 159 | `declaration-track:234e6aa594dfb87ad4808a5d98e7cdd3ff54f8152cf1e3d831ddb9e31319a77e` |
| 23 | `def` | [SemilatSupCatEquivSemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/semilatsupcatequivsemilatinfcat--b14f7470b756af0fe6b6df3b.md) | 167 | `declaration-track:b14f7470b756af0fe6b6df3bd5ea0dae15cc0c8a619447d169780a47596f7c3d` |
| 24 | `theorem` | [SemilatSupCat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/semilatsupcat-dual-comp-forget-to-partord--adc07faa3a606676da8f0e1a.md) | 173 | `result-track:adc07faa3a606676da8f0e1a508a84cb560d861d344581a3a9c9e030a0f98a36` |
| 25 | `theorem` | [SemilatInfCat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant594b007c88002d398c4389591c01213a914c7fa3d3a15476955e84df96ff6992.lean/declarations/semilatinfcat-dual-comp-forget-to-partord--ceda4ab331985605ce416230.md) | 178 | `result-track:ceda4ab331985605ce416230a37d1e4fb16eab9883ee7dd02254e75ba3748afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
