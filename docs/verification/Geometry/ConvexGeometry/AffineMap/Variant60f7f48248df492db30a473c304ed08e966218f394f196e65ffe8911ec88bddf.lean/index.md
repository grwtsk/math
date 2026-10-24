# Verification target: GRWTSK.Geometry.ConvexGeometry.AffineMap.Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36febc9752899d9e3f36d76e25423bc15e4a20b7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36febc9752899d9e3f36d76e25423bc15e4a20b7`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean.json)

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
| 1 | `structure` | [AffineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemap--27caf93374ba13e7d8168ac1.md) | 34 | `declaration-track:27caf93374ba13e7d8168ac1e4d7447a81e0863eaa3e5417625d88e65d4e0b2b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/instance--87d74628512b0bfd3f0d2730.md) | 45 | `declaration-track:87d74628512b0bfd3f0d2730b6cb01597169e1ae13df6f8c237e1f9b6b7594e2` |
| 3 | `lemma` | [coe_mk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/coe-mk--0297dfca755024c07b0e0120.md) | 51 | `result-track:0297dfca755024c07b0e0120c45260f7697767a2d20f5b70aa46371c26e5a42c` |
| 4 | `lemma` | [ext](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/ext--5a3e0c5daf04785c364129dc.md) | 54 | `result-track:5a3e0c5daf04785c364129dcb363ac12fc0dc00c52d3d3843bc6f7bb0cb438a2` |
| 5 | `lemma` | [isAffineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/isaffinemap--7a76cc327b8efcb7e8224e62.md) | 57 | `result-track:7a76cc327b8efcb7e8224e6206eb75bc7a944a4027c3eab2b2ae2e73f324109f` |
| 6 | `def` | [id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/id--463251a711ca36e43bda70e2.md) | 62 | `declaration-track:463251a711ca36e43bda70e29fe8bb0a33dd00b9ba9e86be1e20bb3df69f3cd0` |
| 7 | `def` | [comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/comp--f3bc8a991682957f00585b78.md) | 67 | `declaration-track:f3bc8a991682957f00585b789f070d829122bdaba305d1be0ea8f56b5a7c5af9` |
| 8 | `lemma` | [coe_comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/coe-comp--4ecdc80542caf0190d4d18f0.md) | 72 | `result-track:4ecdc80542caf0190d4d18f043a7315c9184af689ac51c54c94b9aa411ea8d9c` |
| 9 | `lemma` | [id_comp](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/id-comp--b4f4271ec45a18ff7db9ad5b.md) | 75 | `result-track:b4f4271ec45a18ff7db9ad5b4474b0514fa7de63c90f7b50584b5644720bffcd` |
| 10 | `lemma` | [comp_id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/comp-id--a91b5ddda2271bed6beaa7ce.md) | 76 | `result-track:a91b5ddda2271bed6beaa7cef27f3131e74f607aa95316b40fa020d4ac743d9f` |
| 11 | `lemma` | [assoc](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/assoc--4256ed200bfecb571faa1385.md) | 78 | `result-track:4256ed200bfecb571faa13857691f76eee88caebe8c3529052a1d37579d35ba2` |
| 12 | `def` | [const](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/const--b31859271dcdc5284164f1cf.md) | 85 | `declaration-track:b31859271dcdc5284164f1cf737da0c7c885d23462ebc43b2031d6d2e2156380` |
| 13 | `lemma` | [affineMap_ext](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemap-ext--44d3e0660735ff8666bb61f9.md) | 94 | `result-track:44d3e0660735ff8666bb61f9bdfb85b9e92aa51520724764e308cb1488da40f2` |
| 14 | `def` | [affineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemap--68706cdc24c2c0efeec82c44.md) | 105 | `declaration-track:68706cdc24c2c0efeec82c44a4fe4b60e0038cdb9cc5efc0bd3e84dc8d359d21` |
| 15 | `lemma` | [coe_affineMap](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/coe-affinemap--51736bd7e56d89a475376162.md) | 110 | `result-track:51736bd7e56d89a47537616244ce4811908d069084fbd9e4b34be51794f44e8b` |
| 16 | `lemma` | [affineMap_id](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemap-id--f0a32cbda4250f62d3084ccb.md) | 114 | `result-track:f0a32cbda4250f62d3084ccb11bdf8f2fb2f80f42b94a62e23c141330c582704` |
| 17 | `def` | [affineMapMk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemapmk--8d4f24096612c2f4e18b3c7f.md) | 118 | `declaration-track:8d4f24096612c2f4e18b3c7f4b339822c0a6155709a9b435541329976c2331ac` |
| 18 | `lemma` | [affineMapMk_apply](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemapmk-apply--d13bf1095e3c90e77e03248f.md) | 123 | `result-track:d13bf1095e3c90e77e03248f0e2e201856beb3ad5039969b2a67b0b1ebdf8430` |
| 19 | `lemma` | [affineMapMk_single](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemapmk-single--39244e85832ca78347f6be07.md) | 128 | `result-track:39244e85832ca78347f6be07f4cf3af26abb463dced393ff314418506cd8f874` |
| 20 | `lemma` | [affineMapMk_surjective](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/affinemapmk-surjective--ed025a47aad330b3c3f9689e.md) | 132 | `result-track:ed025a47aad330b3c3f9689e9e05a80a5cad0309a1d659a1fc012615675096ac` |
| 21 | `lemma` | [comp_affineMapMk](../../../../../mathematics/Geometry/ConvexGeometry/AffineMap/Variant60f7f48248df492db30a473c304ed08e966218f394f196e65ffe8911ec88bddf.lean/declarations/comp-affinemapmk--ba93cd94e3fac681abd86cd1.md) | 137 | `result-track:ba93cd94e3fac681abd86cd1cc615e739597fa4a30566dd1adb382efdd6776fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
