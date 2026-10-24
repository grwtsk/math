# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lifts.Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf721a2af4f72be3b0bf678a570b780bae31874e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf721a2af4f72be3b0bf678a570b780bae31874e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean.json)

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
| 1 | `def` | [lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts--ac53b197c453bea63b3bd0b8.md) | 60 | `declaration-track:ac53b197c453bea63b3bd0b8a7eb9c9724bde984a794835ecfe682f12104ff84` |
| 2 | `theorem` | [mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/mem-lifts--94f5895f2f77f4e9684d4a65.md) | 63 | `result-track:94f5895f2f77f4e9684d4a651ac38cb069e8b6f3af009298e783473677b2e1c1` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-iff-set-range--5b370624f9c7ea3e69787f2d.md) | 66 | `result-track:5b370624f9c7ea3e69787f2d950c2caef6a9280e8fa7fa6c484bb4be3a16b1a3` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-iff-ringhom-ranges--1cf2d1913c94a3fbeeacfb5b.md) | 69 | `result-track:1cf2d1913c94a3fbeeacfb5b4363a4d22a936c52935d9fd19b5d49e053817236` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-iff-coeff-lifts--54dfb6e23fd6e658a9a97a5f.md) | 72 | `result-track:54dfb6e23fd6e658a9a97a5f2d884edc57036f1b44331991f8f97cde699e5efb` |
| 6 | `theorem` | [lifts_iff_coeffs_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-iff-coeffs-subset-range--e70df094d68301edab09a94f.md) | 76 | `result-track:e70df094d68301edab09a94f46b14957e2c10825584e983e4fb60408bf100a64` |
| 7 | `theorem` | [mem_lifts_of_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/mem-lifts-of-surjective--ea54c5b3a087d51e39786e33.md) | 88 | `result-track:ea54c5b3a087d51e39786e33f9a1a4c74bb2de246a3209e7ea8c960d7fa1c5b8` |
| 8 | `theorem` | [C_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/c-mem-lifts--4953b0db2f819aa04014de12.md) | 92 | `result-track:4953b0db2f819aa04014de126bb56de4624d913bf8a14752b28456e99d6638ec` |
| 9 | `theorem` | [C'_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/c-mem-lifts--ca33aa921ad277118c21a936.md) | 97 | `result-track:ca33aa921ad277118c21a936e609dc2cebef616ae670dcdbb55dd11ffff2bc61` |
| 10 | `theorem` | [X_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/x-mem-lifts--b0b7ef68ed0118c577a1b5b8.md) | 103 | `result-track:b0b7ef68ed0118c577a1b5b8a81b4c9b1818c2ec4116893e9f34ef3a19138ca2` |
| 11 | `theorem` | [X_pow_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/x-pow-mem-lifts--3d4a9f4ebff1c9d1b241099f.md) | 108 | `result-track:3d4a9f4ebff1c9d1b241099f53ff4ad57e66cf6218f2c87a30139c4af35cc583` |
| 12 | `theorem` | [base_mul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/base-mul-mem-lifts--be6586b02dda66924c485e2e.md) | 113 | `result-track:be6586b02dda66924c485e2eb05eae11e57c30052e0472ba7c032f30f5d01d6b` |
| 13 | `theorem` | [monomial_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/monomial-mem-lifts--2b8cfe254a0907f61627a4da.md) | 120 | `result-track:2b8cfe254a0907f61627a4da3359b974ae06ea6f9110b92d10a035d22b23436f` |
| 14 | `theorem` | [erase_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/erase-mem-lifts--55e8bb6f87fe55cde7d0e1ec.md) | 126 | `result-track:55e8bb6f87fe55cde7d0e1ec6778824b4e62367ec140148f50a5c6a2318b2bb9` |
| 15 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/monomial-mem-lifts-and-degree-eq--07573eec7d58835d8c41e9fb.md) | 138 | `result-track:07573eec7d58835d8c41e9fb020157a65fc8bc87b7b0348575e32e7b4673b3c3` |
| 16 | `theorem` | [exists_support_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/exists-support-eq-of-mem-lifts--b30722b4eeb39cedb7ccc678.md) | 148 | `result-track:b30722b4eeb39cedb7ccc678c8d79b32f7a947bf618730c63232ecbdca75f201` |
| 17 | `theorem` | [exists_degree_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/exists-degree-eq-of-mem-lifts--1ec2d04503334934672e5478.md) | 162 | `result-track:1ec2d04503334934672e5478362651a9e8c27ce4ec304974806a84775af620e2` |
| 18 | `theorem` | [exists_natDegree_eq_of_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/exists-natdegree-eq-of-mem-lifts--4109aa9cb54a4400b0cf1403.md) | 167 | `result-track:4109aa9cb54a4400b0cf1403d15bee817f08a7d9d73f928f62ebef966b097b3e` |
| 19 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-and-degree-eq-and-monic--feda65a0e733923dfb8defc7.md) | 177 | `result-track:feda65a0e733923dfb8defc76b5ad243fac1f0c345435c582a08347706ed85d0` |
| 20 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-and-natdegree-eq-and-monic--23c02cd945a13f7ffd4e02b0.md) | 189 | `result-track:23c02cd945a13f7ffd4e02b0040fcf144c791e672d0e7dde587bd1e17dcd6e19` |
| 21 | `def` | [liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/liftsring--bd741529ddf6ecfec2213150.md) | 206 | `declaration-track:bd741529ddf6ecfec22131501a098be4241fb456aee1233289683d93ab7729d3` |
| 22 | `theorem` | [lifts_iff_liftsRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/lifts-iff-liftsring--edd60002074c6b9e35ca0324.md) | 211 | `result-track:edd60002074c6b9e35ca032450835fa2358bf7c94b9e0ba8d12d7f8294ec032a` |
| 23 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/mem-lifts-iff-mem-alg--2d84f02e3c6488a930b060d0.md) | 221 | `result-track:2d84f02e3c6488a930b060d04b0dcf86840a0b8416de47669c658d9e15895f71` |
| 24 | `theorem` | [smul_mem_lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/smul-mem-lifts--71db48b1feadd1088781cfd0.md) | 226 | `result-track:71db48b1feadd1088781cfd0fc3200ee9bb48c5742f567067b326aac0c9d8c86` |
| 25 | `theorem` | [monic_of_monic_mapAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/Lifts/Variant8c1bf1cbf370a96151f5cd87aa0a19c3d5cbaaacb574310da7e83a17202ebad4.lean/declarations/monic-of-monic-mapalg--445803dd65095d2c08e373fe.md) | 231 | `result-track:445803dd65095d2c08e373fe2b9d51e6fd0255267bd510189f49d8376aa2f2f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
