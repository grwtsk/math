# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f2e456089ec092185e40a0fdc7fa2dfe6558b00",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f2e456089ec092185e40a0fdc7fa2dfe6558b00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean.json)

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
| 1 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank--ed60162f16b1d0cf9b8b8eed.md) | 47 | `declaration-track:ed60162f16b1d0cf9b8b8eede63b98f48d559cd807636dbc1f88d883bf400b3f` |
| 2 | `theorem` | [rank_le_range](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-le-range--b29d2bdac332619925ee55d8.md) | 50 | `result-track:b29d2bdac332619925ee55d839c985bf262e1765171bc75d8dd4f8fc805f86f0` |
| 3 | `theorem` | [rank_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-le-domain--dfcacad77aa4f38f1fd6f38c.md) | 53 | `result-track:dfcacad77aa4f38f1fd6f38cf900a2a37a3843a700cf411d51a0e05965a93ffb` |
| 4 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-zero--abfa84ae2afc8681d02596d0.md) | 57 | `result-track:abfa84ae2afc8681d02596d050d355d7a929ad71a1e674997582b4a703b6a836` |
| 5 | `theorem` | [rank_comp_le_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-comp-le-left--603fd022a1c2ff709a5f0277.md) | 62 | `result-track:603fd022a1c2ff709a5f0277d39781c9cf79347186a74b0256ca3aa6cb8ba21f` |
| 6 | `theorem` | [lift_rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/lift-rank-comp-le-right--99d4f9bff3559827b39dd46e.md) | 67 | `result-track:99d4f9bff3559827b39dd46ef0e40069310acc689abba1a83e9836bf750e5201` |
| 7 | `theorem` | [lift_rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/lift-rank-comp-le--5d9a09ab26da93f63921b17a.md) | 72 | `result-track:5d9a09ab26da93f63921b17a86e289bb60be5f1d067aaa171c2554cc59a90e70` |
| 8 | `theorem` | [rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-comp-le-right--847b27d133114a8526286b79.md) | 79 | `result-track:847b27d133114a8526286b79249c9ecba1a1a42519f459c357f30235826fcdca` |
| 9 | `theorem` | [rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-comp-le--082ab0122d45ca09bfd9c945.md) | 85 | `result-track:082ab0122d45ca09bfd9c945d951e59f9f4782c81f99a1c6425172abd548f02c` |
| 10 | `theorem` | [rank_add_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-add-le--7be01f4694c8134bb8429eb0.md) | 96 | `result-track:7be01f4694c8134bb8429eb067c9c2d4b826df67081d3f0400e4fb7a3d0a9f82` |
| 11 | `theorem` | [rank_finsetSum_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/rank-finsetsum-le--28193260094ce6a23104a47c.md) | 105 | `result-track:28193260094ce6a23104a47c6f69c80144d0ec9a5c35cb644484b4edf5260397` |
| 12 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/le-rank-iff-exists-linearindependent--760c9d339e74b4930ed045af.md) | 120 | `result-track:760c9d339e74b4930ed045afddea488233d5f8188c62c323c34420771ede5b30` |
| 13 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant87ffe343e90c036a71b8f5ad85b0d9cf37428ec31d29f196382c649eee97cd7c.lean/declarations/le-rank-iff-exists-linearindependent-finset--12e1a9343a3b44304fde1b69.md) | 141 | `result-track:12e1a9343a3b44304fde1b69d742b2cfcf8d64bf9ae2946c5ac1f5720f88cd2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
