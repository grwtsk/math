# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93e4306fd8c2344f029cfa4706e308801937d3f0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93e4306fd8c2344f029cfa4706e308801937d3f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveKernel](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/positivekernel--6f034b7622f23780ca259355.md) | 30 | `declaration-track:6f034b7622f23780ca259355421860006b1e39a6e1696119808c1fe0fa45dee2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/instance--68fb4b360bbee6c9c01a14e9.md) | 38 | `declaration-track:68fb4b360bbee6c9c01a14e912e3ecd3a526bb4ba31da39ed24369c7fb686442` |
| 3 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/ishermitian--a5254183e96f53aec53695b9.md) | 42 | `result-track:a5254183e96f53aec53695b9d8584d0e16c9f0280ab31b7dea167aec053a3a4a` |
| 4 | `theorem` | [conj_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/conj-apply-symm--22601245e57a10a491079b0b.md) | 48 | `result-track:22601245e57a10a491079b0ba244a644280d6fabd816163202fc9cbd279a741f` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/conj-matrix-apply-symm--b623e5c0c464a1354d2b1d58.md) | 54 | `result-track:b623e5c0c464a1354d2b1d58c0d8cf61f3e0f7b3fae23c30440f36cf3d9529b0` |
| 6 | `theorem` | [quadratic_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variant762f4717503ecae2d51c30c1b1b91c7d1daa7bd9e02c2c56074caa8921ff3810.lean/declarations/quadratic-nonnegative--f56907f8c7c61d5e33eb8693.md) | 60 | `result-track:f56907f8c7c61d5e33eb869311c322032d77d03de6dd598a2de78573ee599f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
