# Verification target: GRWTSK.Topology.GeneralTopology.FiniteHoleGeometry.Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e42d77efa6637ede5812843ebd8e42f0dd0d094",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e42d77efa6637ede5812843ebd8e42f0dd0d094`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [openRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/openrectangle--2c722c7ca2af2d88a3af0dc2.md) | 39 | `declaration-track:2c722c7ca2af2d88a3af0dc234dca20f54fbcbcf876ba9b5dfbdad360bad6bc0` |
| 2 | `theorem` | [isOpen_openRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/isopen-openrectangle--27991127a894ebffaf01c019.md) | 43 | `result-track:27991127a894ebffaf01c019e9e1eb83a8c7f93f27a2fb8c0af271381397654d` |
| 3 | `theorem` | [closedBall_subset_openRectangle_of_coordinateMargin](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/closedball-subset-openrectangle-of-coordinatemargin--e49c6868f3d309db06f02e6a.md) | 49 | `result-track:e49c6868f3d309db06f02e6ac733bd95e711e770ae23d50b0095efe25b987f0a` |
| 4 | `def` | [rectangleBoundary](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/rectangleboundary--9c18e708acefee287eae8c4a.md) | 75 | `declaration-track:9c18e708acefee287eae8c4afad8ca9f32824e5c93b446199a084e90f654eff3` |
| 5 | `structure` | [RectangleHoleConfiguration](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/rectangleholeconfiguration--7b9ef11706a7d3edc8237e60.md) | 80 | `declaration-track:7b9ef11706a7d3edc8237e60b92d0ada816c32bea9451b8af7c3212cdadb5b21` |
| 6 | `theorem` | [hole_center_mem_rectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-center-mem-rectangle--a4952130eb25f0516a74f48f.md) | 94 | `result-track:a4952130eb25f0516a74f48fcb06b9b579ec7aeb5c4ef21e8a25d7787175e16c` |
| 7 | `theorem` | [hole_circle_subset_rectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-circle-subset-rectangle--2a4d5d6a267f5b5f62ee459d.md) | 102 | `result-track:2a4d5d6a267f5b5f62ee459dca4f782662a6c486e5d1b5317b6ea365d6cda46c` |
| 8 | `theorem` | [hole_circle_disjoint_rectangle_boundary](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-circle-disjoint-rectangle-boundary--87ace4adf3a71e4c74f055a9.md) | 109 | `result-track:87ace4adf3a71e4c74f055a9a8911e29563028e31d2867523e7bf02b12dd9fe9` |
| 9 | `theorem` | [hole_closedBalls_disjoint](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-closedballs-disjoint--fedee423de9acb123851ab98.md) | 118 | `result-track:fedee423de9acb123851ab98dbaf0161ce0b9383ff36e0794c62bf98dbf4dc06` |
| 10 | `theorem` | [hole_circles_pairwise_disjoint](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-circles-pairwise-disjoint--5e1dfbdf0d52d8369d1514c3.md) | 127 | `result-track:5e1dfbdf0d52d8369d1514c3c56b002ca7f51689fd5da4760ecd135844c2cb67` |
| 11 | `theorem` | [hole_center_ne_other_center](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/hole-center-ne-other-center--7f9bc57fa1b5333461720644.md) | 133 | `result-track:7f9bc57fa1b53334617206444405706fd799a75fb884fddb17ac7c716ebf1628` |
| 12 | `def` | [finiteHoleUnion](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/finiteholeunion--8923c6fb8f8c975ff1e5dda9.md) | 142 | `declaration-track:8923c6fb8f8c975ff1e5dda931bc558bbaf4544141193f0ffd9f36a5673f5e40` |
| 13 | `theorem` | [finiteHoleUnion_isClosed](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/finiteholeunion-isclosed--7911506475ceff42218e12e4.md) | 146 | `result-track:7911506475ceff42218e12e449b0a4c7c00a55bc587ad77b66618da583d8cfaa` |
| 14 | `def` | [puncturedRectangle](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/puncturedrectangle--5d2f585bfbfecbcc6d62eae5.md) | 152 | `declaration-track:5d2f585bfbfecbcc6d62eae5a861784945ed1da14820698e0576fca62a157d74` |
| 15 | `theorem` | [puncturedRectangle_isOpen](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/puncturedrectangle-isopen--1a9233c89230c585acaca17c.md) | 156 | `result-track:1a9233c89230c585acaca17c24bcfc5d06a5eb6ac0ce8f0422988355239ee4db` |
| 16 | `def` | [empty](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/empty--a2b5b80cc461e6e179ad68a1.md) | 162 | `declaration-track:a2b5b80cc461e6e179ad68a1c83bf090c10258cd89dac7297e578302f439d02e` |
| 17 | `def` | [singleton](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/singleton--cbc8ab1b2974d5a51879e7b2.md) | 170 | `declaration-track:cbc8ab1b2974d5a51879e7b2966016e1ff6ad553cd573f020d0ee7641e957f8d` |
| 18 | `def` | [pair](../../../../../mathematics/Topology/GeneralTopology/FiniteHoleGeometry/Variant22c267a104a418d4aafebd95dc4e794126a8939b3ce48797e9f2097fef83c71f.lean/declarations/pair--d3ab39d560510c3c99728694.md) | 185 | `declaration-track:d3ab39d560510c3c99728694a74352583ebe73c37bc3f1a59d95cdb0ff5a58c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
