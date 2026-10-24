# Verification target: GRWTSK.Analysis.MeasureTheory.CharacteristicFunction.Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfe39edd793ec429e617eca068248d1f1cb8d4b5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfe39edd793ec429e617eca068248d1f1cb8d4b5`.

Source path: `GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.BoundedContinuousFunctionChar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.IntegralConvolution` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.FiniteMeasureExt` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerProbChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/innerprobchar--9566cbe7ed2cacd162bfffbc.md) | 66 | `declaration-track:9566cbe7ed2cacd162bfffbc83e67f3ee036b961596e916aff9e77e9661842b9` |
| 2 | `lemma` | [innerProbChar_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/innerprobchar-apply--2e6e7e243281741c29f095ee.md) | 69 | `result-track:2e6e7e243281741c29f095ee84ee401f581419f16e66106ecdb31ddf890a11ed` |
| 3 | `lemma` | [innerProbChar_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/innerprobchar-zero--94783aa57e35101b2ff85ce6.md) | 72 | `result-track:94783aa57e35101b2ff85ce6ab5b5e503b6f415d0c189ffb96eb4aecd252ede5` |
| 4 | `def` | [probCharDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/probchardual--537a8c2f9aef85d1c7b14024.md) | 76 | `declaration-track:537a8c2f9aef85d1c7b140241513a6dcb2fa2d0d528041b883546178e5e503b4` |
| 5 | `lemma` | [probCharDual_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/probchardual-apply--33637ebc08a2f45dd75b9c1f.md) | 80 | `result-track:33637ebc08a2f45dd75b9c1f5f4027b60a2f0c1803818dc60a2f092a77e19dc7` |
| 6 | `lemma` | [probCharDual_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/probchardual-zero--fab3ac23a70bd2ecff277df3.md) | 83 | `result-track:fab3ac23a70bd2ecff277df3748208296ebb96880fa5b2ed652ac4c29c67a553` |
| 7 | `theorem` | [ext_of_integral_char_eq](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/ext-of-integral-char-eq--b0a0368ea296f535c3e0a26c.md) | 99 | `result-track:b0a0368ea296f535c3e0a26c4bc7284b03b865701b835bffea241d4e3fc0f655` |
| 8 | `def` | [charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun--7dde4f910e89c2e3ee7d76e0.md) | 126 | `declaration-track:7dde4f910e89c2e3ee7d76e037b5582bca403ac7064ac9de9ceaa5465a0078bf` |
| 9 | `lemma` | [charFun_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-apply--d73bd2df5d843a91cda10796.md) | 128 | `result-track:d73bd2df5d843a91cda10796c5cd1e00c31115b5468b22a3ebe7b5882f4e90de` |
| 10 | `lemma` | [charFun_apply_real](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-apply-real--457c4f02e0eee620fbe63240.md) | 130 | `result-track:457c4f02e0eee620fbe632404a8b5c0945bd7e41c60504e694449a82bbe2affc` |
| 11 | `lemma` | [charFun_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-zero--99677b12f83f5b8a76079008.md) | 136 | `result-track:99677b12f83f5b8a76079008097739721fc65deae786492185ffa4f3a16e922d` |
| 12 | `lemma` | [charFun_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-zero-measure--8f1b953334a9eea845dc1c3a.md) | 140 | `result-track:8f1b953334a9eea845dc1c3a1b2f28e05d26e67e5632b6b02febcda5b0dd568f` |
| 13 | `lemma` | [charFun_neg](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-neg--b892f6523067cb8093accc10.md) | 143 | `result-track:b892f6523067cb8093accc108432c1bdb42f292ce25aebdaa0b374abb64b18fe` |
| 14 | `lemma` | [charFun_eq_integral_innerProbChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-eq-integral-innerprobchar--15336579dda9cdd18f13d1e4.md) | 147 | `result-track:15336579dda9cdd18f13d1e415667d3dde61cadf1b1aa5e6b8f377e7bb133bdf` |
| 15 | `lemma` | [charFun_eq_integral_probChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-eq-integral-probchar--2c4792debc84253138da1e37.md) | 150 | `result-track:2c4792debc84253138da1e3741073cbb632c1f97f737caebca1fe4dfebd7c841` |
| 16 | `lemma` | [charFun_eq_fourierIntegral](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-eq-fourierintegral--ba3d3a3cc3275be27bced0e3.md) | 154 | `result-track:ba3d3a3cc3275be27bced0e36454964badc921b10d863baba95d7b8abece2030` |
| 17 | `lemma` | [charFun_eq_fourierIntegral'](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-eq-fourierintegral--0e4c60948707986efb4aa8f0.md) | 159 | `result-track:0e4c60948707986efb4aa8f0e21d5fc9a83639004078bde2061a208ca3dd74db` |
| 18 | `lemma` | [norm_charFun_le](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/norm-charfun-le--1282ecf4aa1e2580601e3fac.md) | 169 | `result-track:1282ecf4aa1e2580601e3fac58512bc4eec814b9c0d4589caa6f1129cb00f21e` |
| 19 | `lemma` | [norm_charFun_le_one](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/norm-charfun-le-one--c99fabd29893d9d5579cdc6f.md) | 173 | `result-track:c99fabd29893d9d5579cdc6ff67e6258cb09c1568051fefec9ae2f0983b84705` |
| 20 | `lemma` | [norm_one_sub_charFun_le_two](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/norm-one-sub-charfun-le-two--e4186b6f2c24cb4dc09c93a3.md) | 176 | `result-track:e4186b6f2c24cb4dc09c93a30f4480aed51838041a3d93b6ba96dbc6eb7e4535` |
| 21 | `lemma` | [stronglyMeasurable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/stronglymeasurable-charfun--321b849ac2869d9dc6b89e6b.md) | 183 | `result-track:321b849ac2869d9dc6b89e6bdee8186c9b11aa397fe4650d7c8c807ca79f505b` |
| 22 | `lemma` | [measurable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/measurable-charfun--2d3b40668230469bca755fe5.md) | 188 | `result-track:2d3b40668230469bca755fe5b47fb5aac43beebdf2ea2b1508ea7cebade7e66b` |
| 23 | `lemma` | [intervalIntegrable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/intervalintegrable-charfun--652cb547f7fff6b0f64c1ea3.md) | 192 | `result-track:652cb547f7fff6b0f64c1ea314594db6a54680d76842d0f0c8c86240fcf11023` |
| 24 | `lemma` | [charFun_map_smul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-map-smul--4d67b206d11cff69a49d7403.md) | 197 | `result-track:4d67b206d11cff69a49d74037a629b6bee967d70b3d5009b770c807e8a07682d` |
| 25 | `lemma` | [charFun_map_mul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-map-mul--abb5da150c7bed8fccc41f42.md) | 203 | `result-track:abb5da150c7bed8fccc41f42ab26fc9a02782fc43196be75869ef3defebf892b` |
| 26 | `theorem` | [Measure.ext_of_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/measure-ext-of-charfun--9048519fba9b8c9fa57176ed.md) | 211 | `result-track:9048519fba9b8c9fa57176ed15028b9d1d357dbf09ce68492cc23be6b9751867` |
| 27 | `lemma` | [charFun_conv](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-conv--1aa59ed3a7f4cb41adeaae33.md) | 222 | `result-track:1aa59ed3a7f4cb41adeaae334101b01b99642221ee4d6e37a04c0a46c2079e0f` |
| 28 | `def` | [charFunDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual--c410e0ce0d330aef389fa319.md) | 240 | `declaration-track:c410e0ce0d330aef389fa319633c7410e9af0f00fb4cb624c3a63826b36227ad` |
| 29 | `lemma` | [charFunDual_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-apply--aa6e5c5490cd2a3ec1f239aa.md) | 242 | `result-track:aa6e5c5490cd2a3ec1f239aa85b7b03a9d09596e177b9377427208554dc894da` |
| 30 | `lemma` | [charFunDual_eq_charFun_map_one](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-eq-charfun-map-one--99a74bab8578515acdd78336.md) | 244 | `result-track:99a74bab8578515acdd783365cfd88bad3a198f224de362ec92f80151fe7aa95` |
| 31 | `lemma` | [charFun_map_eq_charFunDual_smul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-map-eq-charfundual-smul--795eb7e49e96537ce76c4d7a.md) | 254 | `result-track:795eb7e49e96537ce76c4d7a2b47f72e463ca95f1866f8a587117936b83a85bd` |
| 32 | `lemma` | [charFun_eq_charFunDual_toDualMap](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfun-eq-charfundual-todualmap--4a2e41da785032ac89557579.md) | 265 | `result-track:4a2e41da785032ac895575793a2523934a4f0ec2ad70848d70465a8a9b14bc2b` |
| 33 | `lemma` | [charFunDual_map](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-map--de854be34591f6d5b9a9bef6.md) | 270 | `result-track:de854be34591f6d5b9a9bef697ce2c05e88bc8863c40969216ed1a9d8cc36917` |
| 34 | `lemma` | [charFunDual_dirac](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-dirac--7acb648a30854846c5becc5c.md) | 277 | `result-track:7acb648a30854846c5becc5c281c99e5a3faa31f83e01ac37a2127a35ad90a6a` |
| 35 | `lemma` | [charFunDual_prod](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-prod--cc879f6b09847f437ee63a8c.md) | 283 | `result-track:cc879f6b09847f437ee63a8ca4b874ef9333ce3016c4046288de862d42593bdf` |
| 36 | `theorem` | [Measure.ext_of_charFunDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/measure-ext-of-charfundual--572420f19349922c4ffba253.md) | 295 | `result-track:572420f19349922c4ffba2534813f79a45e71fb8b3fcc91c58a457f9620b75e0` |
| 37 | `lemma` | [charFunDual_conv](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean/declarations/charfundual-conv--34b6bdb6f6e29e962ccd43b5.md) | 311 | `result-track:34b6bdb6f6e29e962ccd43b5db7527d8a50d9ddb6d3314d6939df0514cc16d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
