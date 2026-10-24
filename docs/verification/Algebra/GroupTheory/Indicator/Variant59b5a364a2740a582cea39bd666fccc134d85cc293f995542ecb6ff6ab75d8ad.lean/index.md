# Verification target: GRWTSK.Algebra.GroupTheory.Indicator.Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74e9482e760ee714ccff8b80780e463cfb52b7b5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74e9482e760ee714ccff8b80780e463cfb52b7b5`.

Source path: `GRWTSK/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [indicator_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-mul--3d171764b184cfbd2060e5c4.md) | 31 | `result-track:3d171764b184cfbd2060e5c4a4961ec8b4e56791f94c23e4020f09200d6fc0fb` |
| 2 | `lemma` | [indicator_mul_left](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-mul-left--b06334fc6a6429ee5ce8c155.md) | 39 | `result-track:b06334fc6a6429ee5ce8c15529b7b09b13ebf1e0305f19f644c0ec2236dbe4f1` |
| 3 | `lemma` | [indicator_mul_right](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-mul-right--48e6c5c8ad07febb8238350e.md) | 46 | `result-track:48e6c5c8ad07febb8238350e6e7a44e1d639a788a776fd1c700f4b703b2ec81f` |
| 4 | `lemma` | [indicator_mul_const](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-mul-const--236510842d319db2edb3d810.md) | 53 | `result-track:236510842d319db2edb3d8109a38e2410910a5a37446c9126acccbe03c25f3ec` |
| 5 | `lemma` | [indicator_const_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-const-mul--122e5ece4d22455601cc6b1c.md) | 56 | `result-track:122e5ece4d22455601cc6b1cb8123cf9ec42b9915f7296daf2db801d21acc259` |
| 6 | `lemma` | [inter_indicator_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/inter-indicator-mul--4ccd0b30be3b10647e08cf7f.md) | 59 | `result-track:4ccd0b30be3b10647e08cf7f5f35dff429fbd4d91fae6bf4c06b63e2ba530af8` |
| 7 | `lemma` | [inter_indicator_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/inter-indicator-one--03efe4edcea23c513a671384.md) | 70 | `result-track:03efe4edcea23c513a671384543e492c0085e7c05e944255de51953f57071e5f` |
| 8 | `lemma` | [indicator_prod_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-prod-one--2cfe94b158cebb13c3e9a844.md) | 73 | `result-track:2cfe94b158cebb13c3e9a8442fae240f16f24d1ffb66d02f1e6d30fbcd430e69` |
| 9 | `lemma` | [indicator_eq_zero_iff_notMem](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-eq-zero-iff-notmem--fd48b7e104d1f1f802c4c7b9.md) | 80 | `result-track:fd48b7e104d1f1f802c4c7b9c80d6d6a25fd5776e0f3d940a2a98b848ac4b09c` |
| 10 | `lemma` | [indicator_eq_one_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-eq-one-iff-mem--f4c57f70d040fb031471b28f.md) | 86 | `result-track:f4c57f70d040fb031471b28f2a84a6135de4a58b83a2a12088ee8633fec996ef` |
| 11 | `lemma` | [indicator_one_inj](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/indicator-one-inj--d3fa030d954548cd431cafed.md) | 89 | `result-track:d3fa030d954548cd431cafed99d5b08b5304376344cb199314bc78a7d76a1c01` |
| 12 | `lemma` | [support_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-one--4de841bb5436be3962046be7.md) | 99 | `result-track:4de841bb5436be3962046be7bb9e4bcba656cf73a7fdfa8fa3e3776b8b6fe5c0` |
| 13 | `lemma` | [mulSupport_zero](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-zero--4df68c72e9d81aaa75be776b.md) | 101 | `result-track:4df68c72e9d81aaa75be776ba221be0835aedd360873c6dd96e95d3cfcc3d79e` |
| 14 | `lemma` | [support_mul_subset_left](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-mul-subset-left--73fbf8ac177f3dee6ba2c692.md) | 109 | `result-track:73fbf8ac177f3dee6ba2c69255187144406ae72f4a0bc0d59660526b442f1c9a` |
| 15 | `lemma` | [support_mul_subset_right](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-mul-subset-right--1ff8d8edcf255b0d085db94d.md) | 113 | `result-track:1ff8d8edcf255b0d085db94d9cf5ffc0b962acffb4f26f40aa1ee93454e728fa` |
| 16 | `lemma` | [support_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-mul--1506133116de22f31cf8e9a5.md) | 118 | `result-track:1506133116de22f31cf8e9a5e8f98bcc0b83bf03e5fd689e2c1fb7deb98fd069` |
| 17 | `lemma` | [support_mul'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-mul--f10142c49ae32412337e157f.md) | 121 | `result-track:f10142c49ae32412337e157fdb88564c69f44f7131deb6665f205e6b466a6a72` |
| 18 | `lemma` | [support_pow](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-pow--ad86176ddace255f1c707beb.md) | 129 | `result-track:ad86176ddace255f1c707bebc35875027d3c977625777b377c8b198cd16afdf6` |
| 19 | `lemma` | [support_pow'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-pow--6202c67f0fd3a41ace8e5912.md) | 132 | `result-track:6202c67f0fd3a41ace8e59126bf24a1a6eb2a3e9a8391126044914ac09e09bc3` |
| 20 | `lemma` | [support_inv](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-inv--8c5f57b99bbaf810379230fa.md) | 140 | `result-track:8c5f57b99bbaf810379230fa91a58d0a5ba30755d84a0b466e4f76d869c866d2` |
| 21 | `lemma` | [support_inv'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-inv--c704bcd97fcbd425dd2ee3af.md) | 143 | `result-track:c704bcd97fcbd425dd2ee3af859ec4467c9ca76cce96fcf54dba99ce074f33ce` |
| 22 | `lemma` | [support_div](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-div--10601c552a89f34e5e932971.md) | 145 | `result-track:10601c552a89f34e5e93297131ef9de22880adc8169d6ba950b1f96ea7a9697c` |
| 23 | `lemma` | [support_div'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/support-div--6a882c091eec77cf818a998c.md) | 148 | `result-track:6a882c091eec77cf818a998c7e2b2ed5210a3464c66354930f0a8f38c61e18af` |
| 24 | `lemma` | [mulSupport_one_add](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-one-add--208d0690cce07c5eff504a1f.md) | 155 | `result-track:208d0690cce07c5eff504a1f3e6b6fdb2cae94c14507969c975af1e1ae0ec9a1` |
| 25 | `lemma` | [mulSupport_one_add'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-one-add--5b8215d5f0769979853212f3.md) | 159 | `result-track:5b8215d5f0769979853212f31c304e2388915a8c76b6922dff4d76bf090a803a` |
| 26 | `lemma` | [mulSupport_add_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-add-one--af22b4c8e69cdae1dcf57a5c.md) | 162 | `result-track:af22b4c8e69cdae1dcf57a5c52dde008154021468e3b156dd3e64d2e7973f29b` |
| 27 | `lemma` | [mulSupport_add_one'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-add-one--d22ad7df51858e09fbc92b11.md) | 165 | `result-track:d22ad7df51858e09fbc92b11c2f08fd93634733946b341945e83e21b28a3c5e7` |
| 28 | `lemma` | [mulSupport_one_sub'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-one-sub--e6c5d7bd1fd216e3d9982268.md) | 168 | `result-track:e6c5d7bd1fd216e3d99822687792223bf9839c1bfc21341ff9f87bda41e84681` |
| 29 | `lemma` | [mulSupport_one_sub](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variant59b5a364a2740a582cea39bd666fccc134d85cc293f995542ecb6ff6ab75d8ad.lean/declarations/mulsupport-one-sub--7962a0534763c5c87f98146b.md) | 171 | `result-track:7962a0534763c5c87f98146b5a30e1cacf99877c9c0ebf064b952bc1833641c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
