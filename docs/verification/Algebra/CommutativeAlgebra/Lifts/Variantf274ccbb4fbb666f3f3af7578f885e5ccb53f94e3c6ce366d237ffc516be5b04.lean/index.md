# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lifts.Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b6f1887fc49b7ffeee2f0ce32f3acbd7cf1c60`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts--321460e8a2975ef0ff64506e.md) | 57 | `declaration-track:321460e8a2975ef0ff64506e2e8b4e3a453d3149df2c9cbe6cb74ed871e2c0b3` |
| 2 | `theorem` | [mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/mem-lifts--2e17e497aa87f5bf0c46f694.md) | 61 | `result-track:2e17e497aa87f5bf0c46f69415fcd33752df52e89ef48c5a53c81041d92bfdf2` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-iff-set-range--0de89a83c34713d70c0203db.md) | 65 | `result-track:0de89a83c34713d70c0203db36e28996ba6433e91fb2e52fb6faa5ff204dab48` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-iff-ringhom-ranges--77db25b2b6f97cf104de0d19.md) | 69 | `result-track:77db25b2b6f97cf104de0d19a26dbb4ebeac9a9682e59b42224041d21489c732` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-iff-coeff-lifts--73fc9f48737556dcc703ba9a.md) | 73 | `result-track:73fc9f48737556dcc703ba9ac368a6f184d265ead7b9e56fcc1b5c245a25db97` |
| 6 | `theorem` | [C_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/c-mem-lifts--302e92e57fac8d62fdd1abae.md) | 79 | `result-track:302e92e57fac8d62fdd1abaef5a4684e76a16a000697abb53882eff8ff6ffd75` |
| 7 | `theorem` | [C'_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/c-mem-lifts--2d751dec7ffa323f302f0b68.md) | 87 | `result-track:2d751dec7ffa323f302f0b683c4619ad2ca31a4bd49e067e8488466dddbd128f` |
| 8 | `theorem` | [X_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/x-mem-lifts--4747c1c28fc613bdacea78ff.md) | 96 | `result-track:4747c1c28fc613bdacea78ffb308196639bc97350d83318f08bacc5bd30ba1fa` |
| 9 | `theorem` | [X_pow_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/x-pow-mem-lifts--971a51585e37f750d0caf0ef.md) | 104 | `result-track:971a51585e37f750d0caf0efcfb75a3a431330ff47a2a641160c21904831d30b` |
| 10 | `theorem` | [base_mul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/base-mul-mem-lifts--2d746b7bf2d9e2ba275887b5.md) | 112 | `result-track:2d746b7bf2d9e2ba275887b5b784eccc668e9e70ce7aa70b2b3c7a080876a68c` |
| 11 | `theorem` | [monomial_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/monomial-mem-lifts--de99fb20ea921eabe787b031.md) | 120 | `result-track:de99fb20ea921eabe787b0316a8fdd9f8dfb70b50de536341f016d33b5fe3bfb` |
| 12 | `theorem` | [erase_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/erase-mem-lifts--e7c53193b227f6d48e86a27d.md) | 128 | `result-track:e7c53193b227f6d48e86a27dd2394486ad8eebb667710045a1399c6ec7deaf15` |
| 13 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/monomial-mem-lifts-and-degree-eq--b139aaf97d4fecd1b08ccb98.md) | 141 | `result-track:b139aaf97d4fecd1b08ccb98fcc126e4ff2ee4e0f21bfbf69194fd7eb21342be` |
| 14 | `theorem` | [mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/mem-lifts-and-degree-eq--b911744e43e1a01547a8cc95.md) | 166 | `result-track:b911744e43e1a01547a8cc958bcf03e22272ec7f9d4f2f06ed1bffcb309327d9` |
| 15 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-and-degree-eq-and-monic--ce3aea58a99be8fe466eec97.md) | 211 | `result-track:ce3aea58a99be8fe466eec97336ebe8c9e1b8cc085a1b2cd3a2a2afbba3b6131` |
| 16 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-and-natdegree-eq-and-monic--fb93b80c9092f9add9ab5f71.md) | 233 | `result-track:fb93b80c9092f9add9ab5f71f03e68b148e6d574e7389c71186e1e14b8c6106d` |
| 17 | `def` | [liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/liftsring--fabf5e5606bc12616709b9e7.md) | 251 | `declaration-track:fabf5e5606bc12616709b9e7e2d4ab121028f6c4df268e6534ca329742b858b2` |
| 18 | `theorem` | [lifts_iff_liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/lifts-iff-liftsring--94831c2104e7b777bb95cb60.md) | 257 | `result-track:94831c2104e7b777bb95cb609e54f9b44638c79f0fdd307f65b553b855b6b030` |
| 19 | `def` | [mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/mapalg--839a99af349367ae7f66b9d2.md) | 268 | `declaration-track:839a99af349367ae7f66b9d2f4c971c6dbb4642acb776114f1272be7e9ee5e71` |
| 20 | `theorem` | [mapAlg_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/mapalg-eq-map--7bf8c45026c8b15e8553b24e.md) | 274 | `result-track:7bf8c45026c8b15e8553b24e779bbaf2096f71a11c5ff2ed8f3d7c7690ec4e12` |
| 21 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/mem-lifts-iff-mem-alg--67994962ed6ea8a8c94185aa.md) | 280 | `result-track:67994962ed6ea8a8c94185aacee45baa4dd859884d740e5377d590e4d5a33d60` |
| 22 | `theorem` | [smul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variantf274ccbb4fbb666f3f3af7578f885e5ccb53f94e3c6ce366d237ffc516be5b04.lean/declarations/smul-mem-lifts--a5b85f5c606b0470c656bc74.md) | 286 | `result-track:a5b85f5c606b0470c656bc74bcc1be301ece5b67fee0ce77448ab780a258060d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
