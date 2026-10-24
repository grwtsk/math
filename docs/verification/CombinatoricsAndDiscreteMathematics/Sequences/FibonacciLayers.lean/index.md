# Verification target: GRWTSK.Combinatorics.Sequences.FibonacciLayers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c61f2dc55fa8ec4a630d546826d5c4270ad157",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/FibonacciLayers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c61f2dc55fa8ec4a630d546826d5c4270ad157`.

Source path: `GRWTSK/Combinatorics/Sequences/FibonacciLayers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/FibonacciLayers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Layer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/layer--02e5bda8570d482a9645e12e.md) | 29 | `declaration-track:02e5bda8570d482a9645e12ebdf4ecaa44b4e0bef3e9c59a58ac77965c6f30f9` |
| 2 | `def` | [width](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/width--ddfd5cc4c1a04c84729d65a5.md) | 32 | `declaration-track:ddfd5cc4c1a04c84729d65a5f2f269212d068f6229f9ee84c8000de5ced7b847` |
| 3 | `abbrev` | [VertexInLayers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/vertexinlayers--db8b21f6807449a982aaabdf.md) | 35 | `declaration-track:db8b21f6807449a982aaabdf423074fd51b00181a852e1b6e26bd936828fa1ce` |
| 4 | `abbrev` | [RootedVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/rootedvertex--098e80239219060c082fd285.md) | 38 | `declaration-track:098e80239219060c082fd285b2e1212711215f93ba0b4746d6c82b85081f06f5` |
| 5 | `def` | [root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/root--67c94f4db6e6c1a4474e93d1.md) | 40 | `declaration-track:67c94f4db6e6c1a4474e93d10269fb55ab2caac853cb7a2e4df7e8a59eaa2989` |
| 6 | `def` | [level](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/level--d2c00b071b3a580d20a6b662.md) | 42 | `declaration-track:d2c00b071b3a580d20a6b662c7a0cd44306641e9bf5110627a1568ace04b924e` |
| 7 | `theorem` | [widths_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/widths-exact--d60255199a01cfb00a8de70c.md) | 46 | `result-track:d60255199a01cfb00a8de70c42675f1f27f55fc2f81bc7767ed54a3021618387` |
| 8 | `theorem` | [width_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/width-pos--455b618f86dceed185cd4d25.md) | 50 | `result-track:455b618f86dceed185cd4d258a906bd4efd14eb5c2511317671284dc823b7119` |
| 9 | `theorem` | [width_le_fifty_five](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/width-le-fifty-five--a8f90f6dcb09f50619e9fac6.md) | 53 | `result-track:a8f90f6dcb09f50619e9fac6073b46a905db137bd308f847931085178d0ffed9` |
| 10 | `theorem` | [component_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/component-card--32b96350ac1a63f59e06a063.md) | 59 | `result-track:32b96350ac1a63f59e06a063e0fd43796e750d84b2df5dc23b0575943ab9897d` |
| 11 | `theorem` | [sum_widths](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/sum-widths--49aab956bf95db2f9c8cb52a.md) | 62 | `result-track:49aab956bf95db2f9c8cb52ac150f2ef81124bb1dfdc11f631b3c4fdf1245059` |
| 12 | `theorem` | [card_layers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/card-layers--1c3e2cead4ed106673f27c27.md) | 65 | `result-track:1c3e2cead4ed106673f27c274b472772d2f9d1fad8065535596314db96ee5f2e` |
| 13 | `theorem` | [card_rooted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/card-rooted--c561ed27769ba8c12e5a31e3.md) | 71 | `result-track:c561ed27769ba8c12e5a31e37c0f9b2fd53a258c5df1b1e3f89a05dd5cebdbd2` |
| 14 | `theorem` | [root_distinct](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/root-distinct--cd5acfdba4f7ea566d75db4c.md) | 74 | `result-track:cd5acfdba4f7ea566d75db4cfc79fcd3d3139b560b548792cf484052cefb6816` |
| 15 | `theorem` | [level_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/level-zero-iff--e7c8e50d795afe7ac3285358.md) | 77 | `result-track:e7c8e50d795afe7ac3285358b2e0ff729faf81f3be87c921c5f332f1c968c961` |
| 16 | `theorem` | [positive_level_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/positive-level-bounds--6d5781ae3e13477d01526d3c.md) | 80 | `result-track:6d5781ae3e13477d01526d3c5e51c16bd27e84242a96adc967c0e4871bbb87ce` |
| 17 | `theorem` | [component_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/component-unique--99485a21a38eab13502e98f3.md) | 87 | `result-track:99485a21a38eab13502e98f3f24bf026ae20cd798d4cbc4469b0afd5fee9cb36` |
| 18 | `theorem` | [adjacent_width_bounds](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/adjacent-width-bounds--afe3f319e9315e0f3a546cb6.md) | 91 | `result-track:afe3f319e9315e0f3a546cb634b546d3eae0318027a05475feb24441a2ad313b` |
| 19 | `def` | [parentIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/parentindex--4d706de2a64aa110d48ac55a.md) | 101 | `declaration-track:4d706de2a64aa110d48ac55a21758e6f817a9af484e943692e08050a7a49e03b` |
| 20 | `theorem` | [parentIndex_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/parentindex-lt--61c56727fd1cf86dd699a8b0.md) | 103 | `result-track:61c56727fd1cf86dd699a8b0d573e0241e244408459683518551fa840c9c4779` |
| 21 | `theorem` | [parentIndex_span](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/parentindex-span--fa76941258e8af84d104eaa8.md) | 109 | `result-track:fa76941258e8af84d104eaa8cd2b92a010cc755e162a7714d36f19ca2c7ed647` |
| 22 | `theorem` | [parent_fiber_card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/parent-fiber-card-le-two--35f4ca84e961e9a8f147164b.md) | 123 | `result-track:35f4ca84e961e9a8f147164ba2d9a0de2f678afc81cf46f6a0abc351ecca0b52` |
| 23 | `def` | [children](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/children--253e01941ab9b04941284d38.md) | 139 | `declaration-track:253e01941ab9b04941284d3870f870ad3862eb66401e23fec545b023c240cf50` |
| 24 | `theorem` | [children_card_le_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/children-card-le-two--707280a4a448ee887c25975a.md) | 143 | `result-track:707280a4a448ee887c25975a41cd48aa73b84388259f3715889ed19c88d5f0ee` |
| 25 | `def` | [Edge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/edge--7bfc4707fc96f3128af1b6b5.md) | 150 | `declaration-track:7bfc4707fc96f3128af1b6b5f974b92587cf6fa2aaaf504e5aba38ecd4596190` |
| 26 | `theorem` | [no_edge_into_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/no-edge-into-root--3fd1c6b7ac0458971a000cd3.md) | 157 | `result-track:3fd1c6b7ac0458971a000cd3a1ed0603907d843819d34e57154cc4ae8db35eb8` |
| 27 | `theorem` | [edge_level_increases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FibonacciLayers.lean/declarations/edge-level-increases--0c26150101df21bd181ebd9f.md) | 161 | `result-track:0c26150101df21bd181ebd9f542a58da9e6575516d771e1610ad205fed810094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
