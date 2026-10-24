# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ConcreteColorings.Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "750a74bc99fd83d1f7ca00572fc05bdfe5fce5d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `750a74bc99fd83d1f7ca00572fc05bdfe5fce5d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Circulant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Parity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_le_chromaticNumber_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/two-le-chromaticnumber-of-adj--fdc301cb1d0cae0cb4713da0.md) | 26 | `result-track:fdc301cb1d0cae0cb4713da06e0d9c71aa93ef2262458fa5494d29a518489dbf` |
| 2 | `def` | [pathGraph.bicoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/pathgraph-bicoloring--abdc8b6c45b56a42d5380b73.md) | 35 | `declaration-track:abdc8b6c45b56a42d5380b7368d63ff80ad0418e44ab196457ba61547ca76808` |
| 3 | `def` | [pathGraph_two_embedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/pathgraph-two-embedding--0bde076d6bbc3baf16c0597b.md) | 43 | `declaration-track:0bde076d6bbc3baf16c0597bb1238e0eb1b857cd85a5c21c15c4f55b65b5dc9d` |
| 4 | `theorem` | [chromaticNumber_pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/chromaticnumber-pathgraph--d9dd4b56eb4ef980535dc47b.md) | 53 | `result-track:d9dd4b56eb4ef980535dc47b934a4a7791d83b1e4117a6c343d0d4b860457a3b` |
| 5 | `theorem` | [Coloring.even_length_iff_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/coloring-even-length-iff-congr--21bc88a777ff7b74a357237f.md) | 61 | `result-track:21bc88a777ff7b74a357237f21ffc53864362d00077f4375f9a86a404e04cc8e` |
| 6 | `theorem` | [Coloring.odd_length_iff_not_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/coloring-odd-length-iff-not-congr--8ee419c7c4ba0447c6772166.md) | 73 | `result-track:8ee419c7c4ba0447c6772166f1d682d09433fe611a6a2ba1d18129708f1dacb8` |
| 7 | `theorem` | [Walk.three_le_chromaticNumber_of_odd_loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/walk-three-le-chromaticnumber-of-odd-loop--960bc881a935e33b1e37f0b9.md) | 79 | `result-track:960bc881a935e33b1e37f0b9457519b12a346e6bb7a2574e19e626523bec53ca` |
| 8 | `def` | [cycleGraph.bicoloring_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/cyclegraph-bicoloring-of-even--86e4904c25363e9bdf48204e.md) | 89 | `declaration-track:86e4904c25363e9bdf48204e1c44a564ee5293f17d33e383115d7dd03c47ac5b` |
| 9 | `theorem` | [chromaticNumber_cycleGraph_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/chromaticnumber-cyclegraph-of-even--081cfb3c879a4706c7ced079.md) | 105 | `result-track:081cfb3c879a4706c7ced079cee213bea3b4697d3b0ee84cc5f4dfe5f4b569b6` |
| 10 | `def` | [cycleGraph.tricoloring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/cyclegraph-tricoloring--d4365f74cfba242d87edaf23.md) | 115 | `declaration-track:d4365f74cfba242d87edaf23d4f936b4be161d95282c57eb8ac7a997d56c636a` |
| 11 | `theorem` | [chromaticNumber_cycleGraph_of_odd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/ConcreteColorings/Varianta2991b162e447cc233e1584c06c6d7772b9bc20ae519b8225e6238fa6efd8400.lean/declarations/chromaticnumber-cyclegraph-of-odd--f14c330c34cbbf825e5ebfcf.md) | 142 | `result-track:f14c330c34cbbf825e5ebfcf65216c99ae04ac0892648f328102d3eccb7cd5b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
