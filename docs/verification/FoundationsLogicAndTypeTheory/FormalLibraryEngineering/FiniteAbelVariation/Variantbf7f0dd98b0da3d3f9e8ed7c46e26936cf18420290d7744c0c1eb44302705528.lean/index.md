# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAbelVariation.Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cb838e14d79afbcf5c540c64c7c32b5d27ded55",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cb838e14d79afbcf5c540c64c7c32b5d27ded55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Icc_mul_by_parts_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/sum-icc-mul-by-parts-ico--2014d89d9a7d2e2bf71e79f4.md) | 18 | `result-track:2014d89d9a7d2e2bf71e79f42db30874565d0d7943528a392fa17c17b4573385` |
| 2 | `theorem` | [sum_Icc_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/sum-icc-mul-by-parts--7bb52cff9bca406a0ecc2583.md) | 34 | `result-track:7bb52cff9bca406a0ecc2583ee3bebcdb3fe175094a313b56f842e1b1b6de3ab` |
| 3 | `theorem` | [centered_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/centered-sum--6a9cc7c8ff22600a8fb6384d.md) | 44 | `result-track:6a9cc7c8ff22600a8fb6384d7bffe627403b328b54c8fde439abed108aca4512` |
| 4 | `theorem` | [centered_sum_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/centered-sum-mul-by-parts--9e5d97f91f47405d7cc828be.md) | 49 | `result-track:9e5d97f91f47405d7cc828be19e7d65a9b24c77fe8efa9b02c9e0c4aebbcf6f9` |
| 5 | `theorem` | [weighted_error_abs_le_sqrt_variation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/weighted-error-abs-le-sqrt-variation--25053024122b659707c7af4c.md) | 58 | `result-track:25053024122b659707c7af4c991b65bc60a42cefac3f040a44a9a9cb64abfeea` |
| 6 | `theorem` | [weighted_error_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/declarations/weighted-error-zero--09f08175fcc0f27b8f9e416b.md) | 98 | `result-track:09f08175fcc0f27b8f9e416b8c48b05d6e777eb674dc3c3b0f697aef997e43fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
