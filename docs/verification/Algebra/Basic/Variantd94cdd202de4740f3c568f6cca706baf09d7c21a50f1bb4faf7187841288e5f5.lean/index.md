# Verification target: GRWTSK.Algebra.Basic.Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e51ffafde8577ca387bfc6ce1dfebcd1381274f7",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e51ffafde8577ca387bfc6ce1dfebcd1381274f7`.

Source path: `GRWTSK/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_prod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/rel-prod--35b81f773a05fe739dcadbe2.md) | 42 | `result-track:35b81f773a05fe739dcadbe26254f54386ffed380fddd23abb71bea3cc7ec4b8` |
| 2 | `theorem` | [prod_hom_nonempty](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-hom-nonempty--e32bd29f22950b80912f9f4b.md) | 47 | `result-track:e32bd29f22950b80912f9f4bbdb0ef020e4f3d7dd91d231cce5ccd468706f073` |
| 3 | `theorem` | [prod_hom](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-hom--ae21a5b37a89b5a55edc4177.md) | 52 | `result-track:ae21a5b37a89b5a55edc41779f1cfd2bae0812f712ad0aa1b6e00bb1c04bf202` |
| 4 | `theorem` | [prod_hom₂_nonempty](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-hom-nonempty--ab2518d0caa558e8d91cb7e5.md) | 58 | `result-track:ab2518d0caa558e8d91cb7e524cf287bf877bc79f7f8abaab247cf976798483d` |
| 5 | `theorem` | [prod_hom₂](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-hom--58ffbac4fb35fdbafcb5f948.md) | 64 | `result-track:58ffbac4fb35fdbafcb5f9488bc1b408735b3c0d592e07621a1e1a4922b4da06` |
| 6 | `theorem` | [prod_map_mul](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-mul--e7a13f1f8d40cb74589285ef.md) | 71 | `result-track:e7a13f1f8d40cb74589285ef43bd11442c46eb78195ff85220df0feab474c0aa` |
| 7 | `theorem` | [prod_map_hom](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-hom--a37e15a4d890eba6928c25de.md) | 76 | `result-track:a37e15a4d890eba6928c25ded4bfdd3474be07ffeb80d68d2fe6e2da133c6359` |
| 8 | `theorem` | [prod_take_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-take-mul-prod-drop--95cff04707d03c7dc9633cd5.md) | 81 | `result-track:95cff04707d03c7dc9633cd52bd39bae9678ad359da5438d46f2b1f709b3da86` |
| 9 | `theorem` | [prod_take_succ](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-take-succ--df225d5919de62cc94989681.md) | 86 | `result-track:df225d5919de62cc9498968132784fdae54c1f1f3ee4f984358bd1459f5aec59` |
| 10 | `theorem` | [length_pos_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/length-pos-of-prod-ne-one--60f4acae1cf29b64cc9b9a80.md) | 93 | `result-track:60f4acae1cf29b64cc9b9a807591c4b8160f6e52354362146145cc3c10df6b84` |
| 11 | `theorem` | [length_pos_of_one_lt_prod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/length-pos-of-one-lt-prod--ae185f05101eda57e7c2b5bd.md) | 100 | `result-track:ae185f05101eda57e7c2b5bd6fa5adec70687809c7e653ecbb09d74b9dcdc65f` |
| 12 | `theorem` | [length_pos_of_prod_lt_one](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/length-pos-of-prod-lt-one--7380536dea2df4ac17d3fd1c.md) | 105 | `result-track:7380536dea2df4ac17d3fd1c71e00e456a5c620473af5d03721ccb8a42564116` |
| 13 | `theorem` | [prod_set](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-set--7e303e1e24c47c8f25a2f189.md) | 109 | `result-track:7e303e1e24c47c8f25a2f189c32feb1f73dcf9f10ebba497ea0a0e4c7318a0da` |
| 14 | `theorem` | [getElem?_zero_mul_tail_prod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/getelem-zero-mul-tail-prod--0050a38ea8719bc8eaf0a403.md) | 124 | `result-track:0050a38ea8719bc8eaf0a403e1267ce7aed19c4bbc06ebb83fa1e1adcc3a3d9d` |
| 15 | `theorem` | [headI_mul_tail_prod_of_ne_nil](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/headi-mul-tail-prod-of-ne-nil--40fb4d76e1c0ad1f3f6fa701.md) | 131 | `result-track:40fb4d76e1c0ad1f3f6fa701bae3be9aeedd0008152c0a6bbeee77a7b6aab085` |
| 16 | `theorem` | [_root_.Commute.list_prod_right](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/root-commute-list-prod-right--6978fda58f69b02c29786602.md) | 135 | `result-track:6978fda58f69b02c29786602ab6e2e2660aad8b1a41b774410d6fd98e7567c63` |
| 17 | `theorem` | [_root_.Commute.list_prod_left](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/root-commute-list-prod-left--dafab3aef6663b630e547f2e.md) | 145 | `result-track:dafab3aef6663b630e547f2ee219b75def989f4c9f41a0c17f15d35095c2a973` |
| 18 | `lemma` | [prod_range_succ](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-range-succ--83ba94fe9b4f82524fb552d2.md) | 149 | `result-track:83ba94fe9b4f82524fb552d22605a9b31969df99cd7f6eb0e104a63a24f0516a` |
| 19 | `lemma` | [prod_range_succ'](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-range-succ--8f978cfb966e476fa4e2ccca.md) | 157 | `result-track:8f978cfb966e476fa4e2ccca2316c46ad865f56257c71c693b63b2875d31afc4` |
| 20 | `lemma` | [prod_eq_one](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-eq-one--54aa0c44870349bc55799d4e.md) | 162 | `result-track:54aa0c44870349bc55799d4e0d59e506183e7e9ec26bd28bf4a7d279c6120aa2` |
| 21 | `lemma` | [exists_mem_ne_one_of_prod_ne_one](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/exists-mem-ne-one-of-prod-ne-one--2b705a80d71ca94576f54dfc.md) | 169 | `result-track:2b705a80d71ca94576f54dfce1cc63f88dc8a1009b9174ea12510a218f400c33` |
| 22 | `lemma` | [prod_erase_of_comm](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-erase-of-comm--7c3a7eeeb2fcdccc88282b9e.md) | 173 | `result-track:7c3a7eeeb2fcdccc88282b9e58f7a8a5ca195261af7ef2349fb9a32749018e00` |
| 23 | `lemma` | [prod_map_eq_pow_single](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-eq-pow-single--8895cf86f4b1a2d3b8cbe3ac.md) | 185 | `result-track:8895cf86f4b1a2d3b8cbe3ac0053ec7dbe6e3910cbd703e123886234223deba5` |
| 24 | `lemma` | [prod_eq_pow_single](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-eq-pow-single--d043a54ce1a1d773d5244de6.md) | 198 | `result-track:d043a54ce1a1d773d5244de6c0d556d60ba1d85e3932083be63a19b734d413d1` |
| 25 | `theorem` | [prod_insertIdx](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-insertidx--887fac099f5ee13a091729f7.md) | 203 | `result-track:887fac099f5ee13a091729f7fa693cac7836851c911d26675137a4fa1b1e7f62` |
| 26 | `theorem` | [mul_prod_eraseIdx](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/mul-prod-eraseidx--3d34b949f111ce795785d64a.md) | 214 | `result-track:3d34b949f111ce795785d64adec08a7249d869acf14c8cd4f5edb93d0e79eafc` |
| 27 | `theorem` | [prod_filter_bne_one](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-filter-bne-one--a14ecc93df7134cd6446cbd8.md) | 221 | `result-track:a14ecc93df7134cd6446cbd8495ee8431c7b808914b66828ebe89b04b063e825` |
| 28 | `theorem` | [CommMonoid.prod_insertIdx](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/commmonoid-prod-insertidx--415b993253de76b9017dbdd0.md) | 231 | `result-track:415b993253de76b9017dbdd03e0a2fbe4e76e94b19e6b2414ad59c49c0dfc48b` |
| 29 | `theorem` | [CommMonoid.mul_prod_eraseIdx](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/commmonoid-mul-prod-eraseidx--2baed0783b90cc85bcd04d4d.md) | 235 | `result-track:2baed0783b90cc85bcd04d4df85b58506c966545f09688cf91e47b7f4338c7cc` |
| 30 | `lemma` | [prod_erase](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-erase--723519ba291429200d250bd7.md) | 239 | `result-track:723519ba291429200d250bd7734cec5b3bf06808e6d46b9d5083d0b50b168f8c` |
| 31 | `lemma` | [prod_map_erase](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-erase--390dc885022c225eb000d848.md) | 243 | `result-track:390dc885022c225eb000d848aca098f272a61011a798ed1e0a7c047365e6e234` |
| 32 | `lemma` | [Perm.prod_eq](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/perm-prod-eq--10c8fc9e656f48849a92edbf.md) | 251 | `result-track:10c8fc9e656f48849a92edbf03158279e47d4505f94bade01da96060b4420a97` |
| 33 | `lemma` | [prod_mul_prod_eq_prod_zipWith_mul_prod_drop](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-mul-prod-eq-prod-zipwith-mul-prod-drop--633f852aa595dd62c122ce63.md) | 256 | `result-track:633f852aa595dd62c122ce63df17ff9dfe8c0e1340ba734f081221ac262a7a93` |
| 34 | `lemma` | [prod_mul_prod_eq_prod_zipWith_of_length_eq](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-mul-prod-eq-prod-zipwith-of-length-eq--db52c983931c42152d429ce8.md) | 270 | `result-track:db52c983931c42152d429ce862624c5692ba991303e178d7e7426a23c451fbf2` |
| 35 | `lemma` | [prod_map_ite](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-ite--9f3ba65753007b5203fd1567.md) | 276 | `result-track:9f3ba65753007b5203fd156783a9129a0d4b8efc42051907fef756dc1f276d3b` |
| 36 | `lemma` | [prod_map_filter_mul_prod_map_filter_not](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-filter-mul-prod-map-filter-not--d19534370937e880ea7ac16b.md) | 292 | `result-track:d19534370937e880ea7ac16bfab8a53d9777237e103bdf76100596b0be16fe61` |
| 37 | `lemma` | [eq_of_prod_take_eq](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/eq-of-prod-take-eq--ce353c12b635cb33357b1e30.md) | 301 | `result-track:ce353c12b635cb33357b1e3097680b6fe546c7b205f2b31c929e2279ea6628b6` |
| 38 | `theorem` | [prod_inv_reverse](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-inv-reverse--584baa93d3a9434c6a58a852.md) | 314 | `result-track:584baa93d3a9434c6a58a85237e2580946408f222e50257eb7719c52d2a164eb` |
| 39 | `theorem` | [prod_reverse_noncomm](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-reverse-noncomm--aa0f1162fb3a11c025420448.md) | 320 | `result-track:aa0f1162fb3a11c0254204480b6e20c4cfa17315afc089082c69cc97c90ed61d` |
| 40 | `theorem` | [prod_drop_succ](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-drop-succ--4fc6d2eed32b18c49de289b2.md) | 326 | `result-track:4fc6d2eed32b18c49de289b2ec8d93bb250477893fff825b0089779c58104851` |
| 41 | `theorem` | [prod_range_div'](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-range-div--c3128e3169e336c82d295f55.md) | 334 | `result-track:c3128e3169e336c82d295f55dd6d1b29a1649053593cfd750f6e984bdf5fa3bc` |
| 42 | `theorem` | [prod_inv](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-inv--923e3876386b126d8894c6e2.md) | 348 | `result-track:923e3876386b126d8894c6e2cb31b109682383d3d184f8402e07a08f5991f9db` |
| 43 | `theorem` | [prod_range_div](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-range-div--75edfe27f77ff748a4ff7d80.md) | 355 | `result-track:75edfe27f77ff748a4ff7d80d80722f80c448d3974b9afecc7ea7000e1fb1dcd` |
| 44 | `theorem` | [prod_set'](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-set--5886f9fb7c5f0463cdd7739e.md) | 362 | `result-track:5886f9fb7c5f0463cdd7739e937af11d76e5a05d49a24e9336d632206439d98d` |
| 45 | `lemma` | [prod_map_ite_eq](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-map-ite-eq--f1d048642dbcdcc868de8b9d.md) | 371 | `result-track:f1d048642dbcdcc868de8b9d7392ab4c8f2502dad825d74b8f3b6ff5fe0b377d` |
| 46 | `theorem` | [sum_const_nat](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/sum-const-nat--df0d6ff2aa10e81bdb48834f.md) | 387 | `result-track:df0d6ff2aa10e81bdb48834f27c21cdd2a9053c96a1e7df8c90e97df4aa8a653` |
| 47 | `theorem` | [headI_add_tail_sum](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/headi-add-tail-sum--2883fe2e216849668f9b78c0.md) | 397 | `result-track:2883fe2e216849668f9b78c0bc82a48d94513a24ea42c0749c9794b24ced2401` |
| 48 | `theorem` | [headI_le_sum](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/headi-le-sum--da2b36c0379b6ff863f5c533.md) | 401 | `result-track:da2b36c0379b6ff863f5c5332cecb45d89046a9f78a3e6b8460a4a94d017205f` |
| 49 | `theorem` | [tail_sum](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/tail-sum--85aeaf6f059175cf64480179.md) | 405 | `result-track:85aeaf6f059175cf64480179efea439491b5999a261a2bc5e0c27220dd116616` |
| 50 | `theorem` | [alternatingProd_nil](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-nil--a3035e731e5edaafb99334ce.md) | 415 | `result-track:a3035e731e5edaafb99334ce80e262ea3c5d32cbc2b83a65e4afb3a28b843d13` |
| 51 | `theorem` | [alternatingProd_singleton](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-singleton--ad0039eebed6f4529e0f3c69.md) | 419 | `result-track:ad0039eebed6f4529e0f3c690844ee9c3bafc5c154d02083ab839dabed75f249` |
| 52 | `theorem` | [alternatingProd_cons_cons'](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-cons-cons--324dadb07344f00ac58af52e.md) | 423 | `result-track:324dadb07344f00ac58af52e6139b10491b21a13e8570c80b00962ff94f4093e` |
| 53 | `theorem` | [alternatingProd_cons_cons](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-cons-cons--769de551de30d8f22e703813.md) | 430 | `result-track:769de551de30d8f22e7038136ba021b7946c48773f0eaaacb82d89de93c8d7c3` |
| 54 | `theorem` | [alternatingProd_cons'](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-cons--af5a63c8056023b04ab32bf4.md) | 437 | `result-track:af5a63c8056023b04ab32bf478b8480ff545a4f574307bc42c2928646e7c7b40` |
| 55 | `theorem` | [alternatingProd_cons](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/alternatingprod-cons--66326aab0866ccc447cd042a.md) | 444 | `result-track:66326aab0866ccc447cd042ae02ecdf4d246e64eb7f310852236ac1878975157` |
| 56 | `lemma` | [sum_nat_mod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/sum-nat-mod--f44fdfa0d5fe635390bc2251.md) | 450 | `result-track:f44fdfa0d5fe635390bc2251be8473d17749878f9d2b24d6eaebfae7e1818fe8` |
| 57 | `lemma` | [prod_nat_mod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-nat-mod--e37ce25b49370a64cc00f532.md) | 456 | `result-track:e37ce25b49370a64cc00f5326eea1f7569f63de4d507bd9e308fa851d5d88261` |
| 58 | `lemma` | [sum_int_mod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/sum-int-mod--a2b801c993ff94f34baae048.md) | 462 | `result-track:a2b801c993ff94f34baae048554281687963e90ab4a9f79799adfe790f58b928` |
| 59 | `lemma` | [prod_int_mod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-int-mod--3f0790defa6c289149123a81.md) | 465 | `result-track:3f0790defa6c289149123a813441b07920ffd7c26460c52c6c88157c0c431562` |
| 60 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/map-list-prod--e4c48c14d6a8cadf29babf14.md) | 475 | `result-track:e4c48c14d6a8cadf29babf14bb38dff590325ccee0157901a1ca9313a61c4533` |
| 61 | `theorem` | [map_list_prod](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/map-list-prod--5d569fe09fe0f31865b62859.md) | 482 | `result-track:5d569fe09fe0f31865b628590ab215fec1b1cee1f4e587596174ce88f338fc66` |
| 62 | `theorem` | [prod_zpow](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/prod-zpow--1cf9c47be72ebfcbc877a262.md) | 491 | `result-track:1cf9c47be72ebfcbc877a2627d3ebb15057f1cb6acd23de16f03da4164b6a883` |
| 63 | `lemma` | [take_sum_flatten](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/take-sum-flatten--3e8823a5a0b8b03a0ec62cec.md) | 498 | `result-track:3e8823a5a0b8b03a0ec62cecbc3cdf8826bd425b636ad8072a2fbb534378a934` |
| 64 | `lemma` | [drop_sum_flatten](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/drop-sum-flatten--a235ba9982fe7e917f77a86c.md) | 506 | `result-track:a235ba9982fe7e917f77a86c2c58dcfb05faeb22a505346a885e25a19c5b21fd` |
| 65 | `theorem` | [length_le_sum_of_one_le](../../../../mathematics/Algebra/Basic/Variantd94cdd202de4740f3c568f6cca706baf09d7c21a50f1bb4faf7187841288e5f5.lean/declarations/length-le-sum-of-one-le--8f390f18187fa5c09f5b1b9e.md) | 519 | `result-track:8f390f18187fa5c09f5b1b9eaca667eee61a7ddcbd589c9f24a977efec92b399` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
