# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c2db59aafd738d9e158afd20e8d89c9162883e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c2db59aafd738d9e158afd20e8d89c9162883e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/isorderedaddmonoid--e57cf3e68acd7437a7f5cd02.md) | 41 | `declaration-track:e57cf3e68acd7437a7f5cd028f996d06102c35c30b0e747e5f06cedba2a2210e` |
| 2 | `instance` | [isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/isorderedcanceladdmonoid--639125dfcb95bb6c0ba8eab7.md) | 45 | `declaration-track:639125dfcb95bb6c0ba8eab7963f1de9c3aa38ed0972be358d3ca3494b5e95aa` |
| 3 | `instance` | [isOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/isorderedring--3e3d91da414c797b7d729b40.md) | 49 | `declaration-track:3e3d91da414c797b7d729b406bf2b37f6b4c80a11c37b8d6dda36d5c6728b290` |
| 4 | `instance` | [isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/isstrictorderedring--11e67c957349fd5a3a43bbb1.md) | 54 | `declaration-track:11e67c957349fd5a3a43bbb1dcca81c20d6715b1c23489c64ce338397cdddc41` |
| 5 | `instance` | [existsAddOfLE](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/existsaddofle--ba7284bdccad07d033af7861.md) | 59 | `declaration-track:ba7284bdccad07d033af78616c8d585c35a72013596ec8f8ea0431ec7caaba41` |
| 6 | `instance` | [nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/nontrivial--3807880002fc856afb1d66e9.md) | 68 | `declaration-track:3807880002fc856afb1d66e9f38b219b76d832499678c7e38e7abb161384aa5f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/instance--12ee70977f3ef6772fbac07e.md) | 72 | `declaration-track:12ee70977f3ef6772fbac07e1ae6d19c1243a8caf7a571dff273f6508cadcf7f` |
| 8 | `instance` | [linearOrderedCommMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/linearorderedcommmonoidwithzero--426d3e76234f7f17e039b493.md) | 79 | `declaration-track:426d3e76234f7f17e039b49321aa1b11df012c0023debf054f4c6bf0ea28450a` |
| 9 | `instance` | [canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/canonicallyorderedadd--e8ec38b9e74a719657c14b40.md) | 83 | `declaration-track:e8ec38b9e74a719657c14b4006f6115c2f441ab674a18c0fb1e1233ccea2f874` |
| 10 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/nozerodivisors--641e384e6f078ca571765e7a.md) | 90 | `declaration-track:641e384e6f078ca571765e7a45c2bc8360ffa1545687c1b1fdbe6ba905d1a12a` |
| 11 | `instance` | [orderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af.lean/declarations/orderedsub--13b3372325e237c2bd5f0168.md) | 96 | `declaration-track:13b3372325e237c2bd5f0168bbfee3f797e44c28ac262f695de170ac85e0f857` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
