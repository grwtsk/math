# Verification target: GRWTSK.Algebra.LinearAlgebra.RegularizedKernel.Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1088dfcba2ad6394b1eef1c6fde1baf318c6a582",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1088dfcba2ad6394b1eef1c6fde1baf318c6a582`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Channel` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/identityregularizer--a601d3098162458aa1632eb0.md) | 22 | `declaration-track:a601d3098162458aa1632eb0cfef35a7fa28fbbb6ba7016de91801b294ae0359` |
| 2 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/identityregularizer-posdef--239c7e27cb3fca16741e902a.md) | 26 | `result-track:239c7e27cb3fca16741e902a5544ba2e653230a8a138a218debde21b7736b52a` |
| 3 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/regularizedkernel--2cf75e00f646275120540977.md) | 32 | `declaration-track:2cf75e00f646275120540977cec7401a4d1b2863cd678dd7498f9961f5b0184a` |
| 4 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/regularizedkernel-apply--97360b6abfe6326539c79950.md) | 42 | `result-track:97360b6abfe6326539c7995034b70a13b323fa21536ba3aca3cdd181c927ef9a` |
| 5 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/regularizedkernel-posdef--78af29259eb9a8f66a2bbdca.md) | 56 | `result-track:78af29259eb9a8f66a2bbdca9d3383fc2e4f22e0b8863023ea298048cea12cae` |
| 6 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/regularizedkernel-strictondistinct--eccad51e2d71e3ca89cef3a0.md) | 65 | `result-track:eccad51e2d71e3ca89cef3a0749a0d0f7e1a2307b43009a920dc0c77cddc177b` |
| 7 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/zerosemantickernel--71776bb845ecad903502b372.md) | 77 | `declaration-track:71776bb845ecad903502b372900db9268b3527954bd02f0fc4fc60607c76544b` |
| 8 | `theorem` | [zeroSemanticKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/RegularizedKernel/Variantb144f0e2574df6124b9ca3d532aa0d2a8e06222e201819e750a9f7b16217bd0c.lean/declarations/zerosemantickernel-apply--b4fca092385848d871cc2e2a.md) | 83 | `result-track:b4fca092385848d871cc2e2a714982d169b13d263e0bb01e31b7aca9105b0bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
