# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Arborescence.Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44f2fe930821c342ff0c80cc1d351aeb4513a176",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44f2fe930821c342ff0c80cc1d351aeb4513a176`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Subquiver` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Arborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/arborescence--d588baa4c254f9f07c4a917d.md) | 38 | `declaration-track:d588baa4c254f9f07c4a917d5729fa02fc63040abb8c89b82002e083611dde08` |
| 2 | `def` | [root](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/root--f66189d1e73b4e00e64d5935.md) | 45 | `declaration-track:f66189d1e73b4e00e64d593590023cf52ab34267a400455d2574d50c06ad01c4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/instance--a325624d5a1dfc6c38cfbf9d.md) | 48 | `declaration-track:a325624d5a1dfc6c38cfbf9db36c30b46b4be1a83335c607a4c19ec434bd964c` |
| 4 | `def` | [arborescenceMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/arborescencemk--608b9bc9305e0e03383ac9de.md) | 56 | `declaration-track:608b9bc9305e0e03383ac9de80c992a798fcd17c3903bb2900e39d33f0c99989` |
| 5 | `class` | [RootedConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/rootedconnected--86be5ab2982782673073f019.md) | 93 | `declaration-track:86be5ab2982782673073f019e4dd008647e1f9ea11e14107f9c79be5ad132802` |
| 6 | `def` | [shortestPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/shortestpath--c251b40ec343a8bef681e29a.md) | 103 | `declaration-track:c251b40ec343a8bef681e29a84065a0ac2578bae354ef9b5197f0859fed60c99` |
| 7 | `theorem` | [shortest_path_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/shortest-path-spec--c4a71df315cccc8fefadcd53.md) | 107 | `result-track:c4a71df315cccc8fefadcd535a96ea155705e8b4f36bee0a895854f25713a301` |
| 8 | `def` | [geodesicSubtree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/geodesicsubtree--c13aa058d8ee1e360e76f419.md) | 111 | `declaration-track:c13aa058d8ee1e360e76f41988068a3139e7ea1694568c7bc1e27599d1b30bf3` |
| 9 | `instance` | [geodesicArborescence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variantfa091a05bffc65589aa1f5d187a52472fe0f07133adf908ac8510b00c0febfc9.lean/declarations/geodesicarborescence--c6708b34a47b10bbc29a68fc.md) | 114 | `declaration-track:c6708b34a47b10bbc29a68fc87dfd498374928d9119324bbdc08519fdf9d2b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
