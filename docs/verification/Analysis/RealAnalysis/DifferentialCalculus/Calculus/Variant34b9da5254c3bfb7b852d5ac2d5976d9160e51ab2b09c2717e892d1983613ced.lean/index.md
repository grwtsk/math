# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Calculus.Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e2ab30179acf56ed569f3135ef533353ffb5122",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e2ab30179acf56ed569f3135ef533353ffb5122`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContDiffWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/contdiffwithinat-inversion--1dd27ad30daae7c09366dfc4.md) | 46 | `result-track:1dd27ad30daae7c09366dfc486bd337897ca993f369af16cf2d1952e1270b52a` |
| 2 | `theorem` | [ContDiffOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/contdiffon-inversion--fb284ca0efc535086b1617d2.md) | 51 | `result-track:fb284ca0efc535086b1617d27a45e609e29c35b089a9bdc076bc9b75fbc33ec5` |
| 3 | `theorem` | [ContDiffAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/contdiffat-inversion--821e9be8375cd33dcb962f98.md) | 56 | `result-track:821e9be8375cd33dcb962f9855f63281d19fedb694143adfae7fab3d246e01d8` |
| 4 | `theorem` | [ContDiff.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/contdiff-inversion--ddfea32a627b82355c16dbda.md) | 61 | `result-track:ddfea32a627b82355c16dbdafeba04c2c5ecc52b5d88c04e3e484285ddaba614` |
| 5 | `theorem` | [DifferentiableWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/differentiablewithinat-inversion--981ec283f06601cb4216ca4b.md) | 66 | `result-track:981ec283f06601cb4216ca4b70e89060ff00efe7803a9f15c28d16d80b87c41e` |
| 6 | `theorem` | [DifferentiableOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/differentiableon-inversion--f757d8e1af21ecb56b822ac4.md) | 72 | `result-track:f757d8e1af21ecb56b822ac4d309fa5853c806df1314c1098970b953e9f84793` |
| 7 | `theorem` | [DifferentiableAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/differentiableat-inversion--ad8032a265b39f7d7bbc9aa2.md) | 77 | `result-track:ad8032a265b39f7d7bbc9aa2d7e7bcd722cc96ae28f1071562552090e886af00` |
| 8 | `theorem` | [Differentiable.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/differentiable-inversion--4a6a15c437664a4a9cbc502d.md) | 83 | `result-track:4a6a15c437664a4a9cbc502deca8ad86390ee87e04b8289688095e294dbce31f` |
| 9 | `theorem` | [hasFDerivAt_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant34b9da5254c3bfb7b852d5ac2d5976d9160e51ab2b09c2717e892d1983613ced.lean/declarations/hasfderivat-inversion--3434980c76575bb7a7c21b99.md) | 95 | `result-track:3434980c76575bb7a7c21b99113526d975443efa302b1d226f38eb2ac9e05e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
