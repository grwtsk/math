# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualEarlyFractionalLimit.Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceLeadingFullKappaReduction` — import line 6; external provider; requires a separately pinned dependency.
- `SourceStrictComplementaryEarlyBudget` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyFractionalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionaldensity--644edae17ba43ab47b2e38bc.md) | 36 | `declaration-track:644edae17ba43ab47b2e38bcd692211e0727522d588d6d8d577ff49cb823e06f` |
| 2 | `def` | [earlyFractionalConstant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionalconstant--631796d7fe81a90ad87f07bd.md) | 40 | `declaration-track:631796d7fe81a90ad87f07bd49a923bd6c5487e86b9b82d3e371013ba35411b3` |
| 3 | `theorem` | [rpow_negative_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/rpow-negative-three-halves--6174aee4fc67778f0ba697d2.md) | 43 | `result-track:6174aee4fc67778f0ba697d2a5c6474ab4a727a6e66960e19ea73734393c9c12` |
| 4 | `theorem` | [exp_neg_half_log_eq_inv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/exp-neg-half-log-eq-inv-sqrt--420ac24aa8b6e605f0a70fef.md) | 52 | `result-track:420ac24aa8b6e605f0a70fef6383bdc39392488583c83158155b26fe21fbbd8a` |
| 5 | `theorem` | [earlyFractionalDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionaldensity-integrable--40a2e8d9e9963a3906e09162.md) | 59 | `result-track:40a2e8d9e9963a3906e091629702d5e028346a230567259353371f1e8c11bce1` |
| 6 | `theorem` | [earlyFractionalDensity_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionaldensity-nonneg--587d5efea9173b42dc37d606.md) | 71 | `result-track:587d5efea9173b42dc37d606215b6d6d00aa1da9323dd6518bb14c137f4bce6c` |
| 7 | `theorem` | [earlyFractionalDensity_tail_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionaldensity-tail-bounds--153651f5b923d44c4910676b.md) | 77 | `result-track:153651f5b923d44c4910676bc952260453814884522e08c710fb006a48a7346d` |
| 8 | `theorem` | [earlyFractionalConstant_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionalconstant-bounds--51a48eb55fdfc58dd2627930.md) | 100 | `result-track:51a48eb55fdfc58dd2627930d925464395e2c287b989b2b19161f66149744e00` |
| 9 | `def` | [earlyUnitFloorDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyunitfloordensity--f16cb4f6d9c6e5c898df6e69.md) | 108 | `declaration-track:f16cb4f6d9c6e5c898df6e699b56308e3979902533f601a44ed3c8393670ab35` |
| 10 | `theorem` | [earlyUnitFloorDensity_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyunitfloordensity-eq--89f3a1b4ccfd1cf09d8a614b.md) | 112 | `result-track:89f3a1b4ccfd1cf09d8a614b744b506b1dba767b13c5212e4749683ed2142f76` |
| 11 | `theorem` | [inv_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/inv-sqrt-continuouson--19304f3240675daf8c9f33d8.md) | 122 | `result-track:19304f3240675daf8c9f33d8d98392b798552de4a3ad4e4f8a3f2a47819f2116` |
| 12 | `theorem` | [integral_inv_sqrt_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/integral-inv-sqrt-ioc--19a98434e368d88d2fc4ed2e.md) | 128 | `result-track:19a98434e368d88d2fc4ed2e0a5a39cbd22f3bce16af758014acc3ef1fe3d189` |
| 13 | `theorem` | [earlyUnitFloorDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyunitfloordensity-integrable--ed1ba7f5af8d11ade79f235b.md) | 144 | `result-track:ed1ba7f5af8d11ade79f235be112d704956ea1aa7fcfa883f3daf214d00c9fc6` |
| 14 | `theorem` | [earlyUnitFloorDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyunitfloordensity-integral--a56202ba73d86bbf045e80fc.md) | 161 | `result-track:a56202ba73d86bbf045e80fc7c63e3133dfdcbabdbc90eaa4c5244ad29ec1151` |
| 15 | `theorem` | [actualCriticalDeviation_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualcriticaldeviation-abs-le--36e4de59c38c482531d37cde.md) | 181 | `result-track:36e4de59c38c482531d37cdecfb6c3119e501728a253aaf6cd1a20a61022e724` |
| 16 | `theorem` | [actualEarlyFloorDifference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualearlyfloordifference-abs-le--32f6eef223f86703f26b5680.md) | 202 | `result-track:32f6eef223f86703f26b56803c5c0d1306deded408d41588bbc466d8b93adcff` |
| 17 | `def` | [actualHeadUnitErrorBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualheaduniterrorbudget--889ec34bddbfc8a4030c1d07.md) | 245 | `declaration-track:889ec34bddbfc8a4030c1d07acb00b761d8662a4ed1e7e3c25cdf3a0b205e315` |
| 18 | `theorem` | [actualEarlyBaseline_sub_unit_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualearlybaseline-sub-unit-abs-le--4b8517de51f9e7497e6785b9.md) | 250 | `result-track:4b8517de51f9e7497e6785b9689097c5396dcf8985151b13dffa391ac3fbff47` |
| 19 | `theorem` | [earlyFractionalDensity_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/earlyfractionaldensity-split--9bbf00f586dcb12c445ce5bb.md) | 287 | `result-track:9bbf00f586dcb12c445ce5bb558afa3c896512be87587664f188681119b9415f` |
| 20 | `theorem` | [actualCutoff_sqrt_gap_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualcutoff-sqrt-gap-bounds--283c7b96905a69866ab99916.md) | 297 | `result-track:283c7b96905a69866ab9991643d61972739afffee626d28d04b9c59ae8a2f96b` |
| 21 | `theorem` | [unitEarly_add_scale_sub_fractional_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/unitearly-add-scale-sub-fractional-eq--49af0e3aacaa85955794e895.md) | 320 | `result-track:49af0e3aacaa85955794e895186b1852bb9c6fea996daeeae0ef88c2d61e492b` |
| 22 | `theorem` | [unitEarly_add_scale_sub_fractional_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/unitearly-add-scale-sub-fractional-abs-le--05907e7da10ce50f5fe079dc.md) | 331 | `result-track:05907e7da10ce50f5fe079dcfeed9d0bfd44e95950337d5b50f93bf4d559a8ee` |
| 23 | `theorem` | [actualEarly_add_scale_sub_fractional_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualearly-add-scale-sub-fractional-abs-le--8835bbce2d037f30f9e86315.md) | 355 | `result-track:8835bbce2d037f30f9e86315f45c8ba3eba25d40694f326ae170156c76f23d0b` |
| 24 | `def` | [actualHeadFractionalEnvelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualheadfractionalenvelope--4d6e90a3af624ef3f4915997.md) | 374 | `declaration-track:4d6e90a3af624ef3f4915997586462a9d8f5529a53cc886210a8f88a76fea59e` |
| 25 | `theorem` | [actualEarly_add_scale_sub_fractional_abs_le_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualearly-add-scale-sub-fractional-abs-le-envelope--708956dcab9f70fd85a520c9.md) | 378 | `result-track:708956dcab9f70fd85a520c9aa8f515622891c99c28c9cc6887c51a87d92f6eb` |
| 26 | `theorem` | [actualHeadFractionalEnvelope_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualheadfractionalenvelope-tendsto-zero--b401afa8b84235bad20a130c.md) | 401 | `result-track:b401afa8b84235bad20a130cafbbce48d967ada6060fbb83677c4a61f2fe45a4` |
| 27 | `theorem` | [actualEarly_add_scale_tendsto_fractional](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/declarations/actualearly-add-scale-tendsto-fractional--72d0aad684b514f055e5c1de.md) | 416 | `result-track:72d0aad684b514f055e5c1debb385db62a5bde49f0c2897401150487d688d948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
