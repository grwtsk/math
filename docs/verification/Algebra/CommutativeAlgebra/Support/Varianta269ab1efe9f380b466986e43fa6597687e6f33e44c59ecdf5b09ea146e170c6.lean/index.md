# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Support.Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8427a5397fd63333599129a30b7955f5580e1f99",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8427a5397fd63333599129a30b7955f5580e1f99`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [supDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/supdegree-eq-natdegree--c0ae166ab9a9a6ee53d9bd96.md) | 34 | `result-track:c0ae166ab9a9a6ee53d9bd9611af2fed5afe06f97556d5f3b7d5158dcf54ecce` |
| 2 | `theorem` | [le_natDegree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/le-natdegree-of-mem-supp--889cb12302a77faa51a02fb6.md) | 42 | `result-track:889cb12302a77faa51a02fb6ac3c675f5cf3f4c63a3c50c780159a5a05c314c2` |
| 3 | `theorem` | [supp_subset_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/supp-subset-range--9daab36c1fa5707bf9e0dad6.md) | 45 | `result-track:9daab36c1fa5707bf9e0dad6765b85dfba1a076a8b14a3e2f23320daefe05253` |
| 4 | `theorem` | [supp_subset_range_natDegree_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/supp-subset-range-natdegree-succ--2e4779793353470f072d77df.md) | 48 | `result-track:2e4779793353470f072d77df21035ecfb893e0b4a52778dc4d8393bbedcf3861` |
| 5 | `theorem` | [as_sum_support](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/as-sum-support--d92df7199cba0487dc9f6708.md) | 51 | `result-track:d92df7199cba0487dc9f6708cca028b373f68334ba592a1351dbab8fe3378c21` |
| 6 | `theorem` | [as_sum_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/as-sum-support-c-mul-x-pow--c21f9ec707ea0a000c7ab63e.md) | 54 | `result-track:c21f9ec707ea0a000c7ab63e9e50c84ea2aa46451d15e6e0db033e2ad1d4b0de` |
| 7 | `theorem` | [sum_over_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/sum-over-range--90889ef694e682786fb015d0.md) | 60 | `result-track:90889ef694e682786fb015d021f5bf53dfa8371c0b2b7b0cf4d40e06a986ddda` |
| 8 | `theorem` | [sum_over_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/sum-over-range--dba0fa4745a4dac54926c0e7.md) | 69 | `result-track:dba0fa4745a4dac54926c0e75d3909748b10e14f5b2bd7300c29c641b031b042` |
| 9 | `theorem` | [sum_fin](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/sum-fin--d974b9fff7e19668520e785a.md) | 74 | `result-track:d974b9fff7e19668520e785a4374837600e815d3f3dfb0538e12f8b2d71f2a8b` |
| 10 | `theorem` | [as_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/as-sum-range--c2b2b350205bf610278e5d0b.md) | 83 | `result-track:c2b2b350205bf610278e5d0b2f3f8393e95d07c026fd44ee3a3a8c937321749e` |
| 11 | `theorem` | [as_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/as-sum-range--d39a34557cbf6e4519184ec3.md) | 87 | `result-track:d39a34557cbf6e4519184ec303f606e5b6db7e570b79dda967b2eac1604abc64` |
| 12 | `theorem` | [as_sum_range_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/as-sum-range-c-mul-x-pow--edf364573c9892d55fcaa9b6.md) | 90 | `result-track:edf364573c9892d55fcaa9b60d6374d168ff2532cdce48b094e8fb3433d70924` |
| 13 | `theorem` | [mem_support_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/mem-support-c-mul-x-pow--b6d4719cc88678cc172dbd00.md) | 94 | `result-track:b6d4719cc88678cc172dbd005e607ca4ffef2b70bbeda80f9ea0f2ae01f15c94` |
| 14 | `theorem` | [card_support_C_mul_X_pow_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/card-support-c-mul-x-pow-le-one--66148beb24772db964e19fc7.md) | 97 | `result-track:66148beb24772db964e19fc7ed6d1df4f5b1c8229b074652375ecda95feb9b71` |
| 15 | `theorem` | [card_supp_le_succ_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/card-supp-le-succ-natdegree--a987fc0acc93495647d07f58.md) | 101 | `result-track:a987fc0acc93495647d07f580dc87118b386d08a832e278dac757b111641f262` |
| 16 | `theorem` | [le_degree_of_mem_supp](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/le-degree-of-mem-supp--a141715635b492526d9ef7bb.md) | 105 | `result-track:a141715635b492526d9ef7bb6f1c06ac2136711b5d9a1eaaef65035da91b499d` |
| 17 | `theorem` | [nonempty_support_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/nonempty-support-iff--0cd584ab450b4785a45b5620.md) | 108 | `result-track:0cd584ab450b4785a45b56203cbecbfac1937d03ffa8f6b2ffe307756ef78c95` |
| 18 | `theorem` | [natDegree_mem_support_of_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/natdegree-mem-support-of-nonzero--80cc3bb2277f301795462135.md) | 117 | `result-track:80cc3bb2277f301795462135a3f9c88ff762816eea61a1503164af8b3777f135` |
| 19 | `theorem` | [natDegree_eq_support_max'](../../../../../mathematics/Algebra/CommutativeAlgebra/Support/Varianta269ab1efe9f380b466986e43fa6597687e6f33e44c59ecdf5b09ea146e170c6.lean/declarations/natdegree-eq-support-max--f3d40a6f98a1190f0e264f77.md) | 121 | `result-track:f3d40a6f98a1190f0e264f77e401a07b8ad0aba3ecb08a5084313b99d4640e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
