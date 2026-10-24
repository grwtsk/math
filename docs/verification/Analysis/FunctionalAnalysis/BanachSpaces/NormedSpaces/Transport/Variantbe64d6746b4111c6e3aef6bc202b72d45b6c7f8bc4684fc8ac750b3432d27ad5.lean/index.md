# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Transport.Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b667fd54e8c7ef97251658c28af1ffcdc0f8ac9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b667fd54e8c7ef97251658c28af1ffcdc0f8ac9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.State` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvolutionInvolution](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/convolutioninvolution--e537e50c216a7155327dabe8.md) | 21 | `declaration-track:e537e50c216a7155327dabe881095e9055fc987647af83c089eb16fe5e4d6d74` |
| 2 | `theorem` | [star_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/star-star--dbfeb5def3b8c722146eb1fc.md) | 32 | `result-track:dbfeb5def3b8c722146eb1fc2d2f2138c33588b632ce1a98f637092d95bfe850` |
| 3 | `structure` | [LinearDiffuser](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/lineardiffuser--e9fced9fa1c4c5c76347e001.md) | 42 | `declaration-track:e9fced9fa1c4c5c76347e00122ca0c5decf30640e4378e6b0a745dfa9038881b` |
| 4 | `def` | [factor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/factor--5f89bf2ade72040597a0b0de.md) | 64 | `declaration-track:5f89bf2ade72040597a0b0de823bcc6566c8e0700756e2e3b6dab3983ee088cf` |
| 5 | `theorem` | [factor_nonnegative](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/factor-nonnegative--36fb24777ee04d178abbd2dd.md) | 67 | `result-track:36fb24777ee04d178abbd2ddfcfa71124dfd1d0009e0cc24752e9dccc8e6b5af` |
| 6 | `structure` | [CompatibleTransport](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/compatibletransport--f89bf216d1fee0a8c58eb365.md) | 77 | `declaration-track:f89bf216d1fee0a8c58eb3652782b836193ab8b11cf70a9ccfa5f6a544a386ba` |
| 7 | `def` | [paired](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/paired--07e6e9894e133b60ae3c6a23.md) | 109 | `declaration-track:07e6e9894e133b60ae3c6a23ccb1471fecafa20bf824cdcca1f750b77f2dde4e` |
| 8 | `theorem` | [paired_star](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/paired-star--b443e05dbbcd84614c151965.md) | 117 | `result-track:b443e05dbbcd84614c15196527f8519559c8b495e3106d3d89bc935cc9255d25` |
| 9 | `theorem` | [paired_graph_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/paired-graph-bound--ffc59de67e464bd50b85d03c.md) | 124 | `result-track:ffc59de67e464bd50b85d03cc9ae4602ef762d577f3758b52dfcdba8236139fa` |
| 10 | `structure` | [CertifiedNonlinearity](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/certifiednonlinearity--23df63dcd35336b1d7895866.md) | 134 | `declaration-track:23df63dcd35336b1d7895866a447b5e36ccc814cb8f32a9ce19905db852af0dd` |
| 11 | `structure` | [AnalyticLayer](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/analyticlayer--244b3f992d07de066f96f281.md) | 146 | `declaration-track:244b3f992d07de066f96f2816e61693dfb57041e48b364231b8f2709bed7709b` |
| 12 | `def` | [candidate](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/candidate--12746fc7ff9ad3d5e8787d89.md) | 166 | `declaration-track:12746fc7ff9ad3d5e8787d89e5172a506541323a074365c5c1bf05f483cd80e6` |
| 13 | `def` | [stabilityFactor](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/stabilityfactor--25636cbe047d8a315061779b.md) | 174 | `declaration-track:25636cbe047d8a315061779bbaf60545caa71c999caecd90d5147d6e5216754d` |
| 14 | `theorem` | [candidate_graphFunctional_lipschitz](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/candidate-graphfunctional-lipschitz--649c731e3167ff366afdadae.md) | 183 | `result-track:649c731e3167ff366afdadae6d4c41784a96186a5dbb5249de57d402f53ca2cc` |
| 15 | `theorem` | [nonexpansive_of_factor_le_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variantbe64d6746b4111c6e3aef6bc202b72d45b6c7f8bc4684fc8ac750b3432d27ad5.lean/declarations/nonexpansive-of-factor-le-one--4874f594bacba01b5ad52e91.md) | 232 | `result-track:4874f594bacba01b5ad52e917af48457a3e999c15300cee56e4b1a0b578c3b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
