# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Group.Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dea143035bd1fe095d81c0c72dc3e0e58172b2f7",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dea143035bd1fe095d81c0c72dc3e0e58172b2f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--8ef1fa2eb5d3dc743fb9121b.md) | 28 | `declaration-track:8ef1fa2eb5d3dc743fb9121be2f3924ad3793ce4cc0036f9b7966e3aeefb3335` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--994512cfe2773d4b35de365d.md) | 31 | `declaration-track:994512cfe2773d4b35de365d093e4f2be790c121b55727c13f1af3d8cf76e849` |
| 3 | `lemma` | [equivShrink_symm_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-zero--3159366259b4134fd3507e30.md) | 34 | `result-track:3159366259b4134fd3507e305f090c6567454217d9b8442582417351b7227d20` |
| 4 | `lemma` | [equivShrink_symm_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-one--35b8c886c884069a5bb616df.md) | 38 | `result-track:35b8c886c884069a5bb616dfba20b721409317136947cb5db5b84210f6c6208c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--fc6e4535a75e3bdaf2b48ca5.md) | 41 | `declaration-track:fc6e4535a75e3bdaf2b48ca505a05b3dd2e2306bda71edab81e1248624b81e6a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--15db7b622c97ad9bb8744987.md) | 44 | `declaration-track:15db7b622c97ad9bb8744987a91776cabd1aa0a5d04a74dff5b77587992ac711` |
| 7 | `lemma` | [equivShrink_symm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-add--b1a0d1c4bc1927a7d62808a1.md) | 47 | `result-track:b1a0d1c4bc1927a7d62808a11b241b7187c0df769e9e4f1c62562f87b3dc5738` |
| 8 | `lemma` | [equivShrink_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-add--4fcdec3b6a418d1847e512c7.md) | 53 | `result-track:4fcdec3b6a418d1847e512c77800b10212098f0951d1b419b6bf9cf9766c5071` |
| 9 | `lemma` | [equivShrink_symm_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-mul--f872c6f96d34b7c71ebe563d.md) | 59 | `result-track:f872c6f96d34b7c71ebe563d1a1f141d0cbe6c7b26ebd939380c648e1921c690` |
| 10 | `lemma` | [equivShrink_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-mul--c72ef308ecc57a93ac8be675.md) | 65 | `result-track:c72ef308ecc57a93ac8be675532e6076feee02f03d9ea333bf4fbaefc92acf2e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--87b83937bd4e2adcc7f8f42c.md) | 70 | `declaration-track:87b83937bd4e2adcc7f8f42cb8eb923368a713d2adc3074c9f6821001a8f726d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--10d4b61fd4244097125dcf31.md) | 73 | `declaration-track:10d4b61fd4244097125dcf310aa9ffc1a3be3914944a92aafa830b20635cd1a3` |
| 13 | `lemma` | [equivShrink_symm_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-sub--d40f80a7742302083d991135.md) | 76 | `result-track:d40f80a7742302083d991135df96badee21d688ab84b30a9a826fe62e292012b` |
| 14 | `lemma` | [equivShrink_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-sub--e90e61233541061fe34c89a4.md) | 82 | `result-track:e90e61233541061fe34c89a4df4e08094b85c9b2b759a027b7ec3128e8724458` |
| 15 | `lemma` | [equivShrink_symm_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-div--29e29b5fa1c207f3f6df5be8.md) | 88 | `result-track:29e29b5fa1c207f3f6df5be8d34320ef9cbe7a65da838e167846d84d96d11343` |
| 16 | `lemma` | [equivShrink_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-div--139d81d80a26c015a1cc1738.md) | 94 | `result-track:139d81d80a26c015a1cc1738e83571ea468094fa662f79ce8b8135bfebe237c4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--efcafcd844f1387fe6e455a3.md) | 99 | `declaration-track:efcafcd844f1387fe6e455a3d9fea6453561e3bc0a19b4c3528e44cfbc12f063` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--daada88daf8e1c663f19e731.md) | 102 | `declaration-track:daada88daf8e1c663f19e73153d6ebb7f865bedb21ded76a7919fa2bcd09ad69` |
| 19 | `lemma` | [equivShrink_symm_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-neg--5c07bf07ab4ba1e859ebc7a3.md) | 105 | `result-track:5c07bf07ab4ba1e859ebc7a312ad045c0ddece251dcf01a53ce2c1de72c946b5` |
| 20 | `lemma` | [equivShrink_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-neg--b7ad3565d8197cff8d538108.md) | 111 | `result-track:b7ad3565d8197cff8d538108e5ca408987edd4cbbe7844a15046ef764e0a6364` |
| 21 | `lemma` | [equivShrink_symm_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-symm-inv--27875cb00283f4e8cd218df2.md) | 117 | `result-track:27875cb00283f4e8cd218df21ef6301a578597c263ebdc1477b0bfe607a159ac` |
| 22 | `lemma` | [equivShrink_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/equivshrink-inv--ba8b1d80f28df717bf5587de.md) | 123 | `result-track:ba8b1d80f28df717bf5587de1c4b6cd64544e1564604771ed7d1f278d464e68d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--521619838bc28f28e6e3deca.md) | 128 | `declaration-track:521619838bc28f28e6e3deca377dc969d3ac67f1a0036c9c802ea077fcd04360` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--2f09c8a49e1eea7c40640084.md) | 131 | `declaration-track:2f09c8a49e1eea7c40640084b5522f430d0f3fa86024ef942340fd281b16845d` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--d8d7b064dca12af4c34bd705.md) | 133 | `declaration-track:d8d7b064dca12af4c34bd70515437359510d5cf32ff8220e3f9488b752a66d5b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--f70c769d24253800835e6ba5.md) | 136 | `declaration-track:f70c769d24253800835e6ba589fb9f456a72a152635301f58c16c20513894a73` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--138b8cedc6180b1555e0578a.md) | 140 | `declaration-track:138b8cedc6180b1555e0578aa37d103499f457e283122adf88ebe7f21368c40d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--19a38a7f2621a37115b54b48.md) | 143 | `declaration-track:19a38a7f2621a37115b54b48338848efb4c7e12c41e0f94e8342dbc03febda01` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--762b9488e0fb3e3d7b8b5d00.md) | 146 | `declaration-track:762b9488e0fb3e3d7b8b5d00ff3433f147be59acb95d3d8517c4602178de99cc` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--8726d0a44e3fea4cd0ecb038.md) | 150 | `declaration-track:8726d0a44e3fea4cd0ecb038af9907604234c56ee6faa5b84b0e761c18d4f14b` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--f44ef0eefe49ce3e3ce5a47b.md) | 153 | `declaration-track:f44ef0eefe49ce3e3ce5a47bb9e1949540d9989373332e30e08b9bbbe6e60627` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--07ac0efbb3b6c464fd28cd7d.md) | 156 | `declaration-track:07ac0efbb3b6c464fd28cd7d2878f0d26f0ee3de8ca1f87aee8a330f1343c9d2` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--a36d8bd96cfd61c1f8f2bff7.md) | 160 | `declaration-track:a36d8bd96cfd61c1f8f2bff7176bb0a87447f573226a88725a74b78ef1668a3c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--604f0259dca0e8a4cf966686.md) | 163 | `declaration-track:604f0259dca0e8a4cf9666865419dd2bb04ef7e87ad1040c700d8125471db85e` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--f2c7ed09e28123645d2eb822.md) | 167 | `declaration-track:f2c7ed09e28123645d2eb82283aad87acb47b34cc8cb2ff6ddcea53190d199d2` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--2f47d69d6dedcba354c4932a.md) | 170 | `declaration-track:2f47d69d6dedcba354c4932a2717ea5eb595da4c491831c40752c2c6a15b3a33` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--dc4ce98ffe4d85b410e44155.md) | 174 | `declaration-track:dc4ce98ffe4d85b410e44155474aa1659da981fde1912c5d6ea3a3b95df31cca` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--bfac69918d116409b870afb9.md) | 177 | `declaration-track:bfac69918d116409b870afb9b6638dd341f6f7478e1cad60b4275aa679020a70` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Group/Variantb8c430ff3350003395aaf7901faf536bfc5ad4698109292232077410efe3cc75.lean/declarations/instance--01009ba63a019d2ad42b79a8.md) | 181 | `declaration-track:01009ba63a019d2ad42b79a86ee38b77ed1e7a28b2ef9291da042e04eed47caa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
