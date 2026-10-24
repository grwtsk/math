# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3530eaf1ad79b49ef54e0df6ab41a9800ba41a38",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3530eaf1ad79b49ef54e0df6ab41a9800ba41a38`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Coeff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc--88c592c77845889ee12c0c95.md) | 45 | `declaration-track:88c592c77845889ee12c0c95866826d5261eed7021e18bcbc6d63a7801d94d9a` |
| 2 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/coeff-trunc--0c736c32cb32e6b6651e23b6.md) | 48 | `result-track:0c736c32cb32e6b6651e23b689b1b4bcf7626b596ebf2eca6256447b31b6a474` |
| 3 | `theorem` | [trunc_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-zero--067cfd911d40f7bb843530f5.md) | 53 | `result-track:067cfd911d40f7bb843530f527e31a31e4906dab55a273864390c49d31ce6fbb` |
| 4 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-one--ff0c7f64e1a8bcd76553b7ff.md) | 59 | `result-track:ff0c7f64e1a8bcd76553b7ff380d81bfe014c77bb8b538fbb5a6841691ff3a18` |
| 5 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-c--78bea19b23437f0f5203977e.md) | 69 | `result-track:78bea19b23437f0f5203977e39ee9ac9ccfadf188dc54c2d6d8c4089f27d4360` |
| 6 | `theorem` | [trunc_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-add--322b0b82503439d2acadc702.md) | 75 | `result-track:322b0b82503439d2acadc702b01a3c06a311fb8573e3814ebd270fb2df807978` |
| 7 | `theorem` | [trunc_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-succ--a13f549d046bf6cd7bb16a6e.md) | 82 | `result-track:a13f549d046bf6cd7bb16a6ebd1155b1b3dfb419116bcf94f6adc8b50c02632e` |
| 8 | `theorem` | [natDegree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/natdegree-trunc-lt--789cefdab077903a0a9bad02.md) | 86 | `result-track:789cefdab077903a0a9bad02019e6f675923b1b80d168e59e57b461c64a53049` |
| 9 | `lemma` | [trunc_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-zero--77a0e4ec94a81bd2e6a761c9.md) | 95 | `result-track:77a0e4ec94a81bd2e6a761c9a4cd56b55058a6556dfbcd0c939e507433446bb0` |
| 10 | `theorem` | [degree_trunc_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/degree-trunc-lt--4d6ccff4039c213920a3322b.md) | 97 | `result-track:4d6ccff4039c213920a3322b93a4e7cf45608a5a37a5826b29a91b616cdd5444` |
| 11 | `theorem` | [eval₂_trunc_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/eval-trunc-eq-sum-range--1555c6027735ce1bdd403392.md) | 106 | `result-track:1555c6027735ce1bdd40339251bb5c5b485cbb2c0be7f2918c365175f9b598c0` |
| 12 | `theorem` | [trunc_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-x--bf64578958dc51473fcbcad5.md) | 120 | `result-track:bf64578958dc51473fcbcad5e63dcadfc2adc0c0d1f043f6bbb70f7634cb813d` |
| 13 | `lemma` | [trunc_X_of](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-x-of--1d4fe885ab2e468c145b4997.md) | 132 | `result-track:1d4fe885ab2e468c145b4997b758f2b9d05996e3795f66edb36a5236f6568f02` |
| 14 | `lemma` | [trunc_one_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-one-left--973063ea571e8ae926d5d72e.md) | 141 | `result-track:973063ea571e8ae926d5d72e0f22b4b87be2f00f4caef8ac38e9ed3c9c283cf5` |
| 15 | `lemma` | [trunc_one_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-one-x--e5edde1ece7edbe3c3803fb9.md) | 144 | `result-track:e5edde1ece7edbe3c3803fb9ed98f75d939a4003395d6df6b7506a0ca464aca9` |
| 16 | `lemma` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-c-mul--162d7097438e2d0851f416d9.md) | 147 | `result-track:162d7097438e2d0851f416d9a198ad79f5f82a166bbca5ef59291b66e5be1801` |
| 17 | `lemma` | [trunc_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-mul-c--b46741bbbdc71290d0ba02de.md) | 151 | `result-track:b46741bbbdc71290d0ba02dee47f1be1700438881dac79d204d5fe4df617ce4f` |
| 18 | `lemma` | [eq_shift_mul_X_pow_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/eq-shift-mul-x-pow-add-trunc--aad2bac11dc030f53061c160.md) | 155 | `result-track:aad2bac11dc030f53061c1603cee95b6ae4f06c60a68414b2ac95f80f6e6958a` |
| 19 | `lemma` | [eq_X_pow_mul_shift_add_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/eq-x-pow-mul-shift-add-trunc--4f2a8d6cca6935007f26f2fc.md) | 163 | `result-track:4f2a8d6cca6935007f26f2fc2b185d1d694635083ea061c30b03563215cc0ac0` |
| 20 | `theorem` | [trunc_trunc_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-trunc-of-le--99a5c10bf49761d38158694f.md) | 179 | `result-track:99a5c10bf49761d38158694fadd8458ce52bb2572d09c2b91a24c0d2af6702ed` |
| 21 | `theorem` | [trunc_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-trunc--b725a96079fd627a2ae94092.md) | 187 | `result-track:b725a96079fd627a2ae94092dc74ecb7ccef9a2309ae6177eb0bb77a2172334c` |
| 22 | `theorem` | [trunc_trunc_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-trunc-mul--840a1f85697e8a2445ef69ad.md) | 190 | `result-track:840a1f85697e8a2445ef69ad8d67b8aadf41d4361f4da76851a37b14d68bddc3` |
| 23 | `theorem` | [trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-mul-trunc--1fe4edb0c070d4f640fdb8db.md) | 201 | `result-track:1fe4edb0c070d4f640fdb8dbecdf3443fdd3f1396470c0e6b3ddde5997149991` |
| 24 | `theorem` | [trunc_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-trunc-mul-trunc--56a80fca98b8f15be28b00be.md) | 205 | `result-track:56a80fca98b8f15be28b00be23a5b90b875dbeadc18f6974b9532935d91754e0` |
| 25 | `theorem` | [trunc_trunc_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-trunc-pow--041dd2bd7091246788e9eb8f.md) | 209 | `result-track:041dd2bd7091246788e9eb8fbee63cc644cdc079d5b2fb9fe044974e9827ae06` |
| 26 | `theorem` | [trunc_coe_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-coe-eq-self--451564468b0be0cb5067e058.md) | 218 | `result-track:451564468b0be0cb5067e058a579df57da4f664beb065b1a15d35ae7d7c1f46d` |
| 27 | `theorem` | [coeff_coe_trunc_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/coeff-coe-trunc-of-lt--3d82c3a1791ec1ad694f3a47.md) | 231 | `result-track:3d82c3a1791ec1ad694f3a47e55d7b0d6bf265b52dc2540eb80977444a984b79` |
| 28 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--23b3c6e03ffe69741961d5ba.md) | 237 | `result-track:23b3c6e03ffe69741961d5ba7673447d3a0ad208966cad05c6c507a77805e66f` |
| 29 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/coeff-mul-eq-coeff-trunc-mul-trunc--7d39d9b3e7e2cef2aea7ec21.md) | 243 | `result-track:7d39d9b3e7e2cef2aea7ec21a19cbbfc846739349772591f0f83c36b803a5d65` |
| 30 | `lemma` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variantc2d5949bc7dd71c3da4696d65d7308614d47c9c40f826e739174c377775e5846.lean/declarations/trunc-map--6cd37e5974c35db08b2f709f.md) | 252 | `result-track:6cd37e5974c35db08b2f709f988139a0fdcec5f7b9f30606a23d2d56ecda2c8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
