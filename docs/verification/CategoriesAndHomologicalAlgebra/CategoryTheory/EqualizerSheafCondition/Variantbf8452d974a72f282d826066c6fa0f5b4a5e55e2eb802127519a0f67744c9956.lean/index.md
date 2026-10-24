# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerSheafCondition.Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428a8a472e9710a9a160290b77d69f29ef55c617",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428a8a472e9710a9a160290b77d69f29ef55c617`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FirstObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstobj--4a0ad3cc05d4a1f51b40afc0.md) | 51 | `declaration-track:4a0ad3cc05d4a1f51b40afc060989e8e96008e54a9be5889cb5da1ee87918c74` |
| 2 | `lemma` | [FirstObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstobj-ext--95f63e234826b3471fba24e2.md) | 58 | `result-track:95f63e234826b3471fba24e2f3e25255d8c92cbbf2c2b3fcc4dbf8f5bc08422a` |
| 3 | `def` | [firstObjEqFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstobjeqfamily--833e5bad624c6f9bb69ec484.md) | 69 | `declaration-track:833e5bad624c6f9bb69ec484339a580e83f7a309457084e40fec7c2a9bff313c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/instance--231543752116e74711edd2c5.md) | 73 | `declaration-track:231543752116e74711edd2c599009ebfc215cf3ff068308c160c747a80d7fdd7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/instance--ff8a3c2d2574c3dd85a5be63.md) | 77 | `declaration-track:ff8a3c2d2574c3dd85a5be638c535987c5eadd47bc7fd0d00fcc85ef7194200c` |
| 6 | `def` | [forkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/forkmap--b6fe6c6c1e1beeef30a19802.md) | 85 | `declaration-track:b6fe6c6c1e1beeef30a19802b89abb2253dac4aacee8ebf106be14f89ebf9e3b` |
| 7 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondobj--5b90242ff546e4ef764444aa.md) | 99 | `declaration-track:5b90242ff546e4ef764444aaec4444ad8aca90812e87b6dd8ccdd3aab0d592f3` |
| 8 | `lemma` | [SecondObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondobj-ext--c561f93e98fd26950787a5a5.md) | 106 | `result-track:c561f93e98fd26950787a5a5003e29745d0b84f3708a924a6712a78014bb735f` |
| 9 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstmap--afabeb1eae4cce0b3a6c9875.md) | 116 | `declaration-track:afabeb1eae4cce0b3a6c98756ea4ce8a184fadae426897fcba2e2b62ba8ce694` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/instance--78669a2d8bb6fbb672e095ee.md) | 120 | `declaration-track:78669a2d8bb6fbb672e095ee399e8682fe0369b9421495bab7e8c2a48e391433` |
| 11 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondmap--927d9391322acc7999112522.md) | 124 | `declaration-track:927d9391322acc79991125226ba229312f013a87331645602479b12f8aef9796` |
| 12 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/w--62b3216ac8dfcafcc7ddd994.md) | 127 | `result-track:62b3216ac8dfcafcc7ddd994c6c84d2cbc292a84896983d798d92837df0d641c` |
| 13 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/compatible-iff--451bfdd66e42f65c762a540b.md) | 135 | `result-track:451bfdd66e42f65c762a540b8620d86ef6865ebf2c5ccbc40e3b38c7b86d7300` |
| 14 | `theorem` | [equalizer_sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/equalizer-sheaf-condition--880024c5193b6085147e8193.md) | 148 | `result-track:880024c5193b6085147e8193bf26c341faea5c22f5138debeeef3fb806d1cc6d` |
| 15 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondobj--16077512aa39080c5030563b.md) | 185 | `declaration-track:16077512aa39080c5030563b19aff72caa4eabde05388abb36005bc8a29f640d` |
| 16 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstmap--7d7d6661fa1d4a4c17a1d176.md) | 192 | `declaration-track:7d7d6661fa1d4a4c17a1d1765c0ae400aad5dae03b1a2920700750b452429325` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/instance--93a70fa17e4ff9b0315f413b.md) | 197 | `declaration-track:93a70fa17e4ff9b0315f413b8740d79c893267b7eb0f6f2590626606922f838d` |
| 18 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondmap--842fe20fcb0ef474c621715b.md) | 202 | `declaration-track:842fe20fcb0ef474c621715b0dca0d5ca76720c5b73eeadd6ba2d578619eb816` |
| 19 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/w--3ab97fdcf1ca38179ae9b96f.md) | 207 | `result-track:3ab97fdcf1ca38179ae9b96f1ed3e1c1eca65b4f87be7ef782a3b8693a1d3651` |
| 20 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/compatible-iff--0b6b92ca19b8ba82026e5905.md) | 220 | `result-track:0b6b92ca19b8ba82026e5905b8382dd5bf32d6ade4e08c1133d1253ac37ff9f3` |
| 21 | `theorem` | [sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/sheaf-condition--7f03b6c02a9459a4c780ffd8.md) | 234 | `result-track:7f03b6c02a9459a4c780ffd83894ca5616335f7d7228e4dbd6237ee157d87fa4` |
| 22 | `def` | [FirstObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstobj--3220594940594924f530049e.md) | 267 | `declaration-track:3220594940594924f530049eb57df63be9ce2653ab07cf77b4c50550613f26cf` |
| 23 | `lemma` | [FirstObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstobj-ext--41031d3860bc929e878f7222.md) | 270 | `result-track:41031d3860bc929e878f722221eea23fc951db6b727623748be3a19baee4e9f4` |
| 24 | `def` | [SecondObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondobj--4f94495f32b42ee87b498c58.md) | 282 | `declaration-track:4f94495f32b42ee87b498c58f073cb7fade3b556ebef81a50391c220eca0910c` |
| 25 | `lemma` | [SecondObj.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondobj-ext--973e359b8a21e433fb91c6f5.md) | 286 | `result-track:973e359b8a21e433fb91c6f58c54cdeabe07287eebbd7322d86e854219da6f5a` |
| 26 | `def` | [forkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/forkmap--2246548e73eb58a99c8bff63.md) | 295 | `declaration-track:2246548e73eb58a99c8bff63530b26b2f1c11358ecad9a545b7a891537df5a1a` |
| 27 | `def` | [firstMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/firstmap--1dfec6169d8ecd1db2d16cde.md) | 301 | `declaration-track:1dfec6169d8ecd1db2d16cded0a1871728018ebd22f9fb180e9f548c3865e246` |
| 28 | `def` | [secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/secondmap--f624fccc6cf82265d385ba5d.md) | 308 | `declaration-track:f624fccc6cf82265d385ba5d3872757b4a9c04ab3ac6dc5ba36539279b51fc0d` |
| 29 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/w--76d7c7863f9590521c819f89.md) | 311 | `result-track:76d7c7863f9590521c819f89b3b454a58628343080f034bb29592d063cf5a432` |
| 30 | `theorem` | [compatible_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/compatible-iff--b749718aca644dbbe1b51f8f.md) | 320 | `result-track:b749718aca644dbbe1b51f8fbb0491cdae574e6c96f167bf468fea48448b206e` |
| 31 | `theorem` | [sheaf_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantbf8452d974a72f282d826066c6fa0f5b4a5e55e2eb802127519a0f67744c9956.lean/declarations/sheaf-condition--23be2c09d0f4e872c4de9b4d.md) | 333 | `result-track:23be2c09d0f4e872c4de9b4d72dae02dba5bbbfc42428751122463465a262095` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
