# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Supported` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwiseneg--7504c5641781338b50234c09.md) | 63 | `declaration-track:7504c5641781338b50234c09fa4999b0643e43eb3fce04e802c05256740d2638` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/coe-set-neg--28d46086c2eefed8407a86c7.md) | 73 | `result-track:28d46086c2eefed8407a86c7c01f2951521f9e68e00088b72138cb4b12e6f67f` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-toaddsubmonoid--36a69aebdd2d3ea5a67a5ad8.md) | 77 | `result-track:36a69aebdd2d3ea5a67a5ad84b586ec55d339eedfb4cb38953cff020d42ce2b4` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-neg--42844ff3cd4bb69ffda20754.md) | 81 | `result-track:42844ff3cd4bb69ffda207542b9b7e4fd99cf74873b389c72843b4e48bc58a99` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/involutivepointwiseneg--1fb288011e7bb5ad65b069c0.md) | 87 | `declaration-track:1fb288011e7bb5ad65b069c00c23e0b427774480ed7f965ae71d06e288125e65` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-le-neg--9e9bd96e1edb6943a13f75a2.md) | 94 | `result-track:9e9bd96e1edb6943a13f75a2d0fab89bad6a6af4eed44d4556f3f557bcec37d1` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-le--16c5c287638d695c4bdef154.md) | 97 | `result-track:16c5c287638d695c4bdef154ad7b2cd6d9b466b3cf19870f27783670b93aac31` |
| 8 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/negorderiso--05c3c510eb99df771f56f972.md) | 101 | `declaration-track:05c3c510eb99df771f56f9726945a15d49445755411d9c35e31b66aaea89a8d7` |
| 9 | `theorem` | [span_neg_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/span-neg-eq-neg--28ad0544dc9e1f087e817ae8.md) | 105 | `result-track:28ad0544dc9e1f087e817ae881b4150082b50675c4447727229a77738ec2d417` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-inf--0e22744fcb82309488ca9cab.md) | 116 | `result-track:0e22744fcb82309488ca9cab6ca84845d99e00b6ea808302097f85f523341e30` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-sup--58d9a4422f7ad3861fb4ee06.md) | 119 | `result-track:58d9a4422f7ad3861fb4ee0606a0d228c37aa7c28a9855d5207c381c41ae9b81` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-bot--4f3508dc9f287522c0d8871d.md) | 123 | `result-track:4f3508dc9f287522c0d8871d20c949c403e4deb04d25a56c9393028e03ee0169` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-top--af633f33094ff3a94b4021e5.md) | 127 | `result-track:af633f33094ff3a94b4021e5c03616e85b87b45607e588a58f73821b0c774ac8` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-iinf--d0ec0f690be8595a49e02ad6.md) | 131 | `result-track:d0ec0f690be8595a49e02ad6655e8a1e750aa0d51dda37ea755c70127c7627c5` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-isup--6977109ba3e03f09cffc47f3.md) | 135 | `result-track:6977109ba3e03f09cffc47f3aeb0b7df425e1e40bc35bb4684e83d5c1190adc5` |
| 16 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/neg-eq-self--d78b6fb0a03f3e4e405783bb.md) | 143 | `result-track:d78b6fb0a03f3e4e405783bbc1e3fcf7e5da93ce117d1b8c7cd8d568cb79ad62` |
| 17 | `instance` | [pointwiseZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisezero--a7bd0caf26f5421e3f3c4c0e.md) | 150 | `declaration-track:a7bd0caf26f5421e3f3c4c0ef1845fdf05a7cc2b3b9c5999d6b5da7a09e9ec11` |
| 18 | `instance` | [pointwiseAdd](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwiseadd--4f9efe969046b825ef61cd29.md) | 153 | `declaration-track:4f9efe969046b825ef61cd29b20bf6a5b42986ac1b771fb7df7e7be8f0a4506a` |
| 19 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwiseaddcommmonoid--af9567c175b4cea44ce64d35.md) | 156 | `declaration-track:af9567c175b4cea44ce64d35a49f145fff660499a9aa66e27e4dca6ad7971feb` |
| 20 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/add-eq-sup--a052c5f9996f31e1ca6ccb94.md) | 164 | `result-track:a052c5f9996f31e1ca6ccb94e009fcdc462ebb613a51fc60e369fc73a25b77f3` |
| 21 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/zero-eq-bot--f3e663ad7b3438d73ad46039.md) | 168 | `result-track:f3e663ad7b3438d73ad46039db4fc93edb5e93405a416f57e4fb0817ee901985` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/instance--866882fd77aeb13175ffc02d.md) | 171 | `declaration-track:866882fd77aeb13175ffc02d2abe0f3cbd69866c7f4a671393c9c19e3a5cb443` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/instance--36f06917a45070bba79112b7.md) | 174 | `declaration-track:36f06917a45070bba79112b71841d4e0d2544d0c3833442799e29c23c824cab7` |
| 24 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisedistribmulaction--228ce336f0007fc57eb49261.md) | 185 | `declaration-track:228ce336f0007fc57eb492617f0935975df23731ef81022a579a7d6476c04d66` |
| 25 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/coe-pointwise-smul--f2362d9ba0d4a7509175018e.md) | 200 | `result-track:f2362d9ba0d4a7509175018e05077e517e71953c8884ebfca48db0312341202c` |
| 26 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwise-smul-toaddsubmonoid--292c9ad57d229330f140bd48.md) | 204 | `result-track:292c9ad57d229330f140bd4888b9ad059ae8b95d0637400e46ebe7aef45ab62a` |
| 27 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwise-smul-toaddsubgroup--66e03dd7ce683ea41b51ed74.md) | 209 | `result-track:66e03dd7ce683ea41b51ed74fbfda0f34de68cc8ca7e6b26fd3fa346aef0a172` |
| 28 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-smul-pointwise-iff-exists--209603f7d45fafe1b8ff0746.md) | 214 | `result-track:209603f7d45fafe1b8ff0746f0a84d45fbcd4bea833cb9c5aae47ec0f232e6c6` |
| 29 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-mem-pointwise-smul--f136a7b100bdf9bd24a5c800.md) | 218 | `result-track:f136a7b100bdf9bd24a5c8003e5a5d02756ef5ac8bba3401fa2574f15c6cfd02` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/instance--c1617bb46493931c3212a9ea.md) | 221 | `declaration-track:c1617bb46493931c3212a9ea844a80a3a6e88932ac6844e8ad45def9507b5ef4` |
| 31 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-bot--0f6d0422bf653a123df6c0cf.md) | 226 | `result-track:0f6d0422bf653a123df6c0cff36f50701106a2074f3b85aca77df7395bdb4a07` |
| 32 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-sup--f7d4974d2369f6eaf8461edd.md) | 230 | `result-track:f7d4974d2369f6eaf8461eddbb8422038c20aeb79fb5e21aa1b8bf5cbb92c882` |
| 33 | `theorem` | [smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-span--3b2dad126ff258b9038b6588.md) | 233 | `result-track:3b2dad126ff258b9038b6588ddf8dfd0f9fb04750e68dab4c737601a2ccf665d` |
| 34 | `lemma` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-def--67bdbbf3883beecf6fac84c2.md) | 236 | `result-track:67bdbbf3883beecf6fac84c2904f5d444be5eddbd5ce3ce8e7d367ce316a155a` |
| 35 | `theorem` | [span_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/span-smul--ccd55c0a0c9301c93fa40e74.md) | 238 | `result-track:ccd55c0a0c9301c93fa40e7434f77415ea8294e704bd6988fc1d3fe39ce584e5` |
| 36 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisecentralscalar--270f51e5b1295feee546c85e.md) | 241 | `declaration-track:270f51e5b1295feee546c85e834938506bb6d4df1b891faaa73afa39f1939a29` |
| 37 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-le-self-of-tower--9db0a660291a629f10f5b047.md) | 246 | `result-track:9db0a660291a629f10f5b047048996dfa6cba1354deba95bf6801c528e742608` |
| 38 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisemulactionwithzero--9499e6dbe28a093b017a0918.md) | 263 | `declaration-track:9499e6dbe28a093b017a091814e12028f0fa852dd9aa9ef552a34479397cf914` |
| 39 | `def` | [pointwiseSetSMul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisesetsmul--74f542d694296a4af9bf4581.md) | 316 | `declaration-track:74f542d694296a4af9bf4581e1db75bedaec0970ae087a0dbe68cf570ecafb60` |
| 40 | `lemma` | [mem_set_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-set-smul-def--342b9f38231fac545f2e7702.md) | 323 | `result-track:342b9f38231fac545f2e7702f7e391c8fde22a83b6aaee830633e93a436a57b2` |
| 41 | `lemma` | [mem_set_smul_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-set-smul-of-mem-mem--68682b5ccdfb214545a69021.md) | 329 | `result-track:68682b5ccdfb214545a690215aa771b2920d92e14d0010b660ccb74696714dc1` |
| 42 | `lemma` | [set_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-le--b0ae559801332ce2df161d87.md) | 334 | `result-track:b0ae559801332ce2df161d8702d612e18dc6e06bb0029e6e846e883275a66fa7` |
| 43 | `lemma` | [set_smul_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-le-iff--14f09a817ef7b2060d1befb7.md) | 339 | `result-track:14f09a817ef7b2060d1befb7880060b921d418f028c4c3013a4341d1607eec53` |
| 44 | `lemma` | [set_smul_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-eq-of-le--8df63ec887c9fc31bc8f86fb.md) | 347 | `result-track:8df63ec887c9fc31bc8f86fbb56c014f146a3e930d95c841694e93b50d72e760` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/instance--09772725f6d96b3dd7cf7566.md) | 353 | `declaration-track:09772725f6d96b3dd7cf75665693feb4d3badd58eb2c901832567cb038431756` |
| 46 | `lemma` | [set_smul_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-mono-left--3d3b4436b52c2aefdc628efe.md) | 357 | `result-track:3d3b4436b52c2aefdc628efe2dda83b238d996019ced4487f8e2d78ebca725ea` |
| 47 | `lemma` | [set_smul_le_of_le_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-le-of-le-le--4d6d8eedf0d8874f8392d54b.md) | 362 | `result-track:4d6d8eedf0d8874f8392d54b3d91dfab49355908651fc1a091a5e9cfb3fad640` |
| 48 | `lemma` | [set_smul_eq_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-eq-isup--ebae4db56e6a78a7c1ebc28e.md) | 366 | `result-track:ebae4db56e6a78a7c1ebc28e0c5f71934557912cf5ede9e4046b7ce043dd70ff` |
| 49 | `theorem` | [set_smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-span--0f5f036dd61481654009a75e.md) | 372 | `result-track:0f5f036dd61481654009a75e5141dd717ebcdca48729f19ebfcf84de6b8d3828` |
| 50 | `theorem` | [span_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/span-set-smul--e3503564df9521e21c6e9fa4.md) | 376 | `result-track:e3503564df9521e21c6e9fa4c7b1bf6873dbb4d87688bd988155e3470de2639c` |
| 51 | `lemma` | [set_smul_inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-inductionon--3c1931fb06ae8385fb220cf4.md) | 392 | `result-track:3c1931fb06ae8385fb220cf447e360ddd782d623d69b03bdd780516c1b4dabfd` |
| 52 | `lemma` | [set_smul_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-eq-map--e12bdc435516a9a5210ca148.md) | 413 | `result-track:e12bdc435516a9a5210ca14838cc17dd00bbfb242caf65c77d82194e86062790` |
| 53 | `lemma` | [mem_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-set-smul--7e4029b7d1faca65e832e645.md) | 439 | `result-track:7e4029b7d1faca65e832e645617a4bb8569c358a915cba328e7653b6f14c22c5` |
| 54 | `lemma` | [empty_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/empty-set-smul--74abfdd71abaaede54367d03.md) | 451 | `result-track:74abfdd71abaaede54367d035a0a5c2e01611995f9a5679568617f5a3209d9d0` |
| 55 | `lemma` | [set_smul_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/set-smul-bot--c7004bc8496d3880dd66141e.md) | 459 | `result-track:c7004bc8496d3880dd66141ee95e830bc2c46cf295096bcf9bbe82af290123bd` |
| 56 | `lemma` | [singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/singleton-set-smul--9599810eda4d91ba0d2d2443.md) | 462 | `result-track:9599810eda4d91ba0d2d2443ce6cabcccf37a2c387c5d66f7040bd69e3bf6bac` |
| 57 | `lemma` | [mem_singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/mem-singleton-set-smul--d348d685dada75aeea8d1f70.md) | 469 | `result-track:d348d685dada75aeea8d1f70a6a08e314ddef54b19fd7767cfa00ccab1197491` |
| 58 | `lemma` | [smul_inductionOn_pointwise](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/smul-inductionon-pointwise--7ecfc5ec751ab8687edee1c6.md) | 485 | `result-track:7ecfc5ec751ab8687edee1c666318c163f2b9a3e8ec790293e88bb8d7aa43ad7` |
| 59 | `def` | [pointwiseSetMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisesetmulaction--2ab6d46ec8a2bcb74cdc0575.md) | 506 | `declaration-track:2ab6d46ec8a2bcb74cdc05755ec4f7539997b44ac6ecd5a25655bf9517a0196e` |
| 60 | `def` | [pointwiseSetDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/pointwisesetdistribmulaction--dc8da70121158b98332feec0.md) | 525 | `declaration-track:dc8da70121158b98332feec074a04e1a98ae542bb27a0091231a06a1f4a3e8c5` |
| 61 | `lemma` | [sup_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/declarations/sup-set-smul--fc908a9f99fe0b3d270927e9.md) | 540 | `result-track:fc908a9f99fe0b3d270927e9640454394cb7a3f4aec23e071a1d11b59c50e06c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
