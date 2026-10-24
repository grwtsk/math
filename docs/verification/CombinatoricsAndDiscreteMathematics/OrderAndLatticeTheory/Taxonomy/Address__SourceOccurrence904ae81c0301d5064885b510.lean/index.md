# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Taxonomy.Address

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4b72808aa028026237ee503edf94ae424f0be9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Taxonomy/Address.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4b72808aa028026237ee503edf94ae424f0be9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Taxonomy/Address.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Taxonomy/Address.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Address](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/address--fbd82c49cb1b406476c15461.md) | 22 | `declaration-track:fbd82c49cb1b406476c15461274b56a08875e4f12be105fc2cdd7e66ec7b6051` |
| 2 | `def` | [Prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix--deabe7832b881d3c105bd284.md) | 25 | `declaration-track:deabe7832b881d3c105bd284f2c2961cc275e1746161c1146b0a70b3a80b3e4e` |
| 3 | `def` | [prefixDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefixdecidable--5a4cb40ec37695b67a668531.md) | 30 | `declaration-track:5a4cb40ec37695b67a66853179904b477953208feaddadfd62fcf21ba0609603` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/instance--0ca93b89ba45b4c82c0ec207.md) | 39 | `declaration-track:0ca93b89ba45b4c82c0ec20775eef9fcf3b5e832e932a7d90fcc536d6d99eb58` |
| 5 | `theorem` | [prefix_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix-nil--8262cc9d703f25610f51b89e.md) | 41 | `result-track:8262cc9d703f25610f51b89e7e32ea2125d9626a4154db235ca012ecb4e01f39` |
| 6 | `theorem` | [prefix_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix-refl--a9278873a09ee2c947b0c153.md) | 43 | `result-track:a9278873a09ee2c947b0c153b6f0fb074798ba50b125d4cf5b342e15493e1e92` |
| 7 | `theorem` | [prefix_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix-trans--5fd000f0265c4e9976b75b97.md) | 47 | `result-track:5fd000f0265c4e9976b75b973980f284f1bff7351d6dd02b40c423db76b6a478` |
| 8 | `theorem` | [prefix_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix-antisymm--3a2232e015dbdbb1ecc3f6bf.md) | 59 | `result-track:3a2232e015dbdbb1ecc3f6bf5a85696c18267e83e331db34a7fba99cac341bdc` |
| 9 | `theorem` | [ancestors_comparable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/ancestors-comparable--9ae1318d41a1137b927139e1.md) | 72 | `result-track:9ae1318d41a1137b927139e18b20812c3611a50c4230a693df3b1da3d8b7cfb0` |
| 10 | `def` | [commonPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix--442a1ba8b573c5ca99825da0.md) | 91 | `declaration-track:442a1ba8b573c5ca99825da0ff24d800bb3a5eb7f89d06c6884ff9815e07b0f0` |
| 11 | `theorem` | [commonPrefix_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix-left--ced46e7f91c7b5cb7fee453f.md) | 97 | `result-track:ced46e7f91c7b5cb7fee453f4881ef71026c968632a46b097387add958668070` |
| 12 | `theorem` | [commonPrefix_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix-right--283a7682b5405733dedad93b.md) | 108 | `result-track:283a7682b5405733dedad93bc1a1057da4035976255109428d3826c4711a37a1` |
| 13 | `theorem` | [commonPrefix_greatest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix-greatest--94fb77247e4101eabb9d0819.md) | 119 | `result-track:94fb77247e4101eabb9d081994b11167f178d365f99219402ddc984e1cee9ead` |
| 14 | `theorem` | [commonPrefix_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix-self--320fdab6f7218e03e28ce020.md) | 134 | `result-track:320fdab6f7218e03e28ce020bee5c834edf7f09e97e9cfa2011d18b5dde441bf` |
| 15 | `theorem` | [commonPrefix_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/commonprefix-comm--93748efa146955426517fc75.md) | 138 | `result-track:93748efa146955426517fc75119e45dbca8fe5af39abb7db3d8ef957e022f70e` |
| 16 | `def` | [prefixes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefixes--df7efaa9f392f3ae07cebb1f.md) | 144 | `declaration-track:df7efaa9f392f3ae07cebb1fbb7bb546987d7ac6304adbc18ba8cd16cd758a05` |
| 17 | `theorem` | [prefix_iff_mem_prefixes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence904ae81c0301d5064885b510.lean/declarations/prefix-iff-mem-prefixes--99923c4e788175ccbed287ee.md) | 148 | `result-track:99923c4e788175ccbed287ee032c7e68debd3ccece6fa9401820ac158bb090f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
