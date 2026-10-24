# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Probability.Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638a39783d1c19a8ead5033b773ca15fc49177f9",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638a39783d1c19a8ead5033b773ca15fc49177f9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsZeroOrProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/iszeroorprobabilitymeasure--79dff6aa31bfc4439248a6f7.md) | 36 | `declaration-track:79dff6aa31bfc4439248a6f7b1b44427b7816e76bedc5ce200b6f78c1c887505` |
| 2 | `lemma` | [isZeroOrProbabilityMeasure_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/iszeroorprobabilitymeasure-iff--3b14a393b7fd5236447e56a1.md) | 39 | `result-track:3b14a393b7fd5236447e56a17ef549e985ec01532fa012c5446f4b0e8c387975` |
| 3 | `lemma` | [prob_le_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-le-one--d03f6d6e9634fdf8e016748a.md) | 42 | `result-track:d03f6d6e9634fdf8e016748ae38346848f66b0b4ba0095b86cf41dd9b568cb54` |
| 4 | `lemma` | [measureReal_le_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/measurereal-le-one--0c43d7cd0a5980e15ca5365c.md) | 46 | `result-track:0c43d7cd0a5980e15ca5365c34ed701c041efa1db5785ba36285e043ee5c4b83` |
| 5 | `theorem` | [one_le_prob_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/one-le-prob-iff--38d16531bb40fabde0fa4eaa.md) | 53 | `result-track:38d16531bb40fabde0fa4eaa2a2483f87a67a97df2c499856cfe8a567db87d0e` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/instance--830617e5845d283f2daee4a0.md) | 56 | `declaration-track:830617e5845d283f2daee4a0173daac8c479ee20c57b4129a1a8d5560320f19f` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/instance--e49206be437ea9ca0b7db7b8.md) | 60 | `declaration-track:e49206be437ea9ca0b7db7b8b5c08866c686f789b1e46f7c9c02a1ed83ab6f9c` |
| 8 | `class` | [IsProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure--e48efe1dfd02a9d7dfb82154.md) | 68 | `declaration-track:e48efe1dfd02a9d7dfb821546613c72a76643b5c3e8e8eac9ed26d9aeedf8208` |
| 9 | `lemma` | [isProbabilityMeasure_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-iff--ba7224166947fbe18e331f5c.md) | 75 | `result-track:ba7224166947fbe18e331f5c9cc3d24a7a555211bbed262a4977c3830a1684b9` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/instance--220c5381a1c4dbfc96022fd0.md) | 78 | `declaration-track:220c5381a1c4dbfc96022fd01515c406effa3e027bcf79504727ae0aca64f187` |
| 11 | `theorem` | [IsProbabilityMeasure.ne_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-ne-zero--ee252e2b498fc03352847c4d.md) | 82 | `result-track:ee252e2b498fc03352847c4d9aa6cc2dd51cdb5a93e6bd60ebeffa7d230c19bc` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/instance--b1a01bcdfba2acd8ea135809.md) | 85 | `declaration-track:b1a01bcdfba2acd8ea13580974c702469db93cc8ef17c7929f3390bbe042b3aa` |
| 13 | `theorem` | [IsProbabilityMeasure.ae_neBot](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-ae-nebot--f41e4db32875e99054966f5e.md) | 88 | `result-track:f41e4db32875e99054966f5e8e2564bc642b0360cd93785a9d669c5eca50c1d3` |
| 14 | `theorem` | [prob_add_prob_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-add-prob-compl--9be80f434fa33c689c63e579.md) | 90 | `result-track:9be80f434fa33c689c63e57936c5ad87d33b0654d036e81c58ed83bb038dc24c` |
| 15 | `instance` | [isProbabilityMeasureSMul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasuresmul--d6891aba074923b83926b330.md) | 93 | `declaration-track:d6891aba074923b83926b330fce290b9ad32358e5380bc71e86c7ef6707f28e3` |
| 16 | `theorem` | [isProbabilityMeasure_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-map--7b2384e6da212c6ea4243392.md) | 99 | `result-track:7b2384e6da212c6ea424339290569e1d240944a7bf62581a015795468f523785` |
| 17 | `instance` | [IsProbabilityMeasure_comap_equiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-comap-equiv--dd32feb1ddc1318a133636d7.md) | 103 | `declaration-track:dd32feb1ddc1318a133636d73171148b65dabcad7443acc7e2bbe84f6f0fe500` |
| 18 | `lemma` | [prob_compl_eq_one_sub₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-one-sub--6d718978a94f1ac5a1d0353f.md) | 109 | `result-track:6d718978a94f1ac5a1d0353f6e3da252a6ff2f55a1948e1463c5c737b8a3329a` |
| 19 | `theorem` | [prob_compl_eq_one_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-one-sub--01125ddc54172d891b67f54f.md) | 115 | `result-track:01125ddc54172d891b67f54f33093a745b5d642223656bf738202247e8ea285e` |
| 20 | `lemma` | [prob_compl_eq_zero_iff₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-zero-iff--6742cda380bafe2f23916ddd.md) | 118 | `result-track:6742cda380bafe2f23916dddf56860a5fffbcd8f6e9b3b7982565a9843b6b10f` |
| 21 | `lemma` | [prob_compl_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-zero-iff--7926a7017dd6678d6cb3e270.md) | 121 | `result-track:7926a7017dd6678d6cb3e2703269a160a1561b688565cff06e43fd8d8de52bc7` |
| 22 | `lemma` | [prob_compl_eq_one_iff₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-one-iff--dac5b11f446157e5257fbd7c.md) | 124 | `result-track:dac5b11f446157e5257fbd7c872f523a1c7e0ba476d9e4846d8d408a8f0ce999` |
| 23 | `lemma` | [prob_compl_eq_one_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-eq-one-iff--fe33c26c4067e192d1417ab6.md) | 127 | `result-track:fe33c26c4067e192d1417ab60e3dfd2e372d792290cd85020bda32239269ef2f` |
| 24 | `lemma` | [mem_ae_iff_prob_eq_one₀](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/mem-ae-iff-prob-eq-one--97f4fae6fbc1d1790d39233c.md) | 130 | `result-track:97f4fae6fbc1d1790d39233c9b75755e877a552cdadc348f67b3ef5546f1015b` |
| 25 | `lemma` | [mem_ae_iff_prob_eq_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/mem-ae-iff-prob-eq-one--8f33f4d3718d2aeb3c06501a.md) | 133 | `result-track:8f33f4d3718d2aeb3c06501aab077f77191dc470aca8786a7f9a9d3cce624470` |
| 26 | `lemma` | [ae_iff_prob_eq_one](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/ae-iff-prob-eq-one--582970129feecd8d2428f196.md) | 136 | `result-track:582970129feecd8d2428f1968b8b943a590608f7176b2ba5a0822b1fb7b32f6d` |
| 27 | `lemma` | [isProbabilityMeasure_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-comap--476f40a04997418b1d4c8926.md) | 139 | `result-track:476f40a04997418b1d4c8926605333ccfdd5d6ff03b73c22397def68ae1b4a10` |
| 28 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.IsZeroOrProbabilityMeasure.Variant3124cfa99677f88e90df4d1a0884e3c7ca58cc23c5b4288a9c2143e7a59119ac.MeasurableEmbedding.isProbabilityMeasure_comap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--25a730741f90327828b3e84a.md) | 147 | `result-track:25a730741f90327828b3e84a86000597f25c0a73e856a5ee87ea297f9a39a247` |
| 29 | `instance` | [isProbabilityMeasure_map_up](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-map-up--87a98aa95f7c0236f7827b3d.md) | 151 | `declaration-track:87a98aa95f7c0236f7827b3d358cb4aa44fe6fb5858ebf8cbf579a75247d13de` |
| 30 | `instance` | [isProbabilityMeasure_comap_down](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/isprobabilitymeasure-comap-down--8b0a5a5fcfdf76b917ae81ef.md) | 154 | `declaration-track:8b0a5a5fcfdf76b917ae81efddc89d881536ab9b55b0ed6483eb610c0ff951e7` |
| 31 | `instance` | [isZeroOrProbabilityMeasureSMul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/iszeroorprobabilitymeasuresmul--cbf27f41b42251eb261ef9f3.md) | 162 | `declaration-track:cbf27f41b42251eb261ef9f35707c4ea04c6736a50938021ffcec60e52ad59e7` |
| 32 | `lemma` | [eq_zero_or_isProbabilityMeasure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/eq-zero-or-isprobabilitymeasure--e074318a0e6c666108707002.md) | 174 | `result-track:e074318a0e6c666108707002064be0ee73cc711cd6fe0e8bdfe5e214bbbaccfd` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/instance--90ad315bc8552ac849075f66.md) | 179 | `declaration-track:90ad315bc8552ac849075f660a266f6150a9d2831d3f273193a37f427e6ab052` |
| 34 | `lemma` | [prob_compl_lt_one_sub_of_lt_prob](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-lt-one-sub-of-lt-prob--0e7d58fe8491b870c5d9fbde.md) | 184 | `result-track:0e7d58fe8491b870c5d9fbdec616ad47e20f6135dc627c3b3d5ee6415227d9c4` |
| 35 | `lemma` | [prob_compl_le_one_sub_of_le_prob](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/prob-compl-le-one-sub-of-le-prob--a7e76ce459a11f9d28942cca.md) | 193 | `result-track:a7e76ce459a11f9d28942cca867298e361e0430863545b1d106300238f67629e` |
| 36 | `lemma` | [inv_measure_univ_smul_eq_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Probability/Variant43c8907dbcf8e889dcc3c0c783afc0b0010525664328c8113478b8c9ecf312ab.lean/declarations/inv-measure-univ-smul-eq-self--65eec0c5dd8bb50e992c77d8.md) | 200 | `result-track:65eec0c5dd8bb50e992c77d8e0b764ed3d7b0723e4ba5fb03f8062489fe7b779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
