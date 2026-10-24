# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "570e302a07f58e3be1a80aafcfa264d5c78e6f0f",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `570e302a07f58e3be1a80aafcfa264d5c78e6f0f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Complex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic--69d46083b36a5d5e0fa4a850.md) | 60 | `declaration-track:69d46083b36a5d5e0fa4a850521130d56cfe6f99e4e4b357f897736e6fb693d5` |
| 2 | `theorem` | [cyclotomic'_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-zero--3939e43cffbc824580a6ce23.md) | 65 | `result-track:3939e43cffbc824580a6ce2353dd399913d8881b41acb331e7283e13cd2ed68e` |
| 3 | `theorem` | [cyclotomic'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-one--24f22659197603f873c1957a.md) | 70 | `result-track:24f22659197603f873c1957a2ba635b856de6efd79c5a61f53c39c5aa3bf110b` |
| 4 | `theorem` | [cyclotomic'_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-two--808a79309ab8fe32c160909e.md) | 76 | `result-track:808a79309ab8fe32c160909ebb4d68bb2d56319b01a58a31e2818abe3a219086` |
| 5 | `theorem` | [cyclotomic'.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-monic--14c84919521354f41df52f95.md) | 85 | `result-track:14c84919521354f41df52f959cbeed50f0be9d2330df16d10d5114bef5e2cec2` |
| 6 | `theorem` | [cyclotomic'_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-ne-zero--93244c700b0338d4e702b9f3.md) | 90 | `result-track:93244c700b0338d4e702b9f32c9400bbf3a4f7fe7eee5125614eb6c0057218b5` |
| 7 | `theorem` | [natDegree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/natdegree-cyclotomic--acf27b7c1c5d8992b76a0fc9.md) | 95 | `result-track:acf27b7c1c5d8992b76a0fc92fb2f63ed57769c9fd97452c925d6c1b7b428054` |
| 8 | `theorem` | [degree_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/degree-cyclotomic--adfc097671df165e1a3663ff.md) | 105 | `result-track:adfc097671df165e1a3663ffb8bf4901588ac380da39b99c98137dc0c7bc23c6` |
| 9 | `theorem` | [roots_of_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/roots-of-cyclotomic--8ff736e7a4d10bb9bdf74100.md) | 110 | `result-track:8ff736e7a4d10bb9bdf7410020107299fc1b5f506b38aef2b3ebafe49deb9120` |
| 10 | `theorem` | [X_pow_sub_one_eq_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/x-pow-sub-one-eq-prod--ded6f287350222f13bef1fa2.md) | 116 | `result-track:ded6f287350222f13bef1fa2b8be78738bf7e476f1d11507c16859229c33b29d` |
| 11 | `theorem` | [cyclotomic'_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-splits--ab38de0a69848260a687a496.md) | 135 | `result-track:ab38de0a69848260a687a49612c336c868bc2a6402e9487723a566e378452aa6` |
| 12 | `theorem` | [X_pow_sub_one_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/x-pow-sub-one-splits--1b694928e9e5c394dd583285.md) | 141 | `result-track:1b694928e9e5c394dd583285f6f433e200f4605659aac0d437f8b0393c30c567` |
| 13 | `theorem` | [prod_cyclotomic'_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--6d678b73be519e391cea288c.md) | 147 | `result-track:6d678b73be519e391cea288ccd8d06d7225c929e6dfaed2795980123843a4f31` |
| 14 | `theorem` | [cyclotomic'_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--bc774e5b6cff4487b9755b52.md) | 158 | `result-track:bc774e5b6cff4487b9755b521e3eb5f49f7d688c0cf6a26264e7857c93f6a557` |
| 15 | `theorem` | [int_coeff_of_cyclotomic'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/int-coeff-of-cyclotomic--158f13cb891522edeb5d0ada.md) | 176 | `result-track:158f13cb891522edeb5d0ada6e4b98c025bcb6f171599aa08dc4b52879a922b9` |
| 16 | `theorem` | [unique_int_coeff_of_cycl](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/unique-int-coeff-of-cycl--6e720c596cbf2ed9c0a7ae8d.md) | 212 | `result-track:6e720c596cbf2ed9c0a7ae8dea0d8962d372a447e60f6dcb88279b4de8615d03` |
| 17 | `def` | [cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic--add9d9a834688a942770a282.md) | 227 | `declaration-track:add9d9a834688a942770a282f64d5a767c8c7a300a3020986e22ea7c2741c160` |
| 18 | `theorem` | [int_cyclotomic_rw](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/int-cyclotomic-rw--29290b7ff4326fe6e9753fea.md) | 231 | `result-track:29290b7ff4326fe6e9753fea39c7194a9da046c28f98a4b2ee27d5d42045faa4` |
| 19 | `theorem` | [map_cyclotomic_int](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/map-cyclotomic-int--ddcab364337faa8c364407f9.md) | 238 | `result-track:ddcab364337faa8c364407f98eb7f7e804d9e90fd57f763dd0b1a28627cd500f` |
| 20 | `theorem` | [int_cyclotomic_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/int-cyclotomic-spec--0f673d58a9682a57fd2255e9.md) | 244 | `result-track:0f673d58a9682a57fd2255e906bdc8edfc2b1568b5058d422a432f92b940f39e` |
| 21 | `theorem` | [int_cyclotomic_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/int-cyclotomic-unique--19a906e01b02f1de8a6f0665.md) | 253 | `result-track:19a906e01b02f1de8a6f0665cabc1f476ff4eced325bab2d410053525fac83ba` |
| 22 | `theorem` | [map_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/map-cyclotomic--0dd01efbc063610454de10a3.md) | 260 | `result-track:0dd01efbc063610454de10a32d315b8af2ae6309d17e3bcb44f50df525336b65` |
| 23 | `theorem` | [cyclotomic.eval_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eval-apply--ea2978d3bedbbc9e6906a031.md) | 266 | `result-track:ea2978d3bedbbc9e6906a0313aa04a59b60cb71caadc9eb930e232865683f2be` |
| 24 | `theorem` | [cyclotomic.eval_apply_ofReal](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eval-apply-ofreal--ad96ba52440128c0b35e9c41.md) | 270 | `result-track:ad96ba52440128c0b35e9c4152407f52545a8920bb79a2745ee4579498f9ce00` |
| 25 | `theorem` | [cyclotomic_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-zero--857a547352ccef46ee7ad068.md) | 276 | `result-track:857a547352ccef46ee7ad0689140659d4c1a9f64734f32b9e2c47555a657066a` |
| 26 | `theorem` | [cyclotomic_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-one--dbe682b5f3e144137674fb97.md) | 281 | `result-track:dbe682b5f3e144137674fb97db658c86b025e150cb6545136f78882255d8e230` |
| 27 | `theorem` | [cyclotomic.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-monic--483a70dd0fa65fe4f9a62349.md) | 289 | `result-track:483a70dd0fa65fe4f9a62349e41a097e751ec3a917f930d9cb18c9ae81779739` |
| 28 | `theorem` | [cyclotomic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-isprimitive--b9c56fae6da6ece6f6752a50.md) | 294 | `result-track:b9c56fae6da6ece6f6752a50933173a059f5389f9f6bc3e7d6c9bc06e320030a` |
| 29 | `theorem` | [cyclotomic_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-ne-zero--16318f1e6ecefb5b246e519e.md) | 298 | `result-track:16318f1e6ecefb5b246e519ef0e01d6a60b6bba8c1330f7253b1904f8d34db78` |
| 30 | `theorem` | [degree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/degree-cyclotomic--06b213f7e4a6ded5af50e3c6.md) | 302 | `result-track:06b213f7e4a6ded5af50e3c6a0d19578dac9d54a6883ac3ca4a9d972fd01728f` |
| 31 | `theorem` | [natDegree_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/natdegree-cyclotomic--f9eda12552f8d0edcb16fb02.md) | 314 | `result-track:f9eda12552f8d0edcb16fb02014ff186be8a6c2a95c57d034c83afc815b23efe` |
| 32 | `theorem` | [degree_cyclotomic_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/degree-cyclotomic-pos--e7afd1627c50eed2f4908af9.md) | 319 | `result-track:e7afd1627c50eed2f4908af9e3f6906a38f367018ce93a619bd0fa56b4de99dd` |
| 33 | `theorem` | [prod_cyclotomic_eq_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/prod-cyclotomic-eq-x-pow-sub-one--94102adf5283ba34ce696f89.md) | 326 | `result-track:94102adf5283ba34ce696f8964879561432b7189a99bb660e505d250b32bc825` |
| 34 | `theorem` | [cyclotomic.dvd_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-dvd-x-pow-sub-one--d725799b5575323a263b5ea7.md) | 336 | `result-track:d725799b5575323a263b5ea70f7f1993e40d4618424f11f424072ff0cadd4af3` |
| 35 | `theorem` | [prod_cyclotomic_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/prod-cyclotomic-eq-geom-sum--f0eee5534c4808d536f02de5.md) | 346 | `result-track:f0eee5534c4808d536f02de55bf051e32d57caa74d6724f9b84ecdba15a344cf` |
| 36 | `theorem` | [cyclotomic_prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-prime--0b62f913cab4bb0b61e7e769.md) | 355 | `result-track:0b62f913cab4bb0b61e7e769b8beb3b1b13b064e1153bea5c7bcb86c13311769` |
| 37 | `theorem` | [cyclotomic_prime_mul_X_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-prime-mul-x-sub-one--d52d552b756602f6faef36cd.md) | 363 | `result-track:d52d552b756602f6faef36cd82ff82b7ffe9cd747196e89e3ab1d1971bac8bf6` |
| 38 | `theorem` | [cyclotomic_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-two--084f2aac405a74ddecba5a48.md) | 367 | `result-track:084f2aac405a74ddecba5a48b0f60a44e6c7a738fbb363ec742e3559bd544c59` |
| 39 | `theorem` | [cyclotomic_three](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-three--8d586acb56f289b26c62e928.md) | 370 | `result-track:8d586acb56f289b26c62e928dcef67016329743e4f0fa25ed6173d4ad5939b0e` |
| 40 | `theorem` | [cyclotomic_dvd_geom_sum_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-dvd-geom-sum-of-dvd--5daff04ddc30ec2920e0c3a1.md) | 373 | `result-track:5daff04ddc30ec2920e0c3a154593e2a11693a72e69874e005e19dd50cbc884b` |
| 41 | `theorem` | [X_pow_sub_one_mul_prod_cyclotomic_eq_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/x-pow-sub-one-mul-prod-cyclotomic-eq-x-pow-sub-one-of-dvd--738ef4032ff85cecb401f65b.md) | 384 | `result-track:738ef4032ff85cecb401f65b2dfcddfd5e6de34667f9c1efd964a8e30f43170d` |
| 42 | `theorem` | [X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/x-pow-sub-one-mul-cyclotomic-dvd-x-pow-sub-one-of-dvd--070ddb9bc89cf15685b6d7d9.md) | 393 | `result-track:070ddb9bc89cf15685b6d7d9797bae7bea42283d13d7e5b227d90b171e4f592b` |
| 43 | `theorem` | [cyclotomic_eq_prod_X_pow_sub_one_pow_moebius](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eq-prod-x-pow-sub-one-pow-moebius--bf5de713a4105e7aa516dba1.md) | 413 | `result-track:bf5de713a4105e7aa516dba1911c40ecfb2bd988ea78707f47249b0d2535cba6` |
| 44 | `theorem` | [cyclotomic_eq_X_pow_sub_one_div](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eq-x-pow-sub-one-div--c47654bc309cbb74a165065a.md) | 433 | `result-track:c47654bc309cbb74a165065a9758a380e4d7a4dc55d5ac671cccfe3697e4bfba` |
| 45 | `theorem` | [X_pow_sub_one_dvd_prod_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/x-pow-sub-one-dvd-prod-cyclotomic--89250069b4bbd43f16824b01.md) | 452 | `result-track:89250069b4bbd43f16824b016d6a3e5370119ef5b4caf0451a285f1e1312863e` |
| 46 | `theorem` | [cyclotomic_eq_prod_X_sub_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-eq-prod-x-sub-primitiveroots--359c7f7a49b9706f2f82c411.md) | 465 | `result-track:359c7f7a49b9706f2f82c411a50a00798af86460c054d873f0ae9d54d24fdd40` |
| 47 | `theorem` | [eq_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/eq-cyclotomic-iff--c994d751b9a43914812016d3.md) | 479 | `result-track:c994d751b9a43914812016d3845698b6b1627c201a8f20915acb86009f011a84` |
| 48 | `theorem` | [cyclotomic_prime_pow_eq_geom_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-prime-pow-eq-geom-sum--e26d88d77f7bb5335a04c915.md) | 498 | `result-track:e26d88d77f7bb5335a04c915cbfa1c33825faa0dc575b46059d6f0b94176ae4d` |
| 49 | `theorem` | [cyclotomic_prime_pow_mul_X_pow_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-prime-pow-mul-x-pow-sub-one--8918d0a8f9c5876a88eb3681.md) | 516 | `result-track:8918d0a8f9c5876a88eb36812453d1aaf6c2f8b6107e2c9c979b688791f670bd` |
| 50 | `theorem` | [cyclotomic_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/cyclotomic-coeff-zero--62b37eda915a1889b3056f21.md) | 522 | `result-track:62b37eda915a1889b3056f21af3d447944018ad1a32e9731f9ce189e589196b4` |
| 51 | `theorem` | [coprime_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/coprime-of-root-cyclotomic--3e0c018d902789de832f2ca2.md) | 553 | `result-track:3e0c018d902789de832f2ca23ddfe310521fe21a481a1a6fa29638ebe093939c` |
| 52 | `theorem` | [orderOf_root_cyclotomic_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/orderof-root-cyclotomic-dvd--bc81a3c07900729617499a08.md) | 573 | `result-track:bc81a3c07900729617499a0862a799c3b95b30dfc268181a974ef4cb43a368ac` |
| 53 | `lemma` | [dvd_C_mul_X_sub_one_pow_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/dvd-c-mul-x-sub-one-pow-add-one--6107c4941f291588f5f635f6.md) | 593 | `result-track:6107c4941f291588f5f635f64f1b8da2c30fbfa8cf78573b1ca68eee48e564e3` |
| 54 | `theorem` | [_root_.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul_field](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/root-isprimitiveroot-pow-sub-pow-eq-prod-sub-mul-field--beebbb2eb35ece5d4e35cba5.md) | 600 | `result-track:beebbb2eb35ece5d4e35cba54edc9e21a183d1ba708025f059ce83a42ac07700` |
| 55 | `theorem` | [_root_.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/root-isprimitiveroot-pow-sub-pow-eq-prod-sub-mul--31f7668e21fe1eb1cf215923.md) | 617 | `result-track:31f7668e21fe1eb1cf215923b6b8a62271236574c6525b02f65085bab06b5831` |
| 56 | `theorem` | [_root_.IsPrimitiveRoot.pow_add_pow_eq_prod_add_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/declarations/root-isprimitiveroot-pow-add-pow-eq-prod-add-mul--bd36779a6483b6e6c6724834.md) | 637 | `result-track:bd36779a6483b6e6c6724834605301dbad98b705d559d3c2a4f604449a2ea1d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
