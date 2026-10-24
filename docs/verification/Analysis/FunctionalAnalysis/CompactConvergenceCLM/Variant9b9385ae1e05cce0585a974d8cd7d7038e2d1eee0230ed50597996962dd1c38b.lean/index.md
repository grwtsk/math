# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CompactConvergenceCLM.Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "855679030c2bc1d1535efad19b4a6804d1d61480",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `855679030c2bc1d1535efad19b4a6804d1d61480`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean.json)

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
| 1 | `abbrev` | [CompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclm--2827d5fb6936ba63110cd927.md) | 54 | `declaration-track:2827d5fb6936ba63110cd927458f14c5c0aeedee4ce15cfbc6a40a131b90ac8b` |
| 2 | `instance` | [continuousSMul](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/continuoussmul--586835dc110b35559dde65eb.md) | 67 | `declaration-track:586835dc110b35559dde65eb7b59a2c4866496f3cb56e400d7cf11a660d8d9cb` |
| 3 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/instcontinuousevalconst--9b2ca4ac6591ade4d321bc50.md) | 74 | `declaration-track:9b2ca4ac6591ade4d321bc50e9aa5cc54c7da967e410efaa0dff56eb6994b7bd` |
| 4 | `instance` | [instT2Space](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/instt2space--307804839feac82ae4594dea.md) | 78 | `declaration-track:307804839feac82ae4594dea8e095f5c2bfdeedca4c3f4994c9464ae3054241b` |
| 5 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/hasbasis-nhds-zero-of-basis--05cdfa577a4014bbb9b51302.md) | 82 | `result-track:05cdfa577a4014bbb9b513022c4dac1ef7179f1fa8aef6020f1c892049d542cb` |
| 6 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/hasbasis-nhds-zero--3104894dd381f8577cad8a9d.md) | 91 | `result-track:3104894dd381f8577cad8a9d41fab9d0f3475f316101c681b02442b358c41e83` |
| 7 | `def` | [ContinuousLinearMap.precompCompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/continuouslinearmap-precompcompactconvergenceclm--25f640fdb00c5668c901d665.md) | 110 | `declaration-track:25f640fdb00c5668c901d665cfd14819da468df1b481ccf386021958e71092dc` |
| 8 | `def` | [ContinuousLinearMap.postcompCompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/continuouslinearmap-postcompcompactconvergenceclm--62f013fb70b6539a865c745e.md) | 118 | `declaration-track:62f013fb70b6539a865c745eb60a78854a7556b028c26486e096e745d1e6303c` |
| 9 | `def` | [CompactConvergenceCLM.piEquivL](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclm-piequivl--e6dfe9ea91382ac281c50db9.md) | 138 | `declaration-track:e6dfe9ea91382ac281c50db90164b13f41d21bd51909a10cc313ddf9400bf098` |
| 10 | `lemma` | [CompactConvergenceCLM.piEquivL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclm-piequivl-apply--86fa147c8898649cbe82cf90.md) | 145 | `result-track:86fa147c8898649cbe82cf903603da8f0b967bf2696c3c52ff7ca4de38ec10da` |
| 11 | `lemma` | [CompactConvergenceCLM.piEquivL_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclm-piequivl-symm-apply--cd7425eb7678930322acaa19.md) | 151 | `result-track:cd7425eb7678930322acaa19ea7ce38a03ea110d53bbcc9d90b80865d36eb8cf` |
| 12 | `def` | [compactConvergenceCLMCongrSL](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongrsl--a346e65ac2ea96d7c1245471.md) | 180 | `declaration-track:a346e65ac2ea96d7c124547155ce2a449ebff84c275cbcb08b8768ef732a85bc` |
| 13 | `lemma` | [compactConvergenceCLMCongrSL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongrsl-apply--dccd0be1b78838d7e9ea6abf.md) | 186 | `result-track:dccd0be1b78838d7e9ea6abfc7b0f8fe9a258722451aba8a557e34bbd34d85a9` |
| 14 | `lemma` | [compactConvergenceCLMCongrSL_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongrsl-symm-apply--367e1c230afd65359b0eaa7f.md) | 192 | `result-track:367e1c230afd65359b0eaa7fce58e288e9fdfeeea25a42941289bcefc6d0dc72` |
| 15 | `def` | [compactConvergenceCLMCongr](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongr--0701470af523986ba40f3a1c.md) | 211 | `declaration-track:0701470af523986ba40f3a1c110da63e65a47ccec5cad21818e2f1ba53611221` |
| 16 | `lemma` | [compactConvergenceCLMCongr_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongr-apply--65d6c277788d2dbb86e99631.md) | 216 | `result-track:65d6c277788d2dbb86e996316c03b28c609df8d0b6d0aaa18e3b3df62c2054a9` |
| 17 | `lemma` | [compactConvergenceCLMCongr_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/declarations/compactconvergenceclmcongr-symm-apply--1235d918d35f7296c30b3798.md) | 222 | `result-track:1235d918d35f7296c30b3798c423c6ec2395add16c5edea540403d34d16b4c4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
