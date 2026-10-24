# Verification target: GRWTSK.Analysis.MeasureTheory.EssSup.Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074b572fdabd4673ffb9394d63b6fa73193e3c9e",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074b572fdabd4673ffb9394d63b6fa73193e3c9e`.

Source path: `GRWTSK/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ENNReal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.UniformOn` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup--f87eaf8fdbce57195da9c6bf.md) | 51 | `declaration-track:f87eaf8fdbce57195da9c6bf439adfc3e949eafb0a8ebb09433eb88790cb3364` |
| 2 | `def` | [essInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf--99a08bbe5a55db67e4060e8c.md) | 56 | `declaration-track:99a08bbe5a55db67e4060e8c42a7de756f8ae7938fd8da49b72a7561230c4066` |
| 3 | `theorem` | [essSup_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-congr-ae--6c82ad56dfd19842a2a7f0dc.md) | 59 | `result-track:6c82ad56dfd19842a2a7f0dc1d44888c939fe4043ecc8ccd02e95f0389f63d3f` |
| 4 | `theorem` | [essInf_congr_ae](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-congr-ae--115303e8353207b51561563b.md) | 62 | `result-track:115303e8353207b51561563b10ff6db64fa0cab97e8bc7c12be7eeb1ce5477c2` |
| 5 | `theorem` | [essSup_const'](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-const--ef91557e0af94bd7390da55c.md) | 66 | `result-track:ef91557e0af94bd7390da55cb9a90cbad4f5c128463453b9b573df0b0f2a046a` |
| 6 | `theorem` | [essInf_const'](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-const--d8797a71f46b25fd44d978dc.md) | 70 | `result-track:d8797a71f46b25fd44d978dc8b7b8b6fe095d588292d3c4bbda69e67af5e56e3` |
| 7 | `theorem` | [essSup_const](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-const--408b2ac5f5fc565872719f2f.md) | 73 | `result-track:408b2ac5f5fc565872719f2f3caf120c229a5b5bbb338f6a966c60240ca60ae0` |
| 8 | `theorem` | [essInf_const](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-const--9ae68c1bd1848d4a01d937b1.md) | 76 | `result-track:9ae68c1bd1848d4a01d937b1971875eab0d4d31aae72f1afc92c488000df6b3c` |
| 9 | `lemma` | [essSup_smul_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-smul-measure--9fa6dfdaa47901ba2df31430.md) | 84 | `result-track:9fa6dfdaa47901ba2df31430c57b628fafa0051b3f8f596145f7dc62b10f5494` |
| 10 | `lemma` | [essSup_eq_ciSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-eq-cisup--c627a411213bc07d92054ad2.md) | 91 | `result-track:c627a411213bc07d92054ad29c57444be4507309c9a56f389fca5cd628b9e85c` |
| 11 | `lemma` | [essInf_eq_ciInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-eq-ciinf--e2642c39fe7192597d1aaf89.md) | 94 | `result-track:e2642c39fe7192597d1aaf89014de376bec796adcdcded65d7006829b911b72d` |
| 12 | `lemma` | [essSup_count_eq_ciSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-count-eq-cisup--0dc808ba8fff04a23b689fc6.md) | 99 | `result-track:0dc808ba8fff04a23b689fc64bbad61f2576408a7883700e8312071960eba1a4` |
| 13 | `lemma` | [essInf_count_eq_ciInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-count-eq-ciinf--1fda51b89bd3028a62af8509.md) | 102 | `result-track:1fda51b89bd3028a62af85099772634b4131641bf8f48a6e22adec5420589367` |
| 14 | `lemma` | [essSup_uniformOn_eq_ciSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-uniformon-eq-cisup--bb4857527594729f774847ef.md) | 105 | `result-track:bb4857527594729f774847ef58d28aaacbe73ba1804dbffcda00906671f67146` |
| 15 | `lemma` | [essInf_cond_count_eq_ciInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-cond-count-eq-ciinf--47c5f6870a07aac8d3e5981e.md) | 109 | `result-track:47c5f6870a07aac8d3e5981e85c5c496718cfc00ee08b8740a966e8feb45dac3` |
| 16 | `theorem` | [essSup_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-eq-sinf--5e9daf3417b43b5d05eb3021.md) | 119 | `result-track:5e9daf3417b43b5d05eb30211dc65fdaf004d70e5044b5d28e17284ded393850` |
| 17 | `theorem` | [essInf_eq_sSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-eq-ssup--353dba1d88313911fc1e6bd5.md) | 124 | `result-track:353dba1d88313911fc1e6bd53028ed106bce77efcca6826dcaa4b9a2ceb47499` |
| 18 | `theorem` | [ae_lt_of_essSup_lt](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/ae-lt-of-esssup-lt--d22f0a258b03d815e0cdb742.md) | 129 | `result-track:d22f0a258b03d815e0cdb7420be79bd0b82b4485132787b360c2507aae6d85b4` |
| 19 | `theorem` | [ae_lt_of_lt_essInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/ae-lt-of-lt-essinf--a455f8165d4f1690bc3ff7dd.md) | 134 | `result-track:a455f8165d4f1690bc3ff7dd83ed65176679958ae37f6e0785a16bfeabe957a6` |
| 20 | `theorem` | [ae_le_essSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/ae-le-esssup--2a2b4860d713471ff1eac74b.md) | 141 | `result-track:2a2b4860d713471ff1eac74b67c26d70d13a5aeb45f46c7b195b8b0a7ba2c880` |
| 21 | `theorem` | [ae_essInf_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/ae-essinf-le--2d45dbd923e175b6477a9087.md) | 146 | `result-track:2d45dbd923e175b6477a9087eef3a669ae7dc66861a5f9e785f716d474c6298d` |
| 22 | `theorem` | [meas_essSup_lt](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/meas-esssup-lt--8c1de7f607b624e3ede74de1.md) | 151 | `result-track:8c1de7f607b624e3ede74de16d1d1de3ca2d033b2040833a725e4070bbae6daf` |
| 23 | `theorem` | [meas_lt_essInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/meas-lt-essinf--f1f1654eded85b330c719f62.md) | 157 | `result-track:f1f1654eded85b330c719f62c2e88d975168a01c4ff6024a9143aab4c9736d5d` |
| 24 | `theorem` | [essSup_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-measure-zero--bf1bfdec6b051fe2a9789ce1.md) | 170 | `result-track:bf1bfdec6b051fe2a9789ce16ea575554eab7da9ef22a021b6b188749fa3caf7` |
| 25 | `theorem` | [essInf_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-measure-zero--96dd332db2f8994e86b2b40d.md) | 174 | `result-track:96dd332db2f8994e86b2b40d41d5a32883a44ebb7295bc70f0b3342f5a6e4272` |
| 26 | `theorem` | [essSup_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-mono-ae--1c3fb5812c3dd924b2e230f8.md) | 177 | `result-track:1c3fb5812c3dd924b2e230f8df16ff387689c04f1e4e3961d4560023dfe53626` |
| 27 | `theorem` | [essInf_mono_ae](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-mono-ae--33eb71566af5cdc1036edfba.md) | 180 | `result-track:33eb71566af5cdc1036edfba3f94442b90de130cc013ebf19280a9bc15738f9c` |
| 28 | `theorem` | [essSup_le_of_ae_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-le-of-ae-le--1a7388ba7e6aa9d437f02535.md) | 183 | `result-track:1a7388ba7e6aa9d437f02535a530baeae4e300a39279d6504d4c7aebc418ca9c` |
| 29 | `theorem` | [le_essInf_of_ae_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/le-essinf-of-ae-le--0f9386429d6945cce8729faf.md) | 186 | `result-track:0f9386429d6945cce8729fafb71503d6e7af8757e36dda2387d8b36b866e09b7` |
| 30 | `theorem` | [essSup_const_bot](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-const-bot--f7837582c810693cf873c67c.md) | 189 | `result-track:f7837582c810693cf873c67c93979067c392fa6b43943d2558027aa0aaba35d6` |
| 31 | `theorem` | [essInf_const_top](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-const-top--64a858a300e6825f5a70b51c.md) | 192 | `result-track:64a858a300e6825f5a70b51c4908d7cd80f17cbefa476998a261424b805296db` |
| 32 | `theorem` | [OrderIso.essSup_apply](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/orderiso-esssup-apply--ca71c2ebe9829d218081f672.md) | 195 | `result-track:ca71c2ebe9829d218081f6723ad7b23fb110c60fca185e00bbebecbe5154ee0e` |
| 33 | `theorem` | [OrderIso.essInf_apply](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/orderiso-essinf-apply--0431baf6a81ea850cc5ed6c2.md) | 200 | `result-track:0431baf6a81ea850cc5ed6c2c9be320e4e1a7e88c4ae467c7064125718077c84` |
| 34 | `theorem` | [essSup_mono_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-mono-measure--65e58d0c360a1a807760bf76.md) | 204 | `result-track:65e58d0c360a1a807760bf7632896c6eb35b0020272cc5c58dd17e2b008fe5ef` |
| 35 | `theorem` | [essSup_mono_measure'](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-mono-measure--4146a667a78f077ea55d1037.md) | 208 | `result-track:4146a667a78f077ea55d103785732a6d1668d80f52170e5b46955e908399f623` |
| 36 | `theorem` | [essInf_antitone_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-antitone-measure--4f66deb0e68a254a52737edb.md) | 213 | `result-track:4f66deb0e68a254a52737edbdd27f5cacf97129b503d7351aa9b1ad17fe97785` |
| 37 | `lemma` | [essSup_eq_iSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-eq-isup--4e30075423bce1f61d8dc820.md) | 217 | `result-track:4e30075423bce1f61d8dc82057a2a4c31551fb17001574a7201628c12b144d87` |
| 38 | `lemma` | [essInf_eq_iInf](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-eq-iinf--2ff2f3713d79dcc61f359f9d.md) | 220 | `result-track:2ff2f3713d79dcc61f359f9de25c08ae10ec7f72097467ac9911166429ac648f` |
| 39 | `lemma` | [essSup_count](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-count--c24ddcdbd2d2c13b15b30a28.md) | 223 | `result-track:c24ddcdbd2d2c13b15b30a283c8e76b9d17e6cc8a826084467757f8bacff1109` |
| 40 | `lemma` | [essInf_count](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/essinf-count--53f785df468a0ca5b7b772b8.md) | 226 | `result-track:53f785df468a0ca5b7b772b86fbb87c27c92554b3244e60c5263f99e2eeb73a0` |
| 41 | `theorem` | [essSup_comp_le_essSup_map_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-comp-le-esssup-map-measure--137dab6e3a2ea3fb43cc7f80.md) | 233 | `result-track:137dab6e3a2ea3fb43cc7f808e750e886057209dac2ff72b3a28e75cc071b5d4` |
| 42 | `theorem` | [MeasurableEmbedding.essSup_map_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/measurableembedding-esssup-map-measure--32756de4c764f52b59332a50.md) | 239 | `result-track:32756de4c764f52b59332a5023f8d5802f4022ad5b178affab30b14454886c44` |
| 43 | `theorem` | [essSup_map_measure_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-map-measure-of-measurable--026dc8471886a5f2b091a126.md) | 249 | `result-track:026dc8471886a5f2b091a1262ab1e4ed79cf87753a01e105f7de200d771be8d1` |
| 44 | `theorem` | [essSup_map_measure](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-map-measure--bf66653061eeb14ee6d5436e.md) | 257 | `result-track:bf66653061eeb14ee6d5436e62a67f2e86b5e0bd05de3e1f9eb550b430a102c5` |
| 45 | `lemma` | [essSup_piecewise](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-piecewise--bfa525d48cd7adccc32eff67.md) | 273 | `result-track:bfa525d48cd7adccc32eff67fc4c3300549034adeeb1e2d9a735cce5d5d0bdac` |
| 46 | `theorem` | [essSup_indicator_eq_essSup_restrict](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-indicator-eq-esssup-restrict--c283947a534ea169d548c7f2.md) | 277 | `result-track:c283947a534ea169d548c7f2dc75b19029d5a20f8ab4e33e2ba66e1aeb624a1c` |
| 47 | `theorem` | [ae_le_essSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/ae-le-esssup--126dab0539a169611dc7a71e.md) | 283 | `result-track:126dab0539a169611dc7a71e0782ea1b296cd1138f3d84b676623081d1ac2ec2` |
| 48 | `theorem` | [essSup_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-eq-zero-iff--9dc90fb26a39c90f1b20bdf8.md) | 287 | `result-track:9dc90fb26a39c90f1b20bdf8c41b66ed51dee198836eabd4609856a22bfd21bb` |
| 49 | `theorem` | [essSup_const_mul](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-const-mul--7ed2b37326cdaa168b005ed8.md) | 290 | `result-track:7ed2b37326cdaa168b005ed88949d418a15722fac5e63047c07f133ba4796921` |
| 50 | `theorem` | [essSup_mul_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-mul-le--d6a7b61b880a372b6871e84f.md) | 293 | `result-track:d6a7b61b880a372b6871e84feceefd2b69796586b180c5d2f232b43a8bc65a42` |
| 51 | `theorem` | [essSup_add_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-add-le--17d4e05ba966030242a4e87c.md) | 296 | `result-track:17d4e05ba966030242a4e87c361626f8d6b84e3bbeb0f8f5f9d73f3ab31de1d9` |
| 52 | `theorem` | [essSup_liminf_le](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-liminf-le--df58ae7acd95fc49b853e008.md) | 299 | `result-track:df58ae7acd95fc49b853e0084e933451aa9de82e1a5e5bd17250bcc23dcf8524` |
| 53 | `theorem` | [coe_essSup](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/coe-esssup--38d7831894b17cdb315fdcf5.md) | 305 | `result-track:38d7831894b17cdb315fdcf5f4346bdbae8990802fcea1632ec84dda5e5ee5ec` |
| 54 | `lemma` | [essSup_restrict_eq_of_support_subset](../../../../../mathematics/Analysis/MeasureTheory/EssSup/Variant9635b995707e72f984930f6ba7b47c053c7407f5d0f8ca0458b2c54c397bb0ac.lean/declarations/esssup-restrict-eq-of-support-subset--5a4bd4b5e32c9032d1a6812a.md) | 311 | `result-track:5a4bd4b5e32c9032d1a6812a8e6d1809e9f9998a8b2d6c6129ba7cb2857097e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
