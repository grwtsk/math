# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Monad.Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ea68df07c669652c4dd5b8ab21834016a6d1fd4",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ea68df07c669652c4dd5b8ab21834016a6d1fd4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure--b454ed78a316ebcdfc8aaf8b.md) | 38 | `declaration-track:b454ed78a316ebcdfc8aaf8b3741269a4c95f2bd1e9ee27977f3757a8cf18744` |
| 2 | `theorem` | [pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure-apply--57205499b0afaffc81c951e8.md) | 45 | `result-track:57205499b0afaffc81c951e82d8013c39832cb90840886def18183b6c672f38f` |
| 3 | `theorem` | [support_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/support-pure--fc24cad78a12462181a62d66.md) | 49 | `result-track:fc24cad78a12462181a62d664a5a9bd673ca110aa2095fe53e02651dcba4e737` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/mem-support-pure-iff--cd30c5ab75db424bc9a5a3bb.md) | 53 | `result-track:cd30c5ab75db424bc9a5a3bb9bb233c203051a8568638c4655a0478d77bd7079` |
| 5 | `theorem` | [pure_apply_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure-apply-self--38028baee94df848dbcf219d.md) | 57 | `result-track:38028baee94df848dbcf219dbae256cbc5d553ab24c62bf7d0578a321fdf79bb` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure-apply-of-ne--e40c810a169e49fc6e235e47.md) | 61 | `result-track:e40c810a169e49fc6e235e470baa93f563e2f6ebac9f7ef4639766d96eb6d0d3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/instance--6122fd30934236569971699a.md) | 65 | `declaration-track:6122fd30934236569971699a7f2c321234bd39f57b9575655fde0b54f684f78a` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tooutermeasure-pure-apply--3ef740cbb001734adde386db.md) | 73 | `result-track:3ef740cbb001734adde386db10b8ba61a52317222a7f92004f93c4585eb24483` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tomeasure-pure-apply--ed04951c230df60eea20ff5c.md) | 86 | `result-track:ed04951c230df60eea20ff5c45a129d2b1c6b2779aaa1bcbb1d73369c68fd5cd` |
| 10 | `theorem` | [toMeasure_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tomeasure-pure--579a84e6adb25a2e706b0a49.md) | 91 | `result-track:579a84e6adb25a2e706b0a49b09a1d6be8f05728c30d269d3350ef293194d49f` |
| 11 | `theorem` | [toPmf_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/topmf-dirac--b9352c08f00de6741705e212.md) | 96 | `result-track:b9352c08f00de6741705e2121e627b5da18d2d7a956ff3a8282235210a6be315` |
| 12 | `def` | [bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind--3634059d1f56ea45ceaa430d.md) | 108 | `declaration-track:3634059d1f56ea45ceaa430d02629fc9e3abc28d6ed0fa9113259615f8ad9b7e` |
| 13 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind-apply--8ceb470fc5402b6ccda4b061.md) | 117 | `result-track:8ceb470fc5402b6ccda4b0616b5a3309418a3395ebd6f3beb0ed99fc60ec0a1d` |
| 14 | `theorem` | [support_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/support-bind--811319530b634ec883b19ca7.md) | 121 | `result-track:811319530b634ec883b19ca7939c231603035db7aea0531e1956e7b259e2ad6a` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/mem-support-bind-iff--d9bcd936d6b4072680701d9f.md) | 125 | `result-track:d9bcd936d6b4072680701d9fd07fa281110f6fedf576b7df8ac6a90b7e1873d4` |
| 16 | `theorem` | [pure_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure-bind--72622b3a5b9940d35487225f.md) | 131 | `result-track:72622b3a5b9940d35487225f965005541edf081565e775820479b2f40761b21a` |
| 17 | `theorem` | [bind_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind-pure--d99f37441e7420bfe3a31989.md) | 139 | `result-track:d99f37441e7420bfe3a319891dd79f27e3ffd9b09f52c57e3e6e8ab5b09296e7` |
| 18 | `theorem` | [bind_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind-const--1cedb85f296b04342a1849c5.md) | 146 | `result-track:1cedb85f296b04342a1849c5c859dc9633a26ce6e758a8d7e40e1d6288039734` |
| 19 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind-bind--3730f2de5a7ff09a5b50d214.md) | 151 | `result-track:3730f2de5a7ff09a5b50d2145b1d6aea486880bdd43c7be0ddb7cb3f34804f09` |
| 20 | `theorem` | [bind_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bind-comm--d8b816ec4233ff376b032102.md) | 157 | `result-track:d8b816ec4233ff376b032102fe5ef8b02ac415d7b92f84fc1ca8198804df9eed` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tooutermeasure-bind-apply--7793e2ab4dd7bead55245020.md) | 169 | `result-track:7793e2ab4dd7bead552450200b800a010e2819cc7696178429ebf62893332053` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tomeasure-bind-apply--017bbbc14c59d7f1b018ab9c.md) | 187 | `result-track:017bbbc14c59d7f1b018ab9cf07673a67536d509f7f7e5ecbcf2b65442c4556e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/instance--f62616ef8cc3994bba726de5.md) | 199 | `declaration-track:f62616ef8cc3994bba726de5e61eb95a2c512cd1cce4957b381d3f6811f1e2a5` |
| 24 | `def` | [bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport--c147e20dc430af0950a9ade8.md) | 207 | `declaration-track:c147e20dc430af0950a9ade86e2f16badb697c860fcd432e40df086f7c8dbed5` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-apply--792adc945f620b95d1ef5aab.md) | 219 | `result-track:792adc945f620b95d1ef5aab08d2b6dc81dfd1bdfb18e86a00935953c8c4fde7` |
| 26 | `theorem` | [support_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/support-bindonsupport--71fac112cefde3fa1b2bbc2a.md) | 224 | `result-track:71fac112cefde3fa1b2bbc2a3991f442b705144e477c79d596f0995140b41045` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/mem-support-bindonsupport-iff--c4a22be8eed9ede75eab39d6.md) | 238 | `result-track:c4a22be8eed9ede75eab39d6abb9f4bce347325c42e0cf134845a5bba68c9370` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-eq-bind--8dcd29bd4f86038349038bc1.md) | 245 | `result-track:8dcd29bd4f86038349038bc1781f055b9e1068e43e3bcd6fe8bdeba29e7a3e2a` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-eq-zero-iff--4a9d3f6b53cecc39aaeb50c0.md) | 254 | `result-track:4a9d3f6b53cecc39aaeb50c08461268f1bb4dc0860b1c678eba8bd3b5780f920` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/pure-bindonsupport--f395f444559377c301da45a9.md) | 262 | `result-track:f395f444559377c301da45a9893dad3cfb58ef84e2f3da33b967aa82da7deef7` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-pure--b4933f8f98f14fe87921fefa.md) | 270 | `result-track:b4933f8f98f14fe87921fefacf3e126c0b2bc05da4669345f31ab4b453e591a3` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-bindonsupport--94477ab84432bd9fa994339c.md) | 275 | `result-track:94477ab84432bd9fa994339c4b2eb47b0e17790d88a147daae1d2e999382f415` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/bindonsupport-comm--3d1df5e3a827d0ce226d1f5a.md) | 294 | `result-track:3d1df5e3a827d0ce226d1f5a1b4e3c2dcdc598f4017b6ef351d07325b90702c8` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tooutermeasure-bindonsupport-apply--fea4691bae5fe1c1491542d1.md) | 309 | `result-track:fea4691bae5fe1c1491542d1c9ca867ec998e374dcdee6c983647776cdc021b1` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant653816afd330dab5fc689b6217d4d1a7808ba61a3e6388365460e27e7a9307a5.lean/declarations/tomeasure-bindonsupport-apply--651fa53c01c506c2d1a30258.md) | 329 | `result-track:651fa53c01c506c2d1a3025866ce32a05b6972273354f217292f58dca343a20e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
