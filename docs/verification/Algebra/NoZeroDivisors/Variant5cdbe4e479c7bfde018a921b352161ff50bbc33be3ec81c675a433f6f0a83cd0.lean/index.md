# Verification target: GRWTSK.Algebra.NoZeroDivisors.Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c699758ae83c317d3883c2eda1d26acbcf37fed9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/index.md) · [Full source](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c699758ae83c317d3883c2eda1d26acbcf37fed9`.

Source path: `GRWTSK/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.WellFounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.LexOrder` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_nonZeroDivisors_of_constantCoeff](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/mem-nonzerodivisors-of-constantcoeff--627633c79dd6eb4cdf9bf96d.md) | 61 | `result-track:627633c79dd6eb4cdf9bf96dd1ff106e89a46a3e865a9b49d22943c40ba9c66b` |
| 2 | `lemma` | [monomial_mem_nonzeroDivisors](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/monomial-mem-nonzerodivisors--38849d9421600c7f9191e3b2.md) | 81 | `result-track:38849d9421600c7f9191e3b208e8171f767afed35a521a54dee2b23939d280ab` |
| 3 | `lemma` | [X_mem_nonzeroDivisors](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/x-mem-nonzerodivisors--e0c0eb2983815867b093e416.md) | 94 | `result-track:e0c0eb2983815867b093e41656a799231f6811eca5b38da99e87afc29f8c29ac` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/instance--4e55f6b85bda36e667ec6bdd.md) | 103 | `declaration-track:4e55f6b85bda36e667ec6bdd41697cffc2dec0236c10d242a542223e4d8ed8cb` |
| 5 | `theorem` | [weightedOrder_mul](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/weightedorder-mul--4001fa7482917af1c24e2f01.md) | 111 | `result-track:4001fa7482917af1c24e2f015c887d4699366013a3adce88b6afdefb277db40a` |
| 6 | `theorem` | [order_mul](../../../../mathematics/Algebra/NoZeroDivisors/Variant5cdbe4e479c7bfde018a921b352161ff50bbc33be3ec81c675a433f6f0a83cd0.lean/declarations/order-mul--192d29964baded212e94fbd8.md) | 141 | `result-track:192d29964baded212e94fbd8275a27544bd997c0b8ab521312439e024761f9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
