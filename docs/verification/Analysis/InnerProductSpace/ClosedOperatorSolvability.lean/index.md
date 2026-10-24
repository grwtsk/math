# Verification target: GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "299ee0dd9079b606b269df371d74ceb8be5adb19",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `299ee0dd9079b606b269df371d74ceb8be5adb19`.

Source path: `GRWTSK/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearPMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.HahnBanach` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_graph_of_adjoint_identity](../../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/declarations/mem-graph-of-adjoint-identity--da225349e6aa6a786812e217.md) | 39 | `result-track:da225349e6aa6a786812e217e523374e00af264f8746709f8361efd28588bb0b` |
| 2 | `theorem` | [exists_solution_of_adjoint_bound](../../../../mathematics/Analysis/InnerProductSpace/ClosedOperatorSolvability.lean/declarations/exists-solution-of-adjoint-bound--0121e821e1ab47aeb7e745a7.md) | 78 | `result-track:0121e821e1ab47aeb7e745a7ceb92e0ccddea96f1d7da99522efadb8ae541e5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
