# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.IsUniformGroup.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/tendsto-integral-of-dominated-convergence--44c6079f09d9aceba54cfc6b.md) | 65 | `result-track:44c6079f09d9aceba54cfc6b2bf2da526e7b200a1d8ccf4b83646ed5a8871c54` |
| 2 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/tendsto-integral-filter-of-dominated-convergence--b48cb2956afeee14a409f257.md) | 75 | `result-track:b48cb2956afeee14a409f257ec3a5821679c9bec3af528269d3f7b5b564739b7` |
| 3 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/hassum-integral-of-dominated-convergence--c749f8e4660781e0de2423a8.md) | 85 | `result-track:c749f8e4660781e0de2423a8a2115b1215c5ceba860dab7042856ebaa654c799` |
| 4 | `theorem` | [integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/integral-tsum--309d1b28fcbef46f34cc04f4.md) | 96 | `result-track:309d1b28fcbef46f34cc04f4815b4d539066e0d46945a0c3c1ab7ae6f357bcee` |
| 5 | `lemma` | [hasSum_integral_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/hassum-integral-of-summable-integral-norm--13f33150a08b240796c72bae.md) | 104 | `result-track:13f33150a08b240796c72bae66b9eecb2a1465a307611307fd3da9b46453343c` |
| 6 | `lemma` | [integral_tsum_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/integral-tsum-of-summable-integral-norm--70c016630f015f18d55e41a1.md) | 119 | `result-track:70c016630f015f18d55e41a11a5e7d33726ecb58a7fc28379db483f21a19c624` |
| 7 | `theorem` | [tendsto_integral_filter_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/tendsto-integral-filter-of-norm-le-const--e59b995eb63946b5848a1d6d.md) | 128 | `result-track:e59b995eb63946b5848a1d6d7c0e02eaad3a056a9764479c3a5a9d9b457e8d39` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.TendstoIntegralOfDominatedConvergence.Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.Antitone.tendsto_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/root-grwtsk-analysis-realanalysis-integration-tendstointegralofdominated--49cc10058268bc6416226b31.md) | 145 | `result-track:49cc10058268bc6416226b318ea5e00c8c6ac051e54946d83fd44306ad3724c9` |
| 9 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/tendsto-integral-filter-of-dominated-convergence--3abf6da49f530081c3213367.md) | 178 | `result-track:3abf6da49f530081c3213367f4ce79a1293931c2d8f69d55b62acca0f4cc3a6d` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.TendstoIntegralOfDominatedConvergence.Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.TendstoUniformlyOn.tendsto_intervalIntegral_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/root-grwtsk-analysis-realanalysis-integration-tendstointegralofdominated--c7006ba04c35aec717d2cbbb.md) | 190 | `result-track:c7006ba04c35aec717d2cbbb21ca64cdcfc971793a1154698ca65378312e2e85` |
| 11 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/hassum-integral-of-dominated-convergence--38c10e9ea51f21e12f24677b.md) | 211 | `result-track:38c10e9ea51f21e12f24677be839889ad63b003b2a4dcdda06d6e58f431cdde5` |
| 12 | `theorem` | [hasSum_intervalIntegral_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/hassum-intervalintegral-of-summable-norm--d0fccf9f64bc499dc5b39442.md) | 227 | `result-track:d0fccf9f64bc499dc5b39442e1dec2c5063fd9c48ae26812155b58e1b76969fa` |
| 13 | `theorem` | [tsum_intervalIntegral_eq_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/tsum-intervalintegral-eq-of-summable-norm--61fd54f354c52da369cc9e1c.md) | 246 | `result-track:61fd54f354c52da369cc9e1c4331e6b6f4052bbe7dca4e34ab6788c09975f73e` |
| 14 | `theorem` | [continuousWithinAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouswithinat-of-dominated-interval--fd2225668148bfa68c2d18b8.md) | 259 | `result-track:fd2225668148bfa68c2d18b8e4de90732706d6276d5b1b37b502df07bf5ef7c0` |
| 15 | `theorem` | [continuousAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuousat-of-dominated-interval--d0a95b4488167ad2c6d40a85.md) | 273 | `result-track:d0a95b4488167ad2c6d40a85a6525394060930e284836fdea23d10bc79667295` |
| 16 | `theorem` | [continuous_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuous-of-dominated-interval--8b09314a637001ca7ee07efb.md) | 286 | `result-track:8b09314a637001ca7ee07efbd251f066ad69de4818b9e9f4a5a3aa2c17a5c5e3` |
| 17 | `theorem` | [continuousWithinAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouswithinat-primitive--36ece60f132970b823b23105.md) | 306 | `result-track:36ece60f132970b823b2310566a3a6b6d11c07da2d81793e3fbf948cacb8059c` |
| 18 | `theorem` | [continuousAt_parametric_primitive_of_dominated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuousat-parametric-primitive-of-dominated--4563d157ef148e81f059ef91.md) | 372 | `result-track:4563d157ef148e81f059ef919ebc5594870d32838b5479cb388d5b7276b74b70` |
| 19 | `theorem` | [continuousOn_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-primitive--c8b60067528a0c3c548ca4e1.md) | 447 | `result-track:c8b60067528a0c3c548ca4e1305361f51da13e61b115ebc98937afe7b8c84835` |
| 20 | `theorem` | [continuousOn_primitive_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-primitive-icc--f1c70c8f7f7164a7f7729806.md) | 461 | `result-track:f1c70c8f7f7164a7f77298069b7eabea188682c40173edcdee5bc0a8492761bc` |
| 21 | `theorem` | [continuousOn_primitive_interval'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-primitive-interval--ea2eed51080156ce928b8d54.md) | 470 | `result-track:ea2eed51080156ce928b8d54ffb25240d6e1d32927cb92854710a8f9cdec007d` |
| 22 | `theorem` | [continuousOn_primitive_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-primitive-interval--85df4d21fda3f5d3b31e7552.md) | 476 | `result-track:85df4d21fda3f5d3b31e7552259772842e0998fc668aabe57d755bd6f756320d` |
| 23 | `theorem` | [continuousOn_primitive_interval_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-primitive-interval-left--4ccb3f02d2e29121a37e9301.md) | 480 | `result-track:4ccb3f02d2e29121a37e93017ec4567ddbe71ce3b00ed852c05f4d6d9cbc693e` |
| 24 | `theorem` | [continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuous-primitive--5902374c529752541a256f4d.md) | 486 | `result-track:5902374c529752541a256f4d8707385ded01fad62db073e5e6c08a76062f64ae` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.TendstoIntegralOfDominatedConvergence.Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.MeasureTheory.Integrable.continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/root-grwtsk-analysis-realanalysis-integration-tendstointegralofdominated--5a6ddc8d47c6e0bf4c02b33b.md) | 495 | `result-track:5a6ddc8d47c6e0bf4c02b33b30b3c1f850978523f7f5cafa331aa1da6df27708` |
| 26 | `theorem` | [continuous_parametric_primitive_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuous-parametric-primitive-of-continuous--ae71cc592143a78f6ec16808.md) | 501 | `result-track:ae71cc592143a78f6ec168085b4cb6cbb110ac8b506346e9e4535311ffea0106` |
| 27 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuous-parametric-intervalintegral-of-continuous--8375db2943ea81e86f018f5c.md) | 606 | `result-track:8375db2943ea81e86f018f5cfb578d8bd8ad6a4c36cd03a7f470833d811bf0a2` |
| 28 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuous-parametric-intervalintegral-of-continuous--f4d3b841d9366af518b3b623.md) | 612 | `result-track:f4d3b841d9366af518b3b623de515691d63b8e14cfce35ea269f4c9156c90941` |
| 29 | `theorem` | [continuousWithinAt_Ici_primitive_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouswithinat-ici-primitive-ioi--8fd4d03bcdd12d74b7ad5f1f.md) | 628 | `result-track:8fd4d03bcdd12d74b7ad5f1f31821ab4ad40ed3992f710671605d34b96ddc94d` |
| 30 | `theorem` | [continuousOn_Ici_primitive_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-ici-primitive-ioi--43dd5c9b7f1de463340a5aca.md) | 646 | `result-track:43dd5c9b7f1de463340a5acaa1ab726724cf6a9d2f2320dc6c25de7286b027c6` |
| 31 | `theorem` | [continuousWithinAt_Iic_primitive_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouswithinat-iic-primitive-iio--bc213d82ce4f6abcf277adbe.md) | 663 | `result-track:bc213d82ce4f6abcf277adbe4b5fef941fc3ecf2c8eb75f36c196e77e6f9e9d3` |
| 32 | `theorem` | [continuousOn_Iic_primitive_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-iic-primitive-iio--30747132c6d6cfd894e794e0.md) | 681 | `result-track:30747132c6d6cfd894e794e0ae8014c736e52d8582182b70fc49b674c8ef96f7` |
| 33 | `theorem` | [continuousOn_Ici_primitive_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-ici-primitive-ici--678e9842cbdc3b9d209bfc5b.md) | 698 | `result-track:678e9842cbdc3b9d209bfc5bb0345b6e33edfd633a313b614092fbf451cd61f5` |
| 34 | `theorem` | [continuousOn_Iic_primitive_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/declarations/continuouson-iic-primitive-iic--f0541b51671a5da623988350.md) | 703 | `result-track:f0541b51671a5da6239883504c98d5bb3b04246bb6647fd06cff0db37a79f919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
