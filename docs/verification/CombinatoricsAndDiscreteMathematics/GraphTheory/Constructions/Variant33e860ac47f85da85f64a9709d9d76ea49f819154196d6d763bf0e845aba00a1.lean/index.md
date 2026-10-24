# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Constructions.Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "852cb1b8b31b1a08d781e34131109106a1eb1993",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `852cb1b8b31b1a08d781e34131109106a1eb1993`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean.json)

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
| 1 | `def` | [pathGraph.bicoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/pathgraph-bicoloring--28be940b59e1dd0e24fb4bb9.md) | 41 | `declaration-track:28be940b59e1dd0e24fb4bb99ed64456ca34ef26596a265ef8e615661ed36367` |
| 2 | `theorem` | [IsBipartite.pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/isbipartite-pathgraph--c83467f96301ce4122a2f9e3.md) | 48 | `result-track:c83467f96301ce4122a2f9e3215256686a0b92764fe5d0916971458acf60c28f` |
| 3 | `def` | [pathGraph_two_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/pathgraph-two-embedding--eee7f4b16ebc0d1209ee531e.md) | 52 | `declaration-track:eee7f4b16ebc0d1209ee531eac22a9ede0bc1e2dacd6d48f6b9297d1166cd22b` |
| 4 | `theorem` | [chromaticNumber_pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/chromaticnumber-pathgraph--9878093e3910ad0057b107f8.md) | 60 | `result-track:9878093e3910ad0057b107f82cfcb46354d4bff3ba7ea70be8bb23e1ba642cc7` |
| 5 | `theorem` | [Coloring.even_length_iff_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/coloring-even-length-iff-congr--33462dffc9868db156a943fc.md) | 68 | `result-track:33462dffc9868db156a943fc1795a73585dc7bfb85dde6916ae81915fc1a455d` |
| 6 | `theorem` | [Coloring.odd_length_iff_not_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/coloring-odd-length-iff-not-congr--0a7a120e1c6d3aecaab05e4e.md) | 73 | `result-track:0a7a120e1c6d3aecaab05e4e6e25a8d230f65232492506be04dec15fb263d090` |
| 7 | `theorem` | [Walk.three_le_chromaticNumber_of_odd_loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/walk-three-le-chromaticnumber-of-odd-loop--67157ba6fdbc2b8a2d63ef77.md) | 79 | `result-track:67157ba6fdbc2b8a2d63ef7703f4a689411db1d607bcf6e71d1f88becd24b066` |
| 8 | `def` | [cycleGraph.bicoloring_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/cyclegraph-bicoloring-of-even--d234bdd230fd0d5d03822212.md) | 89 | `declaration-track:d234bdd230fd0d5d03822212e28762064b448483345c62c620113a7c772e6037` |
| 9 | `theorem` | [IsBipartite.cycleGraph_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/isbipartite-cyclegraph-of-even--01a78efc45a9a0046923c188.md) | 105 | `result-track:01a78efc45a9a0046923c188e0f779741e75324a7e48b810d2f7c9ee70ba7f49` |
| 10 | `theorem` | [chromaticNumber_cycleGraph_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/chromaticnumber-cyclegraph-of-even--fa253a85b3de349d870fe9e3.md) | 108 | `result-track:fa253a85b3de349d870fe9e3695b598cdd1a0f73107a06091b8454f33b28ab39` |
| 11 | `def` | [cycleGraph.tricoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/cyclegraph-tricoloring--62f7723b4a5d9f7397df7ea7.md) | 118 | `declaration-track:62f7723b4a5d9f7397df7ea7b1925a5373357d27d19807496366bbefb6242c3e` |
| 12 | `theorem` | [chromaticNumber_cycleGraph_of_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/chromaticnumber-cyclegraph-of-odd--6c7f7d3670a1dbd9f8bbff39.md) | 144 | `result-track:6c7f7d3670a1dbd9f8bbff397cad67d84350d06cae3d6c126badd61df1e32855` |
| 13 | `def` | [Coloring.completeEquipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/coloring-completeequipartitegraph--3692711bfd04ad4991d5cfdf.md) | 166 | `declaration-track:3692711bfd04ad4991d5cfdf1f9b4afa5ff295a705b360b240563b2f833ec1f8` |
| 14 | `theorem` | [completeEquipartiteGraph_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/completeequipartitegraph-colorable--5965729f0f8d403b01a10400.md) | 170 | `result-track:5965729f0f8d403b01a10400fd606ed262275ba4747b18b5f9765df460b29519` |
| 15 | `lemma` | [two_colorable_iff_forall_loop_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Constructions/Variant33e860ac47f85da85f64a9709d9d76ea49f819154196d6d763bf0e845aba00a1.lean/declarations/two-colorable-iff-forall-loop-even--2074badfab72d54906bae11d.md) | 176 | `result-track:2074badfab72d54906bae11dc5b45f2bae61bc7e4eb4c13f9668da25adafdb5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
