# Verification target: GRWTSK.Analysis.NormedSpace.SimilarityReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71cb6da724528108be732f12b16a6c30f815fb64",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NormedSpace/SimilarityReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71cb6da724528108be732f12b16a6c30f815fb64`.

Source path: `GRWTSK/Analysis/NormedSpace/SimilarityReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NormedSpace/SimilarityReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_eq](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/declarations/source-eq--06283c216913999c287c175c.md) | 18 | `result-track:06283c216913999c287c175ccfc1c282aa1d9bfc0e43d298db6d9a9ae0346ff2` |
| 2 | `theorem` | [norm_return](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/declarations/norm-return--5ca536343af9c4478176dc35.md) | 26 | `result-track:5ca536343af9c4478176dc3561101fc66dca53a1bb1f6dd6011466b259f0a349` |
| 3 | `theorem` | [log_budget](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/declarations/log-budget--8dacdd392fd20ba0a2d1fb7c.md) | 39 | `result-track:8dacdd392fd20ba0a2d1fb7ca5c2c49e1b69e7ce16e1e82ca84e44eb5bfde94c` |
| 4 | `theorem` | [relative_upperSublinear](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/declarations/relative-uppersublinear--f82a90fd13c28d682d4d8732.md) | 48 | `result-track:f82a90fd13c28d682d4d87324b244d66ce166f7bffa8d403060555a36d54a2cc` |
| 5 | `theorem` | [sublinear_log_of_tensor_budget](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SimilarityReconstruction.lean/declarations/sublinear-log-of-tensor-budget--e1953df6357aba91d46f80bc.md) | 59 | `result-track:e1953df6357aba91d46f80bc155029e8a5f658aeb3c275d6a113afdf9d3a294e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
