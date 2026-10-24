# Verification target: GRWTSK.Algebra.GroupTheory.EquivalenceGroupAddGroup.Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96beca30f11c52647ca79be4d401358ac36bb1e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96beca30f11c52647ca79be4d401358ac36bb1e6`.

Source path: `GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/instance--69c2c6016b4d82d9c2155072.md) | 37 | `declaration-track:69c2c6016b4d82d9c215507201eedc2af0fca64943deb6af3c518dd681d576f1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/instance--2c3a4266d10ef243acc166ed.md) | 38 | `declaration-track:2c3a4266d10ef243acc166ed885b6e98863e582d397bb13f600e76abdb799229` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/instance--faee26ec904b04386361cf4e.md) | 39 | `declaration-track:faee26ec904b04386361cf4e702147cf1663d61c9a9d5419958755f8d2e4fdf0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/instance--6be210458f63d1fcf5a24dd1.md) | 40 | `declaration-track:6be210458f63d1fcf5a24dd16e54cd4ac9962d5dc824855d28d2638aeb27bab6` |
| 5 | `def` | [toAddGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/toaddgroupcat--b2b874a282ab9461892c46a7.md) | 45 | `declaration-track:b2b874a282ab9461892c46a71e01212afc57e18dd31ec3ee6c1683aea0c0b479` |
| 6 | `def` | [toAddCommGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/toaddcommgroupcat--39c256880bd2bc4ae1c76302.md) | 57 | `declaration-track:39c256880bd2bc4ae1c7630206622c657a6b0e61fecf329e572b933db42922b9` |
| 7 | `def` | [toGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/togroupcat--c34d34918b0fb1736844bd71.md) | 69 | `declaration-track:c34d34918b0fb1736844bd71b97334f078faba114ad9e41725ab6727c4907333` |
| 8 | `def` | [toCommGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/tocommgroupcat--65ae581a60bd81f5cf60d10a.md) | 81 | `declaration-track:65ae581a60bd81f5cf60d10a574ba2b5d46e5e6082a11f913fdaae03970839cf` |
| 9 | `def` | [groupAddGroupEquivalence](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/groupaddgroupequivalence--540d318b907d7d495d80858a.md) | 91 | `declaration-track:540d318b907d7d495d80858a0dfb19ab12ba262f2d85b0ca1855f792e121d856` |
| 10 | `def` | [commGroupAddCommGroupEquivalence](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant47dc5ff2a74f1da381e4fe84eba49dfa0eaf914492dd765775e9a74263e0f0f8.lean/declarations/commgroupaddcommgroupequivalence--e61c77b038943f3ea23b7905.md) | 100 | `declaration-track:e61c77b038943f3ea23b79056a0de17f1a281686cd5c6b7990f9e0ae27a89f95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
