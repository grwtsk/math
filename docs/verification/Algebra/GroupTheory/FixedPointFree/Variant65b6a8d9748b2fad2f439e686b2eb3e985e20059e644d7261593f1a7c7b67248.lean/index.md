# Verification target: GRWTSK.Algebra.GroupTheory.FixedPointFree.Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc7f4352ca2f15432270ba1578550c1effe1fd3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc7f4352ca2f15432270ba1578550c1effe1fd3`.

Source path: `GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedPointFree](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/fixedpointfree--7c07926a79711e6de4a9dea3.md) | 25 | `declaration-track:7c07926a79711e6de4a9dea366ea0d84682b2e552f6951784113e96b6a7e8277` |
| 2 | `def` | [commutatorMap](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commutatormap--243c575e146ee55a22cbba54.md) | 29 | `declaration-track:243c575e146ee55a22cbba5473f946ba2afe0fef8b0c985b68820a6833563006` |
| 3 | `theorem` | [commutatorMap_apply](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commutatormap-apply--1972846db3f1c4dce67a6af3.md) | 31 | `result-track:1972846db3f1c4dce67a6af3e2fe3d31b55ff369bd40301d51b90ea575abe95a` |
| 4 | `theorem` | [commutatorMap_injective](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commutatormap-injective--7d90ae2f5da55e1d08a8ad9d.md) | 38 | `result-track:7d90ae2f5da55e1d08a8ad9d12fe7da87f0ba65821f3fb89f17172b4a1081430` |
| 5 | `theorem` | [commutatorMap_surjective](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commutatormap-surjective--943527f75e6da5a612ecce9e.md) | 44 | `result-track:943527f75e6da5a612ecce9e3601b86bcc33f760cfaf7f7b7655cafa0234108a` |
| 6 | `theorem` | [prod_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/prod-pow-eq-one--0ff4bacc98f223fe7409a889.md) | 47 | `result-track:0ff4bacc98f223fe7409a88940813efc932288927c78f793152e5f633c66bbde` |
| 7 | `theorem` | [coe_eq_inv_of_sq_eq_one](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/coe-eq-inv-of-sq-eq-one--997c5576645c07a6bcd101f1.md) | 53 | `result-track:997c5576645c07a6bcd101f1168d42f0d71b26f6748e074fee551b5f28168288` |
| 8 | `theorem` | [coe_eq_inv_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/coe-eq-inv-of-involutive--fdf6053bee8678f930d59bfe.md) | 60 | `result-track:fdf6053bee8678f930d59bfe782ae7743553c053c65fce66a1fe95ac519949ee` |
| 9 | `theorem` | [commute_all_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commute-all-of-involutive--1a86f5c8a9dd787979c66094.md) | 64 | `result-track:1a86f5c8a9dd787979c66094d375a9fde31ecb3dc9272258ed7d5bc3652a3e44` |
| 10 | `def` | [commGroupOfInvolutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/commgroupofinvolutive--2f4fb2d394ef4150dbf2413e.md) | 70 | `declaration-track:2f4fb2d394ef4150dbf2413e8423743ad033bd63715afab11e12258e1e0668e1` |
| 11 | `theorem` | [orderOf_ne_two_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/orderof-ne-two-of-involutive--97bf74afd786c30460ac7090.md) | 73 | `result-track:97bf74afd786c30460ac70906d6f8aa15254331f8fc7e46ab2e7b24606705448` |
| 12 | `theorem` | [odd_card_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/odd-card-of-involutive--0108b53146ef46772c39e4af.md) | 81 | `result-track:0108b53146ef46772c39e4af6b0b9d4788da209209b3d5d9c77c41267ee365a9` |
| 13 | `theorem` | [odd_orderOf_of_involutive](../../../../../mathematics/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/declarations/odd-orderof-of-involutive--dd63fb870269f44b5ba36221.md) | 89 | `result-track:dd63fb870269f44b5ba36221ea5e2873eef13be89b6d8179567e407e06190b72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
