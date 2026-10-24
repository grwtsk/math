# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24adc6181012c5a3b882c298f8c66708b42cb2e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24adc6181012c5a3b882c298f8c66708b42cb2e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/poweronset--4581652d688dc3705662f23f.md) | 17 | `declaration-track:4581652d688dc3705662f23f8eb0b4a2604a269be1abe6730ef28d08a1d69a84` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/powerweight--5f6a2e39a7c9c690d700c705.md) | 20 | `declaration-track:5f6a2e39a7c9c690d700c7055b58b41fca7d014f908351c51d4a1f578979d269` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom--4014bd4dd34c9005104a35e2.md) | 23 | `declaration-track:4014bd4dd34c9005104a35e2814747a555c7cf4b2bc3e825d5688a9c7040b56e` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail--efd337dd9a2e10716a6d86cb.md) | 26 | `declaration-track:efd337dd9a2e10716a6d86cb22caee56c604fbe513027ea42677542e7631b772` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/poweronset-pos--c1628e5244bc344de1944e45.md) | 29 | `result-track:c1628e5244bc344de1944e4547576663f8c33ca7f72467ef717884bd05963b73` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/powerweight-nonneg--05c2fcb10fefffb2f8160cf7.md) | 33 | `result-track:05c2fcb10fefffb2f8160cf7558722555ef7dea2296ebf8b7cd01860d5c3e73a` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-nonneg--4cc80ed26ccb71f7df0569e9.md) | 38 | `result-track:4cc80ed26ccb71f7df0569e9e35cf4bda5ca5531aec42b10d6af484b48f70881` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-measurable--8b2b5a6b213c5a899f2d5f3b.md) | 42 | `result-track:8b2b5a6b213c5a899f2d5f3bf55ceae0fd1bd54d6c78f23a8cc1a36f60a96feb` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-integrable--37d6a2722e13249cadaab409.md) | 46 | `result-track:37d6a2722e13249cadaab4091f98e828e69a25e85a6d21953bc51e289690cc0f` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-integral--c5c8f164fde7dde93faf6bbd.md) | 53 | `result-track:c5c8f164fde7dde93faf6bbdc50ab85dcfccdf9e57b0f280ebbf2db282ea1032` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-eq-omitted--239a0d33a81b6e8ddb06ce03.md) | 61 | `result-track:239a0d33a81b6e8ddb06ce039831c5041a768119c12f40481c73c243e4ec615d` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsetatom-le-zeromoment--6a6e6d594c3a0de2660f6773.md) | 69 | `result-track:6a6e6d594c3a0de2660f6773a1a6800a2cdac50a2335762637dba339826b827c` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-summable--a0215a56e3310082efb84883.md) | 76 | `result-track:a0215a56e3310082efb848838a65b97fcf153449fa613263a2b2f994fe1eab35` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-nonneg--f9d4cfcb778f857ee780319a.md) | 81 | `result-track:f9d4cfcb778f857ee780319ab24df256548d14f40194fa75df5bc67d9b3934d8` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-measurable--4bde5de56b36de70f278bb70.md) | 84 | `result-track:4bde5de56b36de70f278bb70a45819a5a9e4cb4a4045ee2eeb20dc278f3a1b15` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-eq-indicator--ae17a28a3c1b21a35b8b34cb.md) | 87 | `result-track:ae17a28a3c1b21a35b8b34cbc7d89a6745dd77c8c6c64c896f879b1f026edb2c` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-lintegral--11f03091d1585b1ca6d449e9.md) | 97 | `result-track:11f03091d1585b1ca6d449e9da8bea88de16212e0b78eea3b84f3405169edd7c` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-integrable--71f7d832b2dbb05b61d345c2.md) | 120 | `result-track:71f7d832b2dbb05b61d345c2760918297a224c7d38aecba914be5c5934bdfde0` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/positiveonsettail-integral--f6757454c3b65eeab171fca9.md) | 126 | `result-track:f6757454c3b65eeab171fca92a94151789411e5e4444c547dbfb4e03f82eaca2` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/omittedonsettail-integrable-positive--79fec9288fde53975e7dc3ea.md) | 133 | `result-track:79fec9288fde53975e7dc3ea74e4dab02422482b96d35e74c64937c025650cbd` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/omittedonsettail-integral-eq-b1--bc752d068615b54fdaa08a7b.md) | 138 | `result-track:bc752d068615b54fdaa08a7b4af30e2ea3975d75d8585a1dca85206aabd73498` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetatom--cc5756f6537add549a9ef861.md) | 144 | `declaration-track:cc5756f6537add549a9ef861c001bfba05c08bca4300236982ab0aec2458d9d1` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetprefix--a53047964d51af20cf1d4767.md) | 147 | `declaration-track:a53047964d51af20cf1d476766a8729225dce3c1c880d3df76db3c28913e0576` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetatom-nonneg--8bd51d62bb1f77d24c0008ad.md) | 150 | `result-track:8bd51d62bb1f77d24c0008ad09842d5160af90655fc93f3dc7ba367af43428d5` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetatom-le-zeromoment--52b39d3dd7b87e7959f2b323.md) | 155 | `result-track:52b39d3dd7b87e7959f2b323bcd92d31c576949d99216a93f77da37c21eeb77d` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetprefix-summable--84ef9c3b69625802bd651707.md) | 162 | `result-track:84ef9c3b69625802bd6517077791ca1385a71931b02b13b68df55cecd7769f42` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetatom-add-omitted--62fdacc41a82c18e5f05eb84.md) | 167 | `result-track:62fdacc41a82c18e5f05eb848aee3910aaff10000137aa92ab323f05aaa6e477` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetprefix-add-tail--3557447abcd89be99315b502.md) | 174 | `result-track:3557447abcd89be99315b502b6d017fb2136e1a36bfaa6dc27c3df0e28826d02` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/properpowermoment-sub-closedprefix--dc126fdc65e2587702acfe97.md) | 181 | `result-track:dc126fdc65e2587702acfe97abf02caf32b92f0b9cfe9b6c53f13871cbf2759b` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetatom-touching--fa96b7fbbb2689e3ecfa4604.md) | 185 | `result-track:fa96b7fbbb2689e3ecfa460484948838ba6a3e2a9f334cb7be58add16d0e1c2b` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/poweronset-ge-first--3607d66674cfc8b0eec789c5.md) | 190 | `result-track:3607d66674cfc8b0eec789c5c482d2038e7867040b1db27c4de7341c47067205` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/closedonsetprefix-below-first--3b27fa77a8be84d36db6a074.md) | 197 | `result-track:3b27fa77a8be84d36db6a074624d5713c54be395f613fd114ee0d30104bacf3b` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean/declarations/omittedonsettail-below-first--b9c2d70968435962dac7a0f6.md) | 205 | `result-track:b9c2d70968435962dac7a0f6241c17be514d8338c2ccdb5091714a3bf28df066` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
