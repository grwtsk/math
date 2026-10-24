# Verification target: GRWTSK.Analysis.Complex.EuclideanDyadicRun

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4ae0a66b36df7b880da2541e47ce991be55e50",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/EuclideanDyadicRun.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4ae0a66b36df7b880da2541e47ce991be55e50`.

Source path: `GRWTSK/Analysis/Complex/EuclideanDyadicRun.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/EuclideanDyadicRun.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerDyadicTrace`](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Int.DivMod` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [next](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/next--e6a42e3f94b50ee0a1ed729c.md) | 22 | `declaration-track:e6a42e3f94b50ee0a1ed729ce248fcaf10819e9c9d3db268f8933a7d46107924` |
| 2 | `def` | [iterate](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/iterate--69c2fd8cb3a5fc0782f792dd.md) | 26 | `declaration-track:69c2fd8cb3a5fc0782f792dd947fb7dc98c0cff01599a5a9f623826197abb2d1` |
| 3 | `theorem` | [ediv_window](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/ediv-window--71542f7b9130ed0a37894a34.md) | 30 | `result-track:71542f7b9130ed0a37894a342ee5e839a88b046b67514ebaeaeac5030214c1e3` |
| 4 | `theorem` | [neg_ediv_window](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/neg-ediv-window--5de594e21178899ae47732f7.md) | 36 | `result-track:5de594e21178899ae47732f7530ddd043bc2c4746cae37686eb20c0b8946b2d4` |
| 5 | `theorem` | [next_error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/next-error-nonneg--453986aad2cb831060b0c288.md) | 41 | `result-track:453986aad2cb831060b0c2880efffa82c2c0fc5e1cb761c7d979a00f0bf49540` |
| 6 | `theorem` | [next_valid](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/next-valid--1a531cd6ee4017910b892fda.md) | 52 | `result-track:1a531cd6ee4017910b892fdab24100f7193d932df42e2524df269aa8c3b791f9` |
| 7 | `theorem` | [iterate_error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/iterate-error-nonneg--031dd031bf7488f176f7c95d.md) | 58 | `result-track:031dd031bf7488f176f7c95dfeaeebc2c23aaf9139e505ba7e67b0f88d49bffe` |
| 8 | `theorem` | [run_eq_iterate](../../../../mathematics/Analysis/ComplexAnalysis/EuclideanDyadicRun.lean/declarations/run-eq-iterate--f9a17816d7a5f1b3aeee2ff7.md) | 65 | `result-track:f9a17816d7a5f1b3aeee2ff788b79c2c8b6d7df01c3acd7987d294189c2464c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
