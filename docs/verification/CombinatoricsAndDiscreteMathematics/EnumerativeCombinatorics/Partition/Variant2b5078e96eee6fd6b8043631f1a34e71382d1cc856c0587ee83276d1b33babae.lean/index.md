# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0e20a0f3bf589673f6a2ceb6b0838384796a0b6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0e20a0f3bf589673f6a2ceb6b0838384796a0b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Coloring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partition--26b7ca572d0da7aff4cd7ac4.md) | 58 | `declaration-track:26b7ca572d0da7aff4cd7ac4adce5f540625e9484f6ad7c4c054305e11f0b2a3` |
| 2 | `def` | [Partition.PartsCardLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partition-partscardle--15c8067de09c6381294ca76b.md) | 69 | `declaration-track:15c8067de09c6381294ca76b13e35ab1ec1107b2dee7d6e3593a49f37e3cff2f` |
| 3 | `def` | [Partitionable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partitionable--ca3685a4af1528d2fabc60b5.md) | 74 | `declaration-track:ca3685a4af1528d2fabc60b5b7d578a7ee0d6e82175a171a462cc720c3bc71c1` |
| 4 | `def` | [partOfVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partofvertex--47f04dcd720cebd9fc5a040c.md) | 82 | `declaration-track:47f04dcd720cebd9fc5a040cbf86e6ebfb732e3631edd9d2f4f7769f41726c54` |
| 5 | `theorem` | [partOfVertex_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partofvertex-mem--e9955921488aaaaef7d18acf.md) | 84 | `result-track:e9955921488aaaaef7d18acf0c28d790812b28aa49a7feff600ce0ebc70ca38d` |
| 6 | `theorem` | [mem_partOfVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/mem-partofvertex--26dd0236346311401078eb7d.md) | 88 | `result-track:26dd0236346311401078eb7daea686eb9bfc7fcd9ab02f38e7ad1c320fc7848c` |
| 7 | `theorem` | [partOfVertex_ne_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partofvertex-ne-of-adj--cd089832f52048b58619451f.md) | 92 | `result-track:cd089832f52048b58619451f5981c43d6e25e24c9aa0781f8e59c308f4f4df0f` |
| 8 | `def` | [toColoring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/tocoloring--fa7d24fbf6bc464812788bee.md) | 100 | `declaration-track:fa7d24fbf6bc464812788bee355e064b68de46e08306cfe4850fc5c494bdc3cb` |
| 9 | `def` | [toColoring'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/tocoloring--4bfe8ba1099ef3de8f31fdeb.md) | 106 | `declaration-track:4bfe8ba1099ef3de8f31fdeb5efdf8f8d921b10ac8db805683b40501ebdf9a51` |
| 10 | `theorem` | [colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/colorable--6e3d6a7c7d93486b49fc052b.md) | 109 | `result-track:6e3d6a7c7d93486b49fc052b9b52217eb243982e874d848fb72971c360813a80` |
| 11 | `def` | [Coloring.toPartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/coloring-topartition--983fdf6ff197d631a4302acf.md) | 118 | `declaration-track:983fdf6ff197d631a4302acf0574a3f9211e81808961b2239ac41f567908a871` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/instance--731f4fe59ee01541273e9796.md) | 127 | `declaration-track:731f4fe59ee01541273e9796c9810cdf5aa33ba003ed13092abe8e0dc5133b4e` |
| 13 | `theorem` | [partitionable_iff_colorable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/declarations/partitionable-iff-colorable--a9d369f849176521259ad074.md) | 129 | `result-track:a9d369f849176521259ad0746a2b270bbf2ab24de8d55092567daa14b3971c5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
