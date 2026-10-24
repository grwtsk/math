# Verification target: GRWTSK.Algebra.LinearAlgebra.Core.Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83b95564d74a8409109496ac4ef8339f436b128",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83b95564d74a8409109496ac4ef8339f436b128`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean.json)

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
| 1 | `structure` | [PositiveKernel](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/positivekernel--850aabf4d9f948e1c0a67d4c.md) | 30 | `declaration-track:850aabf4d9f948e1c0a67d4c31eb6dc0cf7168cfd22757116ba1e5b2440db648` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/instance--5d77a29597e6cada6187d7e6.md) | 38 | `declaration-track:5d77a29597e6cada6187d7e644014aca7681cbb42e2004a2e4e581eb8c1026da` |
| 3 | `theorem` | [isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/ishermitian--a89f0be99e3f9f0c9f83030c.md) | 42 | `result-track:a89f0be99e3f9f0c9f83030c5099e57d74db6d6dbffb93a018452522fd1fd6aa` |
| 4 | `theorem` | [conj_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/conj-apply-symm--75cc182588bbc0334b5a5571.md) | 48 | `result-track:75cc182588bbc0334b5a5571890e8d6e30e05fb17fbb36f77f4966161e79e123` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/conj-matrix-apply-symm--74fdc6a90caad49909652f83.md) | 54 | `result-track:74fdc6a90caad49909652f83bcedc0ceae119eb2dcd1760a9dd4b63d72570fa0` |
| 6 | `theorem` | [quadratic_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Core/Variantd40efe14403ec3595cb18141a936fd8b2de734ba1753699650145810d0fd9877.lean/declarations/quadratic-nonnegative--2a2bc4e8b3254c5a671be147.md) | 60 | `result-track:2a2bc4e8b3254c5a671be147ddb32d5674cd802663f1a74d59057db93843b5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
