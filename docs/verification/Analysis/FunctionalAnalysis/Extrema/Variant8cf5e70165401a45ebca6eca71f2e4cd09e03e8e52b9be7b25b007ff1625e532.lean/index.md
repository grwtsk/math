# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extrema.Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3752d4d84daa82a63e822081e883c3744bf30002",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3752d4d84daa82a63e822081e883c3744bf30002`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/declarations/isminon-of-islocalminon-of-convexon-icc--ef14b96b66de99241891c818.md) | 27 | `result-track:ef14b96b66de99241891c818b3b08e25cbf51c6f384c7f020737c90809143e8d` |
| 2 | `theorem` | [IsMinOn.of_isLocalMinOn_of_convexOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/declarations/isminon-of-islocalminon-of-convexon--20eb6632dc3cdcb854d51330.md) | 49 | `result-track:20eb6632dc3cdcb854d5133052a4df9d1dff6abcf62307bdc70b87862fe106d3` |
| 3 | `theorem` | [IsMaxOn.of_isLocalMaxOn_of_concaveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/declarations/ismaxon-of-islocalmaxon-of-concaveon--500279b3f8e4d49193bbf764.md) | 67 | `result-track:500279b3f8e4d49193bbf76420630a5b2605b0cb2a5d7529740339cc6b70eae0` |
| 4 | `theorem` | [IsMinOn.of_isLocalMin_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/declarations/isminon-of-islocalmin-of-convex-univ--250bda7fa0212defb9c8c5c0.md) | 72 | `result-track:250bda7fa0212defb9c8c5c092bce6747c8529a755e15633d20800daade57666` |
| 5 | `theorem` | [IsMaxOn.of_isLocalMax_of_convex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Extrema/Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532.lean/declarations/ismaxon-of-islocalmax-of-convex-univ--a4bc17bfc44eb49e2dcbb7f8.md) | 77 | `result-track:a4bc17bfc44eb49e2dcbb7f8c014a3a8dc97de0ffd4098b4e50f5d27fd2170f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
