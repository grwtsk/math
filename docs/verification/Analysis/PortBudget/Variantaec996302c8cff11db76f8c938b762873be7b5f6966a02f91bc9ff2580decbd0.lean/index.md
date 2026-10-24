# Verification target: GRWTSK.Analysis.PortBudget.Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8104fc671f9d316bc8c75ad90f2463f61e04b31a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/index.md) · [Full source](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8104fc671f9d316bc8c75ad90f2463f61e04b31a`.

Source path: `GRWTSK/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean.json)

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
| 1 | `def` | [joinedPort](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/joinedport--e049346e207a1baa202923c5.md) | 26 | `declaration-track:e049346e207a1baa202923c58caf1b3204cac4508ebdccac6aa140c984dc81b3` |
| 2 | `theorem` | [total_joined_eq](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/total-joined-eq--8cbf78dd0de55ac4268bb86c.md) | 30 | `result-track:8cbf78dd0de55ac4268bb86c368c50e02803a857fc654f24ee7768a4618417a6` |
| 3 | `theorem` | [coarsening_budget_le](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/coarsening-budget-le--3d568e0aa0f8c26ace0f8890.md) | 36 | `result-track:3d568e0aa0f8c26ace0f88906765e60af3780592aabc131dba4ca9778c1f0ac3` |
| 4 | `theorem` | [joined_source_budget](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/joined-source-budget--78a7f9912d6258410dd7ee9f.md) | 44 | `result-track:78a7f9912d6258410dd7ee9f5dafe3f858cc5b1f631189e08e557f2145d3a6a4` |
| 5 | `theorem` | [two_join_budget](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/two-join-budget--dfde33f30bda07823642c62b.md) | 50 | `result-track:dfde33f30bda07823642c62b003c61241f4a56624a417ac10bba2f0a6913fa36` |
| 6 | `theorem` | [four_port_source_budget](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/four-port-source-budget--51501380a34240e7c366a269.md) | 55 | `result-track:51501380a34240e7c366a269d216a68ed8a4c1154a1dc11aee68b6781591d26d` |
| 7 | `theorem` | [no_reverse_budget_constant](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/no-reverse-budget-constant--8c7318415948a4ebffa565bc.md) | 61 | `result-track:8c7318415948a4ebffa565bc212ad9d4497981010fc7eccedfdc55cb64004a81` |
| 8 | `theorem` | [separated_budget_unbounded](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/separated-budget-unbounded--c85f8686dd6b7c25ff040222.md) | 66 | `result-track:c85f8686dd6b7c25ff040222fffcc19c8e64e2e37c72a54f467cff4048773165` |
| 9 | `theorem` | [balanced_vaughan_source_budget](../../../../mathematics/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/declarations/balanced-vaughan-source-budget--d118c85112823b9a62fff8eb.md) | 75 | `result-track:d118c85112823b9a62fff8ebd825ce788c5826a449584f9870448afd7def510b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
