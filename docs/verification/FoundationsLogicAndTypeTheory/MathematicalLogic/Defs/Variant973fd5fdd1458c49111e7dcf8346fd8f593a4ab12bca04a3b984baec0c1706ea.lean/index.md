# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46cc1a7ec8f56dcefad2f0f1d0069f4558dba9f1",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46cc1a7ec8f56dcefad2f0f1d0069f4558dba9f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNilpotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent--7f557c47f0f9bd8f96087a7d.md) | 38 | `declaration-track:7f557c47f0f9bd8f96087a7d47441cdb147400eacf5b30c0a950971a2396406d` |
| 2 | `theorem` | [IsNilpotent.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-mk--e3ca6c8e17348ad43bb8c284.md) | 41 | `result-track:e3ca6c8e17348ad43bb8c284801e807454f280782db4c4ec0caee52c6c9641a5` |
| 3 | `lemma` | [isNilpotent_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-of-subsingleton--9ad2bca8a1495a1bf82a74bc.md) | 44 | `result-track:9ad2bca8a1495a1bf82a74bc9823446836da0971f4d0c45e095ca8df0112cb01` |
| 4 | `theorem` | [IsNilpotent.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-zero--6462817b3ba570a5c807230a.md) | 47 | `result-track:6462817b3ba570a5c807230a678d28dca1864f66e66b712c9e16c9a9b2c24ba7` |
| 5 | `theorem` | [not_isNilpotent_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/not-isnilpotent-one--96d296dedfd4c3da14d3ab55.md) | 50 | `result-track:96d296dedfd4c3da14d3ab55016761cb29bc07941a515d4370a9cf8a21d9fb58` |
| 6 | `lemma` | [IsNilpotent.pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-pow-succ--3abd211997a8dc74d51129ab.md) | 53 | `result-track:3abd211997a8dc74d51129ab4d8c34b8e8f0921e32d2a65edddb46300c2518b6` |
| 7 | `theorem` | [IsNilpotent.of_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-of-pow--13c08b201303a6983110fe32.md) | 59 | `result-track:13c08b201303a6983110fe32d20774b19515a969ff3b632960f36ce1a7cf3ae0` |
| 8 | `lemma` | [IsNilpotent.pow_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-pow-of-pos--80bfc9ab15e32f7f673b7b30.md) | 65 | `result-track:80bfc9ab15e32f7f673b7b30e986219641a4dc2d500678842c4223501dc147fa` |
| 9 | `lemma` | [IsNilpotent.pow_iff_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-pow-iff-pos--e9a4ca47038322406f54d628.md) | 72 | `result-track:e9a4ca47038322406f54d6286575ad97401db5bf65436e969f60e87936d35fbb` |
| 10 | `theorem` | [IsNilpotent.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-map--d76c83463e26ca816a103c72.md) | 76 | `result-track:d76c83463e26ca816a103c726922b80f47c62364a5e442281990bb1bcf13f48d` |
| 11 | `lemma` | [IsNilpotent.map_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-map-iff--c5da3ef0d7d8818525947df3.md) | 82 | `result-track:c5da3ef0d7d8818525947df347c85bed4a07109b448ca3bc042ec93e864ba4f8` |
| 12 | `theorem` | [IsUnit.isNilpotent_mul_unit_of_commute_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isunit-isnilpotent-mul-unit-of-commute-iff--a109ac44937d418ff158ebb7.md) | 87 | `result-track:a109ac44937d418ff158ebb730c2f2168948aa580d9a5acb147864e66d5d3578` |
| 13 | `theorem` | [IsUnit.isNilpotent_unit_mul_of_commute_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isunit-isnilpotent-unit-mul-of-commute-iff--f449296b6840b1685365aa47.md) | 92 | `result-track:f449296b6840b1685365aa47425d55615fa52dea564d223799c457ffde63662a` |
| 14 | `def` | [nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/nilpotencyclass--abbd07f84ed832066c957104.md) | 106 | `declaration-track:abbd07f84ed832066c95710474f9855483a0d0f67a34335cbf048d3526a37f28` |
| 15 | `lemma` | [nilpotencyClass_eq_zero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/nilpotencyclass-eq-zero-of-subsingleton--f7202c967529b0332db6fbdf.md) | 108 | `result-track:f7202c967529b0332db6fbdf7a7840f4b5484bbdb7ba85c82a26ddaef57ad146` |
| 16 | `lemma` | [isNilpotent_of_pos_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-of-pos-nilpotencyclass--1bfeeec44cded5c4ca0660ab.md) | 114 | `result-track:1bfeeec44cded5c4ca0660aba065602c126aabe6b2e6effa962fab680950c74b` |
| 17 | `lemma` | [pow_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-nilpotencyclass--230c6310d87a949703af1353.md) | 122 | `result-track:230c6310d87a949703af1353e02621071002dd30ed8a8940812bac258c5f0a71` |
| 18 | `lemma` | [nilpotencyClass_eq_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/nilpotencyclass-eq-succ-iff--b93797698521c171361096d2.md) | 131 | `result-track:b93797698521c171361096d2dea263047e5b0100fc259169da6e1fc3c829daf8` |
| 19 | `lemma` | [nilpotencyClass_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/nilpotencyclass-zero--e6929175db59a6725b7b51db.md) | 137 | `result-track:e6929175db59a6725b7b51db4ce24214c95190b2daea43b8c2e7f2bf6eea98e0` |
| 20 | `lemma` | [pos_nilpotencyClass_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pos-nilpotencyclass-iff--9645a4ce25a894dab495e647.md) | 141 | `result-track:9645a4ce25a894dab495e64764600a97be0c439fd23772c89d383a7751861541` |
| 21 | `lemma` | [pow_pred_nilpotencyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-pred-nilpotencyclass--0f5b9d4e5ebaf46bc28fba4d.md) | 148 | `result-track:0f5b9d4e5ebaf46bc28fba4d3dd848da4907e5e33a99481d0d602c4b013c9c2c` |
| 22 | `lemma` | [eq_zero_of_nilpotencyClass_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/eq-zero-of-nilpotencyclass-eq-one--c13f8f6211e88bd4089ace28.md) | 152 | `result-track:c13f8f6211e88bd4089ace2886bf517092d5616b587e9ea0f295b67a23187659` |
| 23 | `lemma` | [nilpotencyClass_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/nilpotencyclass-eq-one--cd38b54fdad3724d1a4f7645.md) | 157 | `result-track:cd38b54fdad3724d1a4f7645482d8c617fe65a18c0e36205a73fc7398507c6c1` |
| 24 | `class` | [IsReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isreduced--1fc3e2c00d8e76172675308c.md) | 167 | `declaration-track:1fc3e2c00d8e76172675308cb6e733e0f78914f5cdf3dd1de2f440196cb405d4` |
| 25 | `theorem` | [pow_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-eq-zero--f260060d8992d7f87c37a9c4.md) | 173 | `result-track:f260060d8992d7f87c37a9c4d9cb879e1393908f31a3f256756e56435adc01f9` |
| 26 | `theorem` | [pow_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-eq-zero-iff--aacc33ee5092e5a98e2aab97.md) | 177 | `result-track:aacc33ee5092e5a98e2aab976dc43794484d7f3a698b64c44e44dd5668564f25` |
| 27 | `theorem` | [pow_ne_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-ne-zero-iff--e5971f43533ef9ef86f2ecc1.md) | 180 | `result-track:e5971f43533ef9ef86f2ecc138bbfda732c1ae092a317c3d9a9bad024d9dcc26` |
| 28 | `theorem` | [pow_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-ne-zero--8af2e445bee50d36c35a3610.md) | 183 | `result-track:8af2e445bee50d36c35a3610beff14e1f8ee7657d2c5811cee4deee5aeecaf64` |
| 29 | `theorem` | [pow_eq_zero_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/pow-eq-zero-iff--45f4c1f0d79337f85404c991.md) | 188 | `result-track:45f4c1f0d79337f85404c9917b83f373163489fa7ce2d9155987f272d4c6238f` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/instance--8ea4e92e2bb6c4d44030a4a3.md) | 194 | `declaration-track:8ea4e92e2bb6c4d44030a4a3b4d740c995de2840212a7fdf05447880ee7b611a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/instance--2a970e863a521fc65c36f6cc.md) | 198 | `declaration-track:2a970e863a521fc65c36f6cc50a6c247afdd79f99ed4da78ee5ffcc4f39a763b` |
| 32 | `theorem` | [IsNilpotent.eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-eq-zero--555ae82f5f17bafdb269ea94.md) | 202 | `result-track:555ae82f5f17bafdb269ea941bc7bfb3b1e7547bdf87246c1eb815ce09a5a96a` |
| 33 | `theorem` | [isNilpotent_iff_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-iff-eq-zero--19fca874c88fd2f80f11b3aa.md) | 206 | `result-track:19fca874c88fd2f80f11b3aaa74b3a7f05ab37b2ba211a74b44eff35517672b4` |
| 34 | `theorem` | [isReduced_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isreduced-of-injective--4cc599ce19627f31faec852a.md) | 209 | `result-track:4cc599ce19627f31faec852ab2805d4442e24540df031ee1456018714542127e` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/instance--74804e575d19a7920d168dbd.md) | 219 | `declaration-track:74804e575d19a7920d168dbd67412ce1da11a4c4736fef20aaf772f8c6f5623b` |
| 36 | `def` | [IsRadical](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isradical--4312021be9b0079b4249da57.md) | 225 | `declaration-track:4312021be9b0079b4249da57986cdad9bdea3da6f14995967d0f30429a85b7dc` |
| 37 | `theorem` | [isRadical_iff_pow_one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isradical-iff-pow-one-lt--20794e8ca8ce85daadf6be45.md) | 228 | `result-track:20794e8ca8ce85daadf6be451a85f0c01b9d4bf146b3b7c04bc8be0eaa6ffae2` |
| 38 | `theorem` | [isNilpotent_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-mul-left--3fc7b448e5a959567c87c890.md) | 238 | `result-track:3fc7b448e5a959567c87c89021229a8099ede318b4cff554d856f303b42ce19e` |
| 39 | `theorem` | [isNilpotent_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant973fd5fdd1458c49111e7dcf8346fd8f593a4ab12bca04a3b984baec0c1706ea.lean/declarations/isnilpotent-mul-right--ec8edf5adcbb2c5468dae518.md) | 243 | `result-track:ec8edf5adcbb2c5468dae51836e679d787209420b68cc1f5f03aac7fe95c8c24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
