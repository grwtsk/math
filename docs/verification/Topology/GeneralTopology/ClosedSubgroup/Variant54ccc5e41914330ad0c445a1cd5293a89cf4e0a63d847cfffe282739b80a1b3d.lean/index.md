# Verification target: GRWTSK.Topology.GeneralTopology.ClosedSubgroup.Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c2ee3fbc4c58dea8dfc8791e98bfe153abfbdf6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c2ee3fbc4c58dea8dfc8791e98bfe153abfbdf6`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/closedsubgroup--5a061a1fbbe932982f985b2e.md) | 34 | `declaration-track:5a061a1fbbe932982f985b2e4aee653a19d785999358e1b791b94de520c53df7` |
| 2 | `structure` | [ClosedAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/closedaddsubgroup--a50bb1f6d19b0a2721ec82b6.md) | 39 | `declaration-track:a50bb1f6d19b0a2721ec82b633bc3cafdf2b18ab54f1c25bb4935fb6e80aa7a4` |
| 3 | `theorem` | [toSubgroup_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/tosubgroup-injective--a0d8b3ffe78aedd1f05e3a07.md) | 53 | `result-track:a0d8b3ffe78aedd1f05e3a0750848a7582be89badea68c6de475f8c10a517af7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instance--99aeecffcb492a240f1355ab.md) | 60 | `declaration-track:99aeecffcb492a240f1355abd442836cc9a9bfc1b50a3df05d71fda0a9ba9c2d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instance--a0cadd7dfaea4b929b34e7b0.md) | 65 | `declaration-track:a0cadd7dfaea4b929b34e7b0aa6520e6563bf89964ee2ee86f70a4abedc589f4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instance--090f4c69051661adb1334da9.md) | 71 | `declaration-track:090f4c69051661adb1334da9f4d3ff89a4731e0d152c558491ed86455c6e8948` |
| 7 | `instance` | [instInfClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instinfclosedsubgroup--55ef0a44db9239dd9482688f.md) | 75 | `declaration-track:55ef0a44db9239dd9482688f12793cd266dc26773c95fcb386d8ef7311608eed` |
| 8 | `instance` | [instSemilatticeInfClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instsemilatticeinfclosedsubgroup--a3c6c69954f4be7f9350594c.md) | 79 | `declaration-track:a3c6c69954f4be7f9350594c84c8b16e0dc84d4e90a2b88a10e6ae2035f4d002` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/instance--aa21005d518ebd4f23b2badb.md) | 83 | `declaration-track:aa21005d518ebd4f23b2badbee6e5566b8bf4b9ebd06d3d1c01b477cb2bac5fa` |
| 10 | `lemma` | [normalCore_isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/normalcore-isclosed--7a0a8700284b4d7bab7a3a34.md) | 94 | `result-track:7a0a8700284b4d7bab7a3a3432146752a0dd126f9c082dc0b4c51a6aed9c0d89` |
| 11 | `lemma` | [isOpen_of_isClosed_of_finiteIndex](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variant54ccc5e41914330ad0c445a1cd5293a89cf4e0a63d847cfffe282739b80a1b3d.lean/declarations/isopen-of-isclosed-of-finiteindex--a7f7896aa62fbcfa16278849.md) | 104 | `result-track:a7f7896aa62fbcfa162788494c56fa8c52c71c7aa3501f28dfc56a00e839ff0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
