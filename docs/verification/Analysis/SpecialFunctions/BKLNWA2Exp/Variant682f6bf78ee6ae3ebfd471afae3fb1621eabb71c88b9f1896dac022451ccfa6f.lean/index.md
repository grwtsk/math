# Verification target: GRWTSK.Analysis.SpecialFunctions.BKLNWA2Exp.Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7634a9e5fc82cb945fd67b14d17e174588f3ce7d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7634a9e5fc82cb945fd67b14d17e174588f3ce7d`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.BKLNW_a2_pow2` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Examples.BKLNW_a2` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [floor_20](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-20--8b09a65c0d2f99ab33ced9a6.md) | 36 | `result-track:8b09a65c0d2f99ab33ced9a602ba1cb1f2f27d7e319f21925a92376417ff229d` |
| 2 | `lemma` | [f_exp_20_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-20-eq--5d96be2e8ca472c039a5e7f6.md) | 42 | `result-track:5d96be2e8ca472c039a5e7f68d3f2d847f4ef9f32dec0128789f8a654354793f` |
| 3 | `lemma` | [a2_20_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-20-exp-lower--16f246b30f3ac1a9d25a11ac.md) | 50 | `result-track:16f246b30f3ac1a9d25a11accffa4fa96fb13d2e32dff22aa9de0585ba8ce8a6` |
| 4 | `lemma` | [a2_20_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-20-exp-upper--2af2c903bc2b98559ccff709.md) | 54 | `result-track:2af2c903bc2b98559ccff709f32c3368ef5b2256f47e03b477a6680e8bb3b81c` |
| 5 | `lemma` | [floor_25](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-25--012138790280b42f1ec9e8e5.md) | 61 | `result-track:012138790280b42f1ec9e8e5abf0a70d3920f287bfc7fb3164d22deae9706245` |
| 6 | `lemma` | [f_exp_25_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-25-eq--bfd784fa74a2a9e5b17611ed.md) | 67 | `result-track:bfd784fa74a2a9e5b17611ed4062b82c5076d1061a195ba7ae63e127e48c05fd` |
| 7 | `lemma` | [a2_25_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-25-exp-lower--b633834a5ea2e8f48333ea67.md) | 75 | `result-track:b633834a5ea2e8f48333ea6791f631a24022f5dc0d510039a0becfd2f08ac8b1` |
| 8 | `lemma` | [a2_25_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-25-exp-upper--3ae4db1a6f92fd2288af5b76.md) | 79 | `result-track:3ae4db1a6f92fd2288af5b76b3b0afe232e257859b7fee50247aa679bc6b12ff` |
| 9 | `lemma` | [floor_30](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-30--cbe3906986f6ec4128155781.md) | 86 | `result-track:cbe3906986f6ec412815578131a458a72813a43882de215d0481629cc7b5dfe8` |
| 10 | `lemma` | [f_exp_30_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-30-eq--9cb4753daa4d21002a842ea6.md) | 92 | `result-track:9cb4753daa4d21002a842ea65ea2653817da3ba2448dff1166cb5ee2199699c2` |
| 11 | `lemma` | [a2_30_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-30-exp-lower--426da42fbe603ff1ca7d2ded.md) | 100 | `result-track:426da42fbe603ff1ca7d2ded97b69dcb449ddbf4bd35b6d7abfd6133f49d0203` |
| 12 | `lemma` | [a2_30_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-30-exp-upper--0b6fa614fbbe1a495dc9ad03.md) | 104 | `result-track:0b6fa614fbbe1a495dc9ad0354adc47813c5a9f75b33a5640c08ffde38a303b2` |
| 13 | `lemma` | [floor_35](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-35--0577be62630ad2b7ccc925c1.md) | 111 | `result-track:0577be62630ad2b7ccc925c12af5911221b72244f2bc35d3abad6ff848e56c10` |
| 14 | `lemma` | [f_exp_35_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-35-eq--6435e4ca142914786a793288.md) | 117 | `result-track:6435e4ca142914786a79328824b20fd18c91fd2edd3ef9635cd18c9f92212d81` |
| 15 | `lemma` | [a2_35_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-35-exp-lower--bf8f2f1274fc4a0689a4acb4.md) | 125 | `result-track:bf8f2f1274fc4a0689a4acb4493b74cbfcb40871a517c1e4e5543e42d8bbbf2c` |
| 16 | `lemma` | [a2_35_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-35-exp-upper--b97424861c4ba4d8fc0cdc42.md) | 129 | `result-track:b97424861c4ba4d8fc0cdc42b55a90bfdf1b8c3f7f51a01f2ecc471820391aa1` |
| 17 | `lemma` | [floor_40](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-40--f1a4178d8f497e608f2167ad.md) | 136 | `result-track:f1a4178d8f497e608f2167ad3943f354f8ce79f2b5b1535409c6dd3e22cc1efc` |
| 18 | `lemma` | [f_exp_40_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-40-eq--be6c160fab7e9e5cbe8cfbcf.md) | 142 | `result-track:be6c160fab7e9e5cbe8cfbcfc41f899112eb1c3943a5ec43eb60996eeb30f419` |
| 19 | `lemma` | [a2_40_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-40-exp-lower--7cdf92b6bdfc3385da8ff45d.md) | 150 | `result-track:7cdf92b6bdfc3385da8ff45d18f2d895884f9b17c0cbcaa8aee28fa684231fa1` |
| 20 | `lemma` | [a2_40_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-40-exp-upper--c896cb6cadc82f13b50c7ff4.md) | 154 | `result-track:c896cb6cadc82f13b50c7ff4732171146ff8e2dd2de583cdf5b37fba341e96bf` |
| 21 | `lemma` | [floor_43](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-43--7b1b82f69b53f8a337dec957.md) | 161 | `result-track:7b1b82f69b53f8a337dec957f5170b72c3bbd9b85f49823b18518ec6a638a620` |
| 22 | `lemma` | [f_exp_43_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-43-eq--d9e5ba5b194ae220fe89a3c2.md) | 167 | `result-track:d9e5ba5b194ae220fe89a3c2585a94f4096f41bb8de6ae70b651268458b327b9` |
| 23 | `lemma` | [a2_43_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-43-exp-lower--5950fc86e90cdc3b85cc65e9.md) | 175 | `result-track:5950fc86e90cdc3b85cc65e92519331e851237fef197f0565e909485f6ab837a` |
| 24 | `lemma` | [a2_43_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-43-exp-upper--24e2881accc03ab31a6a133e.md) | 179 | `result-track:24e2881accc03ab31a6a133e1b657b8c8bc92531b526e4da29344b5b68622b2a` |
| 25 | `lemma` | [floor_100](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-100--4caeeb291ecc8acba3a4979a.md) | 186 | `result-track:4caeeb291ecc8acba3a4979a0c376501407f899e47ebf41b6107078cf82e3bd2` |
| 26 | `lemma` | [f_exp_100_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-100-eq--3328025cbaf352a8d046fe89.md) | 194 | `result-track:3328025cbaf352a8d046fe892876d2502780455623d30b164d12a2d6769bdf01` |
| 27 | `lemma` | [a2_100_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-100-exp-lower--2da91c0d2c39958267128000.md) | 227 | `result-track:2da91c0d2c3995826712800088f52d06f31deb98faf8c743bc8c46f4d1b037e0` |
| 28 | `lemma` | [a2_100_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-100-exp-upper--1c52b6d58524a99ac05d77c4.md) | 234 | `result-track:1c52b6d58524a99ac05d77c4ad15f9c8cdeeca1fe1e760ca0c9c00799d1e14a7` |
| 29 | `lemma` | [floor_150](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-150--6de954a8ec211fcf1e8a290e.md) | 241 | `result-track:6de954a8ec211fcf1e8a290ee1f3bc3c1ffdf48f9c9c8a07d192f81b2e1d9c17` |
| 30 | `lemma` | [f_exp_150_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-150-eq--dbc913ba955867740a1551ee.md) | 249 | `result-track:dbc913ba955867740a1551eea4763c39b48d15f3039fb5aecfacbfe92348c509` |
| 31 | `lemma` | [a2_150_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-150-exp-lower--6622218312a0b9673705531b.md) | 294 | `result-track:6622218312a0b9673705531b514f684a5f3e524cf2bf0bbcc56aa0e1157d5d86` |
| 32 | `lemma` | [a2_150_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-150-exp-upper--1251770a750f65b435a58d68.md) | 301 | `result-track:1251770a750f65b435a58d688011c9104711041301b4f4c5f4743a88e6f3d643` |
| 33 | `lemma` | [floor_200](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-200--713abaf8937cd9fe652cb2f3.md) | 308 | `result-track:713abaf8937cd9fe652cb2f3cf93a8bdbd850c2987e2152166c0e2dc6314d3da` |
| 34 | `lemma` | [f_exp_200_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-200-eq--2b4928800ffa727fa516db4e.md) | 316 | `result-track:2b4928800ffa727fa516db4ec6a97f0d8cb7ed2f54438a0547ccb3bd857faf80` |
| 35 | `lemma` | [a2_200_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-200-exp-lower--6634c65ce52a8f297c484c1f.md) | 373 | `result-track:6634c65ce52a8f297c484c1f7086b58d59ffeedbf95c9f5c37fc3a7d83475d92` |
| 36 | `lemma` | [a2_200_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-200-exp-upper--e47d908e7d08900242f7cece.md) | 380 | `result-track:e47d908e7d08900242f7cece4ebe1e41fc7495198ef9967c18eb343a8a90f8c7` |
| 37 | `lemma` | [floor_250](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-250--5d22eb5b6143e7390c312bdf.md) | 387 | `result-track:5d22eb5b6143e7390c312bdf3eb914d21724e22bd35d53b94d1c45369b4be713` |
| 38 | `lemma` | [f_exp_250_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-250-eq--b348c71384f6efabdb81d22a.md) | 395 | `result-track:b348c71384f6efabdb81d22afa5046b987c839b5f5d3dbdfab07c6c2d2880ea5` |
| 39 | `lemma` | [a2_250_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-250-exp-lower--603b71013e25ae14697ab2e0.md) | 464 | `result-track:603b71013e25ae14697ab2e0b4a9baec37f5a29f30bc776ec245345d15177d36` |
| 40 | `lemma` | [a2_250_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-250-exp-upper--d5ce6c04bdd33460d364e5c4.md) | 471 | `result-track:d5ce6c04bdd33460d364e5c4d9a103033f6cbd9d5b13507f20313acdf1c954d5` |
| 41 | `lemma` | [floor_300](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/floor-300--fd782e865a9dc052cc80eb45.md) | 478 | `result-track:fd782e865a9dc052cc80eb45bef65359c294bac6f520fd6cf7357f25bc603272` |
| 42 | `lemma` | [f_exp_300_eq](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/f-exp-300-eq--26936ecd0314d6b7322aa861.md) | 486 | `result-track:26936ecd0314d6b7322aa86178734ef64082829751f1c6a64f9ccef105906d23` |
| 43 | `lemma` | [a2_300_exp_lower](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-300-exp-lower--f0792364801303b1137b7f14.md) | 567 | `result-track:f0792364801303b1137b7f14056957a634af6d1773d0ba22e774eca52da412e2` |
| 44 | `lemma` | [a2_300_exp_upper](../../../../../mathematics/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/declarations/a2-300-exp-upper--beec76408dd36f4082ee723d.md) | 574 | `result-track:beec76408dd36f4082ee723dd0391046348d07acee51a39b09219723672302ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
