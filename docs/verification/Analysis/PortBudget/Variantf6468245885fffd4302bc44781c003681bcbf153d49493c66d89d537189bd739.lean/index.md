# Verification target: GRWTSK.Analysis.PortBudget.Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5200cbe2ad8a70d15ffab081817fbc3ca6d47456",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/index.md) · [Full source](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5200cbe2ad8a70d15ffab081817fbc3ca6d47456`.

Source path: `GRWTSK/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joinedPort](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/joinedport--4fb992bb4688d7658a08883a.md) | 31 | `declaration-track:4fb992bb4688d7658a08883a0adc886474dc815433ef1a200f44ba7fa0fdecaf` |
| 2 | `theorem` | [total_joined_eq](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/total-joined-eq--8fcfd8ec2ad6deb51a9a91fc.md) | 35 | `result-track:8fcfd8ec2ad6deb51a9a91fcbb6e7e181700bacb1c076fb325280e34dff76fb1` |
| 3 | `theorem` | [coarsening_budget_le](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/coarsening-budget-le--70d74aa97e1093316b3e44e7.md) | 41 | `result-track:70d74aa97e1093316b3e44e7c26f23d739a2b1ec935aaf204d40e5a91aa5a5ef` |
| 4 | `theorem` | [joined_source_budget](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/joined-source-budget--76e188dd62a6e7da51c8e45f.md) | 49 | `result-track:76e188dd62a6e7da51c8e45f61e15919d271bc20afb6637bd8f9640b8d65fad6` |
| 5 | `theorem` | [two_join_budget](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/two-join-budget--b9bf568dae12e3f60dc93c0d.md) | 55 | `result-track:b9bf568dae12e3f60dc93c0dce62e6ecfbf537d98286d13de6abb97a3be83de4` |
| 6 | `theorem` | [four_port_source_budget](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/four-port-source-budget--fc4c7923fd115e710b02a1ca.md) | 60 | `result-track:fc4c7923fd115e710b02a1ca4f6512c6c229d31513785b45909d1a38890468fb` |
| 7 | `theorem` | [no_reverse_budget_constant](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/no-reverse-budget-constant--45cc62dfd3b313ed41166255.md) | 66 | `result-track:45cc62dfd3b313ed411662550e95406b8503ba05f726cc690e495f21c65c9971` |
| 8 | `theorem` | [separated_budget_unbounded](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/separated-budget-unbounded--3f9b14da3e3713ecf062ab9b.md) | 71 | `result-track:3f9b14da3e3713ecf062ab9b1c5a84bc2d5cec61cb845d2b582b4acec9152ca5` |
| 9 | `theorem` | [balanced_vaughan_source_budget](../../../../mathematics/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/declarations/balanced-vaughan-source-budget--0ce9e8a4b86c3682102df244.md) | 80 | `result-track:0ce9e8a4b86c3682102df244fee43aeee39bf40998d3e391540e752ff863a049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
