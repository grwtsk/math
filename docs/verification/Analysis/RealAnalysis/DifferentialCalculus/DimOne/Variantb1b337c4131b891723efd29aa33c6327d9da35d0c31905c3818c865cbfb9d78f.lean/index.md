# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DimOne.Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.TangentCone.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tangentConeAt_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/declarations/tangentconeat-eq-univ--3ff62d6c99180fd70ddba5d4.md) | 28 | `result-track:3ff62d6c99180fd70ddba5d47befc8f8a580eeb47bff74270a1a7644e495f3a3` |
| 2 | `theorem` | [uniqueDiffWithinAt_iff_accPt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DimOne/Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f.lean/declarations/uniquediffwithinat-iff-accpt--2399214e46190b363d470a7a.md) | 41 | `result-track:2399214e46190b363d470a7a675538fb29e72b000028c81c5283a502aa59e692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
