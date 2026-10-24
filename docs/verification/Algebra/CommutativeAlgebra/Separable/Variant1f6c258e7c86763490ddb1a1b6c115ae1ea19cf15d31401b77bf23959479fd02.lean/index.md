# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Separable.Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def5f1a76b00df7be7ed85a0524e0f291a2825d0",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def5f1a76b00df7be7ed85a0524e0f291a2825d0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Expand` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable--70391a1b76aea211d348b1ee.md) | 39 | `declaration-track:70391a1b76aea211d348b1ee598aa350a7591071b20bd257a74deba02a8e88c1` |
| 2 | `theorem` | [separable_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-def--abd255c4bf6eb938c9535633.md) | 43 | `result-track:abd255c4bf6eb938c9535633c3f6add002b408c3ac12574eadc842a8f4efd99d` |
| 3 | `theorem` | [separable_def'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-def--6064e0e0dafbbcb647726500.md) | 47 | `result-track:6064e0e0dafbbcb647726500a07b4a53e8ba56a619b5635293d18d0ad62389b3` |
| 4 | `theorem` | [not_separable_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/not-separable-zero--1c9ae8fa39bc226f8d6c1cfb.md) | 51 | `result-track:1c9ae8fa39bc226f8d6c1cfb4928a495ca20beed9d017316334997ff66f64421` |
| 5 | `theorem` | [separable_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-one--ab0853df1052b1858cbeb4c3.md) | 56 | `result-track:ab0853df1052b1858cbeb4c3ceebccf56ba38d199bb0234123ef1c9347d276d4` |
| 6 | `theorem` | [separable_of_subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-subsingleton--7e7b32ad518cb1f229840304.md) | 61 | `result-track:7e7b32ad518cb1f229840304c845610ad23e135636ebeac5145fa9b4f62fd3b7` |
| 7 | `theorem` | [separable_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-x-add-c--2df879a69db3954a92292bab.md) | 65 | `result-track:2df879a69db3954a92292bab9bbd53101c0e44ef904a2972e0bc6c11c00a0b86` |
| 8 | `theorem` | [separable_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-x--026c09811e360ba790399c46.md) | 71 | `result-track:026c09811e360ba790399c463fd5b1fe2cd9ab601613bfeb1f2f72741f1d20c1` |
| 9 | `theorem` | [separable_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-c--be6fb71085e527601fdab9a3.md) | 77 | `result-track:be6fb71085e527601fdab9a3866234587dbf103575c9b9c9ec95e82e8f477b8a` |
| 10 | `theorem` | [Separable.of_mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-mul-left--70d205a349196e0ccac7202f.md) | 82 | `result-track:70d205a349196e0ccac7202f580dc6d4545501a7432d3427011de04479ab30d5` |
| 11 | `theorem` | [Separable.of_mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-mul-right--0a2e67c1d04996bb743886ba.md) | 87 | `result-track:0a2e67c1d04996bb743886ba57c2b84b64204df164180251f0a4c55b1f10e6f9` |
| 12 | `theorem` | [Separable.of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-dvd--748a22ba8d03abdd1ec206e0.md) | 92 | `result-track:748a22ba8d03abdd1ec206e0e9209678549010bd0badfc2f1a9eb0cd62f0021a` |
| 13 | `theorem` | [separable_gcd_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-gcd-left--cf3046740c1a9c31d3c7fdb9.md) | 97 | `result-track:cf3046740c1a9c31d3c7fdb98723215923971a5c7aa2b924f98e0ee30da92002` |
| 14 | `theorem` | [separable_gcd_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-gcd-right--b67d4c869d47e923b9be1ec5.md) | 102 | `result-track:b67d4c869d47e923b9be1ec52af2da0e2aa2cca90c66793a315dd5c8c3b171d5` |
| 15 | `theorem` | [Separable.isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-iscoprime--cb77175fdf4b8b84296224ba.md) | 107 | `result-track:cb77175fdf4b8b84296224ba8646f626ef3b468ef6984a41342d50a39004fb90` |
| 16 | `theorem` | [Separable.of_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-pow--5279b0e789d880343b097901.md) | 112 | `result-track:5279b0e789d880343b097901c5c1c72c65abe5970359f5dd942082f3d52ed1b8` |
| 17 | `theorem` | [Separable.of_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-of-pow--c7a735a410163cda55889781.md) | 121 | `result-track:c7a735a410163cda5588978115cfaee23d704297751acc3f17e0450c0c410fb4` |
| 18 | `theorem` | [Separable.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-map--78eb5608a9b22198f21e76b5.md) | 126 | `result-track:78eb5608a9b22198f21e76b52efe040c1a10d5fc9ab80d16156f2caa9850906d` |
| 19 | `theorem` | [isUnit_of_self_mul_dvd_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isunit-of-self-mul-dvd-separable--7c723d0e56e5d8a10a9db833.md) | 135 | `result-track:7c723d0e56e5d8a10a9db8338013403700286d2b88c45e08ce8b6d6a074a89e6` |
| 20 | `theorem` | [multiplicity_le_one_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/multiplicity-le-one-of-separable--d75e2a997e08a50992c3b912.md) | 149 | `result-track:d75e2a997e08a50992c3b912cb6c3a9af1501971e929a1a92d5b2b021f589510` |
| 21 | `theorem` | [Separable.squarefree](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-squarefree--d98eff9b952d60cff52f7847.md) | 160 | `result-track:d98eff9b952d60cff52f7847a24a3194f41997f52eee400ccdad822a72c0916f` |
| 22 | `theorem` | [separable_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-x-sub-c--42ed6245c37e17032007c602.md) | 171 | `result-track:42ed6245c37e17032007c602dd1a466659315b8838e9f325950718a028da5520` |
| 23 | `theorem` | [Separable.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-mul--6b6bf8e31e4493d4cb438232.md) | 176 | `result-track:6b6bf8e31e4493d4cb4382326a04c2c087140afeaece10009e67e6836f442280` |
| 24 | `theorem` | [separable_prod'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-prod--1796ac8005ad17ec65c39dbb.md) | 183 | `result-track:1796ac8005ad17ec65c39dbbabcb871f80d651ec3201a91c0a46e5827c721ca0` |
| 25 | `theorem` | [separable_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-prod--d63fb623705e01cb1cbcaa4d.md) | 193 | `result-track:d63fb623705e01cb1cbcaa4d1f7bef36988f21b72d79f3d65875ad9b7da4223b` |
| 26 | `theorem` | [Separable.inj_of_prod_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-inj-of-prod-x-sub-c--1c32b6e9741634c7ba4e9982.md) | 198 | `result-track:1c32b6e9741634c7ba4e9982a87dbaf95beae562469e8f0ff502790c4bf3f12a` |
| 27 | `theorem` | [Separable.injective_of_prod_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-injective-of-prod-x-sub-c--5d4cec9c0aedb9c4369b62ae.md) | 209 | `result-track:5d4cec9c0aedb9c4369b62aeba4bd2742c5b089237276c83180ccee0c2bcf941` |
| 28 | `theorem` | [nodup_of_separable_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/nodup-of-separable-prod--2cd63aa60427aaeb213b50a6.md) | 215 | `result-track:2cd63aa60427aaeb213b50a655ab8d10c18edf6cb7853d432dc146489efd8dca` |
| 29 | `theorem` | [separable_X_pow_sub_C_unit](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-x-pow-sub-c-unit--d1432530d248f0bb69bf2f3a.md) | 224 | `result-track:d1432530d248f0bb69bf2f3a3012688e15dbb15c96e74b35954fa6d4b4963e9a` |
| 30 | `theorem` | [rootMultiplicity_le_one_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/rootmultiplicity-le-one-of-separable--890fbd8dc8497b88b766b56b.md) | 244 | `result-track:890fbd8dc8497b88b766b56bf5a349333fba9c29a69874e29fe5cd4653da6a06` |
| 31 | `theorem` | [count_roots_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/count-roots-le-one--ff8da51e63950827c086234f.md) | 259 | `result-track:ff8da51e63950827c086234f7034c148022e0a08ff3a93de5fe04f522c34731a` |
| 32 | `theorem` | [nodup_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/nodup-roots--7d15ee4f19a8f22a28f38dee.md) | 264 | `result-track:7d15ee4f19a8f22a28f38deef4f931ee746e408d78d94c56a5d030da983ce3c0` |
| 33 | `theorem` | [separable_iff_derivative_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-iff-derivative-ne-zero--08aae059e734712b33b43086.md) | 274 | `result-track:08aae059e734712b33b43086a444650f96daf30b9ed3a34d3922733ab8132284` |
| 34 | `theorem` | [separable_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-map--f5751aea5373693f27055f0b.md) | 286 | `result-track:f5751aea5373693f27055f0b4c8827d87aa8ffd7a3918c6cb5c52104176aaf4b` |
| 35 | `theorem` | [separable_prod_X_sub_C_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-prod-x-sub-c-iff--03003d3aa5e3b7939ae9f1d4.md) | 291 | `result-track:03003d3aa5e3b7939ae9f1d4b51ce11683dc937a242038a70dbafa49c2e3ae5a` |
| 36 | `theorem` | [separable_prod_X_sub_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-prod-x-sub-c-iff--9d7e0058d177b7312c73d68e.md) | 304 | `result-track:9d7e0058d177b7312c73d68e48594318bfb1e7f9ebe7dc53458a75510ad640dd` |
| 37 | `theorem` | [separable_or](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-or--e9da9ff740c392946daee14c.md) | 314 | `result-track:e9da9ff740c392946daee14cdd68806761d79b790c44cde2dca5440d71edb2e3` |
| 38 | `theorem` | [exists_separable_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/exists-separable-of-irreducible--647e40c8cda950b3c560ce1a.md) | 332 | `result-track:647e40c8cda950b3c560ce1ac68aa22a776d4ca9175823a3493965761a9b71a5` |
| 39 | `theorem` | [isUnit_or_eq_zero_of_separable_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isunit-or-eq-zero-of-separable-expand--2047d97e9ae78ad4b7ffd7d9.md) | 358 | `result-track:2047d97e9ae78ad4b7ffd7d9477e045550c3af24a43bbf751c1cfb8d003bb4bf` |
| 40 | `theorem` | [unique_separable_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/unique-separable-of-irreducible--c07f5ea0924e416f76abbfd3.md) | 371 | `result-track:c07f5ea0924e416f76abbfd37adc327e7d568611bc8922f8ceb1178eafb925fe` |
| 41 | `theorem` | [separable_X_pow_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/separable-x-pow-sub-c--df474b92bccbb2503d1359e1.md) | 399 | `result-track:df474b92bccbb2503d1359e1946b81017235130a5421d120a9c91cbf0208b381` |
| 42 | `theorem` | [X_pow_sub_one_separable_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/x-pow-sub-one-separable-iff--cb4d0c54b13f4be028410e7a.md) | 408 | `result-track:cb4d0c54b13f4be028410e7a39a3f0b836048ba3530eb763b1255aa68c79fa96` |
| 43 | `theorem` | [card_rootSet_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/card-rootset-eq-natdegree--834cfc2fc3752fc082c99ecd.md) | 420 | `result-track:834cfc2fc3752fc082c99ecd0d78b69a923483129465942a54463f613a8be6d2` |
| 44 | `theorem` | [eq_X_sub_C_of_separable_of_root_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/eq-x-sub-c-of-separable-of-root-eq--b3c47310cc69dfc884d598b1.md) | 429 | `result-track:b3c47310cc69dfc884d598b1db0bdb7ae7bffb0f850cad29c19ed55c0b139f35` |
| 45 | `theorem` | [exists_finset_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/exists-finset-of-splits--5450c9cfcda07ab7d5c11401.md) | 449 | `result-track:5450c9cfcda07ab7d5c11401119e113dbdc7278113efc7bd3781344f71c979b7` |
| 46 | `theorem` | [_root_.Irreducible.separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/root-irreducible-separable--29e521c24dc5a22d388bd3e5.md) | 462 | `result-track:29e521c24dc5a22d388bd3e5246b7a9d34b809f09006cf436d18dcbf1cac7cc9` |
| 47 | `class` | [IsSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable--c7fb1b551c28ff5d2448313e.md) | 495 | `declaration-track:c7fb1b551c28ff5d2448313e7f6440d72d6b725e22a3c9cb0613234e0e45cdb1` |
| 48 | `theorem` | [IsSeparable.isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-isintegral--e47e928bab265cbff291c0db.md) | 502 | `result-track:e47e928bab265cbff291c0dbc719b7ceed305a5d42253010f7f6e5406b4e45db` |
| 49 | `theorem` | [IsSeparable.separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-separable--0c83facc067277fbc514fe51.md) | 506 | `result-track:0c83facc067277fbc514fe513688c30bb905d655015b8a213f9bc3a6019aae00` |
| 50 | `theorem` | [isSeparable_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-iff--607cdebc0310718b2053da7e.md) | 512 | `result-track:607cdebc0310718b2053da7e2c28a379cd957f10e33f56d5cb82a8bbe3df30dc` |
| 51 | `instance` | [isSeparable_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-self--8cbd0c1bd6357c59dea3eacf.md) | 519 | `declaration-track:8cbd0c1bd6357c59dea3eacf9cf96b86c142a3ec2b1fa6f3dc0a2d8bc2bbcabd` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/instance--688bdca4dfd6dc9be0df720f.md) | 528 | `declaration-track:688bdca4dfd6dc9be0df720fdc6608723ea36fd5f5dcd333a90b0425d53702eb` |
| 53 | `theorem` | [isSeparable_tower_top_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-tower-top-of-isseparable--e292e89f79b95c58b1aee89e.md) | 539 | `result-track:e292e89f79b95c58b1aee89e374c6f780cd8ec602fc3315388314e341bbb018c` |
| 54 | `theorem` | [isSeparable_tower_bot_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-tower-bot-of-isseparable--640dddd438c3aa3f9a8cad4a.md) | 544 | `result-track:640dddd438c3aa3f9a8cad4aff98f038a68afefa994d6007fc867e5f469af1f2` |
| 55 | `theorem` | [IsSeparable.of_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/isseparable-of-alghom--9f5bb928ed5c51c3590f4315.md) | 558 | `result-track:9f5bb928ed5c51c3590f43155858f9dc6c9457bca0825a58d4fbac308980271b` |
| 56 | `theorem` | [AlgHom.card_of_powerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.lean/declarations/alghom-card-of-powerbasis--f39565b6ab42dc61fe128c17.md) | 575 | `result-track:f39565b6ab42dc61fe128c17a62b20fb37e8678e43142a15478fcd936af73180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
