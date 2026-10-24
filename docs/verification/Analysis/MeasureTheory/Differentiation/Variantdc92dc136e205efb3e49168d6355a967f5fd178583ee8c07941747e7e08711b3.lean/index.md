# Verification target: GRWTSK.Analysis.MeasureTheory.Differentiation.Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b01aabb0be218e9f62e2fbc1deb6099d1dc2f8`.

Source path: `GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEMeasurableOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/limratio--61f7dfb36861d72fb7d8060f.md) | 97 | `declaration-track:61f7dfb36861d72fb7d8060f0070225578ac0184a928c21d54e0584eb80c4d71` |
| 2 | `theorem` | [ae_eventually_measure_pos](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-eventually-measure-pos--040d887ee879952198aae281.md) | 102 | `result-track:040d887ee879952198aae281665879c9067c8f98e4a3503a7c3fc7682a61ac4f` |
| 3 | `theorem` | [eventually_measure_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/eventually-measure-lt-top--0853267efd0c28497f7371cb.md) | 122 | `result-track:0853267efd0c28497f7371cb8014df1bacb9246d574dee1e8cf83aba569326c7` |
| 4 | `theorem` | [measure_le_of_frequently_le](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/measure-le-of-frequently-le--58b59f2d6fe876e5e4143b4b.md) | 128 | `result-track:58b59f2d6fe876e5e4143b4b5aa45b03babf98bf7c6682a4b8c2f190534656e4` |
| 5 | `theorem` | [eventually_filterAt_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/eventually-filterat-integrableon--532c23a6c834ac517e1c9812.md) | 154 | `result-track:532c23a6c834ac517e1c9812ac171f1fb7df0286090bffe96f05d3bd07987efe` |
| 6 | `theorem` | [ae_eventually_measure_zero_of_singular](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-eventually-measure-zero-of-singular--1ca537c58b7a306826c18528.md) | 168 | `result-track:1ca537c58b7a306826c18528f2a023f13717c98d480f52290557ff9d84c8cb36` |
| 7 | `theorem` | [null_of_frequently_le_of_frequently_ge](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/null-of-frequently-le-of-frequently-ge--f0c9b088e99cb08e254fc1d3.md) | 219 | `result-track:f0c9b088e99cb08e254fc1d3c49ab0bd739c7a2fb3c992d412b83afeecd89050` |
| 8 | `theorem` | [ae_tendsto_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-div--055a7ece807146215be4528c.md) | 238 | `result-track:055a7ece807146215be4528c2680b711de73d7c2af82e350895ff602606622c7` |
| 9 | `theorem` | [ae_tendsto_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-limratio--66555f92278a20c5b4359089.md) | 270 | `result-track:66555f92278a20c5b4359089c9c40cd02fa6c6c6841b33e54bf866b1c0f6123b` |
| 10 | `theorem` | [exists_measurable_supersets_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/exists-measurable-supersets-limratio--03f193f12954e9024d0825fe.md) | 280 | `result-track:03f193f12954e9024d0825fe5cac2cedbd21815c286fbcc6d12d768b901f8f11` |
| 11 | `theorem` | [aemeasurable_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/aemeasurable-limratio--2525f01e046cc153f12f111b.md) | 421 | `result-track:2525f01e046cc153f12f111be626247e7247dc105947c9818c7298d410d53386` |
| 12 | `def` | [limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/limratiomeas--18b1478d28a9c1683b28f6d7.md) | 427 | `declaration-track:18b1478d28a9c1683b28f6d7a7251d1375318c8aa812469483b6ebce476637cf` |
| 13 | `theorem` | [limRatioMeas_measurable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/limratiomeas-measurable--ed7c208eb857ab63c8625044.md) | 430 | `result-track:ed7c208eb857ab63c8625044c2a577767e43b92cde082da8366dd9137b9895f4` |
| 14 | `theorem` | [ae_tendsto_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-limratiomeas--96a0ed50d146af15ad2842cd.md) | 433 | `result-track:96a0ed50d146af15ad2842cd78ce6d9227f027649b23f7bd52431763731ebdb9` |
| 15 | `theorem` | [measure_le_mul_of_subset_limRatioMeas_lt](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/measure-le-mul-of-subset-limratiomeas-lt--e682082f1f4746a916e59a91.md) | 442 | `result-track:e682082f1f4746a916e59a91830373594e9d218a22bd4fba26534eef9de5de2b` |
| 16 | `theorem` | [mul_measure_le_of_subset_lt_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/mul-measure-le-of-subset-lt-limratiomeas--7ef6bfa93c1cd38df72d464e.md) | 462 | `result-track:7ef6bfa93c1cd38df72d464eb82e4111e3479a9d955928cb95015b06d9ab6749` |
| 17 | `theorem` | [measure_limRatioMeas_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/measure-limratiomeas-top--102854b9d69df93d5d6b12ed.md) | 480 | `result-track:102854b9d69df93d5d6b12edd2d7b5433c620be2c7b5c402278241b5d58e0744` |
| 18 | `theorem` | [measure_limRatioMeas_zero](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/measure-limratiomeas-zero--444b31120d07b55868ee64b1.md) | 504 | `result-track:444b31120d07b55868ee64b1c6dcbe717894425c5e3006e6d237d976b89eacb5` |
| 19 | `theorem` | [withDensity_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/withdensity-le-mul--09583d9c6833c274d636e4b9.md) | 527 | `result-track:09583d9c6833c274d636e4b9908331bc64e4ba603ea4be2bc99a5fc2a0299d95` |
| 20 | `theorem` | [le_mul_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/le-mul-withdensity--b51f0ab35cf2a1105f87402d.md) | 597 | `result-track:b51f0ab35cf2a1105f87402d361ab04044b3b462233ffc53a1fda33d57d03a44` |
| 21 | `theorem` | [withDensity_limRatioMeas_eq](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/withdensity-limratiomeas-eq--a91f2379eaa012c33a8fb3ec.md) | 651 | `result-track:a91f2379eaa012c33a8fb3ecc05d844c02aa5029f912273ef0b0140a4ffacbbb` |
| 22 | `theorem` | [ae_tendsto_rnDeriv_of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-rnderiv-of-absolutelycontinuous--2cca841d06c9abbb8fe2e65a.md) | 682 | `result-track:2cca841d06c9abbb8fe2e65a1f2e83ffa09bf56c1fc7bfc990822276350c3f6b` |
| 23 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-rnderiv--c8cf1a5bbfa48a879d2791f5.md) | 698 | `result-track:c8cf1a5bbfa48a879d2791f56c61069226600e793dcf7bb46d5d5b20ec092eb1` |
| 24 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--95318d73f62f74e030c07dca.md) | 722 | `result-track:95318d73f62f74e030c07dca9e6eb0417ffe5ffe47183b0ccb9cd9c220760ddc` |
| 25 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-measure-inter-div--958e2641934177c73fea0035.md) | 734 | `result-track:958e2641934177c73fea00350bb7a9fcb377aaf5c036d4fc0d93f62c3801abd6` |
| 26 | `theorem` | [ae_tendsto_lintegral_div'](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-lintegral-div--48e37f225a2447d5a2d38190.md) | 756 | `result-track:48e37f225a2447d5a2d38190c61f27b0c1fb100bf28f08c244f8ad97fbb3b9a8` |
| 27 | `theorem` | [ae_tendsto_lintegral_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-lintegral-div--8bfdc68de1268871237b4e2e.md) | 766 | `result-track:8bfdc68de1268871237b4e2eb054b98c84cdb2ca34bab7e159db2e1e9319a8ba` |
| 28 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div'_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-lintegral-enorm-sub-div-of-integrable--a64ff1921270a3df345b7f09.md) | 780 | `result-track:a64ff1921270a3df345b7f09c9ad222116b63c8c54266d4b0b7820803868490f` |
| 29 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-lintegral-enorm-sub-div-of-integrable--f7dc873f11012d517887199f.md) | 854 | `result-track:f7dc873f11012d517887199fddc067842474f18bd136be99e553d5ff441ef1b9` |
| 30 | `theorem` | [ae_tendsto_lintegral_enorm_sub_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-lintegral-enorm-sub-div--26ea0701e39c2cd2958886bb.md) | 871 | `result-track:26ea0701e39c2cd2958886bb9e924b4724b9cb31a8ba2bf91c811ebaa29f805c` |
| 31 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-average-norm-sub--9ee0e24532d5bdb9adb02426.md) | 894 | `result-track:9ee0e24532d5bdb9adb02426df892a471b9c7c00ed3db55b2fa1987c28a898ef` |
| 32 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variantdc92dc136e205efb3e49168d6355a967f5fd178583ee8c07941747e7e08711b3.lean/declarations/ae-tendsto-average--ec3f1904704116563dc07352.md) | 912 | `result-track:ec3f1904704116563dc07352e0b247070bb5f73f28e8f9a8a61abc659cd16c8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
