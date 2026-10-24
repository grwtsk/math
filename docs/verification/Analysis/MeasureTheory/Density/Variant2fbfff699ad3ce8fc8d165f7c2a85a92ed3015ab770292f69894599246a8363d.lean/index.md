# Verification target: GRWTSK.Analysis.MeasureTheory.Density.Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fddec64706ca08a2c05dfa36f013c8245225dca",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fddec64706ca08a2c05dfa36f013c8245225dca`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf--52f2ae0a0038522559088c52.md) | 67 | `declaration-track:52f2ae0a0038522559088c520e2d4c7c6113806eef47f0eb2aa97ea5e0f89a52` |
| 2 | `theorem` | [hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-iff--8fb701c50aad8e61d4a47321.md) | 77 | `result-track:8fb701c50aad8e61d4a47321782778a2895157cfba9338387b5e765faa3b21ba` |
| 3 | `theorem` | [hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-iff-of-aemeasurable--ebcd4f89792fc0cfc2f9ec78.md) | 81 | `result-track:ebcd4f89792fc0cfc2f9ec78ba8876a5022da26a735d7d67f1a95e7e67c9418c` |
| 4 | `theorem` | [HasPDF.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-aemeasurable--26ef98bc54ad5cea2310e593.md) | 88 | `result-track:26ef98bc54ad5cea2310e5930ccb0506cbbf1dcea392a82b1f867d462de57eda` |
| 5 | `instance` | [HasPDF.haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-havelebesguedecomposition--87fafef47b05d2b2cc4eb32b.md) | 90 | `declaration-track:87fafef47b05d2b2cc4eb32b2db1a1c2322bf0816d98845e64e361f3f2821c8d` |
| 6 | `theorem` | [HasPDF.absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-absolutelycontinuous--f722c75ef1d291ea8256872a.md) | 93 | `result-track:f722c75ef1d291ea8256872a43e7bdb2282ffb4d84b986d5156187ca1333eb25` |
| 7 | `theorem` | [HasPDF.quasiMeasurePreserving_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-quasimeasurepreserving-of-measurable--1807db596d408429ab32aa13.md) | 96 | `result-track:1807db596d408429ab32aa134dcb898131335ede8983c2255afaea8b2bab55e7` |
| 8 | `theorem` | [HasPDF.congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-congr--5eddf659427379c13132cd85.md) | 101 | `result-track:5eddf659427379c13132cd85dcc31673cbff06e06d4a8c4ab812fd8755bbd7ed` |
| 9 | `theorem` | [HasPDF.congr_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-congr-iff--aeb4f5e573d14b583cf92d01.md) | 105 | `result-track:aeb4f5e573d14b583cf92d012b62bffd5571d87c7cbc38cc5fcce8079c070267` |
| 10 | `theorem` | [hasPDF_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-of-map-eq-withdensity--b4a870c980afd62115ee7e0d.md) | 111 | `result-track:b4a870c980afd62115ee7e0d3c8b58a474a1383e52e2c0cabc0cf574cdbf9414` |
| 11 | `def` | [pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/pdf--14440d009cfcfa4bcc43ca0b.md) | 122 | `declaration-track:14440d009cfcfa4bcc43ca0bddde5348b967f1ef0beccfba5ca10bcedd17b48f` |
| 12 | `theorem` | [pdf_def](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/pdf-def--1ba7b58c97b5f1b789cb5a4e.md) | 126 | `result-track:1ba7b58c97b5f1b789cb5a4e33f692366e34fea8538954c7b7fe0f8e804df4f4` |
| 13 | `theorem` | [pdf_of_not_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/pdf-of-not-aemeasurable--6c9eeba2839c7986fb33ea37.md) | 129 | `result-track:6c9eeba2839c7986fb33ea3735545364fce4cefddb75edbea5d2c15e282b8a2d` |
| 14 | `theorem` | [pdf_of_not_haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/pdf-of-not-havelebesguedecomposition--5d63305e3cde2800a3df51b8.md) | 134 | `result-track:5d63305e3cde2800a3df51b84d8c47d983af14d5c1513b267997625c06a5613b` |
| 15 | `theorem` | [aemeasurable_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/aemeasurable-of-pdf-ne-zero--053f8249929c724b996c26d7.md) | 138 | `result-track:053f8249929c724b996c26d73e2fefc3f0b6a7d469690c808c0fee406963fc9a` |
| 16 | `theorem` | [hasPDF_of_pdf_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/haspdf-of-pdf-ne-zero--9e126307629ac3892ffd1ca3.md) | 143 | `result-track:9e126307629ac3892ffd1ca3b25022cd6b2746a085c3d72c9c8f0f136d14351c` |
| 17 | `theorem` | [measurable_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/measurable-pdf--b400d89aca0d77deb6c54f54.md) | 152 | `result-track:b400d89aca0d77deb6c54f547468b4d5cd847b7890b3916d096bb913d24a7487` |
| 18 | `theorem` | [withDensity_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/withdensity-pdf-le-map--7d9fa19e9cee433b3039adfa.md) | 156 | `result-track:7d9fa19e9cee433b3039adfa51b87ad4c423f4480f2df9a842fd85fd73117058` |
| 19 | `theorem` | [setLIntegral_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/setlintegral-pdf-le-map--5f006a4da66e2557ae1573f9.md) | 160 | `result-track:5f006a4da66e2557ae1573f9c6958b52e581f931320d74696cc48567b66185b9` |
| 20 | `theorem` | [map_eq_withDensity_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/map-eq-withdensity-pdf--9d23894fe2b6b444cb361f67.md) | 166 | `result-track:9d23894fe2b6b444cb361f67fde96e1c62da32ab0ecfa8f24715a844061015b3` |
| 21 | `theorem` | [map_eq_setLIntegral_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/map-eq-setlintegral-pdf--103643e282a053c55a14e521.md) | 171 | `result-track:103643e282a053c55a14e521515b70ed6eda2001cf744a7bf5c4695e34a6333d` |
| 22 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/congr--ffc48a63509971b5aa62a3d3.md) | 180 | `result-track:ffc48a63509971b5aa62a3d337daeb1eabf6dc3a56ad6d011d69bab0982651af` |
| 23 | `theorem` | [lintegral_eq_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/lintegral-eq-measure-univ--144c36c4026830b48de97ce4.md) | 183 | `result-track:144c36c4026830b48de97ce4a923e924dd37242739f8e11461292b5accf4bcfd` |
| 24 | `theorem` | [eq_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/eq-of-map-eq-withdensity--a3774f395a62d21ce9658c7d.md) | 188 | `result-track:a3774f395a62d21ce9658c7d93feef58fd84e7f20b1a4299d35b80ac3a61bb8a` |
| 25 | `theorem` | [eq_of_map_eq_withDensity'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/eq-of-map-eq-withdensity--23d3033eab23338bb209d266.md) | 195 | `result-track:23d3033eab23338bb209d2665959d205ca392b69511e7425fb33c920b32d56ea` |
| 26 | `theorem` | [ae_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/ae-lt-top--c2eb0660590646ad5959fa92.md) | 200 | `result-track:c2eb0660590646ad5959fa9253af36a270fd2f012e59b461637c03f7581fd5db` |
| 27 | `theorem` | [ofReal_toReal_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/ofreal-toreal-ae-eq--1e2930b3566c1b0dbc412f5c.md) | 204 | `result-track:1e2930b3566c1b0dbc412f5c25d099d37060b8178f1b61a07e696621765e3e78` |
| 28 | `theorem` | [lintegral_pdf_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/lintegral-pdf-mul--0774ae72e89d47b63f0eb37f.md) | 211 | `result-track:0774ae72e89d47b63f0eb37f42f214acf02423e71e358294c9033c180d22bea8` |
| 29 | `theorem` | [integrable_pdf_smul_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/integrable-pdf-smul-iff--fc1fd0b34a74253bd2ce0531.md) | 219 | `result-track:fc1fd0b34a74253bd2ce053109c73a1ed3bfca45dd029b18001744c689fa5053` |
| 30 | `theorem` | [integral_pdf_smul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/integral-pdf-smul--eee3395adf8c33853671a793.md) | 230 | `result-track:eee3395adf8c33853671a793eaa642a5dca7d68539c56e0a4effb69a00bbd136` |
| 31 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/quasimeasurepreserving-haspdf--d2dbe10052354c30cb9b4435.md) | 247 | `result-track:d2dbe10052354c30cb9b4435a9ba07d6bedddca8968cdd81c79ee7343c59f6cc` |
| 32 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/quasimeasurepreserving-haspdf--9b154d97aba3943713134566.md) | 254 | `result-track:9b154d97aba39437131345660bb60b82ec936d5201ec667f3bd4de16b54f6c4e` |
| 33 | `theorem` | [_root_.Real.hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/root-real-haspdf-iff--cf32b22c6691c247f4491095.md) | 264 | `result-track:cf32b22c6691c247f4491095388dc4e3b4c0b65ce52fadba1761424aa9caa4cc` |
| 34 | `theorem` | [_root_.Real.hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/root-real-haspdf-iff-of-aemeasurable--e086b97a705ac88a0bed2eab.md) | 270 | `result-track:e086b97a705ac88a0bed2eabaa08da3f8bd956bf77515ea909965553cb3a6de0` |
| 35 | `theorem` | [integral_mul_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/integral-mul-eq-integral--8c8c1387864727fd5380c83b.md) | 278 | `result-track:8c8c1387864727fd5380c83b2ee3d52d99e3ba7238f8cc103a981d4b9d70090d` |
| 36 | `theorem` | [hasFiniteIntegral_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/hasfiniteintegral-mul--70828178d09ace7d7cd08763.md) | 283 | `result-track:70828178d09ace7d7cd08763513a645e7a31fa5801f84b5a469956ff1390daf3` |
| 37 | `theorem` | [indepFun_iff_pdf_prod_eq_pdf_mul_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/declarations/indepfun-iff-pdf-prod-eq-pdf-mul-pdf--40fd9607be81dcfba8792d32.md) | 303 | `result-track:40fd9607be81dcfba8792d327c2b3dd41ac2a2bd5f859d770d8ce037a76b2af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
