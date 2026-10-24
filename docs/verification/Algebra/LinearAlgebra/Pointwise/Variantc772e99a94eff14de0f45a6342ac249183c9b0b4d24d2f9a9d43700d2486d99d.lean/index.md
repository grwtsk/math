# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "022e679f0a3d7e6a5ae1ae1d8c59830a1642d397",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `022e679f0a3d7e6a5ae1ae1d8c59830a1642d397`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Supported` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwiseneg--3ac0126cc4b811cf1a144f92.md) | 71 | `declaration-track:3ac0126cc4b811cf1a144f92a6a1a834e91623c1e33ed6d7823659f318da375b` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/coe-set-neg--686b5c04449db7abbfcca20a.md) | 81 | `result-track:686b5c04449db7abbfcca20ada85f9c00b33618440f0c13ad9c756a91b1111ba` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-toaddsubmonoid--9e81245c2f93e6e1981a7cd3.md) | 85 | `result-track:9e81245c2f93e6e1981a7cd3a7f37b62b7bd0b936820405a0ad31f3f5a926ab8` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-neg--2fbcf26986be0f5796d61e6b.md) | 89 | `result-track:2fbcf26986be0f5796d61e6b0608f04d310cc0c1c58fc071290dfb5e24374725` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/involutivepointwiseneg--8748376a17c24e620a4c1384.md) | 95 | `declaration-track:8748376a17c24e620a4c138483905d6380c392cdfdc1671a86d8774381596958` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-le-neg--2e83352bf333a44294c9eacd.md) | 102 | `result-track:2e83352bf333a44294c9eacd531050c68e4b5bfcd2f8fdc4ed722fead397a50e` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-le--f36eadd1cff94cd8f86d200b.md) | 105 | `result-track:f36eadd1cff94cd8f86d200bad471c9f39e48bf6342a536d77df3c2a553216cc` |
| 8 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/negorderiso--6c83c8cbcdd3736503782be2.md) | 109 | `declaration-track:6c83c8cbcdd3736503782be24e7da952fd553c1a2f0e9f5499d2bdf3b21861bc` |
| 9 | `theorem` | [span_neg_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/span-neg-eq-neg--54a13206cdee21f93adb86f4.md) | 113 | `result-track:54a13206cdee21f93adb86f41f17bbd5eb5e270b73825dd413b1bb28d6295cd3` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-inf--4a623f1f545871382905c4a3.md) | 124 | `result-track:4a623f1f545871382905c4a31bb647c1fd7c95f7c2287be17515be6f553e6b01` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-sup--a8adaf51f6f9b81bb681a00a.md) | 127 | `result-track:a8adaf51f6f9b81bb681a00a754b2c0e0e3558eb2b9585151557fcbc4c065201` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-bot--c89849b25bb264994f324aca.md) | 131 | `result-track:c89849b25bb264994f324acabbaa90004361f5c92d0407ffd0883f1978dcbcef` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-top--2a977b5002339291a2f914f3.md) | 135 | `result-track:2a977b5002339291a2f914f3e7ca081ed84b0f20ae474b0935aaaa376b305895` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-iinf--7a829a55d43f563cb7394d25.md) | 139 | `result-track:7a829a55d43f563cb7394d258742117d09b5e3a02ecf996c94f715dd045aa024` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-isup--bb070dce1c3850341ef78e30.md) | 143 | `result-track:bb070dce1c3850341ef78e30658af1de4b4a5ff3cb0b8c1bd24ad6e9993edf08` |
| 16 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/neg-eq-self--717a5d634f4bedd3dab881f8.md) | 151 | `result-track:717a5d634f4bedd3dab881f872284e6229119daf4bdc849e21dedef80ac04a06` |
| 17 | `instance` | [pointwiseZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisezero--86b6a866579766566f8b0aaf.md) | 158 | `declaration-track:86b6a866579766566f8b0aaf01beb1b27b9529931c72a8082ecc1f09d491c678` |
| 18 | `instance` | [pointwiseAdd](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwiseadd--967a04af639e68eb9d73e5d9.md) | 161 | `declaration-track:967a04af639e68eb9d73e5d966e88de0b2fdc8254a2f4f73f03ef5f0cc94ca41` |
| 19 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwiseaddcommmonoid--b50b225aba42897399b8d4fc.md) | 164 | `declaration-track:b50b225aba42897399b8d4fcd7343243c1cd2a832370638815808b2478b0cb50` |
| 20 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/add-eq-sup--e96463bc5d384160bff25d27.md) | 172 | `result-track:e96463bc5d384160bff25d27dfeb48ff80b80eda4690428aba41a6ab1e09113a` |
| 21 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/zero-eq-bot--625eed878e07418c8e9376bf.md) | 176 | `result-track:625eed878e07418c8e9376bf694b69a696faef6a00cb8fa3d4a442fb07da1d43` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/instance--76d7a71776b41bc61c091b9c.md) | 179 | `declaration-track:76d7a71776b41bc61c091b9c97f8143e6c1770bcc1937911c81c95f8d54a220f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/instance--b416acc5aae256e91e4acd64.md) | 182 | `declaration-track:b416acc5aae256e91e4acd6410a6fb85110a956fc46cea354395db2818841e80` |
| 24 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisedistribmulaction--39b542ca9d59760e7e5ea9c4.md) | 193 | `declaration-track:39b542ca9d59760e7e5ea9c4e174fd3165a131fbc88097c0151f36157a21f180` |
| 25 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/coe-pointwise-smul--8083187eb9373f5782ed62a1.md) | 208 | `result-track:8083187eb9373f5782ed62a1c3db3970e207ac493d657abb4ac5b996641cb152` |
| 26 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwise-smul-toaddsubmonoid--6614a164fbbbee587106bf1f.md) | 212 | `result-track:6614a164fbbbee587106bf1f4f1b25e1f44e898e75780b585e59c50affa6a86f` |
| 27 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwise-smul-toaddsubgroup--0de171c4438173662da80e73.md) | 217 | `result-track:0de171c4438173662da80e73aab5dce2d0a4f993d011e9208f251a15c8ea8f36` |
| 28 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-smul-pointwise-iff-exists--94e82ec8e6321efd2d5a1a04.md) | 222 | `result-track:94e82ec8e6321efd2d5a1a0498f978642fc60eeab39ba8202dd3831250fd813a` |
| 29 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-mem-pointwise-smul--3e97f0791c1b73e6c6a9bea6.md) | 226 | `result-track:3e97f0791c1b73e6c6a9bea644c4404d724b0ff25ede18f0df29bb697caa200d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/instance--67baee48fbcadd9960c02c36.md) | 229 | `declaration-track:67baee48fbcadd9960c02c3694e49c645a4884084eb040c24dfd69c41e9b42b2` |
| 31 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-bot--4152c9392da95d6d220da337.md) | 234 | `result-track:4152c9392da95d6d220da3376cc31d95ead56d1ac78066b80ab568a4593de6a3` |
| 32 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-sup--690000162735f94c944ea067.md) | 238 | `result-track:690000162735f94c944ea067ac40436366a3f0527b1f49a5d644484b08a605cf` |
| 33 | `theorem` | [smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-span--9dd363a3eb54c442f3c8c9a5.md) | 241 | `result-track:9dd363a3eb54c442f3c8c9a5f2a9f22fc39468fff86d5d2815e03939df82c71d` |
| 34 | `lemma` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-def--bcda10dc1ddfc66a82ccef74.md) | 244 | `result-track:bcda10dc1ddfc66a82ccef74b0a92da159c3503d1a5061a9701d423280c15400` |
| 35 | `theorem` | [span_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/span-smul--e0aac0f8d0dee53c7a6400d5.md) | 246 | `result-track:e0aac0f8d0dee53c7a6400d5885be0e27dc1d2a7e18a297e50238c5b8137b106` |
| 36 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisecentralscalar--39a4cbea279f1fa83958bd73.md) | 249 | `declaration-track:39a4cbea279f1fa83958bd7339a9fa5fc53e0f86f5bd7f7524d2add70c2c5f20` |
| 37 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-le-self-of-tower--a283d33a7d153e3e7553bc44.md) | 254 | `result-track:a283d33a7d153e3e7553bc44844460338a75b11dbe81d70aa2fbe7b850dbe275` |
| 38 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisemulactionwithzero--74dbb1afa92971ce0a19f87f.md) | 271 | `declaration-track:74dbb1afa92971ce0a19f87f423ad13a294f3196dc862b6ac2410d297a88ba93` |
| 39 | `def` | [pointwiseSetSMul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisesetsmul--48c1956f7ccf6dd0167865d0.md) | 324 | `declaration-track:48c1956f7ccf6dd0167865d09492ec95e58e08187e7eeddf98b74def028df47c` |
| 40 | `lemma` | [mem_set_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-set-smul-def--c1f77c40131cde2626bffb48.md) | 331 | `result-track:c1f77c40131cde2626bffb489857524f7f2b0c0ea2d5b7f09b43c097c50ff069` |
| 41 | `lemma` | [mem_set_smul_of_mem_mem](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-set-smul-of-mem-mem--301f51767e1eef521c383f1e.md) | 337 | `result-track:301f51767e1eef521c383f1e57dc56968f53deafbe97d9c99d0bbb46082b2557` |
| 42 | `lemma` | [set_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-le--020c27273dd17c161466af66.md) | 342 | `result-track:020c27273dd17c161466af666ebb95362628e2f9bf342b94ad387c3045747f99` |
| 43 | `lemma` | [set_smul_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-le-iff--7b0fd987a060e7879dd3b4bc.md) | 347 | `result-track:7b0fd987a060e7879dd3b4bc8a4b1d86c3712c4956c1d898ddfc25e21649ae53` |
| 44 | `lemma` | [set_smul_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-eq-of-le--830eed25cced12a4b9cb3b0c.md) | 355 | `result-track:830eed25cced12a4b9cb3b0cc7f653de6223243f491bc97dd46b8be3d79452a7` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/instance--5ded0700f638f747dfa32b21.md) | 361 | `declaration-track:5ded0700f638f747dfa32b21e6ff8ef0f44685a95956791bc0d9788b7d0a34f6` |
| 46 | `lemma` | [set_smul_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-mono-left--dec8cb7fe1c9c2f3793c192c.md) | 365 | `result-track:dec8cb7fe1c9c2f3793c192c099ba9675107d3389cd0326ad6364214c2f540b1` |
| 47 | `lemma` | [set_smul_le_of_le_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-le-of-le-le--f90d77154762ac91567e292f.md) | 370 | `result-track:f90d77154762ac91567e292fddc843d462eefd05b6df95d2c28e04db4db41da8` |
| 48 | `lemma` | [set_smul_eq_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-eq-isup--b9f4bbdcf2e23ce0735d7a4d.md) | 374 | `result-track:b9f4bbdcf2e23ce0735d7a4d8fdd354f7e8ea3145e15b9a8a37763837f19bd01` |
| 49 | `theorem` | [set_smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-span--91554a7ab683499da3222ce5.md) | 380 | `result-track:91554a7ab683499da3222ce5c0576188431f725ae56af6e90753fd94d0291b5b` |
| 50 | `theorem` | [span_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/span-set-smul--c9c03c2ef54fbf1d61065f0e.md) | 384 | `result-track:c9c03c2ef54fbf1d61065f0e5102136f3e076d12626c2f89c5872c69441a0beb` |
| 51 | `lemma` | [set_smul_inductionOn](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-inductionon--fbcb5ed6cd35cda322283cd2.md) | 400 | `result-track:fbcb5ed6cd35cda322283cd23bebc989e950cbb9b68f789e64ad7669a22efdbf` |
| 52 | `lemma` | [set_smul_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-eq-map--2011a5d4a3ca4017017bfd67.md) | 421 | `result-track:2011a5d4a3ca4017017bfd6783d091fc5fd74fc6ce200100b94877b54502f0a9` |
| 53 | `lemma` | [mem_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-set-smul--f88cf926fa59e5b601d349d3.md) | 447 | `result-track:f88cf926fa59e5b601d349d3f940496922b843c5d055bc12f22789ffb3deba04` |
| 54 | `lemma` | [empty_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/empty-set-smul--329b4aaa3a1640fabf68bacf.md) | 459 | `result-track:329b4aaa3a1640fabf68bacf5e5ae35a3ecce8835867baa3b9a21862ce65fb57` |
| 55 | `lemma` | [set_smul_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/set-smul-bot--7c0e0d698d6adb5a49761c6f.md) | 467 | `result-track:7c0e0d698d6adb5a49761c6f86b6d95c8e6d22e148f485b93d095db9742c7e85` |
| 56 | `lemma` | [singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/singleton-set-smul--85994de5a83db32ddf19c201.md) | 470 | `result-track:85994de5a83db32ddf19c201cf07b03fe83037548b40ffca2a0b02af4769c9fc` |
| 57 | `lemma` | [mem_singleton_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/mem-singleton-set-smul--009ceee8d82ed3a4348c5e2d.md) | 477 | `result-track:009ceee8d82ed3a4348c5e2dcc46e3778b55f7c2477cd49befd96b8690890639` |
| 58 | `lemma` | [smul_inductionOn_pointwise](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/smul-inductionon-pointwise--52411aed346b5cd9e577fe8a.md) | 493 | `result-track:52411aed346b5cd9e577fe8a5849dbddf973aeb24c7fea2e2c6e7acbc16b638b` |
| 59 | `def` | [pointwiseSetMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisesetmulaction--d69629d4cba54f01f06efc12.md) | 514 | `declaration-track:d69629d4cba54f01f06efc126c3b34bfeb2d051a016883046f808dd930100765` |
| 60 | `def` | [pointwiseSetDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/pointwisesetdistribmulaction--37e7f4ac81be478a96e2c4d0.md) | 533 | `declaration-track:37e7f4ac81be478a96e2c4d096ed1d9ccd4d2e5863e576830e6123672e6dd111` |
| 61 | `lemma` | [sup_set_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/declarations/sup-set-smul--4b063ff51ea70fe61666dde7.md) | 548 | `result-track:4b063ff51ea70fe61666dde7a08c27f6748d423d7cdcb586662c8a17f6ccac70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
