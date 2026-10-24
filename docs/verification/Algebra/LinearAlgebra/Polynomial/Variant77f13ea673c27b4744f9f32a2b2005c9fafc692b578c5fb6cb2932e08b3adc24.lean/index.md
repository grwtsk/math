# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d473aab803cf85e3bedcbb37884be3bb3f192cd",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d473aab803cf85e3bedcbb37884be3bb3f192cd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial--fa14384ca56582c3c8a4a256.md) | 83 | `declaration-track:fa14384ca56582c3c8a4a256e4c029a0265d6f3c2572ed5e71e4b4d99cde7241` |
| 2 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-eval-eq-apply--128186c484a95cf7ed99e0f7.md) | 86 | `result-track:128186c484a95cf7ed99e0f76e4cc822d97a14c8dd3dfe80c5c750f9b08004a2` |
| 3 | `lemma` | [toMvPolynomial_map](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-map--0e30389c36dc4c1ab3395c3c.md) | 91 | `result-track:0e30389c36dc4c1ab3395c3cc1252027969f45d42f7c4db08b8c84d2882b8ae9` |
| 4 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-ishomogeneous--43bf0765f3a3e5255d7e7c6e.md) | 95 | `result-track:43bf0765f3a3e5255d7e7c6e42bcf8f21d43943116e15cd202c9719c2561d171` |
| 5 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-totaldegree-le--52d5ac89a8fa3c7c30b6fd95.md) | 102 | `result-track:52d5ac89a8fa3c7c30b6fd95c5b88699402755fd0badc1cd519f3764cf97dc65` |
| 6 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-constantcoeff--5c489bfc16472f0f7592a631.md) | 107 | `result-track:5c489bfc16472f0f7592a63137da6286d59e9e38ea3fe6deb95354c13c562295` |
| 7 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-zero--02c5f5442d90da0507142d29.md) | 113 | `result-track:02c5f5442d90da0507142d29b48ff2085a61ad5f6b8972d73ff609eff76e07ab` |
| 8 | `lemma` | [toMvPolynomial_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-one--5ef01f9a22892448bf13ca1c.md) | 117 | `result-track:5ef01f9a22892448bf13ca1c5ce3c8b77ebb93fa0a24256d3cf079375755710c` |
| 9 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-add--0c46a224957f836f95542893.md) | 125 | `result-track:0c46a224957f836f95542893cdbf3c4d9375adb6c783578cb5fb0e57450263b2` |
| 10 | `lemma` | [toMvPolynomial_mul](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-mul--b9775c4623652fbd8b4368da.md) | 131 | `result-track:b9775c4623652fbd8b4368da0c0396760fcb7f58d3cedd1df26b572aed72c21e` |
| 11 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial--1e42a27c4afb081b60fb1e48.md) | 159 | `declaration-track:1e42a27c4afb081b60fb1e485cf12d83d7fb83476b58c0aea65fc88ad1ba1e25` |
| 12 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-eval-eq-apply--78f6fe3128b791ae819bb871.md) | 163 | `result-track:78f6fe3128b791ae819bb8712a993874b7c761fa008cc531308160919b25ffb6` |
| 13 | `lemma` | [toMvPolynomial_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-basechange--bd33c255e6cc1d45edbeca20.md) | 169 | `result-track:bd33c255e6cc1d45edbeca206903ed13b4cbd5047caa8e9ace3c1643b1111673` |
| 14 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-ishomogeneous--e3f93b85bdf727ca7ce5270d.md) | 174 | `result-track:e3f93b85bdf727ca7ce5270d0f9beedb48c20f965118d037c58fc867888175d5` |
| 15 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-totaldegree-le--1c21d3e66e28ff26f8902c3e.md) | 178 | `result-track:1c21d3e66e28ff26f8902c3e7759fe2fcf38ab4068636cb97d01c23cda2532e7` |
| 16 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-constantcoeff--5c78362cef8653cac2a5a7ef.md) | 183 | `result-track:5c78362cef8653cac2a5a7ef49406ab4c353586073aac7d574e09b4a6b125c9f` |
| 17 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-zero--b3e146b0f896e84524bb7dbc.md) | 188 | `result-track:b3e146b0f896e84524bb7dbc9e3980592a9efab6d2f349140a89de203408080b` |
| 18 | `lemma` | [toMvPolynomial_id](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-id--e55d343a300b07da6a9159d1.md) | 192 | `result-track:e55d343a300b07da6a9159d1f966db682181c29bbdf1b805215bc46742572a97` |
| 19 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-add--2e56f7a6ba53500489df101f.md) | 195 | `result-track:2e56f7a6ba53500489df101fb3358a63db070abcf6930bc55895734e477c65c4` |
| 20 | `lemma` | [toMvPolynomial_comp](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/tomvpolynomial-comp--6682e12acb67faa62d59b56f.md) | 208 | `result-track:6682e12acb67faa62d59b56ff4c9520f4a6845c964b88c6e9385d9d444178916` |
| 21 | `def` | [polyCharpolyAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux--c8ec67e402cac44d4275c304.md) | 240 | `declaration-track:c8ec67e402cac44d4275c3049b5bcb19179d7878f89902394e2f6f67576da9b3` |
| 22 | `lemma` | [polyCharpolyAux_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-basechange--7f72fab9070907705a6e3c30.md) | 245 | `result-track:7f72fab9070907705a6e3c30dda8fe9d50b4f1eae693e8ed373683d38ab668af` |
| 23 | `lemma` | [polyCharpolyAux_map_eq_toMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-map-eq-tomatrix-charpoly--6fd8a606149589068ad7dbb2.md) | 277 | `result-track:6fd8a606149589068ad7dbb26a76a66cfd92c16b1982559f3ace61166f3c2fb8` |
| 24 | `lemma` | [polyCharpolyAux_eval_eq_toMatrix_charpoly_coeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-eval-eq-tomatrix-charpoly-coeff--271cf1755a9cbc042b488ca3.md) | 288 | `result-track:271cf1755a9cbc042b488ca3f71bac9ba0731ba676690a635a33097865a24fe5` |
| 25 | `lemma` | [polyCharpolyAux_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-map-eq-charpoly--8e99dd1245cff3487a631f73.md) | 294 | `result-track:8e99dd1245cff3487a631f7329c21eedd22f6cfff50581b5d293845264c8465f` |
| 26 | `lemma` | [polyCharpolyAux_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-coeff-eval--b91018dc1b40bfc59dd68131.md) | 301 | `result-track:b91018dc1b40bfc59dd68131a193867c2901deb4c63e36dc3621c2c0f390d377` |
| 27 | `lemma` | [polyCharpolyAux_map_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-map-eval--0248f52f676c43bb5db1c34d.md) | 307 | `result-track:0248f52f676c43bb5db1c34d8727eaffdbb994958f9bacbe85c09ff48e1bb432` |
| 28 | `lemma` | [polyCharpolyAux_map_aeval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-map-aeval--986ace4492caa58f4d3e98c5.md) | 315 | `result-track:986ace4492caa58f4d3e98c5bdda764a429457f5355590dad419065a868dcfec` |
| 29 | `lemma` | [polyCharpolyAux_basisIndep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpolyaux-basisindep--be2cddc8d52c154d5e20b1ab.md) | 336 | `result-track:be2cddc8d52c154d5e20b1abb47975b53dac3ca08774fb80387c96ca7a15dbcf` |
| 30 | `def` | [polyCharpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly--c1a3e2f0728bbd7e7d1ed95d.md) | 363 | `declaration-track:c1a3e2f0728bbd7e7d1ed95d08f78b63510cf8a2b4be0ce39be6f2f50b0ac3f0` |
| 31 | `lemma` | [polyCharpoly_eq_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-eq-of-basis--d88048422c0179f411938788.md) | 366 | `result-track:d88048422c0179f411938788f32329041d5b2b2cb3e4b6c9a8a7d18a06aa69ea` |
| 32 | `lemma` | [polyCharpoly_monic](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-monic--151dcf5bdccd041c0dd471cd.md) | 372 | `result-track:151dcf5bdccd041c0dd471cd51a4c3c7cfb7bf639871f1e13fdd4f631e3480be` |
| 33 | `lemma` | [polyCharpoly_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-ne-zero--e4b345836132854901ece418.md) | 375 | `result-track:e4b345836132854901ece418b751beb4f7d38b2404c8dc62639aae19544bb553` |
| 34 | `lemma` | [polyCharpoly_natDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-natdegree--462164e76762b49eebdc73e0.md) | 379 | `result-track:462164e76762b49eebdc73e08b79404b31b7e1a725d66237bd429b4bbe030b53` |
| 35 | `lemma` | [polyCharpoly_coeff_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-ishomogeneous--d5579287b16db0c8e4929d0d.md) | 384 | `result-track:d5579287b16db0c8e4929d0d4b691cec14168c41af99f5f263308107af9e662d` |
| 36 | `lemma` | [polyCharpoly_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-basechange--fa8bb41f659abf158e1627a1.md) | 393 | `result-track:fa8bb41f659abf158e1627a11deecf5de41568469c9f3709f48b8d53ae3f42e5` |
| 37 | `lemma` | [polyCharpoly_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-map-eq-charpoly--1d61a05f1aa12a226a47be2f.md) | 401 | `result-track:1d61a05f1aa12a226a47be2fbd408702ca9ddef9905f657e0f37829979b094cc` |
| 38 | `lemma` | [polyCharpoly_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-eval--91cbcbf668d966afeb2a959c.md) | 406 | `result-track:91cbcbf668d966afeb2a959c471085fea6d17118a616d4edf5785cfa1078bfc2` |
| 39 | `lemma` | [polyCharpoly_coeff_eq_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-eq-zero-of-basis--65784577540634996605add6.md) | 410 | `result-track:65784577540634996605add6ddf5e43e904fcf1a48a6b348afe74948b9ff0d6c` |
| 40 | `lemma` | [polyCharpoly_coeff_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-eq-zero-iff-of-basis--f601471e188613ad51176f6e.md) | 421 | `result-track:f601471e188613ad51176f6ebc131d00f9b43c1f6ea21eb64d420ffe306ebf25` |
| 41 | `def` | [nilRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrankaux--5d68541ca498523dcf70f3d6.md) | 436 | `declaration-track:5d68541ca498523dcf70f3d686bf47fef16817bad75b812b1c0ac0fa9e7275e8` |
| 42 | `lemma` | [polyCharpoly_coeff_nilRankAux_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-nilrankaux-ne-zero--a86110680bd60006c694e8ca.md) | 439 | `result-track:a86110680bd60006c694e8ca3dcb22262aaa114f3f14df47df547a9a7f8dba25` |
| 43 | `lemma` | [nilRankAux_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrankaux-le--6d9891df50afb9659470248e.md) | 444 | `result-track:6d9891df50afb9659470248e571c534ba06b3dd4f4ccc680d8a452763dc337d3` |
| 44 | `lemma` | [nilRankAux_basis_indep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrankaux-basis-indep--9be23d0bd6a9fda2deb2e0ac.md) | 450 | `result-track:9be23d0bd6a9fda2deb2e0aca49aded800d1021fc757729354bd8f1f95025fd5` |
| 45 | `def` | [nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrank--d024c289f4ef60b835ec908d.md) | 466 | `declaration-track:d024c289f4ef60b835ec908ddd3ad7c5ea72a524ac8fb04abeb8c4b76e22ee3f` |
| 46 | `lemma` | [nilRank_eq_polyCharpoly_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrank-eq-polycharpoly-nattrailingdegree--67b57398b2f1050fafe73f8d.md) | 472 | `result-track:67b57398b2f1050fafe73f8d687800496b9c4231e92d3037dc718ffc829ec03b` |
| 47 | `lemma` | [polyCharpoly_coeff_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/polycharpoly-coeff-nilrank-ne-zero--f374090b8e2b18c944a842fc.md) | 476 | `result-track:f374090b8e2b18c944a842fc8e3e2d76aeb3f3279b5e02686675d3496a8675f2` |
| 48 | `lemma` | [nilRank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrank-le-card--5b01d5897dc4016bd1358c6f.md) | 483 | `result-track:5b01d5897dc4016bd1358c6f20ba9a5ec18c1d01a852a9a8d0e4cb22f1e18a25` |
| 49 | `lemma` | [nilRank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrank-le-finrank--5da3bc323e253e8838257ca1.md) | 489 | `result-track:5da3bc323e253e8838257ca1b5b2c44671a5ab32fa3586c27957ed472d0f4b68` |
| 50 | `lemma` | [nilRank_le_natTrailingDegree_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/nilrank-le-nattrailingdegree-charpoly--b94b03d1ff13c293d6dd5f07.md) | 492 | `result-track:b94b03d1ff13c293d6dd5f07992f02fd560bfde68483c4dbf1e03fe2c140a314` |
| 51 | `def` | [IsNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/isnilregular--e06d0aafcdeebe2306d4a2b0.md) | 509 | `declaration-track:e06d0aafcdeebe2306d4a2b08025e35b657dbf2d3bae3d4a137f0cd06456a84b` |
| 52 | `lemma` | [isNilRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/isnilregular-def--32a0ed8460b4117b50e80bc1.md) | 514 | `result-track:32a0ed8460b4117b50e80bc144b0cd47f18d2c2dcd0e622c42d11618f392c802` |
| 53 | `lemma` | [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/isnilregular-iff-coeff-polycharpoly-nilrank-ne-zero--02b441f8bcbed922021babb3.md) | 517 | `result-track:02b441f8bcbed922021babb3f49d9a2e7b4706d6c2fd1ec457d6103febc9bd0b` |
| 54 | `lemma` | [isNilRegular_iff_natTrailingDegree_charpoly_eq_nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/isnilregular-iff-nattrailingdegree-charpoly-eq-nilrank--925e2361a760cdef7b6ac51c.md) | 523 | `result-track:925e2361a760cdef7b6ac51cf1bacf67a8832c0a74f094f97fabe1ee51b9be5e` |
| 55 | `lemma` | [exists_isNilRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/exists-isnilregular-of-finrank-le-card--61a9f2cd21e717243f0793b6.md) | 541 | `result-track:61a9f2cd21e717243f0793b653a79ca6accb9d29cd37aaaae258e889307e3de3` |
| 56 | `lemma` | [exists_isNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant77f13ea673c27b4744f9f32a2b2005c9fafc692b578c5fb6cb2932e08b3adc24.lean/declarations/exists-isnilregular--28b994e36ea1388ca846e891.md) | 559 | `result-track:28b994e36ea1388ca846e8919a98496b204eaca7b556fd2a9dc8d2ae8c059dee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
