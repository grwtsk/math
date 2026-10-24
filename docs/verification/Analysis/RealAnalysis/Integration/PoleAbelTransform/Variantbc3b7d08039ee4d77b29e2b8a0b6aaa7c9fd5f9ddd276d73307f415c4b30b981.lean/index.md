# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PoleAbelTransform.Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7591c27a10789f3c567253d2d32e766216b951c",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7591c27a10789f3c567253d2d32e766216b951c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleArithmeticFunctional` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteStepCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finitestepcount--4aae0cf735b22817b8d1a9c1.md) | 38 | `declaration-track:4aae0cf735b22817b8d1a9c18a5e7fa150853a0f936f2ca99d1c4814be610654` |
| 2 | `def` | [finiteAbelError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finiteabelerror--95c06673a86a67350eb75e7e.md) | 42 | `declaration-track:95c06673a86a67350eb75e7e4d0f0ec0aff00860795d089205ed14f793c34d4d` |
| 3 | `def` | [finiteAbelPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finiteabelprimitive--88e69bf0092403aa10f19887.md) | 46 | `declaration-track:88e69bf0092403aa10f19887f92999e3b50f626ede168cace48bbf5643600c9a` |
| 4 | `theorem` | [integral_closed_step_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/integral-closed-step-one--8fba1c751f9611aee9a1fea9.md) | 50 | `result-track:8fba1c751f9611aee9a1fea999a6c5c0fba2abee8c34eef3b01df7dab40734e5` |
| 5 | `theorem` | [finite_abel_error_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finite-abel-error-interval-integrable--eaf0ef3061931cb1d74c56fa.md) | 66 | `result-track:eaf0ef3061931cb1d74c56fa9a3dcb662886ee43d04bdf214d09fb95fb0867a6` |
| 6 | `theorem` | [finite_abel_primitive_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finite-abel-primitive-eq-integral--3ca9e2cec4e4ec0e2dea8ab9.md) | 85 | `result-track:3ca9e2cec4e4ec0e2dea8ab944fa131fb4e00bfd20522516bd2bcd19158b5184` |
| 7 | `theorem` | [ramp_second_abel_atom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/ramp-second-abel-atom--898c69523391ad8e637ad975.md) | 121 | `result-track:898c69523391ad8e637ad975506548c573da133d25195b38d27f01e5074046e9` |
| 8 | `theorem` | [continuum_second_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/continuum-second-abel--87ed3497506b24fed3a72d6e.md) | 162 | `result-track:87ed3497506b24fed3a72d6e63bca982f28c0a03e27196c930788534d10a0b2d` |
| 9 | `theorem` | [affine_second_abel_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/affine-second-abel-boundary--0731de023c18085a57999166.md) | 190 | `result-track:0731de023c18085a5799916637434a1a60d0e24598a424d35ee0c140e05523b9` |
| 10 | `theorem` | [finite_abel_primitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finite-abel-primitive-continuous--2c7a8ace8c07fa392576354c.md) | 213 | `result-track:2c7a8ace8c07fa392576354c4f994b2c74542939d82f4fe1c2aaacc020743b39` |
| 11 | `theorem` | [finite_second_abel_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finite-second-abel-interval-integrable--f553ce6b722ec43aeca92976.md) | 221 | `result-track:f553ce6b722ec43aeca9297674b5eeeb566d2ab69e08f2589eeaf50f5ff617f4` |
| 12 | `theorem` | [finite_second_abel_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/finite-second-abel-identity--ba2900fe6371d321a3df997e.md) | 229 | `result-track:ba2900fe6371d321a3df997ee9483b42898735d8f9e2e9f043837a9be9bb643b` |
| 13 | `def` | [lowerStepCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lowerstepcount--b4324949afa50a70742e041f.md) | 265 | `declaration-track:b4324949afa50a70742e041fbe11b2d91f82a65ac8e44a268bbed54734afd37e` |
| 14 | `def` | [lowerAbelError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lowerabelerror--9506ef2cb815f8f10fe95ada.md) | 270 | `declaration-track:9506ef2cb815f8f10fe95adae614839935441f45021586c91593bd3614a4ae1a` |
| 15 | `def` | [lowerAbelPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lowerabelprimitive--76fe121b7968c5bccb16dc26.md) | 275 | `declaration-track:76fe121b7968c5bccb16dc261e8880fc3f4b82609b3531f576c53654d50a5e45` |
| 16 | `theorem` | [lower_inventory_log_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-inventory-log-bounds--db8f635b1e9ce5d4315b75d5.md) | 280 | `result-track:db8f635b1e9ce5d4315b75d5aee1d16d05a38856e1fc2999cf0ea30c36fd808a` |
| 17 | `theorem` | [lower_abel_error_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-abel-error-interval-integrable--f10537c59da40f7b6a233a06.md) | 288 | `result-track:f10537c59da40f7b6a233a06743bf425e471bd3bd23ca179e1f45e495309cbb2` |
| 18 | `theorem` | [lower_abel_primitive_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-abel-primitive-eq-integral--550ddc36e7b67436822f61c8.md) | 293 | `result-track:550ddc36e7b67436822f61c84a1b5a2c76dfe1fbbd981a914f81c83aa0d4472a` |
| 19 | `theorem` | [lower_step_count_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-step-count-zero--141a833dd1d7c15ba4ea2d04.md) | 299 | `result-track:141a833dd1d7c15ba4ea2d04f2aad82d428b316c0c3e79af93579466545c5485` |
| 20 | `theorem` | [lower_abel_error_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-abel-error-zero--1a389de2209f69ea94a85063.md) | 306 | `result-track:1a389de2209f69ea94a85063d0edfc903929e12c19624fc74f97cf5645518761` |
| 21 | `theorem` | [lower_abel_primitive_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-abel-primitive-zero--c31a11bcd517b87dd92259fb.md) | 311 | `result-track:c31a11bcd517b87dd92259fbc331265c7face9ad8dec7b7908a24877c6eec21d` |
| 22 | `def` | [logarithmicAbelTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/logarithmicabeltest--f90dfcef2bce482eb8255859.md) | 315 | `declaration-track:f90dfcef2bce482eb8255859f686d5de03a6fa5c1d28bf0967dafdbcd6c34ddd` |
| 23 | `def` | [sourceAbelTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/sourceabeltest--8d28f579a83016dc7db2c8de.md) | 318 | `declaration-track:8d28f579a83016dc7db2c8de7595292d0214fed2442d4966bebfdbb2e8f3af29` |
| 24 | `theorem` | [logarithmic_abel_test_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/logarithmic-abel-test-log--758225c00efdb67817e99bcf.md) | 322 | `result-track:758225c00efdb67817e99bcf3b5e4935a340b2bc89cce1d66a1f8124cc0fea22` |
| 25 | `theorem` | [exponential_logarithmic_abel_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/exponential-logarithmic-abel-test--584ad382caccaf329a3c0042.md) | 327 | `result-track:584ad382caccaf329a3c0042e1463a0451b918d361c930b8d774729d32b12cd9` |
| 26 | `theorem` | [logarithmic_abel_test_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/logarithmic-abel-test-second-deriv--23e8ee7271492a5198a9b599.md) | 335 | `result-track:23e8ee7271492a5198a9b5998b035f11e0db7d5c81af2ae482697e3f357766aa` |
| 27 | `theorem` | [lower_discrepancy_second_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-discrepancy-second-abel--01aa58c81a7cb5d791f1e9e0.md) | 366 | `result-track:01aa58c81a7cb5d791f1e9e0a6653ff36be43861215c925c44ab3f21279ff8c6` |
| 28 | `theorem` | [deriv_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/deriv-upper-endpoint-zero--c959fce6f364b40dcec9fc27.md) | 391 | `result-track:c959fce6f364b40dcec9fc274cc7c2e7f07ab9218a02889cdee3d74fa23dc0ac` |
| 29 | `theorem` | [source_abel_test_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-upper-zero--41e7678015470519266bd52c.md) | 403 | `result-track:41e7678015470519266bd52c2c19a0b245a0d406496280f8458deaf35984f0e2` |
| 30 | `theorem` | [source_abel_test_cont_diff_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-cont-diff-one--60073e16311135dbab04393f.md) | 410 | `result-track:60073e16311135dbab04393fe3098daa7743c440853939515bdefd933929be6b` |
| 31 | `theorem` | [source_abel_test_upper_deriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-upper-deriv-zero--a407e3f13d04f1bd50607c19.md) | 417 | `result-track:a407e3f13d04f1bd50607c19fc315854cf5ad40763c5092cc8db823912f6497a` |
| 32 | `theorem` | [source_abel_test_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-at-zero--04cd633ecad2b4a1a05a81ac.md) | 423 | `result-track:04cd633ecad2b4a1a05a81ac16781b072acc74c838ada8884cc1aceb5a26c896` |
| 33 | `theorem` | [source_correlation_deriv_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-correlation-deriv-zero--2dadb1b4a226bdec6c87734f.md) | 427 | `result-track:2dadb1b4a226bdec6c87734f6a7f1b0900b476ac57c2c39be1f197668afa0208` |
| 34 | `theorem` | [source_abel_test_deriv_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-deriv-at-zero--3ab87be18dac64190efb412a.md) | 443 | `result-track:3ab87be18dac64190efb412aebc217a8fd8917118fa116a0c50ca726700f9216` |
| 35 | `theorem` | [source_discrepancy_second_abel_of_cont_diff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-discrepancy-second-abel-of-cont-diff--21db1fe1d4483d2548600e89.md) | 459 | `result-track:21db1fe1d4483d2548600e89c509bf086d4c69d72f1b5aa0f794ca2570627482` |
| 36 | `theorem` | [source_abel_test_cont_diff_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-cont-diff-two--197223960d4f3456ddede512.md) | 469 | `result-track:197223960d4f3456ddede512ec335d7ba53e28ab47bb0e27dee7c03bc720b3c9` |
| 37 | `theorem` | [source_second_abel_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-second-abel-interval-integrable--dac4d4bbee8d20e2924eb73d.md) | 476 | `result-track:dac4d4bbee8d20e2924eb73d7658b4e28316b2ce9af095e38cd0151fda3f871a` |
| 38 | `theorem` | [source_discrepancy_second_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-discrepancy-second-abel--681719526e99cc2ccd97cc92.md) | 482 | `result-track:681719526e99cc2ccd97cc920c2c8fbb812c162d4efb059c530b8e7eac7596cc` |
| 39 | `theorem` | [source_affine_second_abel_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-affine-second-abel-boundary--eefaf23ecad6aa88757681ea.md) | 489 | `result-track:eefaf23ecad6aa88757681eacf3216638a4ed5c2610bfdb2dc8be1b9036e440d` |
| 40 | `theorem` | [source_abel_test_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/source-abel-test-second-deriv--b8ad4b48fe783d87b55ba436.md) | 498 | `result-track:b8ad4b48fe783d87b55ba436ff35ae1c91ae8f3711941f2eb844a8340ee7b951` |
| 41 | `theorem` | [lower_power_contribution_second_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/declarations/lower-power-contribution-second-abel--e60dc10304c7c53b2d5d4afc.md) | 507 | `result-track:e60dc10304c7c53b2d5d4afc2a9e4c982366ad4643aef290b3992a55f5934f87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
