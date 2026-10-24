# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e10b93578965a7f4b19b0e4e22416299bd7d5aad",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e10b93578965a7f4b19b0e4e22416299bd7d5aad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat--d4bb6f4d70f2fd582b402b0e.md) | 26 | `result-track:d4bb6f4d70f2fd582b402b0e0711e01e50ada9ef0f3126aafd9c3167722b4a84` |
| 2 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/uniquemdiffon-iff-uniquediffon--4aed82855c84017df5ab255f.md) | 33 | `result-track:4aed82855c84017df5ab255f493ae99a071707456b42ea9344a7141ade75bf03` |
| 3 | `theorem` | [ModelWithCorners.uniqueMDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/modelwithcorners-uniquemdiffon--c9a291b4ac9e772fee5583e8.md) | 38 | `result-track:c9a291b4ac9e772fee5583e89313a0015ad227d4d35edc2037ff3ed8a089bad7` |
| 4 | `theorem` | [writtenInExtChartAt_model_space](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/writteninextchartat-model-space--cf83f3dfaaae3fdb1408cb59.md) | 43 | `result-track:cf83f3dfaaae3fdb1408cb59752da57717575774b30fafb31feb9f26696f1450` |
| 5 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat--38f15e470207e6f7c21b1360.md) | 46 | `result-track:38f15e470207e6f7c21b1360ae56fd7447777b441571a70e58c2cd78e518b1c8` |
| 6 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/hasmfderivat-iff-hasfderivat--9f49085106b247786f36009e.md) | 54 | `result-track:9f49085106b247786f36009e423decd810f65622548519096f46c06322d65ce3` |
| 7 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat--7542f2eb08330ea107dea0e2.md) | 62 | `result-track:7542f2eb08330ea107dea0e2b3655bc662ad4da5bda6dea10aee4a0432c80aa1` |
| 8 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mdifferentiableat-iff-differentiableat--4ef178ea1c808449100867e0.md) | 72 | `result-track:4ef178ea1c808449100867e0a962553cd4db075c5e190ec7771a614ecf1ba1f4` |
| 9 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mdifferentiableon-iff-differentiableon--7635671369461e82dbbf6d6d.md) | 81 | `result-track:7635671369461e82dbbf6d6d459dafa5dcc56ecb8f0b6b41fac24ef920a8930c` |
| 10 | `theorem` | [mdifferentiable_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mdifferentiable-iff-differentiable--1ccd40e7160b7fd60466c385.md) | 90 | `result-track:1ccd40e7160b7fd60466c38576d86bce59054a16e471d4c31776a07bd7716fe1` |
| 11 | `theorem` | [mfderivWithin_eq_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mfderivwithin-eq-fderivwithin--bf2ed2c2f362a51fa8b0cd02.md) | 99 | `result-track:bf2ed2c2f362a51fa8b0cd024e66358e77c60ed98c3f14600f674378fb48c0f3` |
| 12 | `theorem` | [mfderiv_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variantd367b30a5d510bbf4290a41c1a2204db5e79074cffeaf5e457bbaabd5d5096fc.lean/declarations/mfderiv-eq-fderiv--8edfaf676fbc1622008e869a.md) | 109 | `result-track:8edfaf676fbc1622008e869ad9b574edb5c5a42f5a3d712e6d80ebbf0cd1847b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
