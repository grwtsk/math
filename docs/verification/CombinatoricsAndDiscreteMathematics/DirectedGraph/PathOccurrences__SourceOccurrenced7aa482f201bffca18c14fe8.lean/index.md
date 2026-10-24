# Verification target: GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6010dd72560d389836fe6a7b98869ee9ecfc094d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6010dd72560d389836fe6a7b98869ee9ecfc094d`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PathOccurrences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Path.Vertices` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vertices_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/vertices-reverse--ca990106ed2289d552b1fa1a.md) | 38 | `result-track:ca990106ed2289d552b1fa1ab5addc46310ca6bb262d580c9d61714775fc3663` |
| 2 | `theorem` | [vertices_comp_keep_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/vertices-comp-keep-left--4b98f171b720aa532f6e14f6.md) | 46 | `result-track:4b98f171b720aa532f6e14f6ffa6916fd9be66a1527492a1feb104b12a17e974` |
| 3 | `theorem` | [vertices_prefix_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/vertices-prefix-comp--5e20725e0b39b01b51a7a29d.md) | 59 | `result-track:5e20725e0b39b01b51a7a29d671bd07e1297ebcf6c28e811ce33293eee5315a9` |
| 4 | `theorem` | [vertex_position_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/vertex-position-comp--1e0fedf96820516a7b51cc30.md) | 65 | `result-track:1e0fedf96820516a7b51cc30af7a17ac85dd0a22303f5dfa5414f149abf2cbb2` |
| 5 | `theorem` | [split_at_occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/split-at-occurrence--16b4145d3771cd8eeeb689d9.md) | 71 | `result-track:16b4145d3771cd8eeeb689d94c7e892ba39824c72496f731e1b8e88f58461b24` |
| 6 | `theorem` | [distinct_occurrence_prefixes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/distinct-occurrence-prefixes--3a413c1add6a252ec4618894.md) | 82 | `result-track:3a413c1add6a252ec4618894e480710ab9edb49e4a63b0517d8e027416af2e88` |
| 7 | `theorem` | [path_eq_of_vertices_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/path-eq-of-vertices-eq--dd5289638ca9326747522526.md) | 99 | `result-track:dd5289638ca9326747522526aa4f730b50c43e08d3b35e4486f3cc0d967fe2cf` |
| 8 | `def` | [edgeOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/edgeoccurrences--d9e16abdaaf6ad1aa2d72986.md) | 109 | `declaration-track:d9e16abdaaf6ad1aa2d72986792991f7f5b5152938c7d65674ebc7c71065f651` |
| 9 | `theorem` | [pathToList_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/pathtolist-comp--bb682cc46e05ef13f746b2d6.md) | 114 | `result-track:bb682cc46e05ef13f746b2d64b7b2779fc32bbbc1270b8077540c2ed2fb501ed` |
| 10 | `theorem` | [edgeOccurrences_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/edgeoccurrences-comp--955beb6ddc82ff64dc79a0eb.md) | 128 | `result-track:955beb6ddc82ff64dc79a0eb6517d5cc0f270d8ed108aa8fcca58cf9344680c0` |
| 11 | `theorem` | [reconstruct_edgeOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/reconstruct-edgeoccurrences--60409517049a5721311876f2.md) | 136 | `result-track:60409517049a5721311876f2957d18726deec33ff1b07da5ba468ff879c08c45` |
| 12 | `theorem` | [edgeOccurrences_reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/edgeoccurrences-reconstruct--0f3193a15697e746d3b7b65a.md) | 142 | `result-track:0f3193a15697e746d3b7b65a1e04674c87a78b303af86cab0063a4392dd9f3d5` |
| 13 | `theorem` | [edgeOccurrences_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/edgeoccurrences-injective--8d48bc0d1a8f19f685458a5c.md) | 147 | `result-track:8d48bc0d1a8f19f685458a5cfa62509b87523bb7bc74618f0fb7dd9d4b9d1b1a` |
| 14 | `def` | [parallelLoop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/parallelloop--c46d90245f47a16358578eec.md) | 154 | `declaration-track:c46d90245f47a16358578eec8dba93ffb431d65e6c62509024c1b80399b13669` |
| 15 | `theorem` | [parallel_loops_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/parallel-loops-ne--eddde887938beb43e41408dd.md) | 158 | `result-track:eddde887938beb43e41408dda7f9852dbacb003acb84839ca87e825a1fc3fcb4` |
| 16 | `theorem` | [parallel_loop_summary_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/parallel-loop-summary-counterexample--74c7e0a7ec117cd1fe77da6c.md) | 165 | `result-track:74c7e0a7ec117cd1fe77da6c4db7073d4ced1667972f635ff36617538b4b0c78` |
| 17 | `theorem` | [endpoint_vertex_summary_not_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/declarations/endpoint-vertex-summary-not-injective--eebf2bd0d88032169c93acf7.md) | 175 | `result-track:eebf2bd0d88032169c93acf72f83af07e0a1deaf89662f1f3c600a00a0957665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
