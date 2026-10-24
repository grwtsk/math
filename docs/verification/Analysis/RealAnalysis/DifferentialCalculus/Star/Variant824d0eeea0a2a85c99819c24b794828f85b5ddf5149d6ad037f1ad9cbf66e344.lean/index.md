# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "363f57e88b8a7c5c53270a3dd983241faee741b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `363f57e88b8a7c5c53270a3dd983241faee741b0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Star` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictFDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/hasstrictfderivat-star--d9a08b168b983e46d1e3301b.md) | 31 | `result-track:d9a08b168b983e46d1e3301bf7a9f134f5449b76e55aedef49a8d094d8e09aa8` |
| 2 | `theorem` | [HasFDerivAtFilter.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/hasfderivatfilter-star--2710ec3230873df70c8ab967.md) | 35 | `result-track:2710ec3230873df70c8ab967688ab1fc65bf616498b921b8520b9024f0d1977b` |
| 3 | `theorem` | [HasFDerivWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/hasfderivwithinat-star--c0aa2b839a11e0a36ae5782f.md) | 40 | `result-track:c0aa2b839a11e0a36ae5782f0f9c7928d63e0fa3ad501b26554fa1ca69c07f4f` |
| 4 | `theorem` | [HasFDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/hasfderivat-star--546e743d7642eaab79162b12.md) | 45 | `result-track:546e743d7642eaab79162b12f1516690fb8bdee5543c5e24f68b96c448a10226` |
| 5 | `theorem` | [DifferentiableWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiablewithinat-star--75efe3b3f912ca8243e78acd.md) | 50 | `result-track:75efe3b3f912ca8243e78acde2ab9d3d0c9d8777d774e79c15a766cd6c0f0ebb` |
| 6 | `theorem` | [differentiableWithinAt_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiablewithinat-star-iff--5844044107a268c5a4bb6a94.md) | 55 | `result-track:5844044107a268c5a4bb6a943e528c875057862e27495a7461ab99be9c0677a3` |
| 7 | `theorem` | [DifferentiableAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiableat-star--4a86e14ab12d53f58013f5a4.md) | 60 | `result-track:4a86e14ab12d53f58013f5a4ef74d694be2e6e8660589788d171d958a29d4c77` |
| 8 | `theorem` | [differentiableAt_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiableat-star-iff--96ea684940b67a0abc1d0bde.md) | 65 | `result-track:96ea684940b67a0abc1d0bde25cae1da4897ddfb8c6b6b29e2393a1cde30d6a0` |
| 9 | `theorem` | [DifferentiableOn.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiableon-star--f18df30ef7db07156867c142.md) | 70 | `result-track:f18df30ef7db07156867c142686f5942e9e78bf4ea5ad6b4310ccc7ccff916fc` |
| 10 | `theorem` | [differentiableOn_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiableon-star-iff--63462e0b28b1e27cc143629c.md) | 74 | `result-track:63462e0b28b1e27cc143629cf2f104c5f85d53feac9f11afb927a1155a6fa261` |
| 11 | `theorem` | [Differentiable.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiable-star--c9ce5257a69619f37e6b2a63.md) | 79 | `result-track:c9ce5257a69619f37e6b2a6351a7e868207b07b92d22d26334c5e2b6af4aa7b5` |
| 12 | `theorem` | [differentiable_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/differentiable-star-iff--77d6962f4374cfe710abd6da.md) | 83 | `result-track:77d6962f4374cfe710abd6dae941e1803927f74d7c86ed5974d91fafb2f450aa` |
| 13 | `theorem` | [fderivWithin_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/fderivwithin-star--6184ef03e36195be21385476.md) | 86 | `result-track:6184ef03e36195be213854763a2749f16570cbcbe4aec3fbfcc306559dc7806b` |
| 14 | `theorem` | [fderiv_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant824d0eeea0a2a85c99819c24b794828f85b5ddf5149d6ad037f1ad9cbf66e344.lean/declarations/fderiv-star--0273a5dc2d6099e54cd115d1.md) | 92 | `result-track:0273a5dc2d6099e54cd115d1bd882118683cc20f993bb7a06b8d16ed5b1df0dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
