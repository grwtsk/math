# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Probability.Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63c76ac537cf2761791e6db1c56a2f7666661e9a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63c76ac537cf2761791e6db1c56a2f7666661e9a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsZeroOrProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/iszeroorprobabilitymeasure--9f94efb6fa06af777cdf63ac.md) | 28 | `declaration-track:9f94efb6fa06af777cdf63aca19eb6b1de0335c4415ca2076219bde5520da85d` |
| 2 | `lemma` | [isZeroOrProbabilityMeasure_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/iszeroorprobabilitymeasure-iff--159716ce3d92eed2f109aa25.md) | 31 | `result-track:159716ce3d92eed2f109aa253d4b080841026080158ceb378782fc6b8d0538c7` |
| 3 | `lemma` | [prob_le_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-le-one--8cd1cbcb2d658d060b44494f.md) | 34 | `result-track:8cd1cbcb2d658d060b44494fa099a3a2ab5d7a39bfd0c7378278ab9f9a4a68fa` |
| 4 | `lemma` | [measureReal_le_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/measurereal-le-one--426387ada16426de3f2b7934.md) | 38 | `result-track:426387ada16426de3f2b79343fd0a2a88cc3f7969fbe34cd7c2f87ce0712390f` |
| 5 | `theorem` | [one_le_prob_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/one-le-prob-iff--006646fc9a97f3b914f21d6a.md) | 45 | `result-track:006646fc9a97f3b914f21d6ab49127408f0ab2e384236b88b8da27a503ee3d48` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/instance--0b9ec8b1dfe3724f9beb1695.md) | 48 | `declaration-track:0b9ec8b1dfe3724f9beb1695a5fbc373053e252532d7bc56d06b4dab1db0cb0c` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/instance--bf43503836c57468dc229699.md) | 52 | `declaration-track:bf43503836c57468dc22969917ca928e5121ef9a42bfb97d382a927cbce6ed1d` |
| 8 | `class` | [IsProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure--d026bc2bc1e9d2c1c14cf2d8.md) | 60 | `declaration-track:d026bc2bc1e9d2c1c14cf2d85568ea4e102540d309a231c3bdd2f5a0f33bbc94` |
| 9 | `lemma` | [isProbabilityMeasure_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-iff--b79676dcc9d540968a5e64f0.md) | 67 | `result-track:b79676dcc9d540968a5e64f097536cb82dd50c90ca7293ea0787aecb1f2e1023` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/instance--25baac8d6ff3437bea56d275.md) | 70 | `declaration-track:25baac8d6ff3437bea56d275d2a32ef47e07b61caaa9aa328589bbbfc778e1d0` |
| 11 | `theorem` | [IsProbabilityMeasure.ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-ne-zero--82f1ab1ff40a1141c41a1700.md) | 74 | `result-track:82f1ab1ff40a1141c41a17004e5e75c75f86adea93ebe4cf79c09f9420600948` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/instance--0f31ef1448b90bfffb8f67bf.md) | 77 | `declaration-track:0f31ef1448b90bfffb8f67bf5a58c55d5a13194fc284236e5acaab03ade3fd8c` |
| 13 | `theorem` | [IsProbabilityMeasure.ae_neBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-ae-nebot--15532519fd9c64c4e641cd79.md) | 80 | `result-track:15532519fd9c64c4e641cd795ee7b78aea724dbafe9da9d43d961fe075bdf1ec` |
| 14 | `theorem` | [prob_add_prob_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-add-prob-compl--65d0fc13518569f32da41aa0.md) | 82 | `result-track:65d0fc13518569f32da41aa0fe7ea675d43ff08a8211756cdf2fc0e0db453895` |
| 15 | `instance` | [isProbabilityMeasureSMul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasuresmul--578160fcbf7395c27a25f52a.md) | 85 | `declaration-track:578160fcbf7395c27a25f52a4f7310739801f350120a3bb6cf22bdace172b892` |
| 16 | `theorem` | [isProbabilityMeasure_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-map--2baf84ceb54dcefa98998449.md) | 91 | `result-track:2baf84ceb54dcefa989984497e8f74dbad2d02cd724f8b3c313140ebc353b16c` |
| 17 | `instance` | [IsProbabilityMeasure_comap_equiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-comap-equiv--2ae9113d37b8f4b650a546ab.md) | 95 | `declaration-track:2ae9113d37b8f4b650a546ab073cf8bef3d9d35a6136612f1fa984e79dc5fa5e` |
| 18 | `lemma` | [prob_compl_eq_one_sub₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-one-sub--f3e502b3f0b7f9dd94cd34ad.md) | 101 | `result-track:f3e502b3f0b7f9dd94cd34ad5fd693a47f50173444c6e0ff209c3fd781ec4f74` |
| 19 | `theorem` | [prob_compl_eq_one_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-one-sub--216d27058fc6f5ad70dd591a.md) | 107 | `result-track:216d27058fc6f5ad70dd591aa98d3da423e1d5716d7787ef0b3973c14c172bbe` |
| 20 | `lemma` | [prob_compl_eq_zero_iff₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-zero-iff--87128b4962f1491eab85185e.md) | 110 | `result-track:87128b4962f1491eab85185ed824fc69715367b5753ac928b40a6fdcb57e5d3f` |
| 21 | `lemma` | [prob_compl_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-zero-iff--57a845952ea412f73614c3ca.md) | 113 | `result-track:57a845952ea412f73614c3cacdd4c7d5467e8119f32d7b53c3a1fb7bc168754e` |
| 22 | `lemma` | [prob_compl_eq_one_iff₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-one-iff--1a85c886ba8e8f38083922c1.md) | 116 | `result-track:1a85c886ba8e8f38083922c191368487df0b634d8e9c2060be82a3881f18b185` |
| 23 | `lemma` | [prob_compl_eq_one_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-eq-one-iff--e03d07f8825842ef923f29af.md) | 119 | `result-track:e03d07f8825842ef923f29afd9bf018bf0daa7afbff9e70638b774f6b589c3aa` |
| 24 | `lemma` | [mem_ae_iff_prob_eq_one₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/mem-ae-iff-prob-eq-one--e7b0abf2429487608b8cfb0f.md) | 122 | `result-track:e7b0abf2429487608b8cfb0fbe61b071aaf1a26499fe8a5f340eb4e9099c64d1` |
| 25 | `lemma` | [mem_ae_iff_prob_eq_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/mem-ae-iff-prob-eq-one--136c96a1381bf3a4da4656dc.md) | 125 | `result-track:136c96a1381bf3a4da4656dc9dc39ac4aeeec263ad328659af3b2c177631134a` |
| 26 | `lemma` | [ae_iff_prob_eq_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/ae-iff-prob-eq-one--1006a95fe8fa2e75dccb67ed.md) | 128 | `result-track:1006a95fe8fa2e75dccb67ed88fedf1f590ef6c440dce3071cc4c969d63d3138` |
| 27 | `lemma` | [isProbabilityMeasure_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-comap--b523ff98ce4e4bbb4052c503.md) | 131 | `result-track:b523ff98ce4e4bbb4052c5033aa300aa780df944cecf6985339f56988568c8d3` |
| 28 | `lemma` | [_root_.MeasurableEmbedding.isProbabilityMeasure_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/root-measurableembedding-isprobabilitymeasure-comap--502987229d4bc6424c4b3fea.md) | 139 | `result-track:502987229d4bc6424c4b3fea206599417c8cfabcbe7e64aa988f3822d29acdb7` |
| 29 | `instance` | [isProbabilityMeasure_map_up](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-map-up--26e05e00472d67b3e19a14a3.md) | 143 | `declaration-track:26e05e00472d67b3e19a14a39704e86895affcc380c15a3c0547a98fef01b30d` |
| 30 | `instance` | [isProbabilityMeasure_comap_down](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/isprobabilitymeasure-comap-down--57f762155d5734d3a1467892.md) | 146 | `declaration-track:57f762155d5734d3a146789252c4df35100fbe4bb3ba8616b3af7b3c6d31d80a` |
| 31 | `instance` | [isZeroOrProbabilityMeasureSMul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/iszeroorprobabilitymeasuresmul--b7ade5c952584d27cd7d3547.md) | 154 | `declaration-track:b7ade5c952584d27cd7d35473a9dc6e6cdd8fb91187b9a879be058ab0c89998c` |
| 32 | `lemma` | [eq_zero_or_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/eq-zero-or-isprobabilitymeasure--894e8042a9fc4ae64c30cd3c.md) | 166 | `result-track:894e8042a9fc4ae64c30cd3cba7b0fe3aca8660d57a873911c5414e5dae3610c` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/instance--0014dfb0377f2c424dccee32.md) | 171 | `declaration-track:0014dfb0377f2c424dccee3280c3beb5db58e56d3888f901a40edb523cfc5fa2` |
| 34 | `lemma` | [prob_compl_lt_one_sub_of_lt_prob](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-lt-one-sub-of-lt-prob--c0ee99142138cc7504619cff.md) | 176 | `result-track:c0ee99142138cc7504619cfffb670dc4f472934b83745929d07af08bd820c8e5` |
| 35 | `lemma` | [prob_compl_le_one_sub_of_le_prob](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/prob-compl-le-one-sub-of-le-prob--a1e62f9ae8459c4c1c918722.md) | 185 | `result-track:a1e62f9ae8459c4c1c918722e68d02ba5f01a8749c14ea7254545f16a4cc4bc8` |
| 36 | `lemma` | [inv_measure_univ_smul_eq_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.lean/declarations/inv-measure-univ-smul-eq-self--ba4b67025a9eb96f3afde185.md) | 192 | `result-track:ba4b67025a9eb96f3afde185a97d11c5ec4b15a84d8132aeda5c8f73404ed165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
