# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactorTree.Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8afe8dcf1ea9217a5f20a3aaf671b558a4f4faaf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8afe8dcf1ea9217a5f20a3aaf671b558a4f4faaf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OrderedFactorAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactoratom--af877d6e15ef96592b159fbf.md) | 27 | `declaration-track:af877d6e15ef96592b159fbfcff3ede2673950af5224ff132c67cb4441b929c6` |
| 2 | `inductive` | [OrderedFactorTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactortree--8f55aa7ff7cf0a0fba4a6506.md) | 38 | `declaration-track:8f55aa7ff7cf0a0fba4a650695b53e4b0e7cfe67f445bd5b9597158b28b04773` |
| 3 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/size--a633536f3c32727505491693.md) | 46 | `declaration-track:a633536f3c32727505491693519c1d393ded6e499bfb06002f565c4d106531b8` |
| 4 | `def` | [depth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/depth--f06b2303ab7f6655f8cc0945.md) | 51 | `declaration-track:f06b2303ab7f6655f8cc0945f9eaf465a94e8c7ab2ccbd1b538e359b374b01a2` |
| 5 | `def` | [compose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/compose--faa8dc9778814be42b6b3f30.md) | 56 | `declaration-track:faa8dc9778814be42b6b3f3022fc053ddcdcff997b69b2ce9d112b6f3258afb8` |
| 6 | `theorem` | [size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/size-pos--7a145b0405e5c550a8e3f39d.md) | 59 | `result-track:7a145b0405e5c550a8e3f39d8eece2e8c9d2817943de2339dc4e7b784fa958fa` |
| 7 | `theorem` | [depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/depth-le-size--0889f18258a23df311096ce8.md) | 68 | `result-track:0889f18258a23df311096ce82b64d35eb01044583c56065bfb5b012d231d3220` |
| 8 | `theorem` | [compose_eq_node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/compose-eq-node--a79f3b87ff3f25c48e7bf7ec.md) | 80 | `result-track:a79f3b87ff3f25c48e7bf7ec5d36cf61d51916c3c547b86006642086f768f388` |
| 9 | `theorem` | [node_left_right_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/node-left-right-visible--95ef56349ba37e4ab6248e9c.md) | 83 | `result-track:95ef56349ba37e4ab6248e9c74bbce05b80553ac4932bf3f5953b1fd3791ea80` |
| 10 | `theorem` | [bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/bracketing-visible--d13722f6307983909e4f53cc.md) | 90 | `result-track:d13722f6307983909e4f53cc1d374c0c0a2519a211932aa1d8a8e9d8a9b06b13` |
| 11 | `def` | [order_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/order-not-quotiented--da32a29735796c04127dbd59.md) | 98 | `declaration-track:da32a29735796c04127dbd598d030e53cacebff6f05be033d301eea5a6c9113f` |
| 12 | `def` | [bracketing_not_quotiented](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/bracketing-not-quotiented--f3f84e804e8405753bd7ab1d.md) | 104 | `declaration-track:f3f84e804e8405753bd7ab1dfe63730c1a83f0d842fa2e2bdec73712513f61ab` |
| 13 | `theorem` | [orderedFactorTree_size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactortree-size-pos--ee01cf2f1c71f0f6f792d802.md) | 111 | `result-track:ee01cf2f1c71f0f6f792d8020f4ba6954769b13ce004fd09600753621f332d3c` |
| 14 | `theorem` | [orderedFactorTree_depth_le_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactortree-depth-le-size--77b92d11e2411e4e09b22f03.md) | 115 | `result-track:77b92d11e2411e4e09b22f03fdca23579f31a4ac21c22f0a91bbf9e601b7e450` |
| 15 | `theorem` | [orderedFactorTree_raw_order_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactortree-raw-order-visible--ce5cd8f26f58da627fb6d604.md) | 119 | `result-track:ce5cd8f26f58da627fb6d6049398bd1ac67e9501496f072d08db372387f97d1f` |
| 16 | `theorem` | [orderedFactorTree_raw_bracketing_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedFactorTree/Variant6e7fc25c199405333d943f9bf3b0606084adc3d106de672b4c7a0ab91d2711cd.lean/declarations/orderedfactortree-raw-bracketing-visible--1e597116fdf0daf47f23bb23.md) | 125 | `result-track:1e597116fdf0daf47f23bb2350f350c8d1c09f5d1699d0d6ecfe547978a8d358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
