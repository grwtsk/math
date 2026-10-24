# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6010dd72560d389836fe6a7b98869ee9ecfc094d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6010dd72560d389836fe6a7b98869ee9ecfc094d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences.lean.json)

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
| 1 | `theorem` | [vertices_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/vertices-reverse--4bcf0902a4e856b937146040.md) | 38 | `result-track:4bcf0902a4e856b9371460401885cfe713cad09d3b690dda8fb67fcc93371565` |
| 2 | `theorem` | [vertices_comp_keep_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/vertices-comp-keep-left--37d600b042b3bcab1a100bec.md) | 46 | `result-track:37d600b042b3bcab1a100becb0fd09f349108abe8fd29b1f3a424ebe0c175c41` |
| 3 | `theorem` | [vertices_prefix_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/vertices-prefix-comp--04712da79a55bd9c24e72659.md) | 59 | `result-track:04712da79a55bd9c24e72659fcf2c56a3680e6fb653d9bd020ef02427675854f` |
| 4 | `theorem` | [vertex_position_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/vertex-position-comp--838f0ac3b4c3a1042042d7ee.md) | 65 | `result-track:838f0ac3b4c3a1042042d7eecfe2586dcec457657b0e0b27d56ac7932f17b7a9` |
| 5 | `theorem` | [split_at_occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/split-at-occurrence--baa69c95bc7554fde929f329.md) | 71 | `result-track:baa69c95bc7554fde929f329fa8d63f4ecfe7b300e700c5de38c1a11069ec78f` |
| 6 | `theorem` | [distinct_occurrence_prefixes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/distinct-occurrence-prefixes--e4301425adc74161f6acff97.md) | 82 | `result-track:e4301425adc74161f6acff97b3551f45b07522933cc8355a84f186a3c8c59740` |
| 7 | `theorem` | [path_eq_of_vertices_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/path-eq-of-vertices-eq--3754e3d3db8f017cb3314f49.md) | 99 | `result-track:3754e3d3db8f017cb3314f496b47aaa1acb718bab69c862b2adf1a0e684a17ca` |
| 8 | `def` | [edgeOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/edgeoccurrences--ce8ea26527fa42ad76060512.md) | 109 | `declaration-track:ce8ea26527fa42ad76060512ff4ec281a5284ce9e1b1073366d9fb328e9eefb2` |
| 9 | `theorem` | [pathToList_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/pathtolist-comp--1c1ca8b1a78ed6c0ae82555d.md) | 114 | `result-track:1c1ca8b1a78ed6c0ae82555dcc8bdc47d182336532c0f4b96dd5dd9b75a5fc6c` |
| 10 | `theorem` | [edgeOccurrences_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/edgeoccurrences-comp--30eb90dcd90f922e9a99b5eb.md) | 128 | `result-track:30eb90dcd90f922e9a99b5eb0617a2b46b376501fa245ef729e2274c85ef9149` |
| 11 | `theorem` | [reconstruct_edgeOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/reconstruct-edgeoccurrences--4231c9d059692a772c7f3204.md) | 136 | `result-track:4231c9d059692a772c7f320408090c17b6e95b2c99d15be12751e3c974162aef` |
| 12 | `theorem` | [edgeOccurrences_reconstruct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/edgeoccurrences-reconstruct--b8c68996d5c98d9e1d3be10c.md) | 142 | `result-track:b8c68996d5c98d9e1d3be10c0ee993dd852d3bbe41d10cf594483851dd086e09` |
| 13 | `theorem` | [edgeOccurrences_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/edgeoccurrences-injective--f253ebb674629078fbf12da9.md) | 147 | `result-track:f253ebb674629078fbf12da97c253c645b59daa09c6bd553922c25f456d5388c` |
| 14 | `def` | [parallelLoop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/parallelloop--07320b792313ef77f7ddd86d.md) | 154 | `declaration-track:07320b792313ef77f7ddd86d675050fe1e9621e62f9829d4e500f336f9a0162c` |
| 15 | `theorem` | [parallel_loops_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/parallel-loops-ne--27ef17ba3868f4a1c1bea8eb.md) | 158 | `result-track:27ef17ba3868f4a1c1bea8eb160fae1b02c92f1a600b38c73c73571d63b2e4ed` |
| 16 | `theorem` | [parallel_loop_summary_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/parallel-loop-summary-counterexample--8e19b66c46daca42744959a4.md) | 165 | `result-track:8e19b66c46daca42744959a40d647a13053e9b8b062b3d5dbd3172f2e41985c2` |
| 17 | `theorem` | [endpoint_vertex_summary_not_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/declarations/endpoint-vertex-summary-not-injective--3855ca3a88ae2fa77e9444ce.md) | 175 | `result-track:3855ca3a88ae2fa77e9444ce0e75a82b4d2926cdb6e2c5670f85afe1d93412d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
