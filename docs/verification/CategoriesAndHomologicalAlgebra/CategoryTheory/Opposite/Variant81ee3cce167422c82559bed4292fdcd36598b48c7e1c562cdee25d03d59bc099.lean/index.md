# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d7823eb1c6c4f7723be5df7def159dda8f4752a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d7823eb1c6c4f7723be5df7def159dda8f4752a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoidalOpposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/monoidalopposite--129c11cb400f77191d37357d.md) | 27 | `declaration-track:129c11cb400f77191d37357d7b79225c47c052c668416a73d65021046e8a717f` |
| 2 | `def` | [mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop--691313292332e2186dd1664c.md) | 37 | `declaration-track:691313292332e2186dd1664c8e58396cb0f13dc0a786243c519e2c54fe922dfc` |
| 3 | `def` | [unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop--c8eb24193f2c8195233f0529.md) | 43 | `declaration-track:c8eb24193f2c8195233f052971871f1cbae0b5606be2c22357ff70b172a5ebe7` |
| 4 | `theorem` | [op_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/op-injective--5b30653858df8a719ea12b68.md) | 47 | `result-track:5b30653858df8a719ea12b68aaf168bf01bb2e84fd96bba778f17d8c70d2406f` |
| 5 | `theorem` | [unop_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unop-injective--64cba565b9e011719aa17c39.md) | 51 | `result-track:64cba565b9e011719aa17c39f4798a99365b894d09946ae6fd436fa86a0e6425` |
| 6 | `theorem` | [op_inj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/op-inj-iff--99739a42d20dc6d18251e010.md) | 56 | `result-track:99739a42d20dc6d18251e01044bda9d3a814939e118093f3e3c9f77439588934` |
| 7 | `theorem` | [unop_inj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unop-inj-iff--53abb0874a3e8163a35dd74f.md) | 61 | `result-track:53abb0874a3e8163a35dd74f3ff3584042ad376617a7719f467b0ba211235fe6` |
| 8 | `theorem` | [mop_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-unmop--60a157170555cdea71f4d752.md) | 66 | `result-track:60a157170555cdea71f4d752331344f8be5b0a5bfe03f0dbf900f2bd60b603ea` |
| 9 | `theorem` | [unmop_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-mop--2cecbf0cf7e4b5ca7f670401.md) | 71 | `result-track:2cecbf0cf7e4b5ca7f6704011d94761d4cb236e72c6a728f4ca09192146b4f77` |
| 10 | `instance` | [monoidalOppositeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/monoidaloppositecategory--08b0e9b0e37c3165cb395b4c.md) | 75 | `declaration-track:08b0e9b0e37c3165cb395b4c27dfabf9fc21c91e3758b8e91b93d801c539af5c` |
| 11 | `def` | [Quiver.Hom.mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/quiver-hom-mop--012e30329bf49e93f699f62f.md) | 90 | `declaration-track:012e30329bf49e93f699f62fe503522c183031634d1ed3678a667a83fd2de215` |
| 12 | `def` | [Quiver.Hom.unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/quiver-hom-unmop--5dafe153ffc0cfeb270ff009.md) | 95 | `declaration-track:5dafe153ffc0cfeb270ff009c79d34566968194e6d5995dcfce583b7b7ebf78c` |
| 13 | `theorem` | [mop_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-inj--8ce905ca6c6c6de132839daf.md) | 101 | `result-track:8ce905ca6c6c6de132839daf77385b679ad6fc1f454bb32955e8ab01d75cce2c` |
| 14 | `theorem` | [unmop_inj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-inj--189e80ece756bc5308d19246.md) | 105 | `result-track:189e80ece756bc5308d19246fb48df1f0e8f474c3b55879005e403c0ea5bede0` |
| 15 | `theorem` | [unmop_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-mop--91ad4c07bf79884572383700.md) | 111 | `result-track:91ad4c07bf79884572383700e9e4fb4c388cb3fea4fb26d599ede0e128269e08` |
| 16 | `theorem` | [mop_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-unmop--88ea5555d514a922945bbf78.md) | 116 | `result-track:88ea5555d514a922945bbf7862ea078aca1907a3194b0effdf8b7661b00f0a69` |
| 17 | `theorem` | [mop_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-comp--1c57b4e796ee04776c335aa8.md) | 121 | `result-track:1c57b4e796ee04776c335aa8170851b1437f3be8e799b888c1c5fae559fbd962` |
| 18 | `theorem` | [mop_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-id--204e0666a7a55822f8b907ee.md) | 126 | `result-track:204e0666a7a55822f8b907eeedf36c19feb954b2257518b4ac8283965513afcc` |
| 19 | `theorem` | [unmop_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-comp--1a40ed333c9a503fcdc32ba1.md) | 131 | `result-track:1a40ed333c9a503fcdc32ba1e4ce0f65397d7d526dfaa0d5587f656601d64a70` |
| 20 | `theorem` | [unmop_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-id--f1040b0ffb3ff9154edfac7a.md) | 136 | `result-track:f1040b0ffb3ff9154edfac7a51f82ee2eedeb653a8443a33158e4b27d2781cab` |
| 21 | `theorem` | [unmop_id_mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/unmop-id-mop--b12c3c15c535434e4b5ac208.md) | 141 | `result-track:b12c3c15c535434e4b5ac20872686fe0166ed0b9f7c11613f0ded1e3d086d54b` |
| 22 | `theorem` | [mop_id_unmop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-id-unmop--0266e5669bd781fb20b6e050.md) | 146 | `result-track:0266e5669bd781fb20b6e05006f5f7b4443f749c867051cbe82894f65ef60b59` |
| 23 | `def` | [mop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop--29ac745b3b9d1b47de19f7f7.md) | 156 | `declaration-track:29ac745b3b9d1b47de19f7f7345c22460ab5d3b05d87d0004a2adec619d4b1ab` |
| 24 | `instance` | [monoidalCategoryOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/monoidalcategoryop--56555a18828f13bd528a3dc3.md) | 171 | `declaration-track:56555a18828f13bd528a3dc3202519c45022f85774e531ea935d05c46ac35019` |
| 25 | `theorem` | [op_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/op-tensorobj--5f750b93aa53ac1c9ffb19bf.md) | 188 | `result-track:5f750b93aa53ac1c9ffb19bfb1745beb5bb439aed523bf28e65cdf68a19740c4` |
| 26 | `theorem` | [op_tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/op-tensorunit--d3817b372508865bac12b0c0.md) | 192 | `result-track:d3817b372508865bac12b0c0cfd7975f442fcebba460a857c8f0684ec13d1442` |
| 27 | `instance` | [monoidalCategoryMop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/monoidalcategorymop--9086a8f5a3fb65b0c328c2fc.md) | 196 | `declaration-track:9086a8f5a3fb65b0c328c2fca563cee99603ca5a40629f33308c2a99acac1782` |
| 28 | `theorem` | [mop_tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-tensorobj--03996a5d2ee403e54fb69ccf.md) | 213 | `result-track:03996a5d2ee403e54fb69ccf179a8b28abe788e085d34cc325dad2e976771a5e` |
| 29 | `theorem` | [mop_tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant81ee3cce167422c82559bed4292fdcd36598b48c7e1c562cdee25d03d59bc099.lean/declarations/mop-tensorunit--d5cd17acac8f89470a6f9a02.md) | 217 | `result-track:d5cd17acac8f89470a6f9a02f10cbd5bb78bfac89e37b44943b090b2d4f0a687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
