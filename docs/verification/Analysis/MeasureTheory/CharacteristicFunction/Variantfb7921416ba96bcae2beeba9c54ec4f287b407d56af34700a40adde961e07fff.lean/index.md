# Verification target: GRWTSK.Analysis.MeasureTheory.CharacteristicFunction.Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75890af1f911e7ae19bf68bfb163f0667b56deb2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75890af1f911e7ae19bf68bfb163f0667b56deb2`.

Source path: `GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.BoundedContinuousFunctionChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.IntegralConvolution` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.FiniteMeasureExt` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerProbChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/innerprobchar--dc9c53f3711cf75e4c7d504c.md) | 58 | `declaration-track:dc9c53f3711cf75e4c7d504c3034450d8781d2cc1195f83d8891e3702ce5ae29` |
| 2 | `lemma` | [innerProbChar_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/innerprobchar-apply--1885b29ac7eed2a81026cc8d.md) | 61 | `result-track:1885b29ac7eed2a81026cc8d8c703732e36d9b04da8a38b765b15de9f6f4f353` |
| 3 | `lemma` | [innerProbChar_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/innerprobchar-zero--2f7dc84d5db3eae13de43d94.md) | 64 | `result-track:2f7dc84d5db3eae13de43d949d9d232f1517a87298826de1412aaf37fd73e42e` |
| 4 | `def` | [probCharDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/probchardual--557573d1da93c7b618c39b86.md) | 68 | `declaration-track:557573d1da93c7b618c39b863cc6af96bc5eead7ab3ae11beee790c85a212ac2` |
| 5 | `lemma` | [probCharDual_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/probchardual-apply--c0c5d8234b2871fbe828d7fa.md) | 72 | `result-track:c0c5d8234b2871fbe828d7fa45961502d4e36f8b7bf2cc0883aee029da13c1c4` |
| 6 | `lemma` | [probCharDual_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/probchardual-zero--63615964be4e8943eaaa0100.md) | 75 | `result-track:63615964be4e8943eaaa0100c3186ccf3f17353c560f9e9dc70275b4c0ffe271` |
| 7 | `theorem` | [ext_of_integral_char_eq](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/ext-of-integral-char-eq--68f1a149f2c08ca7000c8f8f.md) | 91 | `result-track:68f1a149f2c08ca7000c8f8fb7991d806c6d76697bdb6868b592d841c0d91297` |
| 8 | `def` | [charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun--d9bdbffb6ce4c81bd52d6fce.md) | 118 | `declaration-track:d9bdbffb6ce4c81bd52d6fce739c133f8d6711469bd377ba2aff44d2a40a683b` |
| 9 | `lemma` | [charFun_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-apply--487c461de5df6244e66f0e46.md) | 120 | `result-track:487c461de5df6244e66f0e46e4896e26e5e85c33a1404384e456b9e1a8d9c125` |
| 10 | `lemma` | [charFun_apply_real](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-apply-real--b765c6f62d85dabf598000d5.md) | 122 | `result-track:b765c6f62d85dabf598000d5786102684f64ce525ca061e200b82a4c3f0c94ff` |
| 11 | `lemma` | [charFun_zero](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-zero--33bd25ba2d95f7cd38a08ac3.md) | 128 | `result-track:33bd25ba2d95f7cd38a08ac3c3433be25b7c9b526f47b04ab0e634a18e06647d` |
| 12 | `lemma` | [charFun_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-zero-measure--8689ef8c88d80d13c6ff1227.md) | 132 | `result-track:8689ef8c88d80d13c6ff1227f6ab7e60c73c8efde7430e1b5e5673ce3719e25c` |
| 13 | `lemma` | [charFun_neg](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-neg--62890341553ee8c432472add.md) | 135 | `result-track:62890341553ee8c432472add39a46b12ae24f3ced32ba9b2919e1bf8a3213283` |
| 14 | `lemma` | [charFun_eq_integral_innerProbChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-eq-integral-innerprobchar--75a3fb07c86afa5b03590f98.md) | 139 | `result-track:75a3fb07c86afa5b03590f9886d3d8d68ef6baafb6b11aa5e0e1313262079162` |
| 15 | `lemma` | [charFun_eq_integral_probChar](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-eq-integral-probchar--1ff9851b054662cbb2b2a006.md) | 142 | `result-track:1ff9851b054662cbb2b2a006abdc25102a5b65a66bd2d9ce224a7879c6a2e950` |
| 16 | `lemma` | [charFun_eq_fourierIntegral](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-eq-fourierintegral--3dbf73a65cb4185b3e37d069.md) | 146 | `result-track:3dbf73a65cb4185b3e37d069a6a0e9970b55e9bd3e8819c4e1b7a7f01ba60668` |
| 17 | `lemma` | [charFun_eq_fourierIntegral'](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-eq-fourierintegral--6f30710b318cf30882620911.md) | 151 | `result-track:6f30710b318cf308826209114212fc95cc0eb168ed878daaa8c86d76dbe4f9bc` |
| 18 | `lemma` | [norm_charFun_le](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/norm-charfun-le--31c6624b9495c92c8fbac801.md) | 161 | `result-track:31c6624b9495c92c8fbac801d32996d34c55e19b5330a896135b137ec3badd06` |
| 19 | `lemma` | [norm_charFun_le_one](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/norm-charfun-le-one--ce802022c8a1d499eb2b81f7.md) | 165 | `result-track:ce802022c8a1d499eb2b81f702ef036a4bbd0572bf277f9de39b4aecda8c6aae` |
| 20 | `lemma` | [norm_one_sub_charFun_le_two](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/norm-one-sub-charfun-le-two--d10ee7fe4ecbd8a555271771.md) | 168 | `result-track:d10ee7fe4ecbd8a555271771c81b470f2f4ca6173c4df8a9bdac26eff7726f2f` |
| 21 | `lemma` | [stronglyMeasurable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/stronglymeasurable-charfun--b84bba24508a3919b54caac3.md) | 175 | `result-track:b84bba24508a3919b54caac35dea35dec7ef18143b07ae4f7fd8430aa7933f5f` |
| 22 | `lemma` | [measurable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/measurable-charfun--953d89fbe44f44021e400c38.md) | 180 | `result-track:953d89fbe44f44021e400c38d77d764e9678f32360cc2e2bd1b8d8cf4c4756ac` |
| 23 | `lemma` | [intervalIntegrable_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/intervalintegrable-charfun--e88ac0fc1b2badac9cc62489.md) | 184 | `result-track:e88ac0fc1b2badac9cc624894bbe96ce29adf377e54eab5a389833e7852da7ab` |
| 24 | `lemma` | [charFun_map_smul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-map-smul--1bdf26c0462a212c919332ee.md) | 189 | `result-track:1bdf26c0462a212c919332eee25bc2d0b9324d671ba1b2c50908155f84345491` |
| 25 | `lemma` | [charFun_map_mul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-map-mul--18bee5b640c910103f737155.md) | 195 | `result-track:18bee5b640c910103f7371552892372a119eab288c88e34e2f45e455216e0062` |
| 26 | `theorem` | [Measure.ext_of_charFun](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/measure-ext-of-charfun--1e8a73533cee8d04b90e0515.md) | 203 | `result-track:1e8a73533cee8d04b90e05154f9d7804b2ab33fa3a240affc29da13bf097e872` |
| 27 | `lemma` | [charFun_conv](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-conv--581c35c2d724b50b907b4e78.md) | 214 | `result-track:581c35c2d724b50b907b4e784c6a235be8baac5804148685a455d2f5aab8ab1c` |
| 28 | `def` | [charFunDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual--a3109a63c11d083b2acad039.md) | 232 | `declaration-track:a3109a63c11d083b2acad039ae9ad75ae142784e4318558a99724fb7e44f9600` |
| 29 | `lemma` | [charFunDual_apply](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-apply--b01b35eeffc5ce83130bc862.md) | 234 | `result-track:b01b35eeffc5ce83130bc862d08262f5e70fa105851527f7e50e44e1c0555dbf` |
| 30 | `lemma` | [charFunDual_eq_charFun_map_one](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-eq-charfun-map-one--3d3154b59102b1dc6df44d84.md) | 236 | `result-track:3d3154b59102b1dc6df44d843172ead8aa4f6c6d4b793c21bb0d032451062331` |
| 31 | `lemma` | [charFun_map_eq_charFunDual_smul](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-map-eq-charfundual-smul--2b00f7667165463caa02088b.md) | 246 | `result-track:2b00f7667165463caa02088b09a754840035a5ec20c72829099273c4ba18f10d` |
| 32 | `lemma` | [charFun_eq_charFunDual_toDualMap](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfun-eq-charfundual-todualmap--5c3599bf678d6526c24ca68c.md) | 257 | `result-track:5c3599bf678d6526c24ca68ce8d73a7244dc5dd474e7adb3881b748d1ef7848e` |
| 33 | `lemma` | [charFunDual_map](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-map--baab55211e3ea12b483f52e8.md) | 262 | `result-track:baab55211e3ea12b483f52e8d02e25fe9f8777196e43a4e9cd56af3aa996bd76` |
| 34 | `lemma` | [charFunDual_dirac](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-dirac--14c2064b6430f6167d721031.md) | 269 | `result-track:14c2064b6430f6167d721031b56e469876814f7d682b4f2b9df4fcd73fa36df1` |
| 35 | `lemma` | [charFunDual_prod](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-prod--461e2f754fa5fdd747610360.md) | 275 | `result-track:461e2f754fa5fdd747610360cf8186ed118610cebb6b6a96101efc23d1a28d70` |
| 36 | `theorem` | [Measure.ext_of_charFunDual](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/measure-ext-of-charfundual--f82d28041a97c12c74a6ee3a.md) | 287 | `result-track:f82d28041a97c12c74a6ee3ada9c7c19f49686235aa6384349356728604ebb2d` |
| 37 | `lemma` | [charFunDual_conv](../../../../../mathematics/Analysis/MeasureTheory/CharacteristicFunction/Variantfb7921416ba96bcae2beeba9c54ec4f287b407d56af34700a40adde961e07fff.lean/declarations/charfundual-conv--ec3c20dc91b67d52b890c93e.md) | 303 | `result-track:ec3c20dc91b67d52b890c93ed6e8d062225204c310b53a1166b1d3ee4da66b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
