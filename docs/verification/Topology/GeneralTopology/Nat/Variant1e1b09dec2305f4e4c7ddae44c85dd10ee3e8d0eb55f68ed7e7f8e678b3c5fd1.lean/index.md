# Verification target: GRWTSK.Topology.GeneralTopology.Nat.Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81fb6e3d55fd82acd47c9b0f8731696590dc9338",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81fb6e3d55fd82acd47c9b0f8731696590dc9338`.

Source path: `GRWTSK/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean.json)

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
| 1 | `instance` | [instHasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/insthasantidiagonal--28892d40875e0f6574aff0b3.md) | 41 | `declaration-track:28892d40875e0f6574aff0b38a1a285d8252eef6e65da6706e4563c14e22041c` |
| 2 | `def` | [finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag--c2fa104ae03c6ace4b330a1e.md) | 65 | `declaration-track:c2fa104ae03c6ace4b330a1ef1bb8e6d47b789559bec55a83d1759d31914000b` |
| 3 | `theorem` | [mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/mem-finmulantidiag--89362f52c1150b99bea69ff4.md) | 74 | `result-track:89362f52c1150b99bea69ff47bdbfc0bb2fcba2d00f9f62f301cf2cf958d1a86` |
| 4 | `theorem` | [finMulAntidiag_zero_right](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-zero-right--dfbd72786b1b3075464a3464.md) | 95 | `result-track:dfbd72786b1b3075464a346434d3f25f27c32e77cfef7e18d1d3234b79d01629` |
| 5 | `theorem` | [finMulAntidiag_one](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-one--64d8a727d08c4036b0b38e5d.md) | 98 | `result-track:64d8a727d08c4036b0b38e5d337a23635a9deca477f78732e15faf477364edc3` |
| 6 | `theorem` | [finMulAntidiag_zero_left](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-zero-left--63bc1e8da1c2db11c45e78db.md) | 105 | `result-track:63bc1e8da1c2db11c45e78db258824c804facb9f672aaaeefbea7920edc99b3d` |
| 7 | `theorem` | [dvd_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/dvd-of-mem-finmulantidiag--cd432aef347903e2a759d005.md) | 110 | `result-track:cd432aef347903e2a759d0058e283f4176740e597978548c43414e59e03cd6b5` |
| 8 | `theorem` | [ne_zero_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/ne-zero-of-mem-finmulantidiag--6b6bd403252b0e008f684f74.md) | 116 | `result-track:6b6bd403252b0e008f684f7495d2e5af2ee89e6ee85a3f2b61966984be0dc255` |
| 9 | `theorem` | [prod_eq_of_mem_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/prod-eq-of-mem-finmulantidiag--e573840f5aa9643433fe58dd.md) | 120 | `result-track:e573840f5aa9643433fe58ddc029adf25a057ea5aaa1a44b4ed53f4765319ea2` |
| 10 | `theorem` | [finMulAntidiag_eq_piFinset_divisors_filter](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-eq-pifinset-divisors-filter--6bfbb24c6501965b00253cea.md) | 124 | `result-track:6bfbb24c6501965b00253cea2b700fe5c2755c1256081fc0b58a6b568107bd29` |
| 11 | `lemma` | [image_apply_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/image-apply-finmulantidiag--368309e15ffd328187a0e3a5.md) | 137 | `result-track:368309e15ffd328187a0e3a5330086887a50780d0805332df68f5b7055151718` |
| 12 | `lemma` | [image_piFinTwoEquiv_finMulAntidiag](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/image-pifintwoequiv-finmulantidiag--376fc55eed2032020b0e6461.md) | 159 | `result-track:376fc55eed2032020b0e64614c5a0fa5f64db727767869cab146062effb9bf76` |
| 13 | `lemma` | [finMulAntidiag_existsUnique_prime_dvd](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-existsunique-prime-dvd--d639a665fe257bb3495a6b9f.md) | 164 | `result-track:d639a665fe257bb3495a6b9fd732fe748b4406a560a0b7b2f8c6f9c57db88a32` |
| 14 | `def` | [primeFactorsPiBij](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/primefactorspibij--2ddd8c378a668c1b1b7a369e.md) | 180 | `declaration-track:2ddd8c378a668c1b1b7a369e6d163bd3c02149fd5ea0638caa7d06b0a3ad5fa7` |
| 15 | `theorem` | [primeFactorsPiBij_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/primefactorspibij-img--07551a30ef21c6959b530527.md) | 184 | `result-track:07551a30ef21c6959b530527a4e9460a2801000dd899745555ceec8d295e562d` |
| 16 | `theorem` | [primeFactorsPiBij_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/primefactorspibij-inj--ed0fa3f346304a0c83277ab5.md) | 194 | `result-track:ed0fa3f346304a0c83277ab5234efc44b895334cffa443c815c0f46c0c4979cc` |
| 17 | `theorem` | [primeFactorsPiBij_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/primefactorspibij-surj--af100be3f6be4e3ef66966d9.md) | 217 | `result-track:af100be3f6be4e3ef66966d92f5abccfebf6671d494265d5a4ef43c3f3b31c5a` |
| 18 | `theorem` | [card_finMulAntidiag_pi](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/card-finmulantidiag-pi--4bd77c4c8698302d6742e35b.md) | 236 | `result-track:4bd77c4c8698302d6742e35b378c7133c230ac26b5643a18db5a79484ec72f85` |
| 19 | `theorem` | [card_finMulAntidiag_of_squarefree](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/card-finmulantidiag-of-squarefree--b19f7c56c3bedc01421aceb5.md) | 243 | `result-track:b19f7c56c3bedc01421aceb542fecd93e6f906f113f83165d91677739a274d5b` |
| 20 | `theorem` | [finMulAntidiag_three](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/finmulantidiag-three--3f5c85604e062961311e0aa1.md) | 249 | `result-track:3f5c85604e062961311e0aa14d651437a5cac3a5be519c98d1bc14d1329a8754` |
| 21 | `def` | [f](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/f--ff4161131d7e505d4ea0924e.md) | 259 | `declaration-track:ff4161131d7e505d4ea0924ebf61c77756142eb450070aa6c9a694d3919b8806` |
| 22 | `theorem` | [f_img](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/f-img--a4c8daee1890d336ef9a27f0.md) | 261 | `result-track:a4c8daee1890d336ef9a27f0dc53c61a9ff8bb2bd56c1dbb2d983ba80adaa17d` |
| 23 | `theorem` | [f_inj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/f-inj--69594488c03f1a436e2f00ad.md) | 274 | `result-track:69594488c03f1a436e2f00ad5d425ddde23c6c3d6c26f37ba371f2391b7a3c3d` |
| 24 | `theorem` | [f_surj](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/f-surj--46e3bd9a930f1ae2ec62d404.md) | 292 | `result-track:46e3bd9a930f1ae2ec62d404e171ca9f50492b9664f960d8ac6998ad100f6c7d` |
| 25 | `theorem` | [card_pair_lcm_eq](../../../../../mathematics/Topology/GeneralTopology/Nat/Variant1e1b09dec2305f4e4c7ddae44c85dd10ee3e8d0eb55f68ed7e7f8e678b3c5fd1.lean/declarations/card-pair-lcm-eq--444f1093685f0f87b3864f25.md) | 316 | `result-track:444f1093685f0f87b3864f255a6c7535ab02a560f5f2b9111838b40935b7827e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
