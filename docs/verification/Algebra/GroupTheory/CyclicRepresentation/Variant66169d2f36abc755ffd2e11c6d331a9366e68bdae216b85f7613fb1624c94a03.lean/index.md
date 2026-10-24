# Verification target: GRWTSK.Algebra.GroupTheory.CyclicRepresentation.Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "488e6006e33deb20ef2f3e4cdc545455e24f57a9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `488e6006e33deb20ef2f3e4cdc545455e24f57a9`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.DivisorRepresentation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup--56fb2b1a2aa29d995f8d4919.md) | 19 | `declaration-track:56fb2b1a2aa29d995f8d49191b435a3cea4e5c60ae770390bffd478642e832a9` |
| 2 | `theorem` | [mem_cyclicSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/mem-cyclicsubgroup--c01f8b7f920d261d9515b4a8.md) | 26 | `result-track:c01f8b7f920d261d9515b4a8681282727d4da994f151ed6064d9816700646ad1` |
| 3 | `theorem` | [generator_order](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/generator-order--ab33026d780c79ff71917e6b.md) | 31 | `result-track:ab33026d780c79ff71917e6bae1bf6043782108cd6a09462fa8d02b125d932ba` |
| 4 | `theorem` | [cyclicSubgroup_eq_zmultiples](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-eq-zmultiples--f2894288872600fff3e9a748.md) | 38 | `result-track:f2894288872600fff3e9a7482ad9a7177c83ff40e6e8b4e643ee2787ee3e631a` |
| 5 | `theorem` | [cyclicSubgroup_card](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-card--3d66c3833a52e572d0eea4eb.md) | 51 | `result-track:3d66c3833a52e572d0eea4eb04d636d00487f3ce0b544dfbbbdafb91b0fe5111` |
| 6 | `theorem` | [cyclicSubgroup_le_iff](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-le-iff--85be154b46bf19d344380c58.md) | 55 | `result-track:85be154b46bf19d344380c58f029ac9b2e74e6eeb57f404d222f743ee6a213b5` |
| 7 | `theorem` | [cyclicSubgroup_surjective](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-surjective--464a201551dccb9aa0dcbf62.md) | 66 | `result-track:464a201551dccb9aa0dcbf62eab59b758699682e71dfbb90c9fa381148b238b3` |
| 8 | `def` | [cyclicSubgroupOrderIso](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgrouporderiso--f2c607a15d2e3533d5784955.md) | 82 | `declaration-track:f2c607a15d2e3533d5784955e8493018f7e582f690616af45667494b3908c23d` |
| 9 | `theorem` | [cyclicSubgroup_gcd](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-gcd--bf19675a51c5250a2c6b9d4b.md) | 89 | `result-track:bf19675a51c5250a2c6b9d4b8603793cdfabbc78db0e047bea099d572ac8cfe9` |
| 10 | `theorem` | [cyclicSubgroup_lcm](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cyclicsubgroup-lcm--797bc0eba1ed122638322994.md) | 93 | `result-track:797bc0eba1ed122638322994975a27b89f130d1a04c42e4f41f0ff4b1b907ac2` |
| 11 | `def` | [cyclicColor](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cycliccolor--f530bc98cec9210815406461.md) | 98 | `declaration-track:f530bc98cec9210815406461a6811c74f90d0625eb0cca85f114333d4e362a25` |
| 12 | `theorem` | [cyclicColor_threshold](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cycliccolor-threshold--e37f25aff51e46ba031c3765.md) | 102 | `result-track:e37f25aff51e46ba031c3765771785a9d92f9c434d2ce857af24f9630bfade9f` |
| 13 | `theorem` | [cyclicColor_representative](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cycliccolor-representative--0d7aeb71b48fd5b9b060bc10.md) | 107 | `result-track:0d7aeb71b48fd5b9b060bc104c090a9c7d496fb55f5b45cee52d56a39175bbb8` |
| 14 | `theorem` | [cyclicColor_representative_independent](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cycliccolor-representative-independent--b4ce327fcdf2e488f9462d88.md) | 114 | `result-track:b4ce327fcdf2e488f9462d88cade21db21cb2481959ea9f9d09aba3e6fd50973` |
| 15 | `theorem` | [cyclicColor_val](../../../../../mathematics/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/declarations/cycliccolor-val--d051162eeb0e115a140ff1d3.md) | 120 | `result-track:d051162eeb0e115a140ff1d3233d4a9b6e050b27d241e7da6d28c723ee57e14d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
