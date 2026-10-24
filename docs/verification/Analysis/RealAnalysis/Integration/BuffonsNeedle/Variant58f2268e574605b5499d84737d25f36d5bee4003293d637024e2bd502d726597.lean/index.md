# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BuffonsNeedle.Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe9baacf97ee30ac3569acac2c24a825bd1f409f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe9baacf97ee30ac3569acac2c24a825bd1f409f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [needleProjX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/needleprojx--f66b1b43c3f6d2360aee5e6f.md) | 110 | `declaration-track:f66b1b43c3f6d2360aee5e6f1f293625bdec74500bf4d7ec480756aa8ee6d26e` |
| 2 | `def` | [needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/needlecrossesindicator--af74228efdd6d45e86a77e85.md) | 120 | `declaration-track:af74228efdd6d45e86a77e85e974d47ddfc706e2eb5c331f6b3853a00b69fe89` |
| 3 | `def` | [N](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/n--091895b70661335106e728ad.md) | 129 | `declaration-track:091895b70661335106e728ad9f7106d7556dd8684178f8bbd12c98ce944ba7bf` |
| 4 | `abbrev` | [needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/needlespace--5f9862a5876f23506bfb671f.md) | 134 | `declaration-track:5f9862a5876f23506bfb671fcc17d7392fc3cbcb04136386f139c45fba584c43` |
| 5 | `lemma` | [volume_needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/volume-needlespace--be20b5a91844bc3b0885f9ff.md) | 137 | `result-track:be20b5a91844bc3b0885f9ff51513751c5b201550a9e44c739a38e01271be02f` |
| 6 | `lemma` | [measurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/measurable-needlecrossesindicator--5330e7d262e81fcc401d6d00.md) | 142 | `result-track:5330e7d262e81fcc401d6d00352dba02e7e3cf20e2a357a94462de6ee8c23990` |
| 7 | `lemma` | [stronglyMeasurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/stronglymeasurable-needlecrossesindicator--2f097938a7df574e09b0f023.md) | 149 | `result-track:2f097938a7df574e09b0f023fbe67cb05b095d8d8bf551e1ef94987abed382bc` |
| 8 | `lemma` | [integrable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/integrable-needlecrossesindicator--b50217a08f49af7e6effc127.md) | 165 | `result-track:b50217a08f49af7e6effc127d9b9599b8cfe85e1ba62dc0bca80ad3693497213` |
| 9 | `lemma` | [buffon_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/buffon-integral--489da0fae31705da70282317.md) | 204 | `result-track:489da0fae31705da70282317d7e59efb9e139721ad78f78e0504ab2a764d3bc1` |
| 10 | `lemma` | [short_needle_inter_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/short-needle-inter-eq--6e0b85700ffd38d890c52436.md) | 248 | `result-track:6e0b85700ffd38d890c5243695a39ba5befbc5bc4e1fea17124112f32c026fd5` |
| 11 | `theorem` | [buffon_short](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/buffon-short--0c2c42424f13f2e6bc93be17.md) | 260 | `result-track:0c2c42424f13f2e6bc93be174c9d9855c670ab69fec75ab132a3625b2fdaeafc` |
| 12 | `lemma` | [intervalIntegrable_min_const_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/intervalintegrable-min-const-sin-mul--5d4ded34b5db30d842351e9f.md) | 280 | `result-track:5d4ded34b5db30d842351e9f28efb1ed4ebfc782cf04fb07c153229117953c6b` |
| 13 | `lemma` | [integral_min_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/integral-min-eq-two-mul--c86c7d4833d06725d5b0b920.md) | 289 | `result-track:c86c7d4833d06725d5b0b92011b8e7e988b6db104078004de4935025f1939330` |
| 14 | `lemma` | [integral_zero_to_arcsin_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/integral-zero-to-arcsin-min--d255da52e1f70625b8e46733.md) | 303 | `result-track:d255da52e1f70625b8e4673352f3ca56edc950c3c7fc6cc7482acb8d362a310c` |
| 15 | `lemma` | [integral_arcsin_to_pi_div_two_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/integral-arcsin-to-pi-div-two-min--f651eb8a72567f694ad9515c.md) | 321 | `result-track:f651eb8a72567f694ad9515cfc18dd7989754710103545cc183949be1c66a395` |
| 16 | `theorem` | [buffon_long](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant58f2268e574605b5499d84737d25f36d5bee4003293d637024e2bd502d726597.lean/declarations/buffon-long--f0c36924dba653ca7440aef0.md) | 338 | `result-track:f0c36924dba653ca7440aef0b7d8d63724c3ebe1dc172e1f473f6003a84df872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
