# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PathUnfolding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf4b4f365c731e516c3d04946b28acff382abd50",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PathUnfolding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf4b4f365c731e516c3d04946b28acff382abd50`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PathUnfolding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PathUnfolding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PathUnfolding`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path.Vertices` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--0bc64da13fe813c596c90b71.md) | 17 | `declaration-track:0bc64da13fe813c596c90b71d7931f0fc2e86fbdc0751717c575b16451f3777f` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--e0cd4cf4c26fb852ab38e607.md) | 19 | `declaration-track:e0cd4cf4c26fb852ab38e6076b471576a58144943b195a1c72819ce6101663de` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--31794e362892271a6879d4bd.md) | 22 | `declaration-track:31794e362892271a6879d4bda3ba6e161752facec4e921c9f825e36e0da01db9` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--92441a378407ba8445db0a33.md) | 26 | `declaration-track:92441a378407ba8445db0a33366e7ce938afcdcb3490228df9df99ea328b0d12` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--e240644b4d5fb7cb98c04412.md) | 30 | `declaration-track:e240644b4d5fb7cb98c0441229470fc03b538ba34c5267db17f1cedbee4af11b` |
| 6 | `def` | [firstOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/firstoccurrence--84716b55a1a15bac80dcf522.md) | 39 | `declaration-track:84716b55a1a15bac80dcf5228df5c44fb5454a9d90ecfaf2135763fc97daafdd` |
| 7 | `def` | [otherOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/otheroccurrence--9c484f9885f1aa8576fae715.md) | 42 | `declaration-track:9c484f9885f1aa8576fae715f8484c5d083c01b2ef65ec07d5233dd1f0f929b8` |
| 8 | `def` | [twiceOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/twiceoccurrence--7b5f62aea49d50add69637b1.md) | 45 | `declaration-track:7b5f62aea49d50add69637b136e7a010a3399c08414bc190d1d82e2c6c5f2007` |
| 9 | `def` | [twoStepLift](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/twosteplift--234bd75a68d99fb7ff93d6a1.md) | 48 | `declaration-track:234bd75a68d99fb7ff93d6a1a36e1f69d739aed92ece0089386b3c95c292a32e` |
| 10 | `def` | [twoBaseEdges](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/twobaseedges--6d1a3aeb8712f1172b1c1b05.md) | 52 | `declaration-track:6d1a3aeb8712f1172b1c1b0594efc3eb982156844f0f43165867f842711b9999` |
| 11 | `theorem` | [parallel_occurrences_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/parallel-occurrences-distinct--f2e931d0c3fc6c3a686f32cb.md) | 55 | `result-track:f2e931d0c3fc6c3a686f32cb3c712109e4472acbee01b73e16a63f3d7ed92a68` |
| 12 | `theorem` | [repeated_base_vertices_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/repeated-base-vertices-distinct--837e002f0faf6c9da08dc49e.md) | 62 | `result-track:837e002f0faf6c9da08dc49e1ab485af0c610e7ab2655a32f7b868cdb8c5f4ff` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--05b87d8ef3c736a1ae625446.md) | 74 | `declaration-track:05b87d8ef3c736a1ae6254465d02f8996ccc739564833ce129fc3a03d56ebfea` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--bbf8077265ca6d7744264b7f.md) | 77 | `declaration-track:bbf8077265ca6d7744264b7f7b239731f0d19220ef91de1f8f4c0197a86ed651` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--98b36056b154383f1f19481e.md) | 79 | `declaration-track:98b36056b154383f1f19481e2b5f0cf3af9f6acc98e5b08df66b062b31dd19ef` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--60fc292ff278045ddfac3303.md) | 82 | `declaration-track:60fc292ff278045ddfac330388382131cadedd5723a2fc9b88fa219f22989fdc` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--f2b8f765973bd0ad3151414b.md) | 84 | `declaration-track:f2b8f765973bd0ad3151414b021472e9cf8b303d89d9a403baac48dd79cab417` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--a2624851359a66e8985a88e0.md) | 86 | `declaration-track:a2624851359a66e8985a88e0fbae4c498a06515ee61dd8c8b0fc78a29a61060a` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--7b76d1910004cfaaff0d3821.md) | 88 | `declaration-track:7b76d1910004cfaaff0d382132be3e9aef2de71896306e557af40b84220a35ae` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--093a25a4bcd1179becb89e98.md) | 90 | `declaration-track:093a25a4bcd1179becb89e980a712d88c6cd31848ddcfb2bf4e27a7cefe4597f` |
| 21 | `theorem` | [single_loop_outgoing_bijective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/single-loop-outgoing-bijective--86889a7cbded7297db9d4edf.md) | 96 | `result-track:86889a7cbded7297db9d4edfa1b262dbd744118b9f701a791ddf8cdf4bd3a2d6` |
| 22 | `theorem` | [single_loop_empty_origin_costar](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/single-loop-empty-origin-costar--66ba4c2f91a8181eb2d4b04d.md) | 100 | `result-track:66ba4c2f91a8181eb2d4b04d7954d8844e680844592bd2f5283fe879d125e8d5` |
| 23 | `theorem` | [single_loop_costar_not_surjective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/single-loop-costar-not-surjective--8b98c0e74935eb100c42fb67.md) | 103 | `result-track:8b98c0e74935eb100c42fb67f488ae0bb5aca3e785b390f77a3803f1c8e65fba` |
| 24 | `theorem` | [single_loop_not_covering](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/single-loop-not-covering--8f8092d5be43993013f8b924.md) | 107 | `result-track:8f8092d5be43993013f8b924f31adc52cd28020583ad99e052cffe13ee19e07f` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrence31da37ec68b1ce3a9800273a.lean/declarations/example--d8eb548345f21de573097a81.md) | 110 | `declaration-track:d8eb548345f21de573097a819725949b7d14fae74b481d4c8adf0aa52c62f762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
