# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b9588894e2a5478be1f2570b34446f11b787fb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b9588894e2a5478be1f2570b34446f11b787fb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/macro-rules--b1caf5a4c78c8947146bcf6e.md) | 45 | `declaration-track:b1caf5a4c78c8947146bcf6ec5b1620b21badf3a1740de6c9317bfafb4a3195b` |
| 2 | `theorem` | [strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/strictconvexon-pow--e9a4b3277d57a3a9ef82f95f.md) | 48 | `result-track:e9a4b3277d57a3a9ef82f95f6c10cc89b5b482a4053b32a2d9f65aa3b7e15663` |
| 3 | `theorem` | [Even.strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/even-strictconvexon-pow--7e69b2357bdd113f1f976791.md) | 57 | `result-track:7e69b2357bdd113f1f9767915355ad0c3f71ee4c168905f9fd4223a9022ac79a` |
| 4 | `theorem` | [Finset.prod_nonneg_of_card_nonpos_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/finset-prod-nonneg-of-card-nonpos-even--1100bc1dfa869763adfd507b.md) | 66 | `result-track:1100bc1dfa869763adfd507ba3c62de110efd0cd6f81c22463d52d8620e11607` |
| 5 | `theorem` | [int_prod_range_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/int-prod-range-nonneg--8bc90417f4576787abe42db5.md) | 81 | `result-track:8bc90417f4576787abe42db5e1627bcdcbc9be2a2718c21af137122926e65438` |
| 6 | `theorem` | [int_prod_range_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/int-prod-range-pos--de78194963e39efee6dc3ce8.md) | 97 | `result-track:de78194963e39efee6dc3ce8f505d38397c23e7636194044da82e0e26b9b1d4f` |
| 7 | `theorem` | [strictConvexOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/strictconvexon-zpow--3f79fa44b63eb499b6f915b9.md) | 107 | `result-track:3f79fa44b63eb499b6f915b9b50c6af295685d35e8c49f74e6e72cb761288fa9` |
| 8 | `theorem` | [hasDerivAt_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/hasderivat-sqrt-mul-log--65da5bc47f3425b42148872f.md) | 124 | `result-track:65da5bc47f3425b42148872ffb1958960a0ec14ba95510a831e31b2d0660a6bc` |
| 9 | `theorem` | [deriv_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/deriv-sqrt-mul-log--c3584edd48300f2044f5a083.md) | 131 | `result-track:c3584edd48300f2044f5a083dda6af03028a33d8a339ec7f979ec13c2b5f9e28` |
| 10 | `theorem` | [deriv_sqrt_mul_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/deriv-sqrt-mul-log--bc53c9c52d83b8768afe6e6a.md) | 141 | `result-track:bc53c9c52d83b8768afe6e6a1643e7070b954da46d4151298d85e845208bf91e` |
| 11 | `theorem` | [deriv2_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/deriv2-sqrt-mul-log--7765ba368388e7e3409204c2.md) | 146 | `result-track:7765ba368388e7e3409204c25e02bb130e460dec8964535124114b4d6a1692b3` |
| 12 | `theorem` | [strictConcaveOn_sqrt_mul_log_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/strictconcaveon-sqrt-mul-log-ioi--bdca7113821b8c50f927e53f.md) | 163 | `result-track:bdca7113821b8c50f927e53fb07b2efcbfaae6daea9ddeb865e0f07303dcd5dc` |
| 13 | `theorem` | [strictConcaveOn_sin_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/strictconcaveon-sin-icc--0eba69f3ef49fc84dd8df99c.md) | 177 | `result-track:0eba69f3ef49fc84dd8df99c8e18ff0bdb1a7aca99c2e75c3aeb1a2d799e250f` |
| 14 | `theorem` | [strictConcaveOn_cos_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantab76ba4919b6d60fa4033928c447bb4530f09290b39ad3abd90a1cd239604921.lean/declarations/strictconcaveon-cos-icc--89f4cc1995e1121cedba9031.md) | 183 | `result-track:89f4cc1995e1121cedba90319146aea8255542340da94705cdc41f1cda1dea76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
