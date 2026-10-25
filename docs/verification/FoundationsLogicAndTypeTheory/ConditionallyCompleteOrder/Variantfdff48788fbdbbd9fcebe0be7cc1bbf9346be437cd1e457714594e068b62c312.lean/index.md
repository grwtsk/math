# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ConditionallyCompleteOrder.Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "193ffd3d527fdbeb269eceb9de263efed44c7560",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `193ffd3d527fdbeb269eceb9de263efed44c7560`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instConditionallyCompleteLinearOrder](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/instconditionallycompletelinearorder--69ac37a396adefdf2744c9a6.md) | 22 | `declaration-track:69ac37a396adefdf2744c9a614d688b3714de872a3569a484315bd66fdc41be0` |
| 2 | `theorem` | [csSup_eq_greatest_of_bdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/cssup-eq-greatest-of-bdd--c53b55e32892b2c7e9b96a85.md) | 54 | `result-track:c53b55e32892b2c7e9b96a85f1ec61686cd4ecd30721bf3a86bbac323ddd2bc6` |
| 3 | `theorem` | [csSup_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/cssup-empty--88efab8ce6a7185106972c2b.md) | 61 | `result-track:88efab8ce6a7185106972c2bbfb385035b863cda2b7215da3863ff8d2bacaea0` |
| 4 | `theorem` | [csSup_of_not_bdd_above](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/cssup-of-not-bdd-above--8983f32580cd4857145430f1.md) | 64 | `result-track:8983f32580cd4857145430f10cb592d86eeb4b0c76d393ebe6ed7cdfc139762a` |
| 5 | `theorem` | [csInf_eq_least_of_bdd](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/csinf-eq-least-of-bdd--6425bb1e2fbeb1157fe22088.md) | 67 | `result-track:6425bb1e2fbeb1157fe22088bd559260dcab3977256a0c9f3904ebf6759f329f` |
| 6 | `theorem` | [csInf_empty](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/csinf-empty--85b1ce1013aaf8c6fb457d54.md) | 74 | `result-track:85b1ce1013aaf8c6fb457d5455f4a3bc7b0884f7a4e2549bb5278bf5b8d7af5b` |
| 7 | `theorem` | [csInf_of_not_bdd_below](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/csinf-of-not-bdd-below--2470adbf079ac2d80566a6a6.md) | 77 | `result-track:2470adbf079ac2d80566a6a6ce6d6b3e16ec514fcc90855eefd9a27f0c31aed2` |
| 8 | `theorem` | [csSup_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/cssup-mem--7a9fd3f1c5f8dd0b31a01b9c.md) | 80 | `result-track:7a9fd3f1c5f8dd0b31a01b9cf2006bc7b3a7ba0d7f22874c04e4f1f10e00a930` |
| 9 | `theorem` | [csInf_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/csinf-mem--1d6dcb1ae6ef92efd6dde824.md) | 84 | `result-track:1d6dcb1ae6ef92efd6dde8241792f809e751339a27146c1bd01351534fd0b04b` |
| 10 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/ConditionallyCompleteOrder/Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312.lean/declarations/example--25dde07b4549f9fed6853149.md) | 94 | `declaration-track:25dde07b4549f9fed6853149cbfec81fa2d3674d4ef0e55b15b727c75252b1bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
