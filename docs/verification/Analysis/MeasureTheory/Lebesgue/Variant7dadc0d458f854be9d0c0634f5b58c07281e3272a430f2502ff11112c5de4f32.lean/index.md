# Verification target: GRWTSK.Analysis.MeasureTheory.Lebesgue.Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d84692eaf2b3c34c6bd2543c8d33014b3adf722",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d84692eaf2b3c34c6bd2543c8d33014b3adf722`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Complex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.Jordan` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.WithDensity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition--683378cd03a0c8a1f04a92df.md) | 60 | `declaration-track:683378cd03a0c8a1f04a92df88e0f9101af7604f3fe6041ba059b79afb2bfc35` |
| 2 | `theorem` | [not_haveLebesgueDecomposition_iff](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/not-havelebesguedecomposition-iff--5e8add070968d682d4f484fe.md) | 68 | `result-track:5e8add070968d682d4f484fe28f34ae89e2a3be428c4e54ff5914a9b663ce63a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/instance--f243bb276b8a303498697826.md) | 76 | `declaration-track:f243bb276b8a303498697826005746a875452c2030171fde981f1f213838be26` |
| 4 | `instance` | [haveLebesgueDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition-neg--10b607cab15aecae1cc3c00d.md) | 81 | `declaration-track:10b607cab15aecae1cc3c00d41d81486fb5e4a3127de5505bc778de98e6a80a9` |
| 5 | `instance` | [haveLebesgueDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition-smul--0f6e540313c2bb1a7d7aa871.md) | 90 | `declaration-track:0f6e540313c2bb1a7d7aa871cfdedb960045941713fa8d7089ea05dfc49cd2d2` |
| 6 | `instance` | [haveLebesgueDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition-smul-real--8af907996ed07094cebcb531.md) | 99 | `declaration-track:8af907996ed07094cebcb5316c1934434c57803904dec15b09ff1c1f7e2c5dd6` |
| 7 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart--5aee95e5fe387d850103ac29.md) | 116 | `declaration-track:5aee95e5fe387d850103ac296e7a4c74e2d315b4dc5de492ef77cce481b28dd5` |
| 8 | `theorem` | [singularPart_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-mutuallysingular--38de6da8141d5951ebe94291.md) | 122 | `result-track:38de6da8141d5951ebe94291e09e07be81127a5e8d5fb55d121388f729f5f16e` |
| 9 | `theorem` | [singularPart_totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-totalvariation--fa8333515680c8c07aa39604.md) | 138 | `result-track:fa8333515680c8c07aa3960429cf7bec163f71e5e6eb6dcc7bf35974505eade2` |
| 10 | `theorem` | [mutuallySingular_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/mutuallysingular-singularpart--27a19f6998b5790dfe0395bb.md) | 150 | `result-track:27a19f6998b5790dfe0395bbeb53ab32e6d715e36b9d6ca51f4170a7ef00adb2` |
| 11 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv--64095e21a5a589d7f3a4c8bd.md) | 164 | `declaration-track:64095e21a5a589d7f3a4c8bd5d4421d1189ebd53e903ef467498d011839fd5d6` |
| 12 | `theorem` | [rnDeriv_def](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv-def--bdb92c1323c075d003163699.md) | 169 | `result-track:bdb92c1323c075d0031636996d5a955c753338fa70e3bbdcfad0b4f0ee4e159f` |
| 13 | `theorem` | [measurable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/measurable-rnderiv--9042ca5f5643da5baf2b3f61.md) | 177 | `result-track:9042ca5f5643da5baf2b3f61c137d7c2ed9e9862e74b5467b58b6a50f4c85ca8` |
| 14 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/integrable-rnderiv--2ec0a943053559fb95b27d5c.md) | 181 | `result-track:2ec0a943053559fb95b27d5cdbc5e500cc8e7789fce868d5e9c8fd0e15f7b404` |
| 15 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-add-withdensity-rnderiv-eq--cab8d7c504cb79260d35ccf4.md) | 195 | `result-track:cab8d7c504cb79260d35ccf4e6eda1c93083fb82045e9f7b909c0e2184d5e119` |
| 16 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/jordandecomposition-add-withdensity-mutuallysingular--e7d63612615c6a19f8f53f83.md) | 219 | `result-track:e7d63612615c6a19f8f53f83b2dd91db757c0a385e4281f332f925f1dabd60ba` |
| 17 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/tojordandecomposition-eq-of-eq-add-withdensity--ac8d823ea1ca74613ce430a7.md) | 231 | `result-track:ac8d823ea1ca74613ce430a753a9e3d184ef795c056409117ef8a219651341cc` |
| 18 | `theorem` | [haveLebesgueDecomposition_mk'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition-mk--0d7800edbbda0ad866c4c26f.md) | 255 | `result-track:0d7800edbbda0ad866c4c26f447dc981d5e8f41d4b5ccf3be3684480dee813e5` |
| 19 | `theorem` | [haveLebesgueDecomposition_mk](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition-mk--5e8e41b2e104de9735df4d8e.md) | 272 | `result-track:5e8e41b2e104de9735df4d8e402d77ce2de9f5e97524cbbd5558b9dd117e935d` |
| 20 | `theorem` | [eq_singularPart'](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/eq-singularpart--2e908b297842632a534bfe8f.md) | 281 | `result-track:2e908b297842632a534bfe8fae7371f18c04617c368862a34ece36aa1369c6e3` |
| 21 | `theorem` | [eq_singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/eq-singularpart--40ee45fa75fb34f1e9246d64.md) | 306 | `result-track:40ee45fa75fb34f1e9246d6403add0bbb2badb18474b34e7abad7ebfac1bb258` |
| 22 | `theorem` | [singularPart_zero](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-zero--9240396270f90697e0a0aad0.md) | 316 | `result-track:9240396270f90697e0a0aad0cdc37abd73ff477ec5b751ac790da2bb6bcf78ef` |
| 23 | `theorem` | [singularPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-neg--9dcf3729702f8b2cfe0b4bfb.md) | 320 | `result-track:9dcf3729702f8b2cfe0b4bfba9aef0447a874f053c20c5a8d364dc993c8e2d96` |
| 24 | `theorem` | [singularPart_smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-smul-nnreal--fc0f4df93f668ba480e033aa.md) | 334 | `result-track:fc0f4df93f668ba480e033aaadabfd951e7a48826c718d7034ecfff6e001ed8f` |
| 25 | `theorem` | [singularPart_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-smul--cc29e179adbe6ed581a31a34.md) | 344 | `result-track:cc29e179adbe6ed581a31a341d0fe46a05ecb64747dfa9bc6bc6d2d0f4e379bf` |
| 26 | `theorem` | [singularPart_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-add--0fd409667acf9dc001ef80ce.md) | 363 | `result-track:0fd409667acf9dc001ef80ce8f065669f0906e58eb743892ce54a59101a91a22` |
| 27 | `theorem` | [singularPart_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-sub--fbd5866e39069a677353351e.md) | 375 | `result-track:fbd5866e39069a677353351e64549c5f2a265aedfec5f62849c1c8575441e891` |
| 28 | `theorem` | [eq_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/eq-rnderiv--2e61fecd1db92fed9fe0adc3.md) | 383 | `result-track:2e61fecd1db92fed9fe0adc3a27b90b7521292f0544abffa870f81148ac09de3` |
| 29 | `theorem` | [rnDeriv_neg](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv-neg--eceb3ca0a30c57a7b4011fbc.md) | 395 | `result-track:eceb3ca0a30c57a7b4011fbc939f0783a34a6903950ba34f2c4bf8efe4e0a8a4` |
| 30 | `theorem` | [rnDeriv_smul](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv-smul--901699cdaba5daac674ca010.md) | 403 | `result-track:901699cdaba5daac674ca010c4ea4c5481e707565a67785a55f7f771e53f2487` |
| 31 | `theorem` | [rnDeriv_add](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv-add--ce3dfc6298680c15a4cac30b.md) | 412 | `result-track:ce3dfc6298680c15a4cac30b1be090f7a5befbda9cd892830aa117256985c318` |
| 32 | `theorem` | [rnDeriv_sub](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv-sub--ecd6849efe4d0a11c584c1c5.md) | 424 | `result-track:ecd6849efe4d0a11c584c1c5702926817494a79f42ece2d990f6f9fb2da120bf` |
| 33 | `class` | [HaveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/havelebesguedecomposition--9585ea4d00e93f643c4b73a4.md) | 437 | `declaration-track:9585ea4d00e93f643c4b73a43ef39dfab041d8440f812f4beb775325090a9a3b` |
| 34 | `def` | [singularPart](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart--6e62083f3bc0428be365a89a.md) | 448 | `declaration-track:6e62083f3bc0428be365a89ae888b5846cc42f6dca59c5424a48616b87a392ef` |
| 35 | `def` | [rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/rnderiv--9a383d023104aae2f2077045.md) | 452 | `declaration-track:9a383d023104aae2f2077045eab36a270a31fa8b26d30f7ca893e91d81721bb8` |
| 36 | `theorem` | [integrable_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/integrable-rnderiv--12f934d181a4776afbc07613.md) | 457 | `result-track:12f934d181a4776afbc07613a33ad1223848a8f8220ba7cbd63ddeceb7e38db2` |
| 37 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](../../../../../mathematics/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/declarations/singularpart-add-withdensity-rnderiv-eq--4c4a90504fbe3edffd2c405f.md) | 463 | `result-track:4c4a90504fbe3edffd2c405fec0159281821bd43e7129e6525559ac8846d3efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
