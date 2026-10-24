# Verification target: GRWTSK.Analysis.IntervalIntegral.Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4a33a0e6015259b333d85f7eab41d273ccad95a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntervalIntegral/Reflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4a33a0e6015259b333d85f7eab41d273ccad95a`.

Source path: `GRWTSK/Analysis/IntervalIntegral/Reflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntervalIntegral/Reflection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intervalReflection](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/intervalreflection--a04d734aace90386f8b8cf7c.md) | 23 | `declaration-track:a04d734aace90386f8b8cf7c2a856ac3986363eaf30f4fd94176b504876bd332` |
| 2 | `theorem` | [interval_reflection_involutive](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/interval-reflection-involutive--e0ef202898262e47ba49abfe.md) | 26 | `result-track:e0ef202898262e47ba49abfe76facd307cbce32d851f8c18757be0a35b569569` |
| 3 | `theorem` | [interval_reflection_mem_Icc_iff](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/interval-reflection-mem-icc-iff--869716fef0aa8a8e144bc516.md) | 33 | `result-track:869716fef0aa8a8e144bc51663125e1e1e0d163928ae77e56f38b20d88b8f0bd` |
| 4 | `def` | [evenPart](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/evenpart--dac1c7fce8662f6247f85592.md) | 39 | `declaration-track:dac1c7fce8662f6247f855925146dbfd4ed77545b431196effc5da832fce411a` |
| 5 | `def` | [oddPart](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/oddpart--1e82e47287f0a276fa537dd7.md) | 43 | `declaration-track:1e82e47287f0a276fa537dd7e30947c0e3a9a699b806ecbd1e03c01707dcb27f` |
| 6 | `theorem` | [even_add_odd](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/even-add-odd--4e79a14dc747ccc8384a8664.md) | 46 | `result-track:4e79a14dc747ccc8384a86646e307e21e9c388f6d3cb09da59a7e62962797b44` |
| 7 | `theorem` | [even_part_reflection](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/even-part-reflection--71592aa40e281af29763fa48.md) | 51 | `result-track:71592aa40e281af29763fa481a3a451c47a280d977f4a46466fb714bdd7c5ad3` |
| 8 | `theorem` | [odd_part_reflection](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/odd-part-reflection--3b7b69b14f65d65635cf98fc.md) | 56 | `result-track:3b7b69b14f65d65635cf98fcc3ec85b47144edc72ca331c80809e84a536a1c50` |
| 9 | `theorem` | [integral_reflection](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-reflection--27b439cc5870fc49c66fd60f.md) | 62 | `result-track:27b439cc5870fc49c66fd60fa8123cc2086de1302a084f443eb00b8a3bfb9714` |
| 10 | `theorem` | [integral_eq_zero_of_reflection_odd](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-eq-zero-of-reflection-odd--186441e8a61e9426b4a4f824.md) | 69 | `result-track:186441e8a61e9426b4a4f8246f17b57d8dc02babf9010a494e74f39211c03c9c` |
| 11 | `theorem` | [integral_even_mul_odd](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-even-mul-odd--bd320a68365bdc1ff4d887dc.md) | 77 | `result-track:bd320a68365bdc1ff4d887dc5b897044f8d3aacfbb8d88e9c6764d04217b0568` |
| 12 | `theorem` | [integral_odd_mul_even](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-odd-mul-even--08ba0d5c32249bd8a4ee4744.md) | 84 | `result-track:08ba0d5c32249bd8a4ee4744f050e3bffb0e6f97b486c02c2062c5c7c9a8fd49` |
| 13 | `theorem` | [integral_product_eq_signed_squares](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-product-eq-signed-squares--f01cf064fd9959402968c6dd.md) | 90 | `result-track:f01cf064fd9959402968c6ddc5dbb1cd546dd73723ef3ed1681cb118a38755dd` |
| 14 | `theorem` | [integral_product_eq_even_add_odd](../../../../mathematics/Analysis/IntervalIntegral/Reflection.lean/declarations/integral-product-eq-even-add-odd--e3578031f118806135a54492.md) | 106 | `result-track:e3578031f118806135a54492b2b1a8d55a6b13bc5981068c2c5d7efceac77608` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
