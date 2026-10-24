# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "decf93eeca3e2943b992916616f1c125a802f653",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `decf93eeca3e2943b992916616f1c125a802f653`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/poweronset--83a258fd567c841f0e340d0e.md) | 25 | `declaration-track:83a258fd567c841f0e340d0ed0f04f3bb2c6aff5d14bd9199c230c44d00df2db` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/powerweight--1df63c605863451974c5ba95.md) | 28 | `declaration-track:1df63c605863451974c5ba952adb7a4c7ba4ad672e54738c2b96ffb48a35b930` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom--c64cc6b1ab00c09dec65b178.md) | 31 | `declaration-track:c64cc6b1ab00c09dec65b178fb75bcecf94effb952e51ef8bc462416b115d4da` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail--303d84d720f7ad8cf3f6b1f2.md) | 34 | `declaration-track:303d84d720f7ad8cf3f6b1f2397c7b72ad89ece6b2dca7358e3a4a237b611efe` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/poweronset-pos--0d1364a8031b4c166b674dbb.md) | 37 | `result-track:0d1364a8031b4c166b674dbbaa3335676cf42ee6ad79f4e267665037b4158b22` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/powerweight-nonneg--5067f62892337c62fbad4480.md) | 41 | `result-track:5067f62892337c62fbad448041eeb4833781803f2ee59db09b22ce28198fee4b` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-nonneg--8f937c9e8171d2813dcf8dae.md) | 46 | `result-track:8f937c9e8171d2813dcf8dae83b9e9f249e32f2c30a2595a20d35fa398426873` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-measurable--0ff963fcba4c5eeb077e78fd.md) | 50 | `result-track:0ff963fcba4c5eeb077e78fdc2f3e660e7a86494c7bc7ef7e04c66ed212ba7d6` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-integrable--2623313dc90fc17d2e9d91fc.md) | 54 | `result-track:2623313dc90fc17d2e9d91fc01d8d8e28e5393960c21108b03e0820fb196fc69` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-integral--736c8702b828e7ab2f315926.md) | 61 | `result-track:736c8702b828e7ab2f315926bab7bb81d6b0c703ca2786df78e38cc95b9ab593` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-eq-omitted--ed0817bd92568c89c1ad7955.md) | 69 | `result-track:ed0817bd92568c89c1ad795576bb7cb9ce11d1705f3e71378172bf7c0ca09aaf` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsetatom-le-zeromoment--86ffdcaf4d5855dbe3a2fcd7.md) | 77 | `result-track:86ffdcaf4d5855dbe3a2fcd7b083b4f5808dd9fcd1ee011dd75175c13cfc1a7c` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-summable--dac53bc7b9fb94551993ce5d.md) | 84 | `result-track:dac53bc7b9fb94551993ce5de0bbfd9950793a07c11626bed46a885bea19d092` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-nonneg--a360820fe1cb160829aef43b.md) | 89 | `result-track:a360820fe1cb160829aef43b723a55c8c576b4d4fec34de69914152403154550` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-measurable--3a002e1fdf50dab63916c0e6.md) | 92 | `result-track:3a002e1fdf50dab63916c0e6f11e71d1ee07e5ba39ece9c3c6cfc00f847c8b2d` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-eq-indicator--4ea4d34c259c3b941db3d4d5.md) | 95 | `result-track:4ea4d34c259c3b941db3d4d52f1870adcacf4dbfc8a995612a326d90d2ca8940` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-lintegral--9b47c6beaef645e910937ec9.md) | 105 | `result-track:9b47c6beaef645e910937ec9e70fee45790c25ae514b720814bbb18c5034099c` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-integrable--8ab9cfd30a05f278c4d09c95.md) | 129 | `result-track:8ab9cfd30a05f278c4d09c956af7845ad0d05f220445a2359e29921aa2900e95` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/positiveonsettail-integral--3818ed22696d8f44bdcc355f.md) | 135 | `result-track:3818ed22696d8f44bdcc355f3e17a9c2535a971c92eebf3adcfa2bae45d5c5c7` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/omittedonsettail-integrable-positive--7addb19a2e6ad73d9474ceec.md) | 142 | `result-track:7addb19a2e6ad73d9474ceec9419b56c0116338a96b0ead48ed79887479af80a` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/omittedonsettail-integral-eq-b1--2e3965e1cb8394e7b2a75293.md) | 147 | `result-track:2e3965e1cb8394e7b2a7529331cf5502f55c6c5251ea2ae14d58ccdce9b31862` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetatom--8b6be6776ef024d46be0c105.md) | 153 | `declaration-track:8b6be6776ef024d46be0c1055d31d90f68ceb280c26645826599361c3b2075dc` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetprefix--67b7877f30f078ccad0a14eb.md) | 156 | `declaration-track:67b7877f30f078ccad0a14eb65cf812143ca3ab384d345e5427b4a46e71c1320` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetatom-nonneg--690bbc6fbc946b2216dbdcb6.md) | 159 | `result-track:690bbc6fbc946b2216dbdcb6f9a53cd61d58c4a2d5682aa39b72100c4afa39a5` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetatom-le-zeromoment--77c4b9c25a364b3213f8475f.md) | 166 | `result-track:77c4b9c25a364b3213f8475f24beeec52df1517f6ffa6cb6e46458e39636d992` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetprefix-summable--ab27f6dc129882cf8501fa72.md) | 173 | `result-track:ab27f6dc129882cf8501fa7229a784446beb0d12ba77e01fa5fc25d0d0c5c054` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetatom-add-omitted--9f5f5e5d40ffca4bd4aa0eb2.md) | 178 | `result-track:9f5f5e5d40ffca4bd4aa0eb2b3d599056e4b37079c5a3c4661f0d7c745019100` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetprefix-add-tail--7365815211db9277f17ad02e.md) | 185 | `result-track:7365815211db9277f17ad02ed4220317ecbd6f1ee7d559162527078f782fe032` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/properpowermoment-sub-closedprefix--ced003c4024fe3317a392c6f.md) | 192 | `result-track:ced003c4024fe3317a392c6feb4b5677122b4556efd5c0758ee964bf596ef9fd` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetatom-touching--90c8dd0e8552d4c532879df1.md) | 196 | `result-track:90c8dd0e8552d4c532879df10b7c828191ffe71b042a340fc2ae04211a3bf308` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/poweronset-ge-first--7b759bc33281bca93a132b62.md) | 201 | `result-track:7b759bc33281bca93a132b62d4fc0db8584778ad80c399bde25beaf0bd8a9279` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/closedonsetprefix-below-first--93a9fa6b6fe477fc21634a48.md) | 208 | `result-track:93a9fa6b6fe477fc21634a48d1c4ecf8ee2f60753f00449387d673493b4074a0` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant16bca6ccfb587a70c40cdedf751bbc2fda3a4804660ce1d2b6436584d8fc02b7.lean/declarations/omittedonsettail-below-first--ef524a379aa9ab793f3bd846.md) | 216 | `result-track:ef524a379aa9ab793f3bd846629863d6c6aa91613df4941784be7cca59a99853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
