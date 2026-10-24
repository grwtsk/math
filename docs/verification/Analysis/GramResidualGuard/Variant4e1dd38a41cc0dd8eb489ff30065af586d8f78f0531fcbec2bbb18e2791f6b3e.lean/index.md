# Verification target: GRWTSK.Analysis.GramResidualGuard.Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2`.

Source path: `GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/quadratic-difference-abs-le--f6f2d11220b91e38771fdd11.md) | 18 | `result-track:f6f2d11220b91e38771fdd1199a21a910f781a2e8a0528ad071e24eca6f26417` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positive-approximation-lower--36cc0d61ad092da2d836430f.md) | 31 | `result-track:36cc0d61ad092da2d836430f92deee946031bf6d2e21675123007fa84482bc7f` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/coercive-approximation-lower--205ae2ff5b11aa04f0a99458.md) | 39 | `result-track:205ae2ff5b11aa04f0a99458d4a31bcbe5651564e224bcb2819db900b6ea9164` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positive-of-coercive-residual--7a16c35f94f21fb601d1ed15.md) | 47 | `result-track:7a16c35f94f21fb601d1ed150a399154e4da650aad4b93f34f794b22aeebe505` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positive-of-arbitrary-precision--c58feb53b98cabb8662f5810.md) | 55 | `result-track:c58feb53b98cabb8662f5810105bb55b9a1f6ba83e97ea961e8ddafbd3b2e394` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/gram-residual-lower--01bb1de75dcf36f2772122c6.md) | 77 | `result-track:01bb1de75dcf36f2772122c6f86bbecd633f5fafab5f7f0db19c61299fe384b1` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positive-of-arbitrary-gram-precision--859a550c8bc4ed6239f858f1.md) | 86 | `result-track:859a550c8bc4ed6239f858f10c04fb6e71b7510c5723b4c24bbf9c44388793d3` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positivedistance--4c5179062d05ee34d6a1694a.md) | 96 | `declaration-track:4c5179062d05ee34d6a1694afb2a96954d3a6f90cb7d4a9ca358f3a4f4a872b2` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/negative-rayleigh-le-norm--56872db5e36d66360722f20e.md) | 99 | `result-track:56872db5e36d66360722f20e6ae3c377a7b045133b7d87e70c62c940c2a46154` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/negative-rayleigh-distance-lower--6b25a3f8d89a59210dff94b8.md) | 111 | `result-track:6b25a3f8d89a59210dff94b87346ef054114e5d0577869939e1445bcbac61e63` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/positivedistance-eq-zero-iff--08c46862a4d88cbdbe55c572.md) | 121 | `result-track:08c46862a4d88cbdbe55c5724e2cca97f1ad70c0194476ac1128ac05c5e29f24` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/negative-eigenvalue-distance-lower--1c69434eae46da486c5c3c21.md) | 137 | `result-track:1c69434eae46da486c5c3c2194e0a2316191c9fd2df77677a236d1fa45618241` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/matrixoperator--8ef5027b5e66b37c1df0bd27.md) | 150 | `declaration-track:8ef5027b5e66b37c1df0bd27b413f2103bc4b568cd7efff83c9fc560b3e77333` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/matrixoperator-positive-iff--cef843d61d1cd49715d91383.md) | 153 | `result-track:cef843d61d1cd49715d91383b641acb1766c90df000d2b33af4de64cca6b4ae5` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--ea2a1668c863db43db8f4399.md) | 158 | `result-track:ea2a1668c863db43db8f4399a533669e3f0247eee3a7d697338ad52a888080cc` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/declarations/matrix-eigenvalue-distance-lower--6e3c9bb116f4fa2ece673ca1.md) | 170 | `result-track:6e3c9bb116f4fa2ece673ca16c4ed47a019239f3affec9d05566970818f6c3d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
