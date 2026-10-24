# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d2b14095b2baf9160d6bbae247f172de19a8935",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d2b14095b2baf9160d6bbae247f172de19a8935`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousNeg](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuousneg--8ec13494ee1ae3c9b1dd8417.md) | 45 | `declaration-track:8ec13494ee1ae3c9b1dd84170f1f1cf262f0e18af15c2a66a66122f2496392dd` |
| 2 | `class` | [ContinuousInv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuousinv--0b432de0e72aa701947c30bf.md) | 54 | `declaration-track:0b432de0e72aa701947c30bfa9a40e6cdd1e4cf0b5cb08deb0b14749a4f7d184` |
| 3 | `theorem` | [Filter.Tendsto.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/filter-tendsto-inv--98ad96b2ed17d679921a085d.md) | 73 | `result-track:98ad96b2ed17d679921a085d90778851bb80fef3e3aae3e7cda4f259bebbab51` |
| 4 | `theorem` | [Continuous.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuous-inv--d77612403e1301f77a706a6d.md) | 80 | `result-track:d77612403e1301f77a706a6dfa675ddeffcbe39241364311c34a8adff3d3a31e` |
| 5 | `theorem` | [ContinuousWithinAt.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuouswithinat-inv--f513d18b0fb9543b32109359.md) | 84 | `result-track:f513d18b0fb9543b32109359df60627aed1dd4bcfea5df06d9f1b99ace124ae8` |
| 6 | `theorem` | [ContinuousAt.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuousat-inv--af61535e8c2a611259bd128f.md) | 89 | `result-track:af61535e8c2a611259bd128f458d9135e49012b66dcd9d0aed7c56533a582ca4` |
| 7 | `theorem` | [ContinuousOn.inv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuouson-inv--7ca3cca3ed5d3963a4a1c88d.md) | 93 | `result-track:7ca3cca3ed5d3963a4a1c88dc0aef91cdff332835d70737ae0d5833fcabbb408` |
| 8 | `class` | [IsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/istopologicaladdgroup--32d8246528f8c2f7511a036a.md) | 104 | `declaration-track:32d8246528f8c2f7511a036abf98231727e10f2a66401dc4d5e492f4fe562028` |
| 9 | `class` | [IsTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/istopologicalgroup--0b113081745e6eccf7a96701.md) | 117 | `declaration-track:0b113081745e6eccf7a96701fcce97f648ad73810542270a5a6eb302d9fc880e` |
| 10 | `class` | [ContinuousSub](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuoussub--9627d3a0ca80fb4684a8f8d9.md) | 125 | `declaration-track:9627d3a0ca80fb4684a8f8d911a7e1d80ece86e0d9855cc1e991dda991c6957e` |
| 11 | `class` | [ContinuousDiv](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuousdiv--8918e0f01cae0d71008e96a2.md) | 132 | `declaration-track:8918e0f01cae0d71008e96a2672d784e1181ff612e9f165f405b9ac081bd9c77` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/instance--a4efc29d2726fe2c9b5cdfb9.md) | 137 | `declaration-track:a4efc29d2726fe2c9b5cdfb9a352436ac88ee8ea9243c67b69fab26c215ba266` |
| 13 | `theorem` | [Filter.Tendsto.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/filter-tendsto-div--cd67c5a4ede6b55005ced683.md) | 151 | `result-track:cd67c5a4ede6b55005ced683de96a79b2887840df73c48b041afb28720f547f9` |
| 14 | `theorem` | [ContinuousAt.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuousat-div--68b9d5c435e849b71fdc6b05.md) | 158 | `result-track:68b9d5c435e849b71fdc6b050d9b15028d8d983960a63be8efb250524322a85d` |
| 15 | `theorem` | [ContinuousWithinAt.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuouswithinat-div--bdc4d8a87e3e38ff6a4703fe.md) | 163 | `result-track:bdc4d8a87e3e38ff6a4703fee00acf8daedaff13c834182199cc65eea4c301f7` |
| 16 | `theorem` | [ContinuousOn.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuouson-div--95ff7114fe3687aa52bf944b.md) | 168 | `result-track:95ff7114fe3687aa52bf944bbe4ec2f1c3b8902acd50bb15ea317c1574727316` |
| 17 | `theorem` | [Continuous.div'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantab237709b21c7f2dd3cd7225a005da533b41f042023b5bf5bbbb33bb6371261b.lean/declarations/continuous-div--234799dfa96ee12b6da7b55f.md) | 172 | `result-track:234799dfa96ee12b6da7b55f92137b3a7a983739efaee7a9ada70352acc38382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
