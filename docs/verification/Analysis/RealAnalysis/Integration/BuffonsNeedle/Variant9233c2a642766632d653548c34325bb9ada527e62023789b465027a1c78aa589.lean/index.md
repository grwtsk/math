# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BuffonsNeedle.Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c34f96eae356573e49dbabbf491e61e7ce9d976a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c34f96eae356573e49dbabbf491e61e7ce9d976a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean.json)

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
| 1 | `def` | [needleProjX](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/needleprojx--969dc50e41e3e9a2f368715f.md) | 102 | `declaration-track:969dc50e41e3e9a2f368715fb04fcd8af61cff37ce084442e8409e912c7db3ae` |
| 2 | `def` | [needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/needlecrossesindicator--75f114f1aa643c1e908a7ff3.md) | 112 | `declaration-track:75f114f1aa643c1e908a7ff3f8816049275be7a84c9ff34ce0f011aa70b03aad` |
| 3 | `def` | [N](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/n--fc2628d820f5fae58dd34714.md) | 121 | `declaration-track:fc2628d820f5fae58dd34714fbd6ce83d7beddccda3efdeba495b77c53ac5e8f` |
| 4 | `abbrev` | [needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/needlespace--5987ace6aa89e6c74685f9c2.md) | 126 | `declaration-track:5987ace6aa89e6c74685f9c2217f6c9b1b538205ac24884551d52837efc8c073` |
| 5 | `lemma` | [volume_needleSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/volume-needlespace--089b4030b96bc2db65bdd830.md) | 129 | `result-track:089b4030b96bc2db65bdd83041a958c6db13d09291028b39b6c149b14d538563` |
| 6 | `lemma` | [measurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/measurable-needlecrossesindicator--34643860c03b77a5580a668e.md) | 134 | `result-track:34643860c03b77a5580a668e28c24e2f409717421d21f3077b5acee3a96be150` |
| 7 | `lemma` | [stronglyMeasurable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/stronglymeasurable-needlecrossesindicator--382d4cc54f8f0042a86ccb9f.md) | 141 | `result-track:382d4cc54f8f0042a86ccb9fb5a976605ebaa17e32ca585b443527c60ac97a11` |
| 8 | `lemma` | [integrable_needleCrossesIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/integrable-needlecrossesindicator--8cdef886aec77474504ec8bf.md) | 157 | `result-track:8cdef886aec77474504ec8bf0ee81838b42b650f7c5c3f0e6fc57431a86f257f` |
| 9 | `lemma` | [buffon_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/buffon-integral--fac326eb6831d8940f02a611.md) | 196 | `result-track:fac326eb6831d8940f02a611041f33554b382862ecef4f70278eb1715d80f752` |
| 10 | `lemma` | [short_needle_inter_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/short-needle-inter-eq--d82e328d58f8ab51dcb1b447.md) | 240 | `result-track:d82e328d58f8ab51dcb1b4476fd94d30a0dde6043642cb71aedbb51ddb965eac` |
| 11 | `theorem` | [buffon_short](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/buffon-short--cd7c7a37cfc895e3c2ab4220.md) | 252 | `result-track:cd7c7a37cfc895e3c2ab42209831d4c6b861c371c33ce42aaa4dc5cf7b285a5e` |
| 12 | `lemma` | [intervalIntegrable_min_const_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/intervalintegrable-min-const-sin-mul--ab539015a88edba4eba59e5e.md) | 272 | `result-track:ab539015a88edba4eba59e5e9a21eec2e0ad3104a895062827b497590a93c249` |
| 13 | `lemma` | [integral_min_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/integral-min-eq-two-mul--641eaac6a6cf34f339af2a4f.md) | 281 | `result-track:641eaac6a6cf34f339af2a4fdf19167c30fe028707f0249bb50ffa080a2005bc` |
| 14 | `lemma` | [integral_zero_to_arcsin_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/integral-zero-to-arcsin-min--ff5925a83d55f74fc6991c26.md) | 295 | `result-track:ff5925a83d55f74fc6991c26bc048001192f5d7b96f6d4871425aa070c16b020` |
| 15 | `lemma` | [integral_arcsin_to_pi_div_two_min](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/integral-arcsin-to-pi-div-two-min--dd3a54841e54b332cd5e45c9.md) | 313 | `result-track:dd3a54841e54b332cd5e45c90fbf9ee6ee8831dd4244d55e5233ecfb8d3fe8b7` |
| 16 | `theorem` | [buffon_long](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BuffonsNeedle/Variant9233c2a642766632d653548c34325bb9ada527e62023789b465027a1c78aa589.lean/declarations/buffon-long--49e86f24a460023805003cae.md) | 330 | `result-track:49e86f24a460023805003caed16df489f005eac4df6c9e0146b9cb849a662218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
