# Verification target: GRWTSK.NumberTheory.Basic.Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c10ead69e7f18ef5dd76f78f101c0f65acc6136c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c10ead69e7f18ef5dd76f78f101c0f65acc6136c`.

Source path: `GRWTSK/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_criterion_units](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/euler-criterion-units--b5a9f3ced8ab78d3261b225f.md) | 46 | `result-track:b5a9f3ced8ab78d3261b225f4f0396b0b0d8a026404c13600a47184341cd0f43` |
| 2 | `theorem` | [euler_criterion](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/euler-criterion--44c1338e20eae219eda8114e.md) | 58 | `result-track:44c1338e20eae219eda8114e8f4f2a3be0153c02525614b4d7fca0c262d5de1c` |
| 3 | `theorem` | [pow_div_two_eq_neg_one_or_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/pow-div-two-eq-neg-one-or-one--08c475ca0a11f2163f099fb5.md) | 70 | `result-track:08c475ca0a11f2163f099fb500eb413ff161b3b7cda128e8ca93cc25a8a27795` |
| 4 | `def` | [legendreSym](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/legendresym--e33ca54062a7499f78387a63.md) | 104 | `declaration-track:e33ca54062a7499f78387a630c31e2a1928e9e30fcc823237794cb178161700b` |
| 5 | `theorem` | [eq_pow](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-pow--afbd2f3b495aae848d866cdb.md) | 110 | `result-track:afbd2f3b495aae848d866cdbc78f66a49791ad311678047708375c4816b047fa` |
| 6 | `theorem` | [eq_one_or_neg_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-one-or-neg-one--4c4813fd189626c40b57ff18.md) | 129 | `result-track:4c4813fd189626c40b57ff18d523f1b37544ec6d43f743bfc605d388f0e396d5` |
| 7 | `theorem` | [eq_neg_one_iff_not_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-neg-one-iff-not-one--cb841fe00d2d0bf6c6f41105.md) | 133 | `result-track:cb841fe00d2d0bf6c6f411058d124a77bc2aa7e7f1895e08136d28cf31dfff2c` |
| 8 | `theorem` | [eq_zero_iff](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-zero-iff--ba49f1bc72962407a03d5753.md) | 138 | `result-track:ba49f1bc72962407a03d5753346afa36565e63194d661f0ebff929ab0915af8b` |
| 9 | `theorem` | [at_zero](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/at-zero--c98a490ea33932e92333fca4.md) | 142 | `result-track:c98a490ea33932e92333fca4d219b3c028076e848d1b11ed4ae08e6bc80f5289` |
| 10 | `theorem` | [at_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/at-one--350f62ae398590201d4fe48c.md) | 145 | `result-track:350f62ae398590201d4fe48cc6b3984d3ed85e8ca70cf1a81a9f30f43401e97b` |
| 11 | `theorem` | [mul](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/mul--4c9ff5fa55879c69eedea4b4.md) | 148 | `result-track:4c9ff5fa55879c69eedea4b428c0545dfb046defd5c2cf2bcd098220162425b8` |
| 12 | `def` | [hom](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/hom--bcd8c538f82ebd0e379bc3e7.md) | 153 | `declaration-track:bcd8c538f82ebd0e379bc3e79a3d30c3f8c518d65d56006eca94d3ac3e770289` |
| 13 | `theorem` | [sq_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/sq-one--2858558e592619b4fff08505.md) | 160 | `result-track:2858558e592619b4fff0850527b9485622b9bc666389dd756bd8ca23a70bef8c` |
| 14 | `theorem` | [sq_one'](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/sq-one--39047849a6acbdefcb25a323.md) | 164 | `result-track:39047849a6acbdefcb25a323009c5e80e8a5e5c28354e9c86c91266517d09150` |
| 15 | `theorem` | [mod](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/mod--204cdc3d1a1c421f012e1a6d.md) | 170 | `result-track:204cdc3d1a1c421f012e1a6db0388a083e6d68908677d28fef64da6a54eb0740` |
| 16 | `theorem` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-one-iff--b652c64f670b0d2d182259f1.md) | 174 | `result-track:b652c64f670b0d2d182259f1c09c741ad4c30bbd815cdb8ee4b2763a0048b869` |
| 17 | `theorem` | [eq_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-one-iff--e72b8b9e0be57a194a495032.md) | 177 | `result-track:e72b8b9e0be57a194a49503259c29d83dae8efd7b7fc65449503e616d25b1cba` |
| 18 | `theorem` | [eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-neg-one-iff--395c182ae748b8f50f877ffc.md) | 184 | `result-track:395c182ae748b8f50f877ffc294287026966d7133ba7415d72eb1fa750c26b51` |
| 19 | `theorem` | [eq_neg_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-neg-one-iff--f3240220e44bb2217819fa21.md) | 187 | `result-track:f3240220e44bb2217819fa21ef9442e255c4c333a5482fe51759f7f8cb5b8b92` |
| 20 | `theorem` | [card_sqrts](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/card-sqrts--c8bac71d3d6a1f3cd9d709ea.md) | 191 | `result-track:c8bac71d3d6a1f3cd9d709ea40804740d274954f84e79ff24d6843fec7653378` |
| 21 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--25fda7130ee740dae8006e75.md) | 210 | `result-track:25fda7130ee740dae8006e75f700fe1b2a62ef6f564cc9d52afd173f5edcc0fe` |
| 22 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero'](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--a113d0e1ac6c50848974553b.md) | 220 | `result-track:a113d0e1ac6c50848974553ba2901e058e773d666371c55e8c375d9bf57a612b` |
| 23 | `theorem` | [eq_zero_mod_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/eq-zero-mod-of-eq-neg-one--2d250a6ffabe5fc2895a7a93.md) | 230 | `result-track:2d250a6ffabe5fc2895a7a93b66a71761ace92d761ac5ca74235938c39da54bb` |
| 24 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/prime-dvd-of-eq-neg-one--59c62014fb074bad4ef69fd4.md) | 244 | `result-track:59c62014fb074bad4ef69fd43e0834fa76fbf86e8c925a2505ea1070a06124c3` |
| 25 | `theorem` | [legendreSym.at_neg_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/legendresym-at-neg-one--f09c55b045a33fcc49803135.md) | 268 | `result-track:f09c55b045a33fcc49803135d0b1a8f1ae8b9ea972b3b51c3cde7a78ee2cd593` |
| 26 | `theorem` | [exists_sq_eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/exists-sq-eq-neg-one-iff--3091e62c2651b8d6d27eee0d.md) | 275 | `result-track:3091e62c2651b8d6d27eee0dd17605257a5f958cda3f5dc76b0c98324198288d` |
| 27 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/mod-four-ne-three-of-sq-eq-neg-one--763ced300ee9724df6e5ec9f.md) | 278 | `result-track:763ced300ee9724df6e5ec9fddb2a18b7ca2978cfc05d29a65404cb1edb7e6fe` |
| 28 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq'](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--19e1aa949eaaae688a8127aa.md) | 282 | `result-track:19e1aa949eaaae688a8127aa6aef5f8cd10260047ad745d7708536ef8b3b0fbd` |
| 29 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq](../../../../mathematics/NumberTheory/Basic/Variant8952e6c5073d30e30bc31d320d8dcb84c9e51b977a48366118247eae5db769e4.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--cf578b9f695dd9b716130180.md) | 289 | `result-track:cf578b9f695dd9b716130180b493feead663c086be6fc095bfd74ed024fa16fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
