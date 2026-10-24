# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuantitativeGapIteration.Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fbdeeaa2292a831ec6b05e39a18fa1f203a80ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fbdeeaa2292a831ec6b05e39a18fa1f203a80ee`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lossProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/lossproduct--9f4aac59b647ea6ad6917d52.md) | 28 | `declaration-track:9f4aac59b647ea6ad6917d52ae86c84d7957cc5372187aaadf7c889259ef92dd` |
| 2 | `theorem` | [lossProduct_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/lossproduct-zero--3e626616d353ce8afff9029b.md) | 31 | `result-track:3e626616d353ce8afff9029bd12bfeabd0c7aadcb5e36f7a522169d8f563003c` |
| 3 | `theorem` | [lossProduct_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/lossproduct-succ--489bd12c157d3efe82c37da9.md) | 34 | `result-track:489bd12c157d3efe82c37da98dc5bba6612a0fb2f83ffb6402926c04a966563a` |
| 4 | `theorem` | [lossProduct_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/lossproduct-pos--20e834e7e32e135be0cb3245.md) | 38 | `result-track:20e834e7e32e135be0cb32459c8c82f10522a4cab6e52905b649581a764e3cdc` |
| 5 | `def` | [refinementBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/refinementbudget--8493272cc9f205a41e1b3c2b.md) | 43 | `declaration-track:8493272cc9f205a41e1b3c2b8a7010003ae87fc01aafb6fb50907d2252590516` |
| 6 | `theorem` | [refinementBudget_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/refinementbudget-eq--a3271a186a48a974d55ec52f.md) | 48 | `result-track:a3271a186a48a974d55ec52fe5cae86ee5f291308101269777e9481870f1fc54` |
| 7 | `theorem` | [refinement_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/refinement-lower-bound--bd0810d809398855457ed883.md) | 62 | `result-track:bd0810d809398855457ed883b5c039ad39c6011c37836c3185be94ced10031ed` |
| 8 | `theorem` | [refinement_iteration](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/refinement-iteration--585232057966b09a1cb20072.md) | 71 | `result-track:585232057966b09a1cb2007276741ec4835027c8d42872cda2ca0d5b4815fc8c` |
| 9 | `theorem` | [uniform_of_prefix_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/uniform-of-prefix-budget--eaec840a9c10f9ec51199654.md) | 79 | `result-track:eaec840a9c10f9ec5119965416b485068c72c0e0736b2ae8d4325f2745a2b0c5` |
| 10 | `theorem` | [uniform_of_summable_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant21f0569baef749fc67aef5023e9c7da07fba56e0d794d6d4bea93bbb6dc5ee5f.lean/declarations/uniform-of-summable-budget--f64ad3a25fb9fed5a221e51d.md) | 93 | `result-track:f64ad3a25fb9fed5a221e51df48c70578948ecfb4c181bcb9c6d90c7cfc37ff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
