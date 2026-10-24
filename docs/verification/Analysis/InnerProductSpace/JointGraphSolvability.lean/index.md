# Verification target: GRWTSK.Analysis.InnerProductSpace.JointGraphSolvability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57f14941a4522e9ea77f804b69d33687f4f5fbbd",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57f14941a4522e9ea77f804b69d33687f4f5fbbd`.

Source path: `GRWTSK/Analysis/InnerProductSpace/JointGraphSolvability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/JointGraphSolvability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability`](../../../../mathematics/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.Tactic.FunProp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jointGraph](../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/declarations/jointgraph--a352a645e7b2e32ed3387968.md) | 41 | `declaration-track:a352a645e7b2e32ed338796848a8a32d72ae508f613b9e6d345a4fbca83ebbf9` |
| 2 | `theorem` | [exists_solution_of_core_estimate](../../../../mathematics/Analysis/InnerProductSpace/JointGraphSolvability.lean/declarations/exists-solution-of-core-estimate--bb8abd47ba5b63387303c03a.md) | 46 | `result-track:bb8abd47ba5b63387303c03ae908d4795540191d61f4648d6b1bf7fe906b0e07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
