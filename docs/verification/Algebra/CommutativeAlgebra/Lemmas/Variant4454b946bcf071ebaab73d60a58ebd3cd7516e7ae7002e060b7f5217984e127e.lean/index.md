# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lemmas.Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9a61a22ff677e4bfd3053758c1b881a3fb086f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9a61a22ff677e4bfd3053758c1b881a3fb086f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Degree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Prime.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_comp_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-comp-le--15b7ca24e2e383dfd3befc6c.md) | 36 | `result-track:15b7ca24e2e383dfd3befc6c8a12c41af47975fd37acd2528bd5764fcc8ce65f` |
| 2 | `theorem` | [natDegree_comp_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-comp-eq-of-mul-ne-zero--762e65597b1a1f2f02189058.md) | 62 | `result-track:762e65597b1a1f2f02189058b0eddae284991e7d78d9a735e2bb190fe616cc1f` |
| 3 | `theorem` | [degree_pos_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-pos-of-root--b50bb0f9879f6e09a3ed0764.md) | 69 | `result-track:b50bb0f9879f6e09a3ed076457168f5cb9183223b345fc4f8becb3a655f4f952` |
| 4 | `theorem` | [natDegree_le_iff_coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-le-iff-coeff-eq-zero--34ff7ae876bcf60cd303f2ad.md) | 76 | `result-track:34ff7ae876bcf60cd303f2ad73e1b30cad96e8e77cf684d569572da364125434` |
| 5 | `theorem` | [natDegree_add_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-add-le-iff-left--55bd970b54d77fec26d399aa.md) | 79 | `result-track:55bd970b54d77fec26d399aae992d722e0f263c363c723a77fbc2dd078433487` |
| 6 | `theorem` | [natDegree_add_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-add-le-iff-right--1ba86b06c7a637942080b0ca.md) | 86 | `result-track:1ba86b06c7a637942080b0ca0971d3a105c6252595abdd695137d47b542f24df` |
| 7 | `theorem` | [natDegree_C_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-c-mul-le--8e5819c14a52a594af189459.md) | 93 | `result-track:8e5819c14a52a594af189459e74b5d59fda1f7cca8d21bdeac0bfa6c760547b8` |
| 8 | `theorem` | [natDegree_mul_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-c-le--c0847eb4a2f5dbef058660e9.md) | 96 | `result-track:c0847eb4a2f5dbef058660e9501aa218bf92e06924708cb5e3c9720d5ad088be` |
| 9 | `theorem` | [eq_natDegree_of_le_mem_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/eq-natdegree-of-le-mem-support--87f9724039099ffd31d33254.md) | 99 | `result-track:87f9724039099ffd31d33254be95a37feb005d6cdeec6efadc1dd89c67034b9d` |
| 10 | `theorem` | [natDegree_C_mul_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-c-mul-eq-of-mul-eq-one--360327d510c32342afb103fc.md) | 103 | `result-track:360327d510c32342afb103fc92e838f50ae918669ce1a9157213b42869f82e87` |
| 11 | `theorem` | [natDegree_mul_C_eq_of_mul_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-c-eq-of-mul-eq-one--fdbec10592a56fbb15816d98.md) | 111 | `result-track:fdbec10592a56fbb15816d98a879d86b321b88e49f2b83bbdd63922aa411d11f` |
| 12 | `theorem` | [natDegree_mul_C_eq_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-c-eq-of-mul-ne-zero--1c00fc4564f3d40ceee63882.md) | 122 | `result-track:1c00fc4564f3d40ceee63882c81378e2717f69789610b2cfe0b2c557fd926f6f` |
| 13 | `theorem` | [natDegree_C_mul_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-c-mul-of-mul-ne-zero--b4bb090bbe48039b1e1b3ba2.md) | 131 | `result-track:b4bb090bbe48039b1e1b3ba2577363da98b76c5187837dceb54a426e1cfed3ec` |
| 14 | `lemma` | [degree_C_mul_of_mul_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-c-mul-of-mul-ne-zero--872de9cdef95cd5909655cf4.md) | 140 | `result-track:872de9cdef95cd5909655cf46068dd3c452ed55faa2b1e14bf744a6794cccc19` |
| 15 | `theorem` | [natDegree_add_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-add-coeff-mul--e55e898d11ee320640644a17.md) | 143 | `result-track:e55e898d11ee320640644a178255afc53c2b134f6a7b5036f97c7db2990d4056` |
| 16 | `theorem` | [natDegree_lt_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-lt-coeff-mul--55541c50a66e60dbc96153f7.md) | 147 | `result-track:55541c50a66e60dbc96153f7cba69eff5fcbd0f5489b9f2f659325630cc1ec0a` |
| 17 | `theorem` | [coeff_mul_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-mul-of-natdegree-le--bb9fbf0e6579cf969994d9d9.md) | 151 | `result-track:bb9fbf0e6579cf969994d9d9725f8cd4244deabaee477393f78bdacbcb92d4cd` |
| 18 | `theorem` | [coeff_pow_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-pow-of-natdegree-le--7b9531a6928268c71d5eaa44.md) | 159 | `result-track:7b9531a6928268c71d5eaa44d09474e48bccb30743582dd91d5dccc8ba886d18` |
| 19 | `theorem` | [coeff_pow_eq_ite_of_natDegree_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-pow-eq-ite-of-natdegree-le-of-le--217dd3b535c22a4a6c5de88f.md) | 167 | `result-track:217dd3b535c22a4a6c5de88f0e3802e3de3f71fc55395dc536e16c47e9c0e90e` |
| 20 | `theorem` | [coeff_add_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-add-eq-left-of-lt--1fcf454152d494fb63bfdc24.md) | 175 | `result-track:1fcf454152d494fb63bfdc24bb37a161c4f591e6c985d509c1e4316b1d952b5a` |
| 21 | `theorem` | [coeff_add_eq_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-add-eq-right-of-lt--9226251aeec22135bed3ef65.md) | 179 | `result-track:9226251aeec22135bed3ef65ef1cd4fe9f2c7de142f940593d75cb44aa7643d9` |
| 22 | `theorem` | [degree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-sum-eq-of-disjoint--6a91cafc6ad010dba1965110.md) | 185 | `result-track:6a91cafc6ad010dba196511079580a3fdbd841bdc9e7bb552266fe95fba91d0b` |
| 23 | `theorem` | [natDegree_sum_eq_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-sum-eq-of-disjoint--93a2af13dc00668a21195739.md) | 210 | `result-track:93a2af13dc00668a2119573973431dd26d14d8ea4da801c3471c96cf4cc21273` |
| 24 | `theorem` | [natDegree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-pos-of-eval-root--f4298b35842d65f29f4a0ccb.md) | 244 | `result-track:f4298b35842d65f29f4a0ccb4483dc3a89008fae17189652e5f265f9afdcffb9` |
| 25 | `theorem` | [degree_pos_of_eval₂_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-pos-of-eval-root--caca76c08b797d03619d41ff.md) | 252 | `result-track:caca76c08b797d03619d41ffa7bbddfd717f674a7e6fdbf95f1dda44b1c0358c` |
| 26 | `theorem` | [coe_lt_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coe-lt-degree--147d42515f0d344357239516.md) | 257 | `result-track:147d42515f0d3443572395167be6b0017af435e1f23c98fdb2ee02fa7b52d4c1` |
| 27 | `theorem` | [degree_map_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-map-eq-iff--db89ae896829fb55ef9efdef.md) | 263 | `result-track:db89ae896829fb55ef9efdef3788ed1490cf2e59edc7bdf070babd21d0d13a31` |
| 28 | `theorem` | [natDegree_map_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-map-eq-iff--a3fd1e823b93dbd3f943b8b5.md) | 275 | `result-track:a3fd1e823b93dbd3f943b8b5aaf8fc59ca744c62f2cf7fa5fd8508b0cda5ad98` |
| 29 | `theorem` | [natDegree_pos_of_nextCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-pos-of-nextcoeff-ne-zero--6699b0549ea6f78dedd2fb4d.md) | 282 | `result-track:6699b0549ea6f78dedd2fb4d1413cc5b4d37247c20d0f628ffab958104a117cd` |
| 30 | `theorem` | [natDegree_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-sub--10e3d165b9c68765dcd55c76.md) | 296 | `result-track:10e3d165b9c68765dcd55c76abb66d9dbd113009026f3cb8e431425cf240afa9` |
| 31 | `theorem` | [natDegree_sub_le_iff_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-sub-le-iff-left--e7025f2d0ccae930205d41db.md) | 298 | `result-track:e7025f2d0ccae930205d41db68ff87873568cc882d0554fdd92061780e79154e` |
| 32 | `theorem` | [natDegree_sub_le_iff_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-sub-le-iff-right--2c864fb74d874cd9100a18ce.md) | 303 | `result-track:2c864fb74d874cd9100a18ce9904c9f6be95c7820a0e485e16290c7966f637fe` |
| 33 | `theorem` | [coeff_sub_eq_left_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-sub-eq-left-of-lt--f37f1a8e82dc8cf171bd50b4.md) | 306 | `result-track:f37f1a8e82dc8cf171bd50b4bde1b2a69152c65b15f5ade9384b245b3d0c324e` |
| 34 | `theorem` | [coeff_sub_eq_neg_right_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/coeff-sub-eq-neg-right-of-lt--1a06fa07ecfa5e09f372772d.md) | 310 | `result-track:1a06fa07ecfa5e09f372772dea6217273c942a77b815f88715e3f0987fb1ff66` |
| 35 | `lemma` | [nextCoeff_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/nextcoeff-c-mul-x-add-c--444a9598dbcbc93ff47cfe3f.md) | 320 | `result-track:444a9598dbcbc93ff47cfe3fe1746d40dc0e0478b18aba024296b40045571141` |
| 36 | `lemma` | [natDegree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-eq-one--2a4dd2e824d8baffb419ea29.md) | 323 | `result-track:2a4dd2e824d8baffb419ea2975849c7c7aa95cc14c26dbf8c5320cbde4acee58` |
| 37 | `theorem` | [degree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-mul-c--86599347def2e6d8e03603ae.md) | 339 | `result-track:86599347def2e6d8e03603aefde7fefb75116a3b8c95a67dfc0b96929e0ee812` |
| 38 | `theorem` | [degree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-c-mul--a55ed057997a30407a275651.md) | 342 | `result-track:a55ed057997a30407a275651baef003d07d880beabdd7fd957101bcbb8c95d9a` |
| 39 | `theorem` | [natDegree_mul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-c--36b9e89feb35887138cecbcb.md) | 345 | `result-track:36b9e89feb35887138cecbcbf41f03a96bd2e2b9d09ee74421e0d8782b54a20d` |
| 40 | `theorem` | [natDegree_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-c-mul--ea6053d2be6d55740f6f7781.md) | 348 | `result-track:ea6053d2be6d55740f6f7781bd63f8db69a6cf055160ebad4caf756fcab3ff6b` |
| 41 | `theorem` | [natDegree_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-comp--5796de34e75290914868d1e0.md) | 351 | `result-track:5796de34e75290914868d1e000767bfccda40c0cf4d285365ec8cdd119b6afff` |
| 42 | `theorem` | [natDegree_iterate_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-iterate-comp--0861cb60863e348706644689.md) | 361 | `result-track:0861cb60863e348706644689f5dd057c9dd8efeefbaf968d5448709f3c5f586d` |
| 43 | `theorem` | [leadingCoeff_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/leadingcoeff-comp--706eb9446573aa80c0eeb164.md) | 367 | `result-track:706eb9446573aa80c0eeb16476f83b21caa431709de98f40881e0bbe2c01fd21` |
| 44 | `lemma` | [comp_neg_X_leadingCoeff_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/comp-neg-x-leadingcoeff-eq--8b9a4714c80973729f536214.md) | 373 | `result-track:8b9a4714c80973729f536214eebde458f33f57569383091223edaded8684f690` |
| 45 | `lemma` | [comp_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/comp-eq-zero-iff--78d30fd85ddfee0822d61191.md) | 381 | `result-track:78d30fd85ddfee0822d6119181a143be4bc7ebcd320f3e957a936b315aa4a1ea` |
| 46 | `theorem` | [irreducible_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/irreducible-mul-leadingcoeff-inv--1512c08b3fbcaa1a7c0904b7.md) | 398 | `result-track:1512c08b3fbcaa1a7c0904b76d1cb102dad85e5259c679fb827433b7a0922864` |
| 47 | `lemma` | [dvd_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/dvd-mul-leadingcoeff-inv--45a671e3a3929cdd78a0bb3e.md) | 405 | `result-track:45a671e3a3929cdd78a0bb3ed9f410535283169d2bf97c5e3dceda854cfb1738` |
| 48 | `theorem` | [monic_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/monic-mul-leadingcoeff-inv--ef0eb6ccee41c9c21b4aaa0d.md) | 409 | `result-track:ef0eb6ccee41c9c21b4aaa0d865eca8dd71245eb146dfea6c351b31200248da1` |
| 49 | `lemma` | [degree_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-leadingcoeff-inv--73aa3998009e299ff9a0a012.md) | 414 | `result-track:73aa3998009e299ff9a0a01272a37d43e80cf6bc656ef0fef8ed4cf4dc5e727a` |
| 50 | `theorem` | [degree_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-mul-leadingcoeff-inv--b3af99cbe9d2d6033f2c83b6.md) | 418 | `result-track:b3af99cbe9d2d6033f2c83b6e3d851d8297dcf74ab8cb7fe1df54594c8781f4d` |
| 51 | `theorem` | [natDegree_mul_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-leadingcoeff-inv--4f57f25b5092a49db2d15ffb.md) | 423 | `result-track:4f57f25b5092a49db2d15ffb0b120d940da5b2a6f8bf96635db87c62b3f758ae` |
| 52 | `theorem` | [degree_mul_leadingCoeff_self_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-mul-leadingcoeff-self-inv--b0d748d8b9c8cbd3d3ba23f5.md) | 427 | `result-track:b0d748d8b9c8cbd3d3ba23f5323d2738c8a032fd67384f2cab3d8e9fc5d2913a` |
| 53 | `theorem` | [natDegree_mul_leadingCoeff_self_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/natdegree-mul-leadingcoeff-self-inv--f22eec5295c7a63abe30a77c.md) | 433 | `result-track:f22eec5295c7a63abe30a77cb03cc9013d44a9b228f83f71ca1c51e864936656` |
| 54 | `lemma` | [degree_add_degree_leadingCoeff_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/declarations/degree-add-degree-leadingcoeff-inv--f0f01843915d1dac7352ac55.md) | 438 | `result-track:f0f01843915d1dac7352ac55cd225643735170b01f7e119565852a49ddfdf321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
