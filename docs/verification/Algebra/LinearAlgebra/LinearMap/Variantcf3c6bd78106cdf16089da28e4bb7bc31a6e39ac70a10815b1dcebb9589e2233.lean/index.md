# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fc83bb3036375b0212fb5f92fdc38067ec0ec3b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fc83bb3036375b0212fb5f92fdc38067ec0ec3b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean.json)

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
| 1 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank--3afe7aaadc107c5483a86163.md) | 39 | `declaration-track:3afe7aaadc107c5483a8616376efd7831724438a819bcacf6800e7141365e50c` |
| 2 | `theorem` | [rank_le_range](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-le-range--60c09b61108c792a00533c90.md) | 42 | `result-track:60c09b61108c792a00533c9000a3e4c84e0a75923402ba17c9f065738024f597` |
| 3 | `theorem` | [rank_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-le-domain--2f9671d07f2f287140ff2eb7.md) | 45 | `result-track:2f9671d07f2f287140ff2eb782da44ea3b3f876ec4e7f0f20847f46373100d91` |
| 4 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-zero--c172222c09838f147dd5dc54.md) | 49 | `result-track:c172222c09838f147dd5dc54ebcbee2c604fbba6f3dc86ddbac326a705a25bf5` |
| 5 | `theorem` | [rank_comp_le_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-comp-le-left--476a2a77da6af9a6ad5e5ade.md) | 54 | `result-track:476a2a77da6af9a6ad5e5ade6bb98ad72196da7f1c389682222fcc72de783488` |
| 6 | `theorem` | [lift_rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/lift-rank-comp-le-right--0eb256143474b374476dbace.md) | 59 | `result-track:0eb256143474b374476dbace7ce42629b9be98b8857def8ef620679c5a8eccba` |
| 7 | `theorem` | [lift_rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/lift-rank-comp-le--c7d0766fab61494f76a97980.md) | 64 | `result-track:c7d0766fab61494f76a97980af8f42d902080285e33ab43fd521432b51cad881` |
| 8 | `theorem` | [rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-comp-le-right--6baeb5a8b5ff2f0fed49e5e2.md) | 71 | `result-track:6baeb5a8b5ff2f0fed49e5e2e6f19bcbca3c732f4427ae2e1eb230792dec3b7a` |
| 9 | `theorem` | [rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-comp-le--7810f5ff293a1abddbfde452.md) | 77 | `result-track:7810f5ff293a1abddbfde452b1ea77dee350fa5560c4855370e5b6adae191f77` |
| 10 | `theorem` | [rank_add_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-add-le--9e4881cad6d5c513e7045474.md) | 88 | `result-track:9e4881cad6d5c513e7045474955145d422f6a3b19de1e8c69c955b6a01cf14aa` |
| 11 | `theorem` | [rank_finsetSum_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/rank-finsetsum-le--ae5515ddd1b1683b55ba4289.md) | 97 | `result-track:ae5515ddd1b1683b55ba4289dd7c849777ac600b48c39b7c1714dd4680408a9c` |
| 12 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/le-rank-iff-exists-linearindependent--eff4beb18d63b1122eb0a120.md) | 112 | `result-track:eff4beb18d63b1122eb0a12091c9626007affc3aa404922146ba08bdf66dc80a` |
| 13 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantcf3c6bd78106cdf16089da28e4bb7bc31a6e39ac70a10815b1dcebb9589e2233.lean/declarations/le-rank-iff-exists-linearindependent-finset--6cb3f24fdefae2b40d3c4b83.md) | 133 | `result-track:6cb3f24fdefae2b40d3c4b8395c7f066f6b048ca433d745221da5257445d9d65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
