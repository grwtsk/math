# Verification target: GRWTSK.Algebra.GroupTheory.EquivalenceGroupAddGroup.Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba869f2f7f4d2158af5da2696c0f9d3b8b920b38",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba869f2f7f4d2158af5da2696c0f9d3b8b920b38`.

Source path: `GRWTSK/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/instance--0c4ce9451a6f5fb6caf5ae89.md) | 29 | `declaration-track:0c4ce9451a6f5fb6caf5ae8986982a970aa0e27beed4e1922f4cb729491d9c12` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/instance--ba93c4c287680f909a8afb8e.md) | 30 | `declaration-track:ba93c4c287680f909a8afb8e79a3f3cd9ecddf8e46d7ae334d2d7ff5e91cb866` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/instance--d70d4d79fbfb1fdc8a5d0ac0.md) | 31 | `declaration-track:d70d4d79fbfb1fdc8a5d0ac0cd3d425a873bec085839a354aaa4d751f53ad930` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/instance--3704de0831dd49ebeae07732.md) | 32 | `declaration-track:3704de0831dd49ebeae0773240cd2bb6ff5873f8027a9c131e6f4c92f08766aa` |
| 5 | `def` | [toAddGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/toaddgroupcat--d160e7cdbecbd551b0be7787.md) | 37 | `declaration-track:d160e7cdbecbd551b0be77872d35e129c5d5632506b39d133b069f4ca488fa99` |
| 6 | `def` | [toAddCommGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/toaddcommgroupcat--68ea2f6d6f7eaf108bd017b1.md) | 49 | `declaration-track:68ea2f6d6f7eaf108bd017b1de6ed99cc450aa0f8df951a6f3400749c33ef797` |
| 7 | `def` | [toGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/togroupcat--307ec8ac9bc81b9340006971.md) | 61 | `declaration-track:307ec8ac9bc81b934000697146fa1c273e25e5e5a45555c7881d6112cf692d6b` |
| 8 | `def` | [toCommGroupCat](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/tocommgroupcat--bb4aee57726d7e63e3ddae64.md) | 73 | `declaration-track:bb4aee57726d7e63e3ddae640302e58118dbad480fe996fd9bf3e5d5993190d4` |
| 9 | `def` | [groupAddGroupEquivalence](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/groupaddgroupequivalence--e611b3b2613e2634e8e08f73.md) | 83 | `declaration-track:e611b3b2613e2634e8e08f73a4a6438b44e38b5debda0dc3a49b7c8e1a77afc1` |
| 10 | `def` | [commGroupAddCommGroupEquivalence](../../../../../mathematics/Algebra/GroupTheory/EquivalenceGroupAddGroup/Variant4bcefdb4e6ef2f590dd23fa58c68279fa48e43ace685584ecb035251c6c1a8ba.lean/declarations/commgroupaddcommgroupequivalence--5417d6552d3d8c4394a9d014.md) | 92 | `declaration-track:5417d6552d3d8c4394a9d014f1db40c99683fd30349ba5c85f70b7a502b542cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
