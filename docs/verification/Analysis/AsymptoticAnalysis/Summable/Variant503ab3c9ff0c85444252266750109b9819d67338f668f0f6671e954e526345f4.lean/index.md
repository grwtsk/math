# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Summable.Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0668c5ce150f470137eccc6cd78653afa800e290",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0668c5ce150f470137eccc6cd78653afa800e290`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_forall_abs_repr_le_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/exists-forall-abs-repr-le-norm--4491ea55ed5ed4da69282d7c.md) | 47 | `result-track:4491ea55ed5ed4da69282d7cca423f17476fa7e8502175e16d794a54d90b44a2` |
| 2 | `def` | [normBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/normbound--16d9aa5e4846772ab62dc2bc.md) | 82 | `declaration-track:16d9aa5e4846772ab62dc2bc748422614bb179a52379dcc0f2f5a40a71f2ce5b` |
| 3 | `lemma` | [normBound_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/normbound-pos--9eadb9290d27f36a3cb20286.md) | 85 | `result-track:9eadb9290d27f36a3cb20286386b6642cb1c06a3f2100aabedfb398aff4ec051` |
| 4 | `lemma` | [normBound_spec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/normbound-spec--7bf8fb10f2ba8b6b40d0e9cb.md) | 88 | `result-track:7bf8fb10f2ba8b6b40d0e9cbf4dcaa4f40bf29618008dd13171177ba84d715ba` |
| 5 | `lemma` | [abs_repr_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/abs-repr-le--685b0273d7d7422399838195.md) | 92 | `result-track:685b0273d7d7422399838195284ef3b3eb53386c91a3e0489510fc9b69a33e56` |
| 6 | `lemma` | [abs_repr_lt_of_norm_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/abs-repr-lt-of-norm-lt--32297ac58bc49ce9febd0c74.md) | 97 | `result-track:32297ac58bc49ce9febd0c741fc5022ea9900626a4da8704c5934de4d2392931` |
| 7 | `lemma` | [le_norm_of_le_abs_repr](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/le-norm-of-le-abs-repr--37fc3595d78d238355a948e9.md) | 102 | `result-track:37fc3595d78d238355a948e9bad8db12f633a4fcd2d11e44bbc846a004a493bf` |
| 8 | `lemma` | [sum_piFinset_Icc_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/sum-pifinset-icc-rpow-le--8b4c5604842b556f1606f9d4.md) | 108 | `result-track:8b4c5604842b556f1606f9d4d716652511521decdc1f410dc7579f970f485718` |
| 9 | `lemma` | [exists_finsetSum_norm_rpow_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/exists-finsetsum-norm-rpow-le-tsum--bbbe13b809517e40d8346e68.md) | 167 | `result-track:bbbe13b809517e40d8346e68ab0e2a6dd4abc1860ae7facfa4354466a192bb2f` |
| 10 | `def` | [tsumNormRPowBound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/tsumnormrpowbound--eb814581ca5ff35bff0d321e.md) | 222 | `declaration-track:eb814581ca5ff35bff0d321e52ae0e74830f59af6093c0746e4f77c40d304671` |
| 11 | `lemma` | [tsumNormRPowBound_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/tsumnormrpowbound-pos--9e7387770c8bb18ce5ac555e.md) | 225 | `result-track:9e7387770c8bb18ce5ac555e3bf0147913d31f4cb1441b8cd7b094eedee351bb` |
| 12 | `lemma` | [tsumNormRPowBound_spec](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/tsumnormrpowbound-spec--7a83064364545b6ca1157182.md) | 228 | `result-track:7a83064364545b6ca11571822809c78224f12911de5dc6609c4ec97739f93626` |
| 13 | `lemma` | [summable_norm_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-rpow--89983f1063acce5eb377aec9.md) | 234 | `result-track:89983f1063acce5eb377aec965854d8780298130c9e2bd9c73760a2b106319b6` |
| 14 | `lemma` | [tsum_norm_rpow_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/tsum-norm-rpow-le--97402d785ca73b262e5fd8ff.md) | 239 | `result-track:97402d785ca73b262e5fd8ff9a20327431d8551a0908970a53f26a3f8b6c9a14` |
| 15 | `lemma` | [summable_norm_sub_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-sub-rpow--6952ab1902bce242e3974bbc.md) | 245 | `result-track:6952ab1902bce242e3974bbcb4951959e9fc563a75927983656629fa65e71419` |
| 16 | `lemma` | [summable_norm_sub_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-sub-zpow--6cf6c57adcd13cbd60ac7b6e.md) | 268 | `result-track:6cf6c57adcd13cbd60ac7b6e828a38a44270c82921089735d1caf2d07f923b59` |
| 17 | `lemma` | [summable_norm_zpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-zpow--895ccb87337781b8d42d11a4.md) | 272 | `result-track:895ccb87337781b8d42d11a41a44bfc1421408f5ff4b18baf19d711adf796a6b` |
| 18 | `lemma` | [summable_norm_sub_inv_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-sub-inv-pow--309a7f469dc19bc1d28bb147.md) | 276 | `result-track:309a7f469dc19bc1d28bb1472e7069a7c406bcfd20751e2ed268a2ad5563d4f2` |
| 19 | `lemma` | [summable_norm_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Summable/Variant503ab3c9ff0c85444252266750109b9819d67338f668f0f6671e954e526345f4.lean/declarations/summable-norm-pow-inv--217bd0ebf9398cfa688066fa.md) | 280 | `result-track:217bd0ebf9398cfa688066fa96a20f6a0e0ca37e7193362798800c76df13f28c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
