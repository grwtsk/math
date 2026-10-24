# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Centering.Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002c97c9f5f23341d591aa0df1841bd6053de71e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002c97c9f5f23341d591aa0df1841bd6053de71e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Martingale.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [predictablePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/predictablepart--60fe3a1f2a0e6d566490ce23.md) | 43 | `declaration-track:60fe3a1f2a0e6d566490ce23de2894a97117662eddd815fffc099562b608e2cc` |
| 2 | `theorem` | [predictablePart_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/predictablepart-zero--e2b7afd7acf50b71f8dc0613.md) | 47 | `result-track:e2b7afd7acf50b71f8dc061336c892ac00e4a57b22b8967a15835b8c063681c0` |
| 3 | `theorem` | [adapted_predictablePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/adapted-predictablepart--1a77d963de153426b6659114.md) | 50 | `result-track:1a77d963de153426b66591141b3507660df4002cd9b800b4b6b43e9c348b46d3` |
| 4 | `theorem` | [adapted_predictablePart'](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/adapted-predictablepart--e0e7b46576696ed07aa6500a.md) | 54 | `result-track:e0e7b46576696ed07aa6500a62b149ed58ad8cfbd801ea6cb6d2c0a87f14b16e` |
| 5 | `def` | [martingalePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingalepart--8919822803529150a1a5ef18.md) | 60 | `declaration-track:8919822803529150a1a5ef18b78b407904a817e12db1bcd49d2f9a95b1af2f6b` |
| 6 | `theorem` | [martingalePart_add_predictablePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingalepart-add-predictablepart--b78bb2780ed49c5fa36e89f2.md) | 63 | `result-track:b78bb2780ed49c5fa36e89f224c9b750fc15a0719aa6b4c737199a6e65400039` |
| 7 | `theorem` | [martingalePart_eq_sum](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingalepart-eq-sum--ef86b37c931db641c2bbd772.md) | 67 | `result-track:ef86b37c931db641c2bbd772e33e7737c8b5224adfa722d6dbe9a7b4d244dfc7` |
| 8 | `theorem` | [adapted_martingalePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/adapted-martingalepart--61bb0c0831a18a1347ef8eb5.md) | 73 | `result-track:61bb0c0831a18a1347ef8eb5563ffb0486645f6b5733a9f1b509c22724f61b8d` |
| 9 | `theorem` | [integrable_martingalePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/integrable-martingalepart--7e4d3d1a8ce585e3460906eb.md) | 76 | `result-track:7e4d3d1a8ce585e3460906ebbda8c65bc68b6cc72227f809b142446cb614595c` |
| 10 | `theorem` | [martingale_martingalePart](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingale-martingalepart--9522ed3d3fdc136a597ae4c4.md) | 81 | `result-track:9522ed3d3fdc136a597ae4c4b8840f1ca1370008bdcd0ac1c11a252f5052aeca` |
| 11 | `theorem` | [martingalePart_add_ae_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingalepart-add-ae-eq--d445143e6858a9e7e0840163.md) | 120 | `result-track:d445143e6858a9e7e0840163edd4599ced955789bf95634a5c22ef2bc6797e93` |
| 12 | `theorem` | [predictablePart_add_ae_eq](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/predictablepart-add-ae-eq--618b96f17a0840bb6545c4d5.md) | 140 | `result-track:618b96f17a0840bb6545c4d5e44ed2de41738682f5cfb03c4c6c806cd7cfe65a` |
| 13 | `theorem` | [predictablePart_bdd_difference](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/predictablepart-bdd-difference--4140f89941546eaca254131e.md) | 150 | `result-track:4140f89941546eaca254131e6fdc22d62cc07a7bbc4fad89f1028494ef8a3090` |
| 14 | `theorem` | [martingalePart_bdd_difference](../../../../mathematics/ProbabilityAndMathematicalStatistics/Centering/Varianteb9ba08388e4f9716368f787b5e294b37946f4a6bc21afef3b775724daed7770.lean/declarations/martingalepart-bdd-difference--a48e4add517999d4bf0bbed0.md) | 156 | `result-track:a48e4add517999d4bf0bbed0f009e47962fd3b9e5aded304444cb6ecdc82c763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
