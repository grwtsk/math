# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Separable.Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b72c24078ce0ec8bdc3c4b1241b9fec0a8f3f0d2",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b72c24078ce0ec8bdc3c4b1241b9fec0a8f3f0d2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Expand` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable--036574b4f13e546368d94b4d.md) | 47 | `declaration-track:036574b4f13e546368d94b4de3d183a5f1fc2ac3fdc84d0ad9646cc04124a440` |
| 2 | `theorem` | [separable_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-def--ce12e187ff599f63a3a10dd5.md) | 51 | `result-track:ce12e187ff599f63a3a10dd5d8e2a49ddd22df665f505d9ee5b008a6cf34e375` |
| 3 | `theorem` | [separable_def'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-def--1df19f547f1b1f75a4e0129a.md) | 55 | `result-track:1df19f547f1b1f75a4e0129a6abe6aaa0d8097b903c14fa19471e4fc6dff2e4c` |
| 4 | `theorem` | [not_separable_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/not-separable-zero--a19d0d678b2b49a3f8ea693f.md) | 59 | `result-track:a19d0d678b2b49a3f8ea693f55ff10727b617f3e1388145b06bc458cd16c2d79` |
| 5 | `theorem` | [separable_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-one--608657b960505548c9b6ed6d.md) | 64 | `result-track:608657b960505548c9b6ed6d0163be05a5a1b04bd2b8d6a8bd0a90de211e6e17` |
| 6 | `theorem` | [separable_of_subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-subsingleton--ec5438b20edc3edfb97fa27c.md) | 69 | `result-track:ec5438b20edc3edfb97fa27ca267e540468c4de7ad67ee476ceb98a018cf1b19` |
| 7 | `theorem` | [separable_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-x-add-c--e05b87f1b9db25d91c63e287.md) | 73 | `result-track:e05b87f1b9db25d91c63e28726ee235e10eecc150678112784d12464ea8a91d9` |
| 8 | `theorem` | [separable_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-x--59c193b1ea2b39576f945220.md) | 79 | `result-track:59c193b1ea2b39576f945220b2086f7abe6443cff44581e77dcfd9ef320340d9` |
| 9 | `theorem` | [separable_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-c--b6e072fff3ec43506c4e4187.md) | 85 | `result-track:b6e072fff3ec43506c4e4187309d67cb20495fce200fb0f5195a2f4a21ddd011` |
| 10 | `theorem` | [Separable.of_mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-mul-left--857aafce3212910670fcbaf6.md) | 90 | `result-track:857aafce3212910670fcbaf69c4e67fbe505fcf58de55573df16d4ac5781228f` |
| 11 | `theorem` | [Separable.of_mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-mul-right--c2d7e35b7696e36621fd80d4.md) | 95 | `result-track:c2d7e35b7696e36621fd80d40fe5346e43aaef3a64640329b9794585c3c42e66` |
| 12 | `theorem` | [Separable.of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-dvd--9944f1fd0f602adccfa487b1.md) | 100 | `result-track:9944f1fd0f602adccfa487b1a5335cd4243f66fe652e1b0b8d7cab2b22f3bbc5` |
| 13 | `theorem` | [separable_gcd_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-gcd-left--f6174485a8cfd50c19c3e038.md) | 105 | `result-track:f6174485a8cfd50c19c3e03899b91d22c7176c9607ecf8175f0a8fe6627cfa1a` |
| 14 | `theorem` | [separable_gcd_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-gcd-right--5f8447402d90b23721eb5142.md) | 110 | `result-track:5f8447402d90b23721eb51429266bf1997dbc8598d614998573f3a2292bdeaf7` |
| 15 | `theorem` | [Separable.isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-iscoprime--c4fda034661e5e40c4ded90e.md) | 115 | `result-track:c4fda034661e5e40c4ded90e31d48f66c0b83a5196d24eb2fd3e2d6b22878c5e` |
| 16 | `theorem` | [Separable.of_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-pow--5a3204cfb7d128cfeabde747.md) | 120 | `result-track:5a3204cfb7d128cfeabde747c5dbb0c525efc98d6e13bed810bed6474bf95d1f` |
| 17 | `theorem` | [Separable.of_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-of-pow--c1cd2acda97c1d9be1df882d.md) | 129 | `result-track:c1cd2acda97c1d9be1df882d6c24d4a9d5fd42abcbea604e3a24c87d66621196` |
| 18 | `theorem` | [Separable.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-map--8f8ce902591a1fc12332ec30.md) | 134 | `result-track:8f8ce902591a1fc12332ec305108f93596476fe72d43e37ace714b095a4185aa` |
| 19 | `theorem` | [isUnit_of_self_mul_dvd_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isunit-of-self-mul-dvd-separable--c483de86243f62984394d302.md) | 143 | `result-track:c483de86243f62984394d302973df6ff695d2de1ffd495170dc5d3926d00b666` |
| 20 | `theorem` | [multiplicity_le_one_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/multiplicity-le-one-of-separable--674454abea2125ba70b9af5a.md) | 157 | `result-track:674454abea2125ba70b9af5a545ef95d28ea0f57c11a4a344738ed22c7be33da` |
| 21 | `theorem` | [Separable.squarefree](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-squarefree--c355f5f5855d30b59ff1c1c4.md) | 168 | `result-track:c355f5f5855d30b59ff1c1c4ee9e92f1cdeb23f20530204c41368ddc3a863f04` |
| 22 | `theorem` | [separable_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-x-sub-c--4d526a2e09bb70f5c1584440.md) | 179 | `result-track:4d526a2e09bb70f5c158444085f43d2a3b67dfd5f6e6f9eec31a46b72ad8acf2` |
| 23 | `theorem` | [Separable.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-mul--046f9648f186ff5bf1c7070f.md) | 184 | `result-track:046f9648f186ff5bf1c7070f39d6201984b106ba52057617825ed2ef617a7825` |
| 24 | `theorem` | [separable_prod'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-prod--45ac182d1979b30f77c2e635.md) | 191 | `result-track:45ac182d1979b30f77c2e635adf08b951c2fb03328708621d2e885b06ae09d59` |
| 25 | `theorem` | [separable_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-prod--d2481a2f1f8beab27700cf31.md) | 201 | `result-track:d2481a2f1f8beab27700cf31c03f0b6371f290bc9a34f4fd1d6801a4fe150ff3` |
| 26 | `theorem` | [Separable.inj_of_prod_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-inj-of-prod-x-sub-c--56ab4321729db179fccdda25.md) | 206 | `result-track:56ab4321729db179fccdda25927dbd757b5a451a570d538f6fb5a422cfc0b458` |
| 27 | `theorem` | [Separable.injective_of_prod_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-injective-of-prod-x-sub-c--d13dc3520088e9f9b712d592.md) | 217 | `result-track:d13dc3520088e9f9b712d592e33507d0910ce6276364166e0887c369b7e306ec` |
| 28 | `theorem` | [nodup_of_separable_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/nodup-of-separable-prod--f9c51a0fd63eb9240f23f992.md) | 223 | `result-track:f9c51a0fd63eb9240f23f992b4b44d17c38ebff43635f72a37477687c430032b` |
| 29 | `theorem` | [separable_X_pow_sub_C_unit](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-x-pow-sub-c-unit--5d6077f9872408d7b060e29e.md) | 232 | `result-track:5d6077f9872408d7b060e29e98314a44f57b75ce53c485d4ff21342deac6aa49` |
| 30 | `theorem` | [rootMultiplicity_le_one_of_separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/rootmultiplicity-le-one-of-separable--1a0791cb2775a90679a973c4.md) | 252 | `result-track:1a0791cb2775a90679a973c45c288af10012610b3be2624a221602ded95f877a` |
| 31 | `theorem` | [count_roots_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/count-roots-le-one--192f4bedfc40e9dac8f6da44.md) | 267 | `result-track:192f4bedfc40e9dac8f6da44c28442b76110eb13ac9c5d0ea57f0d8454d6d563` |
| 32 | `theorem` | [nodup_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/nodup-roots--52605bc795438c13d1688b0a.md) | 272 | `result-track:52605bc795438c13d1688b0a5032f1c8950da991f55db6803874ad128aa65df6` |
| 33 | `theorem` | [separable_iff_derivative_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-iff-derivative-ne-zero--454b928cc45ab0281038247b.md) | 282 | `result-track:454b928cc45ab0281038247bc5ad830189652144e195cee164ef4a77cbb2c7fd` |
| 34 | `theorem` | [separable_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-map--f7e7df7e3960e728cd598df5.md) | 294 | `result-track:f7e7df7e3960e728cd598df5709bb0cff28550592898dc9c9d7fab4fd34ee1d2` |
| 35 | `theorem` | [separable_prod_X_sub_C_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-prod-x-sub-c-iff--70867df9d7f99adf7446f60a.md) | 299 | `result-track:70867df9d7f99adf7446f60ac62a7bb747cff0d44279c08b3f4a696584bd6541` |
| 36 | `theorem` | [separable_prod_X_sub_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-prod-x-sub-c-iff--819921b6a7098ef1365f286d.md) | 312 | `result-track:819921b6a7098ef1365f286d2268049034d6712e7a698a0618b76c64a8f99050` |
| 37 | `theorem` | [separable_or](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-or--8b3a0a6d0fd44726f20bd29d.md) | 322 | `result-track:8b3a0a6d0fd44726f20bd29db56ac4130f707de1937c26ab94cc2f8fd6e6807a` |
| 38 | `theorem` | [exists_separable_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/exists-separable-of-irreducible--261a56307976ba1e7dc234fa.md) | 340 | `result-track:261a56307976ba1e7dc234fa7f50abc5db0c6065ce2317029040f4bb84d12476` |
| 39 | `theorem` | [isUnit_or_eq_zero_of_separable_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isunit-or-eq-zero-of-separable-expand--ddad636ba3f443cef872fb59.md) | 366 | `result-track:ddad636ba3f443cef872fb59e3cc7b97111e85a56bf4761f27c12d2a306fd84b` |
| 40 | `theorem` | [unique_separable_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/unique-separable-of-irreducible--3076de8b861461e37795b070.md) | 379 | `result-track:3076de8b861461e37795b070fa9e096fa617984bf2930e6aa55be09f92018249` |
| 41 | `theorem` | [separable_X_pow_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/separable-x-pow-sub-c--4f92011f9dedf1f79d5ebd08.md) | 407 | `result-track:4f92011f9dedf1f79d5ebd08a80da8237bb201494aecd5795068be31c6e75a90` |
| 42 | `theorem` | [X_pow_sub_one_separable_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/x-pow-sub-one-separable-iff--d3ee2d15f979ae2de3b36038.md) | 416 | `result-track:d3ee2d15f979ae2de3b360389cc74b33c9e50aaf274181ebca25baae0c428b02` |
| 43 | `theorem` | [card_rootSet_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/card-rootset-eq-natdegree--4cdaec12b29781c8888fa748.md) | 428 | `result-track:4cdaec12b29781c8888fa748e1555ed8dadbd89e516acbabcc1400f238f7abb1` |
| 44 | `theorem` | [eq_X_sub_C_of_separable_of_root_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/eq-x-sub-c-of-separable-of-root-eq--110e184985052e9dfda1625d.md) | 437 | `result-track:110e184985052e9dfda1625d396481b7172ca7a8cf547e89050e2a95f34054ff` |
| 45 | `theorem` | [exists_finset_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/exists-finset-of-splits--e94f0e9a8f7138f53a993603.md) | 457 | `result-track:e94f0e9a8f7138f53a993603228d7c050a5e0edec5f645330a36c5eeadd44cc6` |
| 46 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsSeparable.Variant1f6c258e7c86763490ddb1a1b6c115ae1ea19cf15d31401b77bf23959479fd02.Irreducible.separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/root-grwtsk-algebra-commutativealgebra-isseparable-variant1f6c258e7c8676--597ae8a6a77745e23bbfc258.md) | 470 | `result-track:597ae8a6a77745e23bbfc258bd3f6d96d2a61966bfabc77c78138baf1ffa9352` |
| 47 | `class` | [IsSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable--4cd6041b049bf546c0385775.md) | 503 | `declaration-track:4cd6041b049bf546c03857754111e9261c603664bbe86fa0e09aa93b12f6b74c` |
| 48 | `theorem` | [IsSeparable.isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-isintegral--96403e177ab27a3c3949e75b.md) | 510 | `result-track:96403e177ab27a3c3949e75b6ea5fa71c412f8d92ce724308ddc96d9324e0646` |
| 49 | `theorem` | [IsSeparable.separable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-separable--4681ed4c82c0e018b94acca6.md) | 514 | `result-track:4681ed4c82c0e018b94acca65b982d28314fb71127b3bcb4519fbb8a619bc119` |
| 50 | `theorem` | [isSeparable_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-iff--2aa6357c2e10387de89131ee.md) | 520 | `result-track:2aa6357c2e10387de89131ee27e1e5787334a9a8d69f9757817f20352b12b43c` |
| 51 | `instance` | [isSeparable_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-self--f829ea523ed849c3398f53b9.md) | 527 | `declaration-track:f829ea523ed849c3398f53b97bba8eb1e98122a614ebc8062edd4dd70675fde6` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/instance--e7fa6736e572864298eec3a8.md) | 536 | `declaration-track:e7fa6736e572864298eec3a8e92518587f33ab646100f681361f989ceb2e9fa7` |
| 53 | `theorem` | [isSeparable_tower_top_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-tower-top-of-isseparable--cb9f47f653b7369fcea336fe.md) | 547 | `result-track:cb9f47f653b7369fcea336fea02c363613761fd9e3001299be41fb30c602ac44` |
| 54 | `theorem` | [isSeparable_tower_bot_of_isSeparable](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-tower-bot-of-isseparable--7467c4d230ce3c17156e9c75.md) | 552 | `result-track:7467c4d230ce3c17156e9c75d5a8c8c9ffade4b79d367a44f357a914797f69c1` |
| 55 | `theorem` | [IsSeparable.of_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/isseparable-of-alghom--c21ab1c65fd78735855f339a.md) | 566 | `result-track:c21ab1c65fd78735855f339aef2b49d8fd654ffd1959bb77ec730c8f58949e5d` |
| 56 | `theorem` | [AlgHom.card_of_powerBasis](../../../../../mathematics/Algebra/CommutativeAlgebra/Separable/Variant8df095adc833353adcb620fb78d596abc6a165fc0a7a559757681ca052467e94.lean/declarations/alghom-card-of-powerbasis--92a0ab7dae88f740dfd597c7.md) | 583 | `result-track:92a0ab7dae88f740dfd597c7bff4191748f90d32c7b4a89fc9d65779247b8dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
