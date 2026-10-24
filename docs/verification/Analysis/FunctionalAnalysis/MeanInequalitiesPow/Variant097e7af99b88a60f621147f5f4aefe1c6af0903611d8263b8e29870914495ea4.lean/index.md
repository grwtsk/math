# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef681f6ff6219657c912637b10141ef35b520d0",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef681f6ff6219657c912637b10141ef35b520d0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/pow-arith-mean-le-arith-mean-pow--848a518a2b6360ac56d2f681.md) | 54 | `result-track:848a518a2b6360ac56d2f6818e7e4ee0bab17c1a4603f82ebd622cf401239bf7` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--e57c4c69841e0eeee2c519c2.md) | 59 | `result-track:e57c4c69841e0eeee2c519c2a4ee20af7b6b8eb006efba7782c0ba45e8bccb1d` |
| 3 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--881198597a9464bb97f67036.md) | 64 | `result-track:881198597a9464bb97f67036fbb189ff90d5d7e829990e86e58ffb6448485e0f` |
| 4 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--d054dce677e4cc81a8c7a10e.md) | 69 | `result-track:d054dce677e4cc81a8c7a10e35f83aaccf122cd82806b7d910dd9b6989139efb` |
| 5 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/arith-mean-le-rpow-mean--57e81b71338024d4f26e1012.md) | 74 | `result-track:57e81b71338024d4f26e1012fd8bdeafe33ce3eba75134f465f10c1a02e26731` |
| 6 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/pow-arith-mean-le-arith-mean-pow--e0c7d934e61161535f3205b3.md) | 91 | `result-track:e0c7d934e61161535f3205b33547a3cf0eb3834c51d65b3139536963d04ab7f8` |
| 7 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--ad7cd9cec688ad265dc6bb1f.md) | 99 | `result-track:ad7cd9cec688ad265dc6bb1fc35f52e8fb45a437d02580e320cf308ca17aea40` |
| 8 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--4010dc3e429a10f84edb954f.md) | 106 | `result-track:4010dc3e429a10f84edb954f0ddc158de44c07117b1235bc3421fbe87e6c88b1` |
| 9 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-le-mul-rpow-add-rpow--e2364f55c25e5e6d29fb93ac.md) | 113 | `result-track:e2364f55c25e5e6d29fb93ac1811d2fc4b84d736f9ecbfea7004c5cb2651de23` |
| 10 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/arith-mean-le-rpow-mean--f303b190059371d748a5f415.md) | 127 | `result-track:f303b190059371d748a5f415c6c6a46bd2c358b813d035e4ac076fa81bfdd8cb` |
| 11 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/add-rpow-le-one-of-add-le-one--7525240caf3ca5328bc3549e.md) | 133 | `result-track:7525240caf3ca5328bc3549e5f1e43c471ac26e73f0f5d63b1cc372a52cb1a8f` |
| 12 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/add-rpow-le-rpow-add--266ce9f946c44b3a7cf088b8.md) | 140 | `result-track:266ce9f946c44b3a7cf088b88d86f27fb43dc25c6b0d8a8ab0d46f67a6a1d95a` |
| 13 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le-add--0b623dd61801df8d35c91523.md) | 156 | `result-track:0b623dd61801df8d35c91523f073c8ea9226c88dd31ba98ecfb0f86dd955aab6` |
| 14 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le--31211288730d25fc8d818578.md) | 163 | `result-track:31211288730d25fc8d818578dd88aecbf62313911048581acce81982061f0308` |
| 15 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-le-add-rpow--c1de03985a53d343b66820d5.md) | 176 | `result-track:c1de03985a53d343b66820d5edfb6386e9d1c8c7f89f54f42adace4366543be7` |
| 16 | `lemma` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/add-rpow-le-rpow-add--984044a8d3cc7682025fe5af.md) | 189 | `result-track:984044a8d3cc7682025fe5af8581f243fc5b3b9fc44fba20665c26735b61602b` |
| 17 | `lemma` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le-add--3c8a539316d22034df48b6b6.md) | 195 | `result-track:3c8a539316d22034df48b6b672811baa5b4973935447b0e6c05f83ed32d860db` |
| 18 | `lemma` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le--a27bf630c581a5dc131f595e.md) | 201 | `result-track:a27bf630c581a5dc131f595e2788a2d9637c594da6d03876b23563d6279407fa` |
| 19 | `lemma` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-le-add-rpow--9833faa709c6a736276947ea.md) | 208 | `result-track:9833faa709c6a736276947eacb378d2329ed3360751ad2169a806851b4321deb` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--543fcc06040abed7d9d4b6b7.md) | 221 | `result-track:543fcc06040abed7d9d4b6b718cdec4520cdc04035fca8a7df90b2e905a12461` |
| 21 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--a2e299f1b11e7ea3b6ff96de.md) | 268 | `result-track:a2e299f1b11e7ea3b6ff96debe26b200a23d12268c157e81e91ed09977eb09f4` |
| 22 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-le-mul-rpow-add-rpow--16b5e688e25662e290c7010f.md) | 275 | `result-track:16b5e688e25662e290c7010f3b0dc418201ab4d6742b2dc55bfc204d1692462a` |
| 23 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/add-rpow-le-rpow-add--0fc802e002fabbe7692db084.md) | 284 | `result-track:0fc802e002fabbe7692db084b417951334f2e4d30a1442ad3217313b9ecada46` |
| 24 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le-add--12e13da89d8929a0cf046ad2.md) | 296 | `result-track:12e13da89d8929a0cf046ad24ab2f5c57332003665fbf85b07d28432a2b2323c` |
| 25 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-rpow-le--6f69c1d925e06d6120fea211.md) | 302 | `result-track:6f69c1d925e06d6120fea211b20e931032762de4384b05c214486f7ba6dbd331` |
| 26 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant097e7af99b88a60f621147f5f4aefe1c6af0903611d8263b8e29870914495ea4.lean/declarations/rpow-add-le-add-rpow--21a3697dda5455ea5a7f3ccd.md) | 314 | `result-track:21a3697dda5455ea5a7f3ccd16de6861d411390fbf9580db8b07966eaef7133b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
