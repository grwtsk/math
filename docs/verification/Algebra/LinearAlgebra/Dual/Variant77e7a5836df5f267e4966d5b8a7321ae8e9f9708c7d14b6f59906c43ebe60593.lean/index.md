# Verification target: GRWTSK.Algebra.LinearAlgebra.Dual.Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7681dc28512738b7735d6b93730f7a6fe324ab1c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7681dc28512738b7735d6b93730f7a6fe324ab1c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/todualmap--66a5899268a86bc89d685ab5.md) | 64 | `declaration-track:66a5899268a86bc89d685ab5a7917c35cb554f8fa04de48499fefce17830cbcb` |
| 2 | `theorem` | [toDualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/todualmap-apply--96cdec7427f710754f18d07b.md) | 71 | `result-track:96cdec7427f710754f18d07be9123ae06ef18915b5b08e9682b6f8066d224bc1` |
| 3 | `theorem` | [innerSL_norm](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/innersl-norm--1ff39090661fbce40abbed2f.md) | 75 | `result-track:1ff39090661fbce40abbed2f6496f15be9af8c0e6394a76f83f302c0efa10c9b` |
| 4 | `theorem` | [ext_inner_left_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/ext-inner-left-basis--865cd034fe922fa28b9e052d.md) | 82 | `result-track:865cd034fe922fa28b9e052d5f086d1648e232522b418e99ca0d2be5a2ccd1f6` |
| 5 | `theorem` | [ext_inner_right_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/ext-inner-right-basis--0bdc45e48fdaafcc5170058b.md) | 94 | `result-track:0bdc45e48fdaafcc5170058bae2cc8b9461dca857e372f1ffb66db1305235eae` |
| 6 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/todual--bc0a71b9b94320acebe12b50.md) | 109 | `declaration-track:bc0a71b9b94320acebe12b50bf7ba2a15260d2d593f8d65bd1d0c49e17b40c14` |
| 7 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/todual-apply--8cb38d7c29cd4267b6ec350b.md) | 153 | `result-track:8cb38d7c29cd4267b6ec350bbaae605bcfb5a434c4c348201324d24bd197e222` |
| 8 | `theorem` | [toDual_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/todual-symm-apply--c731e15463abf9194748dfc0.md) | 158 | `result-track:c731e15463abf9194748dfc06a111147275ed129a80c4c910d6b4c2e2a99b582` |
| 9 | `def` | [continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/continuouslinearmapofbilin--b1b1de58b374ef7bf8ec6337.md) | 167 | `declaration-track:b1b1de58b374ef7bf8ec6337bcaa2d92dd3b902e38b29193e6b375a816b9cba7` |
| 10 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/continuouslinearmapofbilin-apply--65bf13e46b5bc27954b08a9a.md) | 176 | `result-track:65bf13e46b5bc27954b08a9a7dd52f180cd5493f9fea8cadbdabedf625310de0` |
| 11 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant77e7a5836df5f267e4966d5b8a7321ae8e9f9708c7d14b6f59906c43ebe60593.lean/declarations/unique-continuouslinearmapofbilin--d35cafa1434a23a6282dbe69.md) | 180 | `result-track:d35cafa1434a23a6282dbe698a7f8c820b3aefe35016844a409bf408a8ff5aa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
