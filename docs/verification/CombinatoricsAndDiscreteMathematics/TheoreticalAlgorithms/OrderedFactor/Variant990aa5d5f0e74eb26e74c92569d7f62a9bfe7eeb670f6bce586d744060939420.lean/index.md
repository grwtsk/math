# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactor.Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb4025740f0ef2ec2b952c7ced434a7dcb282cd8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb4025740f0ef2ec2b952c7ced434a7dcb282cd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OrderedFactorAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactoratom--20e0f9ef17f3e07c9fea1024.md) | 27 | `declaration-track:20e0f9ef17f3e07c9fea102440988c8b7a410658e56585eaa29e12f03b5911f2` |
| 2 | `inductive` | [OrderedFactorTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactortree--1df3afe952a33eb0575fdd38.md) | 38 | `declaration-track:1df3afe952a33eb0575fdd38b6ffb07b622b35cb2bf9af23b0487f157958a666` |
| 3 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/size--9f39b4a1067a23e145a0b811.md) | 46 | `declaration-track:9f39b4a1067a23e145a0b8117f666574bbbd1ff17e5a417dbdff2f9a04a33dfe` |
| 4 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/depth--68556b4ba1c36d1650bfb0d4.md) | 51 | `declaration-track:68556b4ba1c36d1650bfb0d4a0dc9229afc439a150f6189f5daefdc852e9cc2c` |
| 5 | `def` | [compose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/compose--550cb2a4a384c8ee691d8c20.md) | 56 | `declaration-track:550cb2a4a384c8ee691d8c206a46b5bea12353285dddd0a9b55742eee1182b67` |
| 6 | `theorem` | [size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/size-pos--2b95f808a0bd82584ecc94bd.md) | 59 | `result-track:2b95f808a0bd82584ecc94bd647c3efdd9eaa75a5fb988aeceff37414c8cac19` |
| 7 | `theorem` | [depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/depth-le-size--5d129f9b45f4c1e881542503.md) | 68 | `result-track:5d129f9b45f4c1e88154250362c3aa2b72d74f4c13747b8e3b0185dc1f9f8230` |
| 8 | `theorem` | [compose_eq_node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/compose-eq-node--54e4b2afee47305657b7e6e0.md) | 80 | `result-track:54e4b2afee47305657b7e6e08d907eb0b3e22db45cec7b55a09b2e99ad06cb72` |
| 9 | `theorem` | [node_left_right_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/node-left-right-visible--dc01acd1ae4b2fa98f7925e5.md) | 83 | `result-track:dc01acd1ae4b2fa98f7925e5d209d7c22860d8fd23e19dbad593cacf9fa66bef` |
| 10 | `theorem` | [bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/bracketing-visible--a466b76d349fdf3abe7dbd68.md) | 90 | `result-track:a466b76d349fdf3abe7dbd6831fab2f24f00fb74fb8eb11a1f1dc0bfbbad275d` |
| 11 | `def` | [order_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/order-not-quotiented--bb8bc41f7c64411209d23bb1.md) | 98 | `declaration-track:bb8bc41f7c64411209d23bb1c1a364a0b1dea3c4e2acab8001a1834559ef750b` |
| 12 | `def` | [bracketing_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/bracketing-not-quotiented--71b18add3f5f3b098ae78089.md) | 104 | `declaration-track:71b18add3f5f3b098ae78089589654a03c9e6ceccb9fe43fd46fbc98bab27fbd` |
| 13 | `theorem` | [orderedFactorTree_size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactortree-size-pos--698ba077a9a3c84ef8fa9a6f.md) | 111 | `result-track:698ba077a9a3c84ef8fa9a6f0a21974314fc8e6f413ac7196fb3d012e687fbee` |
| 14 | `theorem` | [orderedFactorTree_depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactortree-depth-le-size--d59fd2eee0d77b7f99aa0e34.md) | 115 | `result-track:d59fd2eee0d77b7f99aa0e34057dab9425aa36ed12e0f0a276a5492ec69d7d61` |
| 15 | `theorem` | [orderedFactorTree_order_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactortree-order-visible--c33f235d199c0b1c38ef0501.md) | 119 | `result-track:c33f235d199c0b1c38ef05013ebe8dc67dcc2212a5089d8a7eef0ab85f3fad42` |
| 16 | `theorem` | [orderedFactorTree_bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactor/Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420.lean/declarations/orderedfactortree-bracketing-visible--748026c338eb7f8f9474b08f.md) | 125 | `result-track:748026c338eb7f8f9474b08faf88247cdfad741d5618512e74344918b2c434f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
