# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Smeval.Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e208ab723045f89c935ee9ae2acb3075cf02384",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e208ab723045f89c935ee9ae2acb3075cf02384`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.NatPowAssoc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smul-pow--f770a7811e76904109eaa3dd.md) | 56 | `declaration-track:f770a7811e76904109eaa3dd77db9105246e47d2b65204902dd90b1ffaf46e19` |
| 2 | `theorem` | [smeval_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-eq-sum--b3cb7de3e29793013f4e5519.md) | 62 | `result-track:b3cb7de3e29793013f4e5519d2a4183eeaa1eea1086f68d8f5feb24fbd02f43a` |
| 3 | `theorem` | [smeval_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-c--9b8b8cb707e0b9f2444cacf2.md) | 65 | `result-track:9b8b8cb707e0b9f2444cacf2edb6b57e5e6f1efa8be73573d69a6cadacaf7a01` |
| 4 | `theorem` | [smeval_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-monomial--da7b1e9c3beb89eb15b55f56.md) | 69 | `result-track:da7b1e9c3beb89eb15b55f566cd35fd19b309d671e9bb4e2ba941c76cfcb89fd` |
| 5 | `theorem` | [eval_eq_smeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/eval-eq-smeval--67d20b1783f4d3b035805898.md) | 73 | `result-track:67d20b1783f4d3b0358058980f0f93c10f3d808d290b26400eaab0557f1ac569` |
| 6 | `theorem` | [eval₂_smulOneHom_eq_smeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/eval-smulonehom-eq-smeval--9fd4e3b30b4539dcdb22a454.md) | 77 | `result-track:9fd4e3b30b4539dcdb22a454faa19ca621c8243daca6bf09aca5f9f80c0dbafc` |
| 7 | `theorem` | [smeval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-zero--ec744af39afae094869e6130.md) | 87 | `result-track:ec744af39afae094869e6130cbf79ce9b7eac8c9be6c70186101d1ef032e0b31` |
| 8 | `theorem` | [smeval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-one--9ce52b55a15e255de2d4399a.md) | 91 | `result-track:9ce52b55a15e255de2d4399ad70ca36d6c5fbd5d6caefe4e4cff742356e40052` |
| 9 | `theorem` | [smeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-x--1f826178ed09f0bf9896ef71.md) | 96 | `result-track:1f826178ed09f0bf9896ef71c3c029dc7e549adf7a4bd4bb0fffb2012893132a` |
| 10 | `theorem` | [smeval_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-x-pow--03ccad0b0da40b1608e49027.md) | 101 | `result-track:03ccad0b0da40b1608e49027c57b7308cc8d5fe3794265dbf9e7c3ae776f1c1e` |
| 11 | `theorem` | [smeval_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-add--e9563f2cd8dd9ab9b2b59851.md) | 113 | `result-track:e9563f2cd8dd9ab9b2b5985103dae7362b638bf6038a137cf61f8b854c5c444f` |
| 12 | `theorem` | [smeval_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-natcast--e0ce5a500f1ba7803bbd4e07.md) | 119 | `result-track:e0ce5a500f1ba7803bbd4e07fd9bd3b8a961b6966a3386c70f64066b558fcffb` |
| 13 | `theorem` | [smeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-smul--578ccec1dffc1c57f43cb5ea.md) | 125 | `result-track:578ccec1dffc1c57f43cb5ea1858a62776111b108626250e64ab0b09024c0dba` |
| 14 | `def` | [smeval.linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-linearmap--35e4a8574927b2dc6011c31e.md) | 131 | `declaration-track:35e4a8574927b2dc6011c31ebe09ff95404fba828055197338de36ce50ca01dd` |
| 15 | `theorem` | [smeval.linearMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-linearmap-apply--ac3536bcdcfbcf4be95e1239.md) | 137 | `result-track:ac3536bcdcfbcf4be95e12391234004893694bb5df750fc5503658e65b83df8f` |
| 16 | `theorem` | [leval_coe_eq_smeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/leval-coe-eq-smeval--a5e298a72a91dfbc7984241a.md) | 139 | `result-track:a5e298a72a91dfbc7984241ab16b9c8cd933b1051ab238f103bfa915b1e7d39c` |
| 17 | `theorem` | [leval_eq_smeval.linearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/leval-eq-smeval-linearmap--c772d32844cad9e1af1cf925.md) | 146 | `result-track:c772d32844cad9e1af1cf925bec4026077fe8ff6737fbecf947644887639dacc` |
| 18 | `theorem` | [smeval_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-neg--79578a2a67380c4b9a69a4f2.md) | 160 | `result-track:79578a2a67380c4b9a69a4f2536dcb8f9c773e0f088253885df0692fc3f1abad` |
| 19 | `theorem` | [smeval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-sub--a7ab48f7aba0c895e5302f46.md) | 164 | `result-track:a7ab48f7aba0c895e5302f46b5c1d5bc14f4f04570bc017a7f92760978278489` |
| 20 | `theorem` | [smeval_neg_nat](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-neg-nat--0c9c3920bbe87c34103f3dcf.md) | 167 | `result-track:0c9c3920bbe87c34103f3dcf915e56de99c7dd6b2a5f28227c8bc86ed086df5f` |
| 21 | `theorem` | [smeval_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-c-mul--8eed8dbab50a069c10618bb1.md) | 191 | `result-track:8eed8dbab50a069c10618bb17302b87e82deeeeb912285951491c86b32e46b5a` |
| 22 | `theorem` | [smeval_at_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-at-natcast--ee33ba04f6a9cfc365accca1.md) | 198 | `result-track:ee33ba04f6a9cfc365accca1d5fb057319c08bce5fb3a4cf7a45ee44fd174f1b` |
| 23 | `theorem` | [smeval_at_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-at-zero--0928d8ef31943cb56a8d4af7.md) | 207 | `result-track:0928d8ef31943cb56a8d4af7ff75eb9be3c206211407fee5879c27bcb34f9c2c` |
| 24 | `theorem` | [smeval_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-x-mul--1c56371e1904c5fa8c844626.md) | 219 | `result-track:1c56371e1904c5fa8c844626e2a5ebb937710c207b32c3cad440c527ba21b611` |
| 25 | `theorem` | [smeval_X_pow_assoc](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-x-pow-assoc--8dc67748603d8f525a7ce6b4.md) | 226 | `result-track:8dc67748603d8f525a7ce6b4fd927fb8008ed7560a9b65905ef67bb1bd6a3268` |
| 26 | `theorem` | [smeval_X_pow_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-x-pow-mul--5ce0aaeb1ce021816e0d04c9.md) | 232 | `result-track:5ce0aaeb1ce021816e0d04c9cd73d4af26633f18ad56ed47a8c6c9b8547b914c` |
| 27 | `theorem` | [smeval_monomial_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-monomial-mul--da6af6484453ded903a4ada4.md) | 239 | `result-track:da6af6484453ded903a4ada444b4bca7dc252d23003e9b07166e4e166ee63acf` |
| 28 | `theorem` | [smeval_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-mul-x--1004e37b59a445ce408d4062.md) | 252 | `result-track:1004e37b59a445ce408d4062c4eb9ba541323ea9f30b6f982c3e35846affa246` |
| 29 | `theorem` | [smeval_assoc_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-assoc-x-pow--f3ca070a2667c3afbff91d02.md) | 259 | `result-track:f3ca070a2667c3afbff91d023ab657b881723b4738d51fdddf4430ed066317b3` |
| 30 | `theorem` | [smeval_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-mul-x-pow--084b5aec460a1b6940e8a3a8.md) | 266 | `result-track:084b5aec460a1b6940e8a3a8fad0e967848518f28e470fb9222a1cedadaa082c` |
| 31 | `theorem` | [smeval_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-mul--fd5fb85e46acc573d2595df5.md) | 275 | `result-track:fd5fb85e46acc573d2595df577c4a919a10c39f205e8a23437676c48d612526a` |
| 32 | `theorem` | [smeval_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-pow--85817f053cceb9dc2e908b03.md) | 281 | `result-track:85817f053cceb9dc2e908b03827ec1a5eebc0e51aa00d549dd6672dce5cf7648` |
| 33 | `theorem` | [smeval_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-comp--ed3d92dc921e29a07ca85ef2.md) | 287 | `result-track:ed3d92dc921e29a07ca85ef20f4abd46cd6e780aa9a3414f01ee964d1a837a12` |
| 34 | `theorem` | [smeval_commute_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-commute-left--37ec4a22979a98b875306d57.md) | 299 | `result-track:37ec4a22979a98b875306d57ffcfbd89ed36b6750a2b888ac867057d15c50ee1` |
| 35 | `theorem` | [smeval_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/smeval-commute--626bfc1fb2a3cf4de185cf2a.md) | 313 | `result-track:626bfc1fb2a3cf4de185cf2ad2d416777ba84ed6febfb2d9563d1fa47944bd9f` |
| 36 | `theorem` | [aeval_eq_smeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/aeval-eq-smeval--971db89f1688cc50aef1e64a.md) | 333 | `result-track:971db89f1688cc50aef1e64a67c8a52a5b38b2caa944d9971d3d7635c1c996dc` |
| 37 | `theorem` | [aeval_coe_eq_smeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Smeval/Varianta4b5789097da1d5e3c5a51694d3de388e9720f67f3727182a1e6fcf603326cca.lean/declarations/aeval-coe-eq-smeval--f5fd72b38a7fdd0d18be9f7b.md) | 339 | `result-track:f5fd72b38a7fdd0d18be9f7ba39e435fcbb7788c6cf323a77641e97025b86f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
