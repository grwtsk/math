# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedPartitionBridge.Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9027d69328dd06690383248c2a1b21c462589295",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9027d69328dd06690383248c2a1b21c462589295`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock--55b00927031803e16c2af9b6.md) | 48 | `declaration-track:55b00927031803e16c2af9b6721c52fe1d00c23483741a875872e4276e26dad3` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/mem-orderedblock-iff--51ac4dc19d9c28b7182001fc.md) | 55 | `result-track:51ac4dc19d9c28b7182001fc72a79802563ed53f8c59aa9c2772f83f539069b2` |
| 3 | `theorem` | [orderedBlock_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock-card--812f1365c168d16cb19ec8c3.md) | 65 | `result-track:812f1365c168d16cb19ec8c37b0091129904e94dbbac169d5f78af416abc516a` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock-nonempty--760ba77f49dd002c3d99b35f.md) | 76 | `result-track:760ba77f49dd002c3d99b35f28d65d0b72757c7077a4134cd02db2a1d146e368` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock-index-eq-of-common-mem--5178a4061a99ba5aaf0acdef.md) | 85 | `result-track:5178a4061a99ba5aaf0acdef6dab0def5b5a31ac78599c4bfec967cc2019b289` |
| 6 | `theorem` | [orderedBlock_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock-injective--96c5243b7aaf38c9a28f9f6a.md) | 104 | `result-track:96c5243b7aaf38c9a28f9f6af16a8870dafbbcd494e5fce0f04f2da23d5ebdc3` |
| 7 | `def` | [orderedBlocks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblocks--d1621117d3dbf56861aa2645.md) | 116 | `declaration-track:d1621117d3dbf56861aa2645ac89aef5c8cee7917d8e7dfb9f7a212c1342aeea` |
| 8 | `def` | [orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedtodirectionpartition--2c12499ab04bb1abe2128544.md) | 122 | `declaration-track:2c12499ab04bb1abe21285443e5c25c7e8d9f406a3f33cdda2c080e2c2219756` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedtodirectionpartition-parts--d35c6fb0e548320ed60e7e90.md) | 155 | `result-track:d35c6fb0e548320ed60e7e9094a04e95ada76c68ea5d941f8fbe82a6aca3094e` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedtodirectionpartition-card-parts--d0dfd81f0c3d167e97504254.md) | 163 | `result-track:d0dfd81f0c3d167e9750425450be9e2d82172696b695e32d95f00021da1eef55` |
| 11 | `def` | [orderedBlockPart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblockpart--953eeb865c46ef34c4f5d9af.md) | 173 | `declaration-track:953eeb865c46ef34c4f5d9afa4800955de5c7df7c2aacf889e3071920b6bff27` |
| 12 | `def` | [orderedBlockEquivParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblockequivparts--8435c3b321e170d14440990a.md) | 183 | `declaration-track:8435c3b321e170d14440990a008075ff2e8adfc495ea3da4df2b3dedbfb3a02e` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblockequivparts-apply-val--52b7377a3d1fa16801ede587.md) | 200 | `result-track:52b7377a3d1fa16801ede587c4da7259f95ab3851b4f63e6fbc570b9c54e268a` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/orderedblock-orderemboffin--aaad5be26fc35913c96e67d0.md) | 211 | `result-track:aaad5be26fc35913c96e67d0a4217204e87eb29629f087fa719a3908aa1d5844` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/blockdirections-orderedblock--00bc645fb7a7163cb0ed8880.md) | 229 | `result-track:00bc645fb7a7163cb0ed8880e0768f78d46594fc650ea20f5945edd8f7b501c3` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/prod-parts-orderedtodirectionpartition--dba54cd28c58bcc7e1569933.md) | 250 | `result-track:dba54cd28c58bcc7e1569933e7a4a2066fecad6d42aae79c882043fa48f4eefb` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant8c9f39a5a0515b3fde960912871a20d618fbcc07798dde4db5a2c03bebf2a123.lean/declarations/sum-parts-orderedtodirectionpartition--88d1e41438de669ae7fb7e06.md) | 266 | `result-track:88d1e41438de669ae7fb7e06d24932c07b795ed2f70285b1b5af5986ae109a32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
