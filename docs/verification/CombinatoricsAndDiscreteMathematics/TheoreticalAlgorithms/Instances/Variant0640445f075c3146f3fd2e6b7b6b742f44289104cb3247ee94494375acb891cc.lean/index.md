# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Instances.Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05887879862e3f94fb53397b73afb203b96ff894",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05887879862e3f94fb53397b73afb203b96ff894`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Applicative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Option.id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/option-id-traverse--e2a9ebe54dbbad563105a6e2.md) | 29 | `result-track:e2a9ebe54dbbad563105a6e26c9a2401910566f7fe1b134ab8d735192592ec81` |
| 2 | `theorem` | [Option.comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/option-comp-traverse--0c6f1e69f6c13e05fecf6dbc.md) | 32 | `result-track:0c6f1e69f6c13e05fecf6dbc442ce549a8cc32a9000500c585eb1eb819f640e6` |
| 3 | `theorem` | [Option.traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/option-traverse-eq-map-id--be7fea9c3fa3074c74fc1b0c.md) | 37 | `result-track:be7fea9c3fa3074c74fc1b0c86f818a19352ab22b04c29aacd1ff4623c2dd7b7` |
| 4 | `theorem` | [Option.naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/option-naturality--78b1af58b77a03fd58e2235d.md) | 42 | `result-track:78b1af58b77a03fd58e2235d4c50ab0214e07b40a48b82cc985459b35a74053a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/instance--62fee3f100e80cdfffaf8601.md) | 51 | `declaration-track:62fee3f100e80cdfffaf860101c8381c824a60f4aea34657ebdd05c900007344` |
| 6 | `theorem` | [id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/id-traverse--4587c81c9ec279067c1a8eec.md) | 69 | `result-track:4587c81c9ec279067c1a8eece67a8397c360d92f05f81fafc62448824ac29098` |
| 7 | `theorem` | [comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/comp-traverse--35119ffef78994ba50bcdf97.md) | 72 | `result-track:35119ffef78994ba50bcdf97eccfda4acd5734d06c9782032f2ffa0c28f36bfd` |
| 8 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-eq-map-id--5bcfd8af1f7f6bd2217eaf16.md) | 77 | `result-track:5bcfd8af1f7f6bd2217eaf16acddcf4d7b094392d2d4e1cc893f04b7b0f8650d` |
| 9 | `theorem` | [naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/naturality--0af1dd357ba70e7a9d5751f1.md) | 83 | `result-track:0af1dd357ba70e7a9d5751f1bca95b852df3639a558586af64f0c44815cb9e6a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/instance--bdfd64485c91164ae9a6a531.md) | 89 | `declaration-track:bdfd64485c91164ae9a6a531d9f993b7382369bc78cf9e3a2f520dfdda24b626` |
| 11 | `theorem` | [traverse_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-nil--686b5c7f27eba04c4f2a6979.md) | 103 | `result-track:686b5c7f27eba04c4f2a69798bbfea71f0bd8b9c506b55c4d6114be215a313bb` |
| 12 | `theorem` | [traverse_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-cons--bbf59cb1268972b1ff1ba926.md) | 107 | `result-track:bbf59cb1268972b1ff1ba926983b5478c284352bd9c987f9802b7409994dbd4b` |
| 13 | `theorem` | [traverse_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-append--3fe7d53f4a7fde5f01f0971a.md) | 114 | `result-track:3fe7d53f4a7fde5f01f0971a8b71a6b905617bbdf982db85610431e8d4e69703` |
| 14 | `theorem` | [mem_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/mem-traverse--8994bf406d4e3da6716f7d28.md) | 119 | `result-track:8994bf406d4e3da6716f7d28ece5936237eb48908bc03da3c8c61f91ad71d8ea` |
| 15 | `theorem` | [traverse_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-map--2967b3a0f94cf22eb0fe0eca.md) | 140 | `result-track:2967b3a0f94cf22eb0fe0ecab4e923acb1bbfd437fe3b28a57366e8300681022` |
| 16 | `theorem` | [id_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/id-traverse--375a639291f64f5b9e9eb644.md) | 144 | `result-track:375a639291f64f5b9e9eb644399f19c1158ff6752ede29e182171e3e2d738f8f` |
| 17 | `theorem` | [comp_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/comp-traverse--17d0044d326ec0dbf30cbf70.md) | 149 | `result-track:17d0044d326ec0dbf30cbf704406bd149d7d16a9beabed7288323a60a8bb52b2` |
| 18 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/traverse-eq-map-id--25b8e74f25232936a580d2f0.md) | 154 | `result-track:25b8e74f25232936a580d2f0eca32355b946d6111944809fa84899446b3fdb66` |
| 19 | `theorem` | [map_traverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/map-traverse--b013118bc5f9f07863507661.md) | 158 | `result-track:b013118bc5f9f0786350766180a3ee8549d55211a7bb1e56a5d4f3c86f88f074` |
| 20 | `theorem` | [naturality](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/naturality--e82628d8d18e065728240c1c.md) | 164 | `result-track:e82628d8d18e065728240c1cfb6e905cf95f79efedba623330d00439f2e3adef` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Instances/Variant0640445f075c3146f3fd2e6b7b6b742f44289104cb3247ee94494375acb891cc.lean/declarations/instance--b951dcf0e7eb5a7932112f39.md) | 172 | `declaration-track:b951dcf0e7eb5a7932112f398249d7aa5d00080583e443f5086579289451c70c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
