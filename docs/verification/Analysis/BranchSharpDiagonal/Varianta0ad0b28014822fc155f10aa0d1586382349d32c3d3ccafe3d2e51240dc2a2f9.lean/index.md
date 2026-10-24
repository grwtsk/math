# Verification target: GRWTSK.Analysis.BranchSharpDiagonal.Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e95b1dc23f1700c8892652db73d1586345d97c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e95b1dc23f1700c8892652db73d1586345d97c`.

Source path: `GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchWeightedGrowth` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparison](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison--a8fa385ff898b4e15c73ceca.md) | 27 | `declaration-track:a8fa385ff898b4e15c73ceca5acbe6ca6c54e60eb969e96446045acf2924fa47` |
| 2 | `theorem` | [comparison_nonnegative](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-nonnegative--d42831c81945c7d7590e44a1.md) | 30 | `result-track:d42831c81945c7d7590e44a1188b644b055f74e921a9762fa6c5d9075f5edb01` |
| 3 | `theorem` | [comparison_continuous](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-continuous--c296a8473dbd44089de64e6d.md) | 34 | `result-track:c296a8473dbd44089de64e6d41b6d57605da95609dee9efa071914e9c5b5f176` |
| 4 | `theorem` | [comparison_below](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-below--cb78cfa8a385652733938d61.md) | 42 | `result-track:cb78cfa8a385652733938d61f639f7900a848593cbb98acfcf86e970108efa51` |
| 5 | `theorem` | [comparison_above](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-above--56c81f490062aaa9595538f9.md) | 46 | `result-track:56c81f490062aaa9595538f927d998a36ba128cfe2177c98f842df07a90013a9` |
| 6 | `theorem` | [comparison_antitone](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-antitone--d1c52466a8f312deee613615.md) | 50 | `result-track:d1c52466a8f312deee613615654657eb35494aa3ea539f96738ed1229dd401e2` |
| 7 | `theorem` | [comparison_atom](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-atom--2b8c925bde9601073dde3083.md) | 67 | `result-track:2b8c925bde9601073dde3083d205aaed0fe86e25712674f57a4c9a7401607e8c` |
| 8 | `theorem` | [sum_Icc_eq_range](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/sum-icc-eq-range--1a939e1f7772e78e6f0478c6.md) | 76 | `result-track:1a939e1f7772e78e6f0478c6570276dad616a97739c4c181ef30cb3032f3b7d8` |
| 9 | `theorem` | [comparison_sum_le_integral](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-sum-le-integral--7add502fe82f796181295efd.md) | 93 | `result-track:7add502fe82f796181295efd1a15746b573ad51815103b8ccb7c5db432c3d539` |
| 10 | `theorem` | [inverse_sqrt_integral](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/inverse-sqrt-integral--9ece09c30c2a3fa5740322b8.md) | 111 | `result-track:9ece09c30c2a3fa5740322b82e2159c88bbadb2c68253d04d70d3f4418a62c86` |
| 11 | `theorem` | [comparison_integral](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/comparison-integral--c5716b349a35b117e630c37c.md) | 130 | `result-track:c5716b349a35b117e630c37c17af80b2e96f715b972ec96711fc074d629e3ee0` |
| 12 | `theorem` | [diagonal_le_comparison](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/diagonal-le-comparison--8efb4112ae8b7f92e370ca32.md) | 197 | `result-track:8efb4112ae8b7f92e370ca32096d54cc0e68c44ab03e18ccc9ae015b14892f16` |
| 13 | `theorem` | [diagonal_exact_integral_bound](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/diagonal-exact-integral-bound--9baa71c98f96d9473f1d9640.md) | 226 | `result-track:9baa71c98f96d9473f1d9640356adc97c557983e98f08b4f558c41f578349f95` |
| 14 | `theorem` | [diagonal_sharp](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/diagonal-sharp--759e1ceeb77380486304de41.md) | 233 | `result-track:759e1ceeb77380486304de41ba555f41f04f8765e814a2b4fc747c1899aad8d0` |
| 15 | `theorem` | [native_sharp_diagonal](../../../../mathematics/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/declarations/native-sharp-diagonal--987c5903b9bcc340c5e419c7.md) | 242 | `result-track:987c5903b9bcc340c5e419c79ca99bd95e2988577ba50dce16e5073595172a68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
