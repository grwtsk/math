# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Support.Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47baaad4a12ee8a4feeb5ed25a24a5078e57fb31",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47baaad4a12ee8a4feeb5ed25a24a5078e57fb31`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean.json)

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
| 1 | `theorem` | [supDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/supdegree-eq-natdegree--5929b5c1406c5e56f55fa13c.md) | 38 | `result-track:5929b5c1406c5e56f55fa13cc0479e7b419c08ed5cc653ba2fadd03f5ebe7be9` |
| 2 | `theorem` | [le_natDegree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/le-natdegree-of-mem-supp--1674572365c36641eebda7d3.md) | 46 | `result-track:1674572365c36641eebda7d33ba623a0454262bee1dfedd6aef166c7f512c856` |
| 3 | `theorem` | [supp_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/supp-subset-range--54ec5519073c588d1d7cb03d.md) | 49 | `result-track:54ec5519073c588d1d7cb03d815f8de3c3542a55ca9299d7fcba682705b3a22b` |
| 4 | `theorem` | [supp_subset_range_natDegree_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/supp-subset-range-natdegree-succ--1f5dc5cdd1572564a9f3e7d3.md) | 52 | `result-track:1f5dc5cdd1572564a9f3e7d32051149c8ebabb5d1e87249925173894f47e5f31` |
| 5 | `theorem` | [as_sum_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-support--9ba7897bca7ad81317718b67.md) | 55 | `result-track:9ba7897bca7ad81317718b67475b4cd6128c362ad854372e8998a33b53d7c15e` |
| 6 | `theorem` | [as_sum_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-support-c-mul-x-pow--b16d10689ede69d005a18abf.md) | 58 | `result-track:b16d10689ede69d005a18abf353beed8baf0a153bb1a80ab516fea40b7263e83` |
| 7 | `theorem` | [sum_over_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/sum-over-range--ec447dc3ffabb1e103adb4f6.md) | 64 | `result-track:ec447dc3ffabb1e103adb4f6ccaeef0bb93c3b90b86d0c37c7c6083cb21fc70e` |
| 8 | `theorem` | [sum_over_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/sum-over-range--a983b305bff6ac2d65e9029a.md) | 72 | `result-track:a983b305bff6ac2d65e9029aba2edaac5c64154d8f2820f837c0597931452366` |
| 9 | `theorem` | [sum_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/sum-fin--70699062acb1bdd2db046746.md) | 77 | `result-track:70699062acb1bdd2db046746b18a8b9e47aadbedf3d5d218791eefe6d1cdb18b` |
| 10 | `theorem` | [as_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-range--4a9935a07c8bf072d549a382.md) | 86 | `result-track:4a9935a07c8bf072d549a38253fa82aba8afa79a28f26801fb47916d65b42dbb` |
| 11 | `theorem` | [as_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-range--fd9bc29a8f96e5ac97d1da0d.md) | 90 | `result-track:fd9bc29a8f96e5ac97d1da0d433688fb77d4043b2798ca8c4431beb1bd17779d` |
| 12 | `theorem` | [as_sum_range_C_mul_X_pow'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-range-c-mul-x-pow--fac00ba5f2465ab75cd57a96.md) | 93 | `result-track:fac00ba5f2465ab75cd57a9667b8a9482f7761ef99b063dcd8142c591219e383` |
| 13 | `theorem` | [as_sum_range_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/as-sum-range-c-mul-x-pow--7a2e8c4e2b0bce34daddb88c.md) | 97 | `result-track:7a2e8c4e2b0bce34daddb88c715906e9b32a0a933d22fbb53dbe423680a147f9` |
| 14 | `theorem` | [mem_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/mem-support-c-mul-x-pow--3211ad3b0795185caca0f6f1.md) | 101 | `result-track:3211ad3b0795185caca0f6f15b8795ae2bae969b6ceafa76b3639e66a0a8707f` |
| 15 | `theorem` | [card_support_C_mul_X_pow_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/card-support-c-mul-x-pow-le-one--20d43f739576d6cca4cee878.md) | 104 | `result-track:20d43f739576d6cca4cee87800a43151b8ef4da3dc2ec13f01d2f3e44998d9a2` |
| 16 | `theorem` | [card_supp_le_succ_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/card-supp-le-succ-natdegree--e5f2ee73e3f5c82857f8ed31.md) | 108 | `result-track:e5f2ee73e3f5c82857f8ed311906e96575ce7d8c4d61bb76604a5da9a9610e57` |
| 17 | `theorem` | [le_degree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/le-degree-of-mem-supp--31dc0aa813fcdd8d3b0c3a16.md) | 112 | `result-track:31dc0aa813fcdd8d3b0c3a161e6cec244bcc535a7d075199f72c23f3149f068a` |
| 18 | `theorem` | [nonempty_support_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/nonempty-support-iff--98e2155c270c075b5fa65c60.md) | 115 | `result-track:98e2155c270c075b5fa65c60fb7e24c3885681028f401a31d445403f61aff974` |
| 19 | `theorem` | [natDegree_mem_support_of_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/natdegree-mem-support-of-nonzero--c9217a264739c06a880ccdb2.md) | 124 | `result-track:c9217a264739c06a880ccdb27f6fed90dc28417ba5898fb42b95e30c6e21caac` |
| 20 | `theorem` | [natDegree_eq_support_max'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Variant907b677e6937cc1f77db55d5f775013128bf1f7d72a0c017f01543baafd9bf3b.lean/declarations/natdegree-eq-support-max--ec7ebbf181cd0eb868041642.md) | 128 | `result-track:ec7ebbf181cd0eb868041642e666f03f706aa76c1142b8991cec38f131ce3a64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
