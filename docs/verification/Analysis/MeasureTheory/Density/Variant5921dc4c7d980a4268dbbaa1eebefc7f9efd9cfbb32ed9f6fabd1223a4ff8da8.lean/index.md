# Verification target: GRWTSK.Analysis.MeasureTheory.Density.Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d18e533b89699c6319b78162320b06848deaa9",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d18e533b89699c6319b78162320b06848deaa9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf--903e2ce89acc93aa0f1714c8.md) | 75 | `declaration-track:903e2ce89acc93aa0f1714c816d2f4496bae7f47432078ff4d1c70c5e1edd9bd` |
| 2 | `theorem` | [hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-iff--779f0d95f11b4c937fa39d2f.md) | 85 | `result-track:779f0d95f11b4c937fa39d2f20fccd2fe234c7a8d5b4a7870fcdfb622aeb4101` |
| 3 | `theorem` | [hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-iff-of-aemeasurable--cffa1d68bbf96e58d7152c1e.md) | 89 | `result-track:cffa1d68bbf96e58d7152c1e2af9d8513a374f5c2c67ed9fdabb0c34a7f6407b` |
| 4 | `theorem` | [HasPDF.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-aemeasurable--1fd543975cad37041b1a3c48.md) | 96 | `result-track:1fd543975cad37041b1a3c48fe8515801d852e004ef5f605f46429160f7908cb` |
| 5 | `instance` | [HasPDF.haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-havelebesguedecomposition--49da80920bdda0ce84931eb9.md) | 98 | `declaration-track:49da80920bdda0ce84931eb9e248dc47590090f40b46e8d7415581f4511eac36` |
| 6 | `theorem` | [HasPDF.absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-absolutelycontinuous--b4a9e9177ffe850bca411928.md) | 101 | `result-track:b4a9e9177ffe850bca411928702cc03409ffe6496660bd8686a5d6f895e9a615` |
| 7 | `theorem` | [HasPDF.quasiMeasurePreserving_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-quasimeasurepreserving-of-measurable--bf4fd79b6726bf1de7fa0547.md) | 104 | `result-track:bf4fd79b6726bf1de7fa0547daa9da1a6f85d7f1831921e5b1826b5f864fa565` |
| 8 | `theorem` | [HasPDF.congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-congr--edba9a5a4cc4b593ed94d820.md) | 109 | `result-track:edba9a5a4cc4b593ed94d820d410c7a14953557a888d2b417a354caf1cbe169c` |
| 9 | `theorem` | [HasPDF.congr_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-congr-iff--08c3a100a99527b81463f3be.md) | 113 | `result-track:08c3a100a99527b81463f3be9b7279f3439c1a22dc3718a18fedb36f1c632125` |
| 10 | `theorem` | [hasPDF_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-of-map-eq-withdensity--95d8275ab9fa1af221213a7e.md) | 119 | `result-track:95d8275ab9fa1af221213a7e203ccecf2e3c7d30bde2efc518d61efc9fdb3523` |
| 11 | `def` | [pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/pdf--83e0d520cf5f58ec422c1f67.md) | 130 | `declaration-track:83e0d520cf5f58ec422c1f67d005faf1757805a112d91d4db8108910844481a4` |
| 12 | `theorem` | [pdf_def](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/pdf-def--e2cec16796ac4ea2bcd3233d.md) | 134 | `result-track:e2cec16796ac4ea2bcd3233d04eb4da7367c83183fc71b396fea8ebc7ba85cf7` |
| 13 | `theorem` | [pdf_of_not_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/pdf-of-not-aemeasurable--c7f3d57ae93f1ff2ec86e590.md) | 137 | `result-track:c7f3d57ae93f1ff2ec86e590fe2a60bf5f26f11dd9c0d020e9365defc68f0796` |
| 14 | `theorem` | [pdf_of_not_haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/pdf-of-not-havelebesguedecomposition--31e18e024eddeea232e76403.md) | 142 | `result-track:31e18e024eddeea232e76403c511595229416d3c38ecaabd7f24797fb2eef82b` |
| 15 | `theorem` | [aemeasurable_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/aemeasurable-of-pdf-ne-zero--b4cc3a76c53e799573c784fe.md) | 146 | `result-track:b4cc3a76c53e799573c784fe537fbed461db114d84c54bf3416c95089e7baa13` |
| 16 | `theorem` | [hasPDF_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/haspdf-of-pdf-ne-zero--12955aaa5f544640e1e6d615.md) | 151 | `result-track:12955aaa5f544640e1e6d615117ce6f08dd645905b31f83d91495282e7f6db2e` |
| 17 | `theorem` | [measurable_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/measurable-pdf--8d58bc22fa86f6896cb5d021.md) | 160 | `result-track:8d58bc22fa86f6896cb5d0217c1be134a564a127957846226b909fa4abf5b603` |
| 18 | `theorem` | [withDensity_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/withdensity-pdf-le-map--19496eee9e288030f02a8aed.md) | 164 | `result-track:19496eee9e288030f02a8aed4e8c536e5223e4925f9d0e1f84c6ade388a7b382` |
| 19 | `theorem` | [setLIntegral_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/setlintegral-pdf-le-map--91abfbcbad915334ff4ede79.md) | 168 | `result-track:91abfbcbad915334ff4ede79023e8b6c6582973ad4afe7321298302c27055cfd` |
| 20 | `theorem` | [map_eq_withDensity_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/map-eq-withdensity-pdf--e91646cc7b75bb3b6d60dd5a.md) | 174 | `result-track:e91646cc7b75bb3b6d60dd5a2d6acb71f5fe76cfee0d8449ad953a21fe84350d` |
| 21 | `theorem` | [map_eq_setLIntegral_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/map-eq-setlintegral-pdf--a989865c6210ac9d79c5013a.md) | 179 | `result-track:a989865c6210ac9d79c5013a5a9b80a5e8daec8a9134a164002e87f704976b22` |
| 22 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/congr--f14cb75bbda176f0ab6aa12a.md) | 188 | `result-track:f14cb75bbda176f0ab6aa12acb88d8cd4b01fc398c5559371158d092ee73d20a` |
| 23 | `theorem` | [lintegral_eq_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/lintegral-eq-measure-univ--5f7e3931b7fe0253b244e1f9.md) | 191 | `result-track:5f7e3931b7fe0253b244e1f9f54a9d06ceccc2a4053bf92948604c6a8d897ac2` |
| 24 | `theorem` | [eq_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/eq-of-map-eq-withdensity--985c7e835e599c91e2b8f9d2.md) | 196 | `result-track:985c7e835e599c91e2b8f9d2b023dc239811f14cd9f68d927e0741387a9851c1` |
| 25 | `theorem` | [eq_of_map_eq_withDensity'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/eq-of-map-eq-withdensity--9471d58228b543f94ab10977.md) | 203 | `result-track:9471d58228b543f94ab10977bcc5081be43f4157ca311a2bbb34a0d6a0a4dd4c` |
| 26 | `theorem` | [ae_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/ae-lt-top--54d8964d2dd69e6daf74d876.md) | 208 | `result-track:54d8964d2dd69e6daf74d87667be531cad50c21f3f16dde7c8dd912d1322f337` |
| 27 | `theorem` | [ofReal_toReal_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/ofreal-toreal-ae-eq--6b2681cc45311c8a11abcc6e.md) | 212 | `result-track:6b2681cc45311c8a11abcc6e10ade211df74d5dd7a603c4c8c763b64162b91e4` |
| 28 | `theorem` | [lintegral_pdf_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/lintegral-pdf-mul--7642b71c275db63de6ba353e.md) | 219 | `result-track:7642b71c275db63de6ba353e5694dfabc644bacfce7401829d1adfd0602e5cf2` |
| 29 | `theorem` | [integrable_pdf_smul_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/integrable-pdf-smul-iff--023d726b8c11623ba312e37e.md) | 227 | `result-track:023d726b8c11623ba312e37e679cdfd9d494043f4bf75cb2580d2dea15c3d760` |
| 30 | `theorem` | [integral_pdf_smul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/integral-pdf-smul--abd5fbcc8c3bafa0be589638.md) | 238 | `result-track:abd5fbcc8c3bafa0be58963807f589f069338b37dd23a4a13ba5364624652517` |
| 31 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/quasimeasurepreserving-haspdf--2dbf06b594b9373fbbbea45a.md) | 255 | `result-track:2dbf06b594b9373fbbbea45aefd19413b4e07129f19ef963b067d5ad0fe02ef6` |
| 32 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/quasimeasurepreserving-haspdf--dce7a56138a87480a2dfea22.md) | 262 | `result-track:dce7a56138a87480a2dfea229b971a5ff6531233706c6d0b336a274b495b84be` |
| 33 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.Real.hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/root-grwtsk-analysis-measuretheory-haspdf-variant2fbfff699ad3ce8fc8d165f--39bb2407bfa8f7d4dc330902.md) | 272 | `result-track:39bb2407bfa8f7d4dc3309021a7a279f514ac1b9ff8798b1df82c05d7f224d63` |
| 34 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.Real.hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/root-grwtsk-analysis-measuretheory-haspdf-variant2fbfff699ad3ce8fc8d165f--f2855269c07b0cc2ea0d296b.md) | 278 | `result-track:f2855269c07b0cc2ea0d296bbd9cb4a1e59035abf2a3a8ddf6e4f17deb792889` |
| 35 | `theorem` | [integral_mul_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/integral-mul-eq-integral--b02f93f431fe5c4ca5589a4b.md) | 286 | `result-track:b02f93f431fe5c4ca5589a4b8f0a53786d2fb22cd69e85ba777e6715985f633f` |
| 36 | `theorem` | [hasFiniteIntegral_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/hasfiniteintegral-mul--3ea1fd7510e74d3d636a7e24.md) | 291 | `result-track:3ea1fd7510e74d3d636a7e2426a5366f38e7eb74733ae7dee940ef32bda4271c` |
| 37 | `theorem` | [indepFun_iff_pdf_prod_eq_pdf_mul_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant5921dc4c7d980a4268dbbaa1eebefc7f9efd9cfbb32ed9f6fabd1223a4ff8da8.lean/declarations/indepfun-iff-pdf-prod-eq-pdf-mul-pdf--7bc47ae16419135bfe9a7c88.md) | 311 | `result-track:7bc47ae16419135bfe9a7c88dac85f2d3d2dd787c360616d3357c12e20931374` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
