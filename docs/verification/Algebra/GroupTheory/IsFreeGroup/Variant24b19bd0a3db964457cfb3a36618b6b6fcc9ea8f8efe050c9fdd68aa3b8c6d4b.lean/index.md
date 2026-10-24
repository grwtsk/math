# Verification target: GRWTSK.Algebra.GroupTheory.IsFreeGroup.Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45ccde0db75c3649c9d6bec5f5150b6137530b6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45ccde0db75c3649c9d6bec5f5150b6137530b6`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/isfreegroup--76b75061878a4960b6af669f.md) | 51 | `declaration-track:76b75061878a4960b6af669f3cabf81625f4442453b92bce413c9d959573fb09` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/instance--429ebfc725b48720bb73cd0f.md) | 61 | `declaration-track:429ebfc725b48720bb73cd0f2661f8ce3b20139805b7955048f7c3b4b1ea3d4d` |
| 3 | `def` | [MulEquiv](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/mulequiv--e64545c1a4fd016ffbc5a0ae.md) | 70 | `declaration-track:e64545c1a4fd016ffbc5a0ae7c655819202fbfe792edc2ba3f50be633aed3edd` |
| 4 | `def` | [toFreeGroup](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/tofreegroup--1dcdbf2ab5bb35f3b0f93c4c.md) | 74 | `declaration-track:1dcdbf2ab5bb35f3b0f93c4c94ce6896988fb6e0df50731d6661e1a7a1a9a273` |
| 5 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/of--ff96e288b7083a8500aef0b5.md) | 83 | `declaration-track:ff96e288b7083a8500aef0b564af6bf3fb22733ac1185cbb9c2b41f770ebdee0` |
| 6 | `theorem` | [of_eq_freeGroup_of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/of-eq-freegroup-of--64e3f2b09d841704b355c333.md) | 88 | `result-track:64e3f2b09d841704b355c3335aa6870f2d78dc399fbcc4205032319476274ce1` |
| 7 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/lift--4c2ac70e0958b5fcd2f0ee35.md) | 96 | `declaration-track:4c2ac70e0958b5fcd2f0ee3570b1731ddebd5e68bb7165a72fb9786d76827a9c` |
| 8 | `theorem` | [lift'_eq_freeGroup_lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/lift-eq-freegroup-lift--0bf76a320692cc9b80793f04.md) | 109 | `result-track:0bf76a320692cc9b80793f04711cf9cbe7911dbfc627b84272900e5e9b6ef88c` |
| 9 | `theorem` | [lift_of](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/lift-of--871ed55adacacf7a2fbae0bf.md) | 114 | `result-track:871ed55adacacf7a2fbae0bf5144d7919fd11ddc2e9a07b668d08a8b79778979` |
| 10 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/lift-symm-apply--eb5933f3732aa0d6620cead4.md) | 119 | `result-track:eb5933f3732aa0d6620cead4975132f3eed39bcac0e07142e4d93d06f376191e` |
| 11 | `theorem` | [ext_hom](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/ext-hom--e040adc28be289d5bba57d56.md) | 125 | `result-track:e040adc28be289d5bba57d563e4c8f883a998360bdebd482ee4e3d082cb5f962` |
| 12 | `theorem` | [unique_lift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/unique-lift--7f91db705ca4afb141f254fe.md) | 134 | `result-track:7f91db705ca4afb141f254fe0df5b482e092fa492e39a8277d4d8e5e1af4cf3a` |
| 13 | `def` | [ofLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/oflift--ee9dd5e844dbd33354548702.md) | 140 | `declaration-track:ee9dd5e844dbd33354548702ba8edbe711c4bfd361717fd527e1b7c011866e9f` |
| 14 | `def` | [ofUniqueLift](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/ofuniquelift--ace590dc613d9e4298ecc4e5.md) | 161 | `declaration-track:ace590dc613d9e4298ecc4e5c32f63e9bc44477042d96c83ee89712127e7a08b` |
| 15 | `def` | [ofMulEquiv](../../../../../mathematics/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/declarations/ofmulequiv--c170b0a42b19f3ff7bb36247.md) | 175 | `declaration-track:c170b0a42b19f3ff7bb362479b4d6de02cbea0bacf6532ddbd1784db4344fe28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
