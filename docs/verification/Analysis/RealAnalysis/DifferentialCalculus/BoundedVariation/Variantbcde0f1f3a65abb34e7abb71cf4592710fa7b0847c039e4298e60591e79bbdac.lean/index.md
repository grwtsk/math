# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundedVariation.Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6c0ce2f9784001414193108af3a16296416c979",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6c0ce2f9784001414193108af3a16296416c979`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Monotone` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.BoundedVariation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_differentiableWithinAt_of_mem_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/ae-differentiablewithinat-of-mem-real--2c6ae12832febe9249d34baa.md) | 42 | `result-track:2c6ae12832febe9249d34baa5ddd75accfd78e438f9662c01b4f5590849ecdd4` |
| 2 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/ae-differentiablewithinat-of-mem-pi--f4f008eacd3c1bf977280b6d.md) | 52 | `result-track:f4f008eacd3c1bf977280b6d2e699d7cd52661e4b1d49d9741a6e2dca2512b43` |
| 3 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/ae-differentiablewithinat-of-mem--cbd2fe856c92b7873e924555.md) | 63 | `result-track:cbd2fe856c92b7873e9245550689bc2130b2434e95bd6332a228c82680222297` |
| 4 | `theorem` | [ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/ae-differentiablewithinat--033aa44eac8f3f91ae709ef8.md) | 77 | `result-track:033aa44eac8f3f91ae709ef8d69f0e3c2c4e3011c6013a923a9592e78b35a5b8` |
| 5 | `theorem` | [ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/ae-differentiableat--7686aaa674e607f48292fb78.md) | 84 | `result-track:7686aaa674e607f48292fb78970f3db30f38a560e6ccc7dfcbbbf9514e57cab1` |
| 6 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_of_mem_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/lipschitzonwith-ae-differentiablewithinat-of-mem-real--7625c097d148f3719dba85d7.md) | 96 | `result-track:7625c097d148f3719dba85d73e85f120210e2e297eeeec7a2b9380f263069ae8` |
| 7 | `theorem` | [LipschitzOnWith.ae_differentiableWithinAt_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/lipschitzonwith-ae-differentiablewithinat-real--e28bb34db0cd81d1e91e4471.md) | 103 | `result-track:e28bb34db0cd81d1e91e44717e19440fcdf21dad382a0793fb35b11af57dc2bb` |
| 8 | `theorem` | [LipschitzWith.ae_differentiableAt_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/declarations/lipschitzwith-ae-differentiableat-real--82cd59f294932e155f581aff.md) | 111 | `result-track:82cd59f294932e155f581aff48fb7ac26e1a680e2e865f589f69391e93a44b59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
