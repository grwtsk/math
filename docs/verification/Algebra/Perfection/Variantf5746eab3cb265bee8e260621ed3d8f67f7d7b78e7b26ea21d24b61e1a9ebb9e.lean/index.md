# Verification target: GRWTSK.Algebra.Perfection.Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "557787c8f32425dd40b7442d9826510c08600c5b",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `557787c8f32425dd40b7442d9826510c08600c5b`.

Source path: `GRWTSK/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monoid.perfection](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/monoid-perfection--c7e4132e57c4d5e5a4b480fe.md) | 34 | `declaration-track:c7e4132e57c4d5e5a4b480fe20f8391d9593899f155344289c90be88ef0ced58` |
| 2 | `def` | [Ring.perfectionSubsemiring](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/ring-perfectionsubsemiring--69eb73dc92430e2f4c7cea3f.md) | 42 | `declaration-track:69eb73dc92430e2f4c7cea3fd5738fc1d28e17f7f98860dff997525d78925554` |
| 3 | `def` | [Ring.perfectionSubring](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/ring-perfectionsubring--2cfb82e9ac3ab139b65cafbb.md) | 51 | `declaration-track:2cfb82e9ac3ab139b65cafbb9e41b0d99de9306e58bfce662209a8fd3789538f` |
| 4 | `def` | [Ring.Perfection](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/ring-perfection--1253c9c241506b1a561747c4.md) | 59 | `declaration-track:1253c9c241506b1a561747c4b9b82605da7d8cb4f2d1f56348278b7292f14ff9` |
| 5 | `instance` | [commSemiring](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/commsemiring--67f4e752da3c853dc6c890f5.md) | 66 | `declaration-track:67f4e752da3c853dc6c890f55ab67dbf840d4f1bad513fe42bb922f5566056ab` |
| 6 | `instance` | [charP](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/charp--5362a2edd7f87a095c750f8b.md) | 69 | `declaration-track:5362a2edd7f87a095c750f8b76a842a831d7bfd7b8bf7d467525d9b005a7850d` |
| 7 | `instance` | [ring](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/ring--41cf0b1b3a511dcd71cd2bc3.md) | 72 | `declaration-track:41cf0b1b3a511dcd71cd2bc3939eac2fc3748815ff5ea288bac57b82f4fbbacf` |
| 8 | `instance` | [commRing](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/commring--e01902019438f140aaa83881.md) | 75 | `declaration-track:e01902019438f140aaa838814283f9ba7c2ab1c51f51d8302d2338f54cea8de5` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/instance--e643bdc96065f11c02a9735e.md) | 78 | `declaration-track:e643bdc96065f11c02a9735e19bd5bc5bb394744d0752c553bdf011bd8ec3226` |
| 10 | `def` | [coeff](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff--db20d6deb7e8229943aa7b27.md) | 81 | `declaration-track:db20d6deb7e8229943aa7b2711446d3c98549acaddfb644923e865953f6c34b6` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/ext--179adaa4400144d46b4d0f68.md) | 91 | `result-track:179adaa4400144d46b4d0f685533366b0a4290b7d2599d0c42b7fd8c4f490c7b` |
| 12 | `def` | [pthRoot](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/pthroot--fe75bbb17d1aa199098af0ec.md) | 97 | `declaration-track:fe75bbb17d1aa199098af0ecb922de62c53b421f34521e94bfbd2131f09aaf2f` |
| 13 | `theorem` | [coeff_mk](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-mk--af3f4a8541e73aa4a9d30020.md) | 107 | `result-track:af3f4a8541e73aa4a9d3002087fe7b031f2c1202bfdf2f1f89819de53b6a8686` |
| 14 | `theorem` | [coeff_pthRoot](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-pthroot--c6972573f6b23523fe777798.md) | 109 | `result-track:c6972573f6b23523fe77779874acebca48b6f8ad4055d9b5d259f824d1a0f947` |
| 15 | `theorem` | [coeff_pow_p](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-pow-p--ef4a32a4814e6195293c43ca.md) | 112 | `result-track:ef4a32a4814e6195293c43ca8655206c5781392c53d0e4bcc70878ceddd1887f` |
| 16 | `theorem` | [coeff_pow_p'](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-pow-p--8c82b0932fa0f2e9d301fb18.md) | 115 | `result-track:8c82b0932fa0f2e9d301fb1800379b39f8be81981ef333a270362941137e1fef` |
| 17 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-frobenius--0481c3917b6e50d3c41cdc46.md) | 118 | `result-track:0481c3917b6e50d3c41cdc46b897083aa518d34ac16363f321a576cdee7767b7` |
| 18 | `theorem` | [coeff_iterate_frobenius](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-iterate-frobenius--892d7dbdc3798fab31732fd0.md) | 122 | `result-track:892d7dbdc3798fab31732fd061a1d17f4aa67a97c0fc054d0bb55a61fa30acfc` |
| 19 | `theorem` | [coeff_iterate_frobenius'](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-iterate-frobenius--ce97c399ec87ae7f6014d544.md) | 127 | `result-track:ce97c399ec87ae7f6014d5445f09f0d86216c26578493b5ad6bc2cb5c5cb5188` |
| 20 | `theorem` | [pthRoot_frobenius](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/pthroot-frobenius--b61b2466d9b985fd4e265b36.md) | 131 | `result-track:b61b2466d9b985fd4e265b3602ddab7f85ff158bdec0b943d1313d8c53c4db2d` |
| 21 | `theorem` | [frobenius_pthRoot](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/frobenius-pthroot--0fcc9244af62f54e7fc529b9.md) | 135 | `result-track:0fcc9244af62f54e7fc529b9f77020dc4c951402649df0c4d5e43cbe1f79f75a` |
| 22 | `theorem` | [coeff_add_ne_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-add-ne-zero--45f101e0e63cfe3b03f2b1e1.md) | 141 | `result-track:45f101e0e63cfe3b03f2b1e1ed0a6bdbd86d0ace7cb5c13fce096217604d3851` |
| 23 | `theorem` | [coeff_ne_zero_of_le](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-ne-zero-of-le--bdaa09feacc1ea3dee9fa9aa.md) | 147 | `result-track:bdaa09feacc1ea3dee9fa9aa97f73c2fa1412141ba8a30c09a41e7c6896a4e7f` |
| 24 | `instance` | [perfectRing](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/perfectring--e106403134a8212481e9e00b.md) | 154 | `declaration-track:e106403134a8212481e9e00be49b39021c2c0a8b161b4062a0ec3628dd76326f` |
| 25 | `def` | [lift](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/lift--5efc9c89bf8c37c2c1f458c3.md) | 163 | `declaration-track:5efc9c89bf8c37c2c1f458c3aee364f01289e6d656bd5ded673a80110ed9cccb` |
| 26 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/hom-ext--de4558a1f6e775d72cab4fb0.md) | 182 | `result-track:de4558a1f6e775d72cab4fb040248211bc4e6054c9c73df7b9dae871c4c3b3c2` |
| 27 | `def` | [map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/map--56dce3ff1b49dd03bb8c95e4.md) | 191 | `declaration-track:56dce3ff1b49dd03bb8c95e43f83db7028d98337f4c607844c539417646ace79` |
| 28 | `theorem` | [coeff_map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-map--f002549536a407c033570f68.md) | 198 | `result-track:f002549536a407c033570f685d20bf51c0c06e5e72edfa4163e486c7b88cc05c` |
| 29 | `structure` | [PerfectionMap](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/perfectionmap--a8713dbed8757e210471358e.md) | 205 | `declaration-track:a8713dbed8757e210471358e9ab6f416b3e10b9cc1a632840ecd709a57ba7a33` |
| 30 | `theorem` | [mk'](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/mk--19c5022fd3fc23cc241e4717.md) | 220 | `result-track:19c5022fd3fc23cc241e47174b18aa29a1f3cea6dc806343c13f03175e9743d0` |
| 31 | `theorem` | [of](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/of--02b38d42797ed425b9acb2a2.md) | 235 | `result-track:02b38d42797ed425b9acb2a2c62f5ab6132b3828642273216e204a853ef33bd9` |
| 32 | `theorem` | [id](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/id--174e0ae98ce7222187378343.md) | 239 | `result-track:174e0ae98ce7222187378343d38f1de43378c726d57dc4f47ac4afd99fab9083` |
| 33 | `def` | [equiv](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/equiv--6211427cb7def1dc258bb2a2.md) | 250 | `declaration-track:6211427cb7def1dc258bb2a257da83be1d630fd392501cac1fca1726a8d2ab42` |
| 34 | `theorem` | [equiv_apply](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/equiv-apply--357d9bb0505c8f5c7b26ad2a.md) | 256 | `result-track:357d9bb0505c8f5c7b26ad2a7f28cc1caca348c74e4f8a3bdff7c75377f83e38` |
| 35 | `theorem` | [comp_equiv](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/comp-equiv--8ace889791f4e5a323964186.md) | 259 | `result-track:8ace889791f4e5a323964186a28ec8b845c9f84c396db2e277fb73897cdfdef0` |
| 36 | `theorem` | [comp_equiv'](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/comp-equiv--962f1f95ffbc67fb83e6bcec.md) | 262 | `result-track:962f1f95ffbc67fb83e6bcecb6bd49a76eaf2a0368f042a0c715276101a43c22` |
| 37 | `theorem` | [comp_symm_equiv](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/comp-symm-equiv--083b52b890dd858457ff08df.md) | 266 | `result-track:083b52b890dd858457ff08df11676d5dc2acbcabed29b5a3d07bd7ec5f62a40a` |
| 38 | `theorem` | [comp_symm_equiv'](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/comp-symm-equiv--cc2c0caf4458c2b0fd8382f0.md) | 270 | `result-track:cc2c0caf4458c2b0fd8382f048f9f41c543833c01ea9bdd56cf8833c76eaaf30` |
| 39 | `def` | [lift](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/lift--d1fa29cf9a6fc8a99f51382b.md) | 280 | `declaration-track:d1fa29cf9a6fc8a99f51382ba204a742f9bec1c496ec5cadf26b6d2f3048409e` |
| 40 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/hom-ext--4e0fea94becfca39b410d14f.md) | 295 | `result-track:4e0fea94becfca39b410d14f08253d7c44e9d0a643818707a8874575c0c10dd6` |
| 41 | `def` | [map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/map--62d3d29365fed77fa75e9a11.md) | 306 | `declaration-track:62d3d29365fed77fa75e9a119296a4641805679625643f60e3783f169fa88f97` |
| 42 | `theorem` | [comp_map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/comp-map--54b42f95149c5d6c1032ff3b.md) | 310 | `result-track:54b42f95149c5d6c1032ff3b66c1953721f8ab466a91ef244c25723c4a5de941` |
| 43 | `theorem` | [map_map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/map-map--f4dbef89165b157b925c7560.md) | 314 | `result-track:f4dbef89165b157b925c7560ff3da1ae18e4a72ab1d0f1b95abe090464401110` |
| 44 | `theorem` | [map_eq_map](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/map-eq-map--d2402774f7042701f427d821.md) | 318 | `result-track:d2402774f7042701f427d821a0340900e19d90c0db16d9385e1e1816e488f9fd` |
| 45 | `def` | [ModP](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/modp--aeee19c31a4159390e233f64.md) | 328 | `declaration-track:aeee19c31a4159390e233f647021ee1efd0567b83645fcf9a6554e67b84282f5` |
| 46 | `instance` | [commRing](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/commring--7e1fcba89990c866437959b5.md) | 333 | `declaration-track:7e1fcba89990c866437959b57db179b802418d29ae3514e12dde23d06d0c5e29` |
| 47 | `instance` | [charP](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/charp--b95dd1eda67d67ed5258412c.md) | 336 | `declaration-track:b95dd1eda67d67ed5258412c0aa88fb43c8d644064cc01c5759d89eed293c441` |
| 48 | `instance` | [nontrivial](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/nontrivial--6696c1fb5fbdab5ae4c49901.md) | 339 | `declaration-track:6696c1fb5fbdab5ae4c4990180b2e78ef6136aa0b851e704516fa3f85295c510` |
| 49 | `def` | [preVal](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval--6e2c3a90e2c3aa231e3c4ccc.md) | 360 | `declaration-track:6e2c3a90e2c3aa231e3c4ccc309d5e4686311bb5ee147039f06a11dce93a156e` |
| 50 | `theorem` | [preVal_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval-zero--a070946d0914f1e58e4dba30.md) | 365 | `result-track:a070946d0914f1e58e4dba30d5e4dc2f62943d2213691064ca446a82e9c85665` |
| 51 | `theorem` | [preVal_mk](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval-mk--3081c99d252d7ffa599cc244.md) | 370 | `result-track:3081c99d252d7ffa599cc2445a20355d7f7aa7a8cc999f67de76ce62331b1a36` |
| 52 | `theorem` | [preVal_mul](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval-mul--0252fb967818deaec12a6c6d.md) | 379 | `result-track:0252fb967818deaec12a6c6d755d97b7a7e022ad0d8c0d617eb223f88b872418` |
| 53 | `theorem` | [preVal_add](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval-add--31ea0109d10b1dd4b874b3a6.md) | 388 | `result-track:31ea0109d10b1dd4b874b3a68089055248dea7df99905e8504de5d2d046fe4d9` |
| 54 | `theorem` | [v_p_lt_preVal](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/v-p-lt-preval--08e58502c0f09ea12733f055.md) | 401 | `result-track:08e58502c0f09ea12733f055e24cfd36dbc7309db0293c498b51c7ed080006d3` |
| 55 | `theorem` | [preVal_eq_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/preval-eq-zero--30d67a181c26d588d24158cf.md) | 408 | `result-track:30d67a181c26d588d24158cf80939004de68770f808c84bfe4a88ac29c54e3b5` |
| 56 | `theorem` | [v_p_lt_val](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/v-p-lt-val--db157bb1a869912897dec734.md) | 415 | `result-track:db157bb1a869912897dec73404db01597d349741b4ce2e6531efb13e99f804d8` |
| 57 | `theorem` | [mul_ne_zero_of_pow_p_ne_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/mul-ne-zero-of-pow-p-ne-zero--c0bd686a976dde3878aa6844.md) | 424 | `result-track:c0bd686a976dde3878aa68444e02aad254d7ade9c111531e1f5d1183e1c2c3f6` |
| 58 | `def` | [PreTilt](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/pretilt--2a23a59739849a6151c849a3.md) | 448 | `declaration-track:2a23a59739849a6151c849a3e4165d6c0d8fbd2abe35bb3ab02aa017ba5008e7` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/instance--9e55d768a162ad390f358484.md) | 455 | `declaration-track:9e55d768a162ad390f358484d7cb48eabb9e6ed6c0efbc62683d3022666e1d71` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/instance--9d9817dd90f8163ea2403a46.md) | 458 | `declaration-track:9d9817dd90f8163ea2403a467fdf6a68e38dbfed7852c3ee75494836687537b0` |
| 61 | `def` | [valAux](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux--42457ccda3d634f280301de9.md) | 469 | `declaration-track:42457ccda3d634f280301de9f8acb40f41af8d4587215efb2395e8bc6ac6ce9e` |
| 62 | `theorem` | [coeff_nat_find_add_ne_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/coeff-nat-find-add-ne-zero--f3bbd0183cf27c8fdbf05087.md) | 477 | `result-track:f3bbd0183cf27c8fdbf05087a95318b66a685898fd867d585b8ea879ef04f6f6` |
| 63 | `theorem` | [valAux_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux-zero--60d26eeb9e12f35b1f724731.md) | 481 | `result-track:60d26eeb9e12f35b1f72473113b68f8792e1ef27f99a82b9a65bb026fe77559b` |
| 64 | `theorem` | [valAux_eq](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux-eq--dd4ec31bf756d04989a6056e.md) | 486 | `result-track:dd4ec31bf756d04989a6056e558526d8540ed1b528274f1cdddaad40cfaa244f` |
| 65 | `theorem` | [valAux_one](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux-one--8978a44d8386f061d176fec1.md) | 504 | `result-track:8978a44d8386f061d176fec136e0b78224804bed7f968b34edbc84af6be81a6c` |
| 66 | `theorem` | [valAux_mul](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux-mul--7f1fdeea19dc092b86b72e2b.md) | 511 | `result-track:7f1fdeea19dc092b86b72e2bf650ca95c5f51306ce3afd1912bf6011befbc05b` |
| 67 | `theorem` | [valAux_add](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/valaux-add--017ebb139f23a84492bf22e9.md) | 530 | `result-track:017ebb139f23a84492bf22e9975f6ebaebd39ba88082045615fc7ebbcc668009` |
| 68 | `def` | [val](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/val--8a904a3a5db2a842f0521226.md) | 557 | `declaration-track:8a904a3a5db2a842f0521226ffa05c28c9948bcdb2cbd3555241aa6299291bc7` |
| 69 | `theorem` | [map_eq_zero](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/map-eq-zero--7cf248e6e4f5867356b8fc20.md) | 566 | `result-track:7cf248e6e4f5867356b8fc20bcf7a6f65e4f4f35f4525286d252323f5a0185a2` |
| 70 | `theorem` | [isDomain](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/isdomain--ab5007e603491ab3bc1fd840.md) | 577 | `result-track:ab5007e603491ab3bc1fd8407f6e3cd6869bf6a59a32b2d468f7ea0f3e6cdb37` |
| 71 | `def` | [Tilt](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/tilt--a63bc09cf841292159b5df56.md) | 591 | `declaration-track:a63bc09cf841292159b5df566cbd95c19d658200331b4ff45ec3c141f52b5844` |
| 72 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantf5746eab3cb265bee8e260621ed3d8f67f7d7b78e7b26ea21d24b61e1a9ebb9e.lean/declarations/instance--077cd1042cd0fe66e854ac5a.md) | 597 | `declaration-track:077cd1042cd0fe66e854ac5ad8b4a13b79c7868fcd73d0ed390af291c39a6bc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
