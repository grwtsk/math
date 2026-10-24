# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f313f447bdfd2c3f78e9fcc50537fe1bc76a2987",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f313f447bdfd2c3f78e9fcc50537fe1bc76a2987`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OneMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/onememclass--ad083b2a595e5e3495c1e331.md) | 66 | `declaration-track:ad083b2a595e5e3495c1e3310768eba24f2947de3fbf3e88d7491e821f7e32b9` |
| 2 | `class` | [ZeroMemClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/zeromemclass--44c89a2b0e362f9202122f1c.md) | 73 | `declaration-track:44c89a2b0e362f9202122f1c1c5740bf7a70a8b94296292b1183f82e7a1f355c` |
| 3 | `structure` | [Submonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/submonoid--aed1699c718049cc0c167ea1.md) | 86 | `declaration-track:aed1699c718049cc0c167ea1f7f3884f8c0231932579ae28265264419c373875` |
| 4 | `class` | [SubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/submonoidclass--87e3017e97c37ed728810c13.md) | 97 | `declaration-track:87e3017e97c37ed728810c13fb8fbe14748220bf13cc73a8fdc7f8c2ddab801a` |
| 5 | `structure` | [AddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/addsubmonoid--682a71677a069a0f885a758c.md) | 104 | `declaration-track:682a71677a069a0f885a758c50190209830f3afbdc120d87f4ff755686c76e56` |
| 6 | `class` | [AddSubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/addsubmonoidclass--85de04e1e7f9c7884c5e870b.md) | 116 | `declaration-track:85de04e1e7f9c7884c5e870b13f168f62f35d80071555e1d7fb2a18afee18800` |
| 7 | `theorem` | [pow_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/pow-mem--8de2bbc2aa0b2864d7e01dfc.md) | 122 | `result-track:8de2bbc2aa0b2864d7e01dfc4cf88a22d20633081f90d2b40044b06ba96ffda6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--bb2fdbbc80e6b7eb0b0080b4.md) | 134 | `declaration-track:bb2fdbbc80e6b7eb0b0080b4db367423681004ae39b5c14c14a94174c0c7c523` |
| 9 | `def` | [ofClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/ofclass--4eb75951672fccad9fdc6cb0.md) | 144 | `declaration-track:4eb75951672fccad9fdc6cb02c76d4f27e898064685db74a091d2fccf6ef34a9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--84325736fe0c0d86ba58148d.md) | 148 | `declaration-track:84325736fe0c0d86ba58148d53f93b14b8048faf42b75df94475703f29441ca2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--09af5aad8a6660366cb62020.md) | 153 | `declaration-track:09af5aad8a6660366cb620207248dd2e055535b1eddb485e4035bbc0529566a0` |
| 12 | `theorem` | [mem_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-tosubsemigroup--2dcf7d3e57d65077d6db376d.md) | 158 | `result-track:2dcf7d3e57d65077d6db376d81137c0a04b77fe1f23b9d492c7aae2c0ccef80b` |
| 13 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-carrier--7f4a9c2796f58ce5f1711654.md) | 162 | `result-track:7f4a9c2796f58ce5f1711654d3843ab56f52991c550dc95a111e0a25a99ce01a` |
| 14 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-mk--23ff91562c35740b1f0192f3.md) | 166 | `result-track:23ff91562c35740b1f0192f3cbea2050fcc701134bb9c4fdcd45ab1ac9c1dd87` |
| 15 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-set-mk--485d1f0f1d4d6b9dd86c10a3.md) | 170 | `result-track:485d1f0f1d4d6b9dd86c10a37b8b4b6a558f52d746406ddd7870b3f4f4eb50cf` |
| 16 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mk-le-mk--d1fe24c9f8650c539d752900.md) | 174 | `result-track:d1fe24c9f8650c539d752900bd074b544260fe6d90bfb8975e19905f5aa81fc9` |
| 17 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/ext--69b1049cbdc90f1cb76b49c7.md) | 179 | `result-track:69b1049cbdc90f1cb76b49c785f9be7a3581c06d77e77f20179f653e6e2d946a` |
| 18 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/copy--e3286d5365249203b7744dd0.md) | 184 | `declaration-track:e3286d5365249203b7744dd06ef471b5f40e2bc4a84761049fa51e95e6d47d79` |
| 19 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-copy--084b00fccae6650a029832d2.md) | 192 | `result-track:084b00fccae6650a029832d28ec5097feeed437de0108279668e467b9bce831a` |
| 20 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/copy-eq--25d72a2f9859181d8fe15960.md) | 196 | `result-track:25d72a2f9859181d8fe15960867f72ab632f1ffb652052a52d9badd6a7d0519b` |
| 21 | `theorem` | [one_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/one-mem--3a47c03ddc347dec0639a350.md) | 203 | `result-track:3a47c03ddc347dec0639a350c26f4cabe2d54c67ef1cb1746818ff2e32b03006` |
| 22 | `theorem` | [mul_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mul-mem--7f1eb1297d8b35cf3087eac1.md) | 208 | `result-track:7f1eb1297d8b35cf3087eac196be275f046c9573e09a1ba84888e01205c556a9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--fce9af91bbe243e453d94824.md) | 213 | `declaration-track:fce9af91bbe243e453d94824210276ee864648d13667d4b678500ff7f5020f65` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--813988a9098a066c278877cf.md) | 220 | `declaration-track:813988a9098a066c278877cfcf182262149352308b9cd6ed4871171320988ee0` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--cdb17538e87d11a59022c30a.md) | 228 | `declaration-track:cdb17538e87d11a59022c30aaca37a89d50370ac128fce42eb905aaf2444ad44` |
| 26 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-bot--6078a48c76c6201b70ac84ed.md) | 232 | `result-track:6078a48c76c6201b70ac84ed52cf6afe34bdfeee0e23bd024f731375debb3bcd` |
| 27 | `theorem` | [mem_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-top--e322dc0ff1b359edf996d9e9.md) | 236 | `result-track:e322dc0ff1b359edf996d9e94082f92d5792a83bbbff5312dfa01aaf5f70ac05` |
| 28 | `theorem` | [coe_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-top--9ebf6541ac77c0073c288ef7.md) | 240 | `result-track:9ebf6541ac77c0073c288ef7faf6198ca89da6b1a519e757f6e1b28bbaeebdb1` |
| 29 | `theorem` | [coe_bot](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-bot--e02f73353feaa3cb382faf3b.md) | 244 | `result-track:e02f73353feaa3cb382faf3bcb1da4b9cedc7bf68b51978985a3f6ceea1bc8c3` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--595af6d9576f4c7733f40759.md) | 249 | `declaration-track:595af6d9576f4c7733f407598d88cadd409333c2c43e18a1a6c7b5378429c651` |
| 31 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-inf--644ff85e959f0f92dd355cda.md) | 256 | `result-track:644ff85e959f0f92dd355cdac4bbd3771d76b4249981fea1a37f954cdac6db23` |
| 32 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mem-inf--3ef8230ded9b902386505e07.md) | 260 | `result-track:3ef8230ded9b902386505e0727b20737702877c2b2a70618c0e73419cd23673d` |
| 33 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subsingleton-iff--76a0b72f38e276851bde19d9.md) | 264 | `result-track:76a0b72f38e276851bde19d984121bc521ec37995cb1b683e713af1f5b132a23` |
| 34 | `theorem` | [nontrivial_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/nontrivial-iff--efa9cef3aea75cb1761d035c.md) | 274 | `result-track:efa9cef3aea75cb1761d035c34798057eb62304b2a38a8c0eb6d746b98ba1b95` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--80f47e625eba6838cd057452.md) | 280 | `declaration-track:80f47e625eba6838cd057452ee3874907d6e8d79b3d3468afca77c3eb5c4d42c` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--6189aa4d6e702ac5e3258b5f.md) | 284 | `declaration-track:6189aa4d6e702ac5e3258b5faa459d95f64c339240ed9e41bd2b4eeb3be02c8c` |
| 37 | `def` | [eqLocusM](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/eqlocusm--01cb428b1bc65d5631c8bcc8.md) | 297 | `declaration-track:01cb428b1bc65d5631c8bcc84e5bf4d6a09e3543407882ed7521b06304c251ab` |
| 38 | `theorem` | [eqLocusM_same](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/eqlocusm-same--701fa21c12b866812d8dc358.md) | 303 | `result-track:701fa21c12b866812d8dc3586a616cfbb210938e3f46a0e9d3917fe599318921` |
| 39 | `theorem` | [eq_of_eqOn_topM](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/eq-of-eqon-topm--f8d8af91d793595918bd5e86.md) | 307 | `result-track:f8d8af91d793595918bd5e864ecd5114aac6430a69abfccbf19eac50ced9495c` |
| 40 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/one--bc8864d86e66a7513f0842d3.md) | 320 | `declaration-track:bc8864d86e66a7513f0842d37bae4ff2a012123285bac0796d9f5dd3e94e288e` |
| 41 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-one--af7766084c16890e70c893e1.md) | 324 | `result-track:af7766084c16890e70c893e12bb0ca047d92400718250a289efc326a01bd6247` |
| 42 | `theorem` | [coe_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-eq-one--382c76f8b0137bd84ddb5a78.md) | 330 | `result-track:382c76f8b0137bd84ddb5a78cd101a8193e9b42a2e8b4d17150456774c3c0df9` |
| 43 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/one-def--da42a86eb29a2f4ace5464d5.md) | 336 | `result-track:da42a86eb29a2f4ace5464d5c9890f3f0e8122707963eae36acca526350e66b5` |
| 44 | `instance` | [AddSubmonoidClass.nSMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/addsubmonoidclass-nsmul--cd62f3b05c04c23ff15f1a7a.md) | 344 | `declaration-track:cd62f3b05c04c23ff15f1a7a1fa5096479709e778ca7e7a29485bcfd32e341dd` |
| 45 | `instance` | [nPow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/npow--64bdce41c0ae4a6a540c79f2.md) | 351 | `declaration-track:64bdce41c0ae4a6a540c79f2fa0ac8fb10173e6a87674fbade5bb9d30e53cefa` |
| 46 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-pow--3ef2093951ab876a7f931fcd.md) | 357 | `result-track:3ef2093951ab876a7f931fcd74c29032871d1e40f3fbe5dd398f7fbf35e51509` |
| 47 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mk-pow--92e9265d3b31c6d83caa2130.md) | 362 | `result-track:92e9265d3b31c6d83caa2130291da8e3cf7d9cced8e96d2dfbd9fa118419f9b4` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--95d4d94fbdb883baa4524254.md) | 370 | `declaration-track:95d4d94fbdb883baa4524254047d908851cb32667f000cd261017e746fbce450` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--cf84632c18429c722f161556.md) | 377 | `declaration-track:cf84632c18429c722f16155686198de76e87c2c94828ae9a54937bd8ed3f99a1` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/instance--f50f6ff24950fd2d4008bdc0.md) | 384 | `declaration-track:f50f6ff24950fd2d4008bdc0dc7fa0058b1901fdbe11218ea89d31298f0284d5` |
| 51 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype--ea3b7a2104b0faf0b950ec30.md) | 390 | `declaration-track:ea3b7a2104b0faf0b950ec30cb8fa51e6978aec8392d85d5d8f3404792986f84` |
| 52 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype-apply--c159a6d3f91da390e0ebd601.md) | 395 | `result-track:c159a6d3f91da390e0ebd601b1a8d41a3f18f26cce8a2141d44eb0a0e7def9c3` |
| 53 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype-injective--53eea70aceff07065e667b5e.md) | 399 | `result-track:53eea70aceff07065e667b5e3c2f3ff6048da101a807b164eef1748a9a1376d5` |
| 54 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-subtype--9d11615f1cf1fe6817c8c051.md) | 404 | `result-track:9d11615f1cf1fe6817c8c05195f6701d9309966d130c70662d1c7cd7abb6a2c4` |
| 55 | `instance` | [mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mul--4dc2235b61484dc6b2c0b022.md) | 415 | `declaration-track:4dc2235b61484dc6b2c0b02269c62aa5eff4fdb641dae5b56de62d42104e21df` |
| 56 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/one--a77b2e6647b78a74947a2228.md) | 420 | `declaration-track:a77b2e6647b78a74947a2228be8c948815adb3829e5a0ca2c2e8ee2188736867` |
| 57 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-mul--86bfd024354757253c64a33f.md) | 424 | `result-track:86bfd024354757253c64a33fbd0e1fd52efec7e2348edb644b0504cf97d0380d` |
| 58 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-one--0fdb35b9efac1a6d0f4bdd4b.md) | 428 | `result-track:0fdb35b9efac1a6d0f4bdd4b3fb4461165782d0ca175cb495b40b1279ed20494` |
| 59 | `lemma` | [mk_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mk-eq-one--d491d5e275ec7f1abcdbfa07.md) | 432 | `result-track:d491d5e275ec7f1abcdbfa07fd32f1a2b7ce893b55ca15f415e516f17d372057` |
| 60 | `theorem` | [mk_mul_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mk-mul-mk--d3977530793041ca7e9a6d2c.md) | 435 | `result-track:d3977530793041ca7e9a6d2ce29ea00c8a7c1f61fa52edfcbcb4d949162110fc` |
| 61 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/mul-def--581303ca3d47ec0b27579755.md) | 440 | `result-track:581303ca3d47ec0b275797554afe6f489a36d9558a13e22c5902548bc9a7bd6b` |
| 62 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/one-def--0843a1ae85b932f2941b973b.md) | 444 | `result-track:0843a1ae85b932f2941b973ba2f8c484093057a27bd88106cb1aa8b976c354f5` |
| 63 | `instance` | [toMulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/tomuloneclass--66a51a164125f60cfb9f6ad0.md) | 450 | `declaration-track:66a51a164125f60cfb9f6ad07a6d219367824b5c7cc6361b547c81fa70a51dec` |
| 64 | `theorem` | [pow_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/pow-mem--36ff42525370dff5561783d7.md) | 455 | `result-track:36ff42525370dff5561783d7ae5c13a8e7dca41be1b3c861d7508b48c72cc032` |
| 65 | `instance` | [toMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/tomonoid--9ad734d1a7e5ea163a95bc6d.md) | 461 | `declaration-track:9ad734d1a7e5ea163a95bc6d97605fc561e8e0d41e81e148ff75eb298d559248` |
| 66 | `instance` | [toCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/tocommmonoid--d92409f76263d8ae3f35a1d5.md) | 466 | `declaration-track:d92409f76263d8ae3f35a1d54ce5b30c853c2c0c3319da09018f6e7d41b35fc6` |
| 67 | `def` | [subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype--b99a2b84badb595d1e8d0eaa.md) | 471 | `declaration-track:b99a2b84badb595d1e8d0eaa03c3fd70c41d62f609432deb8b4be9c790759a1f` |
| 68 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype-apply--323f6ea3f7972057f10e6444.md) | 475 | `result-track:323f6ea3f7972057f10e6444d2fd5b2790152c213503d1c4217d12aa605e18b8` |
| 69 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/subtype-injective--1dececb484b0181fbbb68d4d.md) | 479 | `result-track:1dececb484b0181fbbb68d4df8bed762aad28922f068295d660d5c1560b04012` |
| 70 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant3d609fb7462aad5ad98fefcfd4215ead76066c0426432e7aba023ae9892125d8.lean/declarations/coe-subtype--da6a8c0cf8f83b5c84b0a10b.md) | 484 | `result-track:da6a8c0cf8f83b5c84b0a10b4ddaa453b2b0b7d2d3cf62d6831ed6dce124c179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
