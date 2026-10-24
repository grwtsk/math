# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77fdf61b2768d6f60544b113b558f182754633f3",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77fdf61b2768d6f60544b113b558f182754633f3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pmf.](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/pmf--89c7c0166cc9b9f4e512f043.md) | 51 | `declaration-track:89c7c0166cc9b9f4e512f043a91c19ce39a3ac71c6f8682b63a56780f766bccd` |
| 2 | `instance` | [funLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/funlike--8e8daaaed4daea9d1a26b6c0.md) | 57 | `declaration-track:8e8daaaed4daea9d1a26b6c0bb497f6fa245fde7e8565af3c2e29eb4124aa9d4` |
| 3 | `theorem` | [ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/ext--5e5a6af0f2ebbeb89154f655.md) | 63 | `result-track:5e5a6af0f2ebbeb89154f655a69ba2ce2094b27b8d1af10d6aee2cd958846c69` |
| 4 | `theorem` | [ext_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/ext-iff--6a4b28a5a465556106e9d62a.md) | 67 | `result-track:6a4b28a5a465556106e9d62a6773cf0b65c95db2a294c65cf765ee24f3a7eaec` |
| 5 | `theorem` | [hasSum_coe_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/hassum-coe-one--0ee7aa737cf7969c93877759.md) | 71 | `result-track:0ee7aa737cf7969c93877759bc667b410127c4a55235575ceb14c8ec76940998` |
| 6 | `theorem` | [tsum_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tsum-coe--4d743b544e2f8ec05d2ad303.md) | 76 | `result-track:4d743b544e2f8ec05d2ad3036d24cc8f2b24d9d55dfd8fac543950148a7d3ddb` |
| 7 | `theorem` | [tsum_coe_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tsum-coe-ne-top--7683057048e6e91e3967ac14.md) | 80 | `result-track:7683057048e6e91e3967ac14b8f3111d44902e068322d854c094bec1e376ece1` |
| 8 | `theorem` | [tsum_coe_indicator_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tsum-coe-indicator-ne-top--fd8381e9ee2af5d28903ac5a.md) | 84 | `result-track:fd8381e9ee2af5d28903ac5ac464d108651f87c1ef8b24717d522c22c3d5dbb6` |
| 9 | `theorem` | [coe_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/coe-ne-zero--cbc3afc1a423fbed71926460.md) | 92 | `result-track:cbc3afc1a423fbed719264601aabd4dff20ef8cc91194daa662d259c26779b00` |
| 10 | `def` | [support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/support--b4a856d4cfd63dd3ef745c1f.md) | 97 | `declaration-track:b4a856d4cfd63dd3ef745c1fbef209ab5aecd8ebcc9983669b9197fa0f4a3100` |
| 11 | `theorem` | [mem_support_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/mem-support-iff--2235eb7f20443ab50faa2a46.md) | 102 | `result-track:2235eb7f20443ab50faa2a46b85daaf2f865b63a619c17ef2169e46352252c02` |
| 12 | `theorem` | [support_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/support-nonempty--c04e1f410e5af104e8daa529.md) | 106 | `result-track:c04e1f410e5af104e8daa52976ee47ae88205e4f8e25db793521b40f3cb64a8e` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/apply-eq-zero-iff--28b41505c21ccf221d91fa3f.md) | 110 | `result-track:28b41505c21ccf221d91fa3f1b1b66549a93ae516e997695af52bef5f6c62146` |
| 14 | `theorem` | [apply_pos_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/apply-pos-iff--8fae622d07f92c1fb28ecc44.md) | 114 | `result-track:8fae622d07f92c1fb28ecc441f87ef992cd514d5bd892e2189e4d44cd054e9b2` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/apply-eq-one-iff--5122763a960ee8ea63110579.md) | 118 | `result-track:5122763a960ee8ea63110579784a9d5b02f9a99781f38b3891571e8e0d795b9d` |
| 16 | `theorem` | [coe_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/coe-le-one--42eb265bb0e9be93fef1688b.md) | 140 | `result-track:42eb265bb0e9be93fef1688b8647a1a61c5e23583b0f7ab39831110871588e0f` |
| 17 | `theorem` | [apply_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/apply-ne-top--91308c2fa76cd0cfae54af41.md) | 145 | `result-track:91308c2fa76cd0cfae54af4128254d4d9a6bb4379ca9b9b55104091724b950d6` |
| 18 | `theorem` | [apply_lt_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/apply-lt-top--6c7e624497d68977f50d14f9.md) | 149 | `result-track:6c7e624497d68977f50d14f96d31738d4b79ecd4e040b385a20c5fe8a7c768c4` |
| 19 | `def` | [toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure--ee5dfa3adc1abfe475f558b9.md) | 159 | `declaration-track:ee5dfa3adc1abfe475f558b9be25eaa22d375671e1c4e836e6885cd4220050a7` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply--2933c6898dfa393a99f673e2.md) | 165 | `result-track:2933c6898dfa393a99f673e2f400067aaf2bff6818bad82343468d7308ccf668` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-caratheodory--d01a2b7c6831b47229cbc3e6.md) | 170 | `result-track:d01a2b7c6831b47229cbc3e6a86b655e695b8af4e8e447333e22532c0faf9155` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-finset--46e645d0cba00f7e3ff75afc.md) | 178 | `result-track:46e645d0cba00f7e3ff75afc1e737dbc0eb2f98d207838b05f8f9df642217cc3` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-singleton--7f5277d7274dea5a72aa158a.md) | 184 | `result-track:7f5277d7274dea5a72aa158a03d056ed519368202aa4568422ab2d88f8bba25e` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-injective--4c9f73d52334a2daa75ca5e8.md) | 190 | `result-track:4c9f73d52334a2daa75ca5e86c8d7df62a5d5e6fc70b40e1d51adf14a9a53c66` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-inj--ff44684f9dfa467997588dd5.md) | 196 | `result-track:ff44684f9dfa467997588dd563449dfac70daf383b4f10e4473139a285ee15f2` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-eq-zero-iff--e91b0ef0bddec75a0f2e0849.md) | 200 | `result-track:e91b0ef0bddec75a0f2e08497e7fdb3e050ffc2a2bd963fb64a6fd6a4b0939af` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-eq-one-iff--83c48ff988c421e51c61a6ca.md) | 205 | `result-track:83c48ff988c421e51c61a6ca137cc641cfef34c5a5fe45b47a9e147f81ae1929` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-inter-support--30aef3905bdca417736e1dad.md) | 219 | `result-track:30aef3905bdca417736e1dad4d92203da2cc756ddd166c4f0bcdadf88b09962b` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-mono--091e6f2773873a70c1524b2e.md) | 225 | `result-track:091e6f2773873a70c1524b2e2eabb71bfdc67a6e9c63c2850c6b2b8e87030863` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq--b57d32b523ff443ec5b5f986.md) | 230 | `result-track:b57d32b523ff443ec5b5f98634ab6df557d8f1895ab22b2175e8d8d1f80be0a1` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-fintype--b9de259477357bf349d65325.md) | 237 | `result-track:b9de259477357bf349d6532550ff94a247c41917ad9b658f47f7df7752c32383` |
| 32 | `def` | [toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure--d7959023370d4d55b1d06ebe.md) | 249 | `declaration-track:d7959023370d4d55b1d06ebecbf8f7aa4a47e23054eb820d4681929e7c7b08a1` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tooutermeasure-apply-le-tomeasure-apply--dbb31c76bd234e9bcc82d75d.md) | 255 | `result-track:dbb31c76bd234e9bcc82d75d766708ee45553a572e6bebf940cd7bb86d9f1765` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply--b3949f3d17b88005aa889357.md) | 259 | `result-track:b3949f3d17b88005aa8893578d397a0734333fd74b1f964ef2cfe1ab708edf7a` |
| 35 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply--3cb57f54ed5cff3894383268.md) | 264 | `result-track:3cb57f54ed5cff3894383268abe6f8d60b4da7a030cc985efab2396ab2ec3ba7` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-singleton--3b4189228d313358462e2edf.md) | 268 | `result-track:3b4189228d313358462e2edf978419b6a85405d8c3915c498886f515e0ee3279` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-eq-zero-iff--018e5c978eb4befcc60dd4c1.md) | 273 | `result-track:018e5c978eb4befcc60dd4c1d5baeb96fcfc4fca569da0d1b0092b6e895aeba5` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-eq-one-iff--cd0d62a0ea5469ea6568d975.md) | 278 | `result-track:cd0d62a0ea5469ea6568d9756a06546914183d53bbffea01fb44d66eb595bbaf` |
| 39 | `theorem` | [toMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-inter-support--88a6e27558d0638f89577256.md) | 283 | `result-track:88a6e27558d0638f89577256126ff590ffb0410b4c7efe5cb3038b596ab72f6c` |
| 40 | `theorem` | [toMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-mono--03e5251c98bbc84cd034cdf9.md) | 289 | `result-track:03e5251c98bbc84cd034cdf97d6881ba25fbe5e22118a5a2e004bec06a9f9b32` |
| 41 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-eq-of-inter-support-eq--080d37d5a4bd6f9a4eed6be6.md) | 294 | `result-track:080d37d5a4bd6f9a4eed6be6ca018f57683041704330ffb27772b648c21f9fb6` |
| 42 | `theorem` | [toMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-injective--f246f61a3189af9db76ea2b8.md) | 304 | `result-track:f246f61a3189af9db76ea2b8f56570ceacb71b9a1c5a94f92f71bf1cb6a63aea` |
| 43 | `theorem` | [toMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-inj--9f12cf4f1cf7c179b6533625.md) | 312 | `result-track:9f12cf4f1cf7c179b65336254741189147ee2626e6f5db0214f54b6449a9e87b` |
| 44 | `theorem` | [toMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-finset--2ccf5b73ed9af93b33f52540.md) | 317 | `result-track:2ccf5b73ed9af93b33f5254025b65d145325487f644887265c3c6a851738b056` |
| 45 | `theorem` | [toMeasure_apply_of_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-of-finite--f9c3729e66ef09f9abfcc742.md) | 322 | `result-track:f9c3729e66ef09f9abfcc7426d3d3572ab79c165924ffe67a48c26e3a1153d9e` |
| 46 | `theorem` | [toMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-apply-fintype--08446be2ba3fccd0ee3c93dc.md) | 327 | `result-track:08446be2ba3fccd0ee3c93dc6c6ebda082f6c6250f01e05ad90dd9730865fe4e` |
| 47 | `def` | [toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/topmf--57b314456b0c8eb7deef9a68.md) | 347 | `declaration-track:57b314456b0c8eb7deef9a68730b2de0a0772bbfb448269442ed369a05027365` |
| 48 | `theorem` | [toPmf_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/topmf-apply--a2d9e0f9b1dc6ef612be5b65.md) | 361 | `result-track:a2d9e0f9b1dc6ef612be5b65ad2b777381330077c6b2e72f67b79738941eee11` |
| 49 | `theorem` | [toPmf_toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/topmf-tomeasure--668ace90d95d8b8d31497f67.md) | 365 | `result-track:668ace90d95d8b8d31497f67eb138b8d33481c4a735d824f900800e2a5915932` |
| 50 | `instance` | [toMeasure.isProbabilityMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-isprobabilitymeasure--7e21162cc18a09701ce823ea.md) | 380 | `declaration-track:7e21162cc18a09701ce823ea74469b561d330143520b92d787c09644203b37f1` |
| 51 | `theorem` | [toMeasure_toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-topmf--ca361ae867d37ad04274d33d.md) | 391 | `result-track:ca361ae867d37ad04274d33d3ce44ecd9a0d212ce9495dded33ed2410d4fcfe7` |
| 52 | `theorem` | [toMeasure_eq_iff_eq_toPmf](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/tomeasure-eq-iff-eq-topmf--9118d4fa0b6b3719eabfe5c9.md) | 396 | `result-track:9118d4fa0b6b3719eabfe5c98abfb94710572bab08f2194928acd3ec832dc396` |
| 53 | `theorem` | [toPmf_eq_iff_toMeasure_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean/declarations/topmf-eq-iff-tomeasure-eq--a624c55a500570abc60ffce2.md) | 400 | `result-track:a624c55a500570abc60ffce2fc9f0e6342a6889b1f8e7e674ac3625e6ae20eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
