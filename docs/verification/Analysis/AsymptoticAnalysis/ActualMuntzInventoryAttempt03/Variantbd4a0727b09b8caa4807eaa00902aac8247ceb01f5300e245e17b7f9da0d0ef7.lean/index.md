# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt03.Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e840912fa69974f5ab6290c7b0c89b0a278fb119",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e840912fa69974f5ab6290c7b0c89b0a278fb119`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples--0c83c5dd0fb1c7e7a1d61982.md) | 15 | `declaration-track:0c83c5dd0fb1c7e7a1d6198208c1bbd7dde005aa59d8341b4d5566587e47196d` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actualmuntz--249a9ae0ef60d8600c6d4050.md) | 19 | `declaration-track:249a9ae0ef60d8600c6d405070d85f3a2573a45ad75cbe4f192f91149d846575` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/upperinventory--a69957af40a035744b97b2a5.md) | 23 | `declaration-track:a69957af40a035744b97b2a50757f873795f260f69565f99124ee435bd3c9423` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actuallogsource-zero-nonpos--acfe63579038a3ef71f02b43.md) | 25 | `result-track:acfe63579038a3ef71f02b4373c77967d1a93d069351c392a12cc395225161b2` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actuallogsource-zero-at-zero--2de54980b55e5accdb4ee485.md) | 29 | `result-track:2de54980b55e5accdb4ee48536c654b0fa6e770efea3f5824ffa9a3015153b21` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/sample-zero-above-inventory--2db4b1164299ce9e60f00a32.md) | 32 | `result-track:2db4b1164299ce9e60f00a3238e8e248194dd6a6ad220617829e434720fbfd6e` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/allsamples-summable--3deec62c4046918fd30a56ab.md) | 38 | `result-track:3deec62c4046918fd30a56aba8385b85030525b6e2111094537f94b43c699f3b` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-summable--f262072d8d76a4107446cb83.md) | 45 | `result-track:f262072d8d76a4107446cb8372e52032f5bceeb800cf7e8d8970eb01d19d810d` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-eq-allsamples--5884021f071d6b8fa9186334.md) | 49 | `result-track:5884021f071d6b8fa9186334845aae2f8818bc611f24f1feb845545f31af5967` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/allsamples-eq-closed-inventory--1a35e740a5e5e6cc06a40576.md) | 54 | `result-track:1a35e740a5e5e6cc06a405767e761abad8a562a25d92ce823e806dbc4cd83d19` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-eq-closed-inventory--21e98175fa3fbea93515e132.md) | 62 | `result-track:21e98175fa3fbea93515e13256874ab6ec4d6157a39fa58ab4fde5b978894910` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actualmuntz-eq-positivesamples--68b44d7bb1eae5aef165d825.md) | 71 | `result-track:68b44d7bb1eae5aef165d82556ecc300a119a259a900e88382fac6af8485a054` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actualmuntz-eq-closed-inventory--25eb555d1dfe5c34bf1ef4ff.md) | 75 | `result-track:25eb555d1dfe5c34bf1ef4ff68b0b95cd0d288b5329c5e32efe7ea3198239ca5` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/touching-sample-zero--d376254c0cf62b71381648bd.md) | 80 | `result-track:d376254c0cf62b71381648bd29ef605cadb21af370b8e51756c6b291c65ee4e3` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-zero-nonpos--3856ea188fab318b2f331b5a.md) | 85 | `result-track:3856ea188fab318b2f331b5a4a91cd7244db8f3a78c4449216c9dd5d378752d7` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-zero-above--256609e7e6f29426510adb52.md) | 92 | `result-track:256609e7e6f29426510adb52e02726c31f1cefb824c48866b1c167a4672ed7c9` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actualmuntz-zero-outside--1651c502bd83efd36951254b.md) | 106 | `result-track:1651c502bd83efd36951254b92a1d7d459580380e365e7d19a3be215fe3fd247` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/positivesamples-measurable--83fba16243fd91f7d69f6c71.md) | 113 | `result-track:83fba16243fd91f7d69f6c710cf53b3c3386e01270d3f2c8f3e86358b24f6772` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt03/Variantbd4a0727b09b8caa4807eaa00902aac8247ceb01f5300e245e17b7f9da0d0ef7.lean/declarations/actualmuntz-measurable--04dbfcd69e6ce9c13953fcd5.md) | 117 | `result-track:04dbfcd69e6ce9c13953fcd5f208ce2dd6d37af1a17d6b8b9579e7d7012ee32d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
