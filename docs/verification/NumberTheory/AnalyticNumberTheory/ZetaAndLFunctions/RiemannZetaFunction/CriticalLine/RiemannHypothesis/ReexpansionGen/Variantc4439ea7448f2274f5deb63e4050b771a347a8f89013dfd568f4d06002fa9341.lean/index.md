# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReexpansionGen.Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.Upper` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [choose_le_two_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/choose-le-two-pow--ae4fcee72363d78bd8570e95.md) | 38 | `result-track:ae4fcee72363d78bd8570e95b22471c237588ca41caa630e33fb85b78ba1a3c2` |
| 2 | `def` | [T0re](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/t0re--e11dbb6e9e0ff84fd46e8d77.md) | 46 | `declaration-track:e11dbb6e9e0ff84fd46e8d77bcb378c604b17f70e7ce1d53bf99947cdaf7882a` |
| 3 | `lemma` | [l_ge_of_T0re_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/l-ge-of-t0re-le--e5f53fa22343e64931689d00.md) | 48 | `result-track:e5f53fa22343e64931689d009ea27cecda6fc8e3951a72d549bef0663d111cc1` |
| 4 | `lemma` | [norm_base_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/norm-base-ge--133b90ff542644f32a7b28cf.md) | 62 | `result-track:133b90ff542644f32a7b28cf16486db7a5103d63785cdbef90b74f1505434377` |
| 5 | `lemma` | [base_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/base-ne-zero--a0ff38dd73c783cc5cb75b3f.md) | 66 | `result-track:a0ff38dd73c783cc5cb75b3f8fc7e0a4d4135b926a58781f1455b7e125023356` |
| 6 | `lemma` | [base_add_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/base-add-ne-zero--7e4b12a6e48d9a84c41803e7.md) | 72 | `result-track:7e4b12a6e48d9a84c41803e7f13c8bf91f3128091823846e4fd45448f93f32e2` |
| 7 | `def` | [eGen](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen--033798fcbc9aeefa0e9bba7e.md) | 80 | `declaration-track:033798fcbc9aeefa0e9bba7ed25ddd972434065d7a85f7b9a44e2d60205c2526` |
| 8 | `theorem` | [eGen_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-one--d037a0e66ae0e6491371e438.md) | 86 | `result-track:d037a0e66ae0e6491371e438288e4825bfd20d498815d92f6954789ba704ceaf` |
| 9 | `lemma` | [eGen_block_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-block-eq--bfc9213a8028429dfc7002d7.md) | 92 | `result-track:bfc9213a8028429dfc7002d759632063523a987d43329b9e44806e121bf9cb22` |
| 10 | `theorem` | [eGen_expand](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-expand--456223522fdcce5cc3e29c75.md) | 106 | `result-track:456223522fdcce5cc3e29c75aded95114b14a0d2903f8c8a8e19d11439a452b5` |
| 11 | `theorem` | [norm_eGen_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/norm-egen-le--c9aeba821b465b09d41739bc.md) | 161 | `result-track:c9aeba821b465b09d41739bc1899cc2f4b75733569b15e53a69a8aadef62ace7` |
| 12 | `theorem` | [sum_norm_eGen_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/sum-norm-egen-sq-div-le--6c4aef0e7dcc1658c009445f.md) | 186 | `result-track:6c4aef0e7dcc1658c009445f425922ce0faeaed8108f7acadfa14af929cee84b` |
| 13 | `theorem` | [eGen_H3](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-h3--cf994b4678ee12fa4aaac086.md) | 240 | `result-track:cf994b4678ee12fa4aaac0860502a42ac7312314f446c82d6520ce2ff62653ca` |
| 14 | `theorem` | [eGen_H2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-h2--f760832e7f5d6c39501f68d0.md) | 261 | `result-track:f760832e7f5d6c39501f68d07a43024a4bbd5aee3db7b262d83b0d7e8a6b9879` |
| 15 | `theorem` | [eGen_H1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/declarations/egen-h1--3700191f406477d3097109cc.md) | 286 | `result-track:3700191f406477d3097109ccbbe98f81f62874f66ce8d548b8fe2bc8c4b35275` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
