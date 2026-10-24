# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PontryaginDuality.Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6acebb72f123bbec0680819d51b44becb5b44465",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6acebb72f123bbec0680819d51b44becb5b44465`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.AddChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FiniteAbelian.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zmod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod--3c92048bfcda865f2ea155da.md) | 41 | `declaration-track:3c92048bfcda865f2ea155da0eb7aaed81f923d6519419d21ef919daea297967` |
| 2 | `lemma` | [zmod_intCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod-intcast--8ebf38400a4e9afcbc082311.md) | 45 | `result-track:8ebf38400a4e9afcbc082311c077b3f73164b859bf51ad9a8b8a2c6692f8ef10` |
| 3 | `lemma` | [zmod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod-zero--1c0fff4b6e1095e85dccdb0a.md) | 49 | `result-track:1c0fff4b6e1095e85dccdb0afb13a575bcaae36f19e1165a19e3d90f7e120886` |
| 4 | `lemma` | [zmod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod-add--fe817c228506b6c6ca4e2197.md) | 54 | `result-track:fe817c228506b6c6ca4e2197b1bc60c869ccc05b9f42779debd95096bdc6fd19` |
| 5 | `lemma` | [zmod_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod-injective--1846df0e465b97158471a1fa.md) | 57 | `result-track:1846df0e465b97158471a1faed2ea62ec5dba5274ab1284ca9dd4f7a10f7a1b4` |
| 6 | `lemma` | [zmod_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmod-inj--689da0cfc3f059fffdc40781.md) | 65 | `result-track:689da0cfc3f059fffdc4078147c436bbdf6699d4ee4ba73b85ccebe697c1e450` |
| 7 | `def` | [zmodHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmodhom--14dc587b76227566a78d3a6a.md) | 68 | `declaration-track:14dc587b76227566a78d3a6a413c9c8e46e85211279c6f6a079ae8f8ca7d9fff` |
| 8 | `def` | [mkZModAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/mkzmodaux--4771c660e1c3008ec17eb2c9.md) | 74 | `declaration-track:4771c660e1c3008ec17eb2c99136ddbe49749bc989c7e4bc69415b00fd636af0` |
| 9 | `lemma` | [mkZModAux_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/mkzmodaux-injective--0159d159af645242cf1d9869.md) | 78 | `result-track:0159d159af645242cf1d9869b564ddd60eaba0cfa4e774ca85cb4ada5ff461d8` |
| 10 | `def` | [circleEquivComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/circleequivcomplex--77430f81b9d3fab55cfdd935.md) | 84 | `declaration-track:77430f81b9d3fab55cfdd935b7890644d326540cb5c79f4d716c315696d278b6` |
| 11 | `lemma` | [card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/card-eq--c90b11269e5ac6f2071142eb.md) | 94 | `result-track:c90b11269e5ac6f2071142eba207135e1479140fa7b2ee1349d5886642051624` |
| 12 | `def` | [zmodAddEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmodaddequiv--a130882e453c595e0dcd73b2.md) | 105 | `declaration-track:a130882e453c595e0dcd73b28039a86fe8ac6f4082f9820fd58c71941d757995` |
| 13 | `lemma` | [zmodAddEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/zmodaddequiv-apply--8c4fa87c1ff5325163e645d4.md) | 111 | `result-track:8c4fa87c1ff5325163e645d4a57026692484bc223d79cc36b201ddb4f55fb17a` |
| 14 | `def` | [complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/complexbasis--e3f8af5cc1ab1e335e60e510.md) | 118 | `declaration-track:e3f8af5cc1ab1e335e60e510ec4fc3bedcbbe62acd9d8886017baa7c64bba4ca` |
| 15 | `lemma` | [coe_complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/coe-complexbasis--a3a0710cc1e25131b001abe6.md) | 123 | `result-track:a3a0710cc1e25131b001abe6b54431652a05710a60fbbf595c810d7839168cd9` |
| 16 | `lemma` | [complexBasis_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/complexbasis-apply--176a064cc63308cd626ca466.md) | 129 | `result-track:176a064cc63308cd626ca466a836d0fd643f179f799e14188a5b2945b771fa64` |
| 17 | `lemma` | [exists_apply_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/exists-apply-ne-zero--ac6cec2d36e585dce507a0af.md) | 131 | `result-track:ac6cec2d36e585dce507a0af6b76a262c8397547443a5a209d7905aecc472afd` |
| 18 | `lemma` | [forall_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/forall-apply-eq-zero--4b821d6b4aa094604b2cd200.md) | 144 | `result-track:4b821d6b4aa094604b2cd200754c345f8689b07cfc54b60c5effcbd766706666` |
| 19 | `lemma` | [doubleDualEmb_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-injective--97cd74588a6c1ef8ab4307dc.md) | 147 | `result-track:97cd74588a6c1ef8ab4307dcefd86b642acff97548e8ff42670d38b8482d8ac1` |
| 20 | `lemma` | [doubleDualEmb_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-bijective--895cb7f2821c3193c803bc5b.md) | 151 | `result-track:895cb7f2821c3193c803bc5b073bb67b4ae6bba23f7968da606f241af9ba16a0` |
| 21 | `lemma` | [doubleDualEmb_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-inj--e834ba30242575600c592f7c.md) | 157 | `result-track:e834ba30242575600c592f7c885d8f304a35bad0cada9958b9fc44b11bce67b6` |
| 22 | `lemma` | [doubleDualEmb_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-eq-zero--553d33e5d3d43bc626eef141.md) | 160 | `result-track:553d33e5d3d43bc626eef1411b8321b9bbff657e9d62fe2fca48bc4409030ad2` |
| 23 | `lemma` | [doubleDualEmb_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-ne-zero--74805c883441579cdb61d7b2.md) | 163 | `result-track:74805c883441579cdb61d7b25266c806d1413115c1c55aede00d9c03169f1fe3` |
| 24 | `def` | [doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualequiv--fd03916722c189ac944ed047.md) | 167 | `declaration-track:fd03916722c189ac944ed0474449fb1ae0c2591025e7aa53a1f060a07b156615` |
| 25 | `lemma` | [coe_doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/coe-doubledualequiv--100e3450efbff35fda417a42.md) | 170 | `result-track:100e3450efbff35fda417a42498e87bfa35fe10998055718f6892d2f0997953d` |
| 26 | `lemma` | [doubleDualEmb_doubleDualEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualemb-doubledualequiv-symm-apply--ee6e9b1b47ff6286f9366a06.md) | 172 | `result-track:ee6e9b1b47ff6286f9366a062c1086847bb0b98c1a0cb9734be01e380b6e462e` |
| 27 | `lemma` | [doubleDualEquiv_symm_doubleDualEmb_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/doubledualequiv-symm-doubledualemb-apply--430424d4d8a472bf558a9611.md) | 176 | `result-track:430424d4d8a472bf558a96111d9ca7a27d4dd7b390d36e212d4981d6141317dd` |
| 28 | `lemma` | [sum_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/sum-apply-eq-ite--bd36cf3304ae7c9c74f92be7.md) | 181 | `result-track:bd36cf3304ae7c9c74f92be77ed7d3516a9fdce5d81dc20573f58bd77895dd96` |
| 29 | `lemma` | [expect_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/expect-apply-eq-ite--41f86257502a6088f2c0b875.md) | 185 | `result-track:41f86257502a6088f2c0b875a2d0fe584ff7b17be86cea6c10087dd55bc78e59` |
| 30 | `lemma` | [sum_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/sum-apply-eq-zero-iff-ne-zero--1b2d2ae8a80a1c1629d82feb.md) | 189 | `result-track:1b2d2ae8a80a1c1629d82feb9b9a08ceb2046ddd116dd66a4f70ac3dfe076641` |
| 31 | `lemma` | [sum_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/sum-apply-ne-zero-iff-eq-zero--45a669da48cfd0831bcc5d8e.md) | 195 | `result-track:45a669da48cfd0831bcc5d8e31e96afe6f88203151dbbb77e4c907a64a9025ba` |
| 32 | `lemma` | [expect_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/expect-apply-eq-zero-iff-ne-zero--4582e7ab30027021a5de03ea.md) | 198 | `result-track:4582e7ab30027021a5de03ea99522f4eca100467db57261d37afdd0eb4434c8f` |
| 33 | `lemma` | [expect_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variant43bdb1f5ccf70cf60360620070c76b95c12ec0ada4b117e8fca7608613e68f8d.lean/declarations/expect-apply-ne-zero-iff-eq-zero--548a67607254742e63c7e9ac.md) | 203 | `result-track:548a67607254742e63c7e9ac91c76d4cce189ca8a2380df973d38aece8c5aba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
