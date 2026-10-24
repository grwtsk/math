# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e1da78d848a0fae7cdc2a44ab8e400ed01ae3e7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e1da78d848a0fae7cdc2a44ab8e400ed01ae3e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/pairwisenode--32e22eca54e2681813ebf7a7.md) | 41 | `declaration-track:32e22eca54e2681813ebf7a7b54bd4db3eba4d4833fdec51577faf59ea5e1525` |
| 2 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/treesofnumnodeseq--2b1a74a896c8985ada6e86b1.md) | 45 | `declaration-track:2b1a74a896c8985ada6e86b10612e2834420457202a5b40459ff80b10439394a` |
| 3 | `abbrev` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.PairwiseNode.Variant69ab958d3605d8c6765bb481f2a92525f00f8cbd084e0b23457c260e91e58bb8.Tree.treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-enumerativecombinatorics--342dc650709d7d4ab1304762.md) | 56 | `declaration-track:342dc650709d7d4ab13047627db3fc0806568ea0349895b0525738af92f03cee` |
| 4 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/treesofnumnodeseq-zero--879d843fb8f49ffe2d08223f.md) | 60 | `result-track:879d843fb8f49ffe2d08223f3edcc496116beb1727a88c6763801d65e39433d9` |
| 5 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/treesofnumnodeseq-succ--f05f2a5c9caf4615be381988.md) | 62 | `result-track:f05f2a5c9caf4615be381988b3c72a1df78c7143b5be57c6366aa9f6a69f0d16` |
| 6 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/mem-treesofnumnodeseq--ac14a83cc06de97b9e0d5d33.md) | 72 | `result-track:ac14a83cc06de97b9e0d5d33f0cf96b7f81c984c5a0707f8c717a9ec2785961c` |
| 7 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/mem-treesofnumnodeseq-numnodes--c458441fab30f8ca75c67496.md) | 77 | `result-track:c458441fab30f8ca75c674964eca38b2f9539eb0986b37cabd7158ad8707cdc7` |
| 8 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/coe-treesofnumnodeseq--bdf1d86154971abb6799b7c5.md) | 81 | `result-track:bdf1d86154971abb6799b7c553f5605e8737344ad055be84ca036bdfe4352087` |
| 9 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Tree/Variant022f42aaf0e89a786a15dae580b03f83bf5a4046f2f6aea748a3faef49559234.lean/declarations/treesofnumnodeseq-card-eq-catalan--8af2d61fa40311729ac76f98.md) | 85 | `result-track:8af2d61fa40311729ac76f98111c3b29d37aa3634821b8442929267573217f29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
