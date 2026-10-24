# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85eef86c22384fc8b5b17ad65608fabc0cba131",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85eef86c22384fc8b5b17ad65608fabc0cba131`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank--984ae60d49bc2ca79998e9ec.md) | 34 | `declaration-track:984ae60d49bc2ca79998e9ec9dd8532ec74c90ab8f3b76b61b825070f5e0b2bc` |
| 2 | `theorem` | [rank_le_range](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-le-range--89d7647c34de2f7135260bb3.md) | 37 | `result-track:89d7647c34de2f7135260bb38f59e7c6653cc3d06fc34913a364460add2bf18f` |
| 3 | `theorem` | [rank_le_domain](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-le-domain--5f8c9dbec1813fedb3c9463d.md) | 40 | `result-track:5f8c9dbec1813fedb3c9463d757889bff54c8ec860feaa6c75533eab64eec33d` |
| 4 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-zero--d11081ec76a66e7d902eeb23.md) | 44 | `result-track:d11081ec76a66e7d902eeb232ed4bfbe4b12e187e2095046cb60d398aea34b43` |
| 5 | `theorem` | [rank_comp_le_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-comp-le-left--cba54200139ae6594c437051.md) | 49 | `result-track:cba54200139ae6594c4370511cee51c4d8281507bdf6f76a681cf44f32891b7e` |
| 6 | `theorem` | [lift_rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/lift-rank-comp-le-right--70ea60672ea0004c05df834d.md) | 54 | `result-track:70ea60672ea0004c05df834de9aa03265ac53da183646edebf16b9a6998075e8` |
| 7 | `theorem` | [lift_rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/lift-rank-comp-le--b6d1f58170cd6b954e992b06.md) | 59 | `result-track:b6d1f58170cd6b954e992b06c2a07817321baf578d249905ee74daa8e33dc80d` |
| 8 | `theorem` | [rank_comp_le_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-comp-le-right--8319578bb58461eb1983ab07.md) | 66 | `result-track:8319578bb58461eb1983ab07afedc369b47023941dd7363a0bcf3bba7eba97a8` |
| 9 | `theorem` | [rank_comp_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-comp-le--cf0ba38f7878f6dcffc5697a.md) | 72 | `result-track:cf0ba38f7878f6dcffc5697a4b3959771a21605c0188425c11857109f1029d38` |
| 10 | `theorem` | [rank_add_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-add-le--0eb076807293f06f4bd81409.md) | 83 | `result-track:0eb076807293f06f4bd8140932e7671ba8dafe679267dddded5d307acf396240` |
| 11 | `theorem` | [rank_finset_sum_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/rank-finset-sum-le--97f5c4dfbb94766935caf361.md) | 92 | `result-track:97f5c4dfbb94766935caf361baebaf5a7de4225a64039628196f15b08c9dc0ea` |
| 12 | `theorem` | [le_rank_iff_exists_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/le-rank-iff-exists-linearindependent--cd0cea6fa8314401293202e2.md) | 97 | `result-track:cd0cea6fa8314401293202e21756de2cbc3930ca97bb1e8889ed197546c49c92` |
| 13 | `theorem` | [le_rank_iff_exists_linearIndependent_finset](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variantc0987f0aeba79871399f44f4f7a5f0dabc1c49364ea402f239ab506d6bf5c321.lean/declarations/le-rank-iff-exists-linearindependent-finset--b3c4e7497b2c856e82d0e9b4.md) | 118 | `result-track:b3c4e7497b2c856e82d0e9b4b566642e2d831a2e9bedc392811f6303c9915193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
