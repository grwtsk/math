# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuadraticModuleCat.Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a33ac5b0007384ee74816dc795513804a1259b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a33ac5b0007384ee74816dc795513804a1259b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuadraticModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/quadraticmodulecat--f1257157965d49bd2aff89f8.md) | 28 | `declaration-track:f1257157965d49bd2aff89f8b0c9e513e4cf5645bda22c4f03108c92ccb96d3c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/instance--f327d0f5cc09fb146cdb2abc.md) | 38 | `declaration-track:f327d0f5cc09fb146cdb2abca0995ada6a6ef2fb7fc72847025e87329ebc90c3` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/modulecat-of-tomodulecat--94974fdbfe6597c1466c1726.md) | 41 | `result-track:94974fdbfe6597c1466c17268489d624666e00934f9e6cb37485a111cc8df773` |
| 4 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/of--d8f1f985e7e24ec0901dacb2.md) | 46 | `declaration-track:d8f1f985e7e24ec0901dacb27c152f3c99af8097b56b43260e10539e036d7baf` |
| 5 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/hom--97ff756414a8550ade4ce420.md) | 54 | `declaration-track:97ff756414a8550ade4ce42041d11de0d37a58553c08f71ee5759d1df4fcfd8e` |
| 6 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/category--19a2a0ecbd7879b9de56547d.md) | 58 | `declaration-track:19a2a0ecbd7879b9de56547d124fb6cbf3ef8a92501e69599416a1d37765f8e1` |
| 7 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/concretecategory--3fae8a4ea014ebd19435528e.md) | 63 | `declaration-track:3fae8a4ea014ebd19435528e434f3b12292c9c7102ff0dfff2297bebccac229b` |
| 8 | `abbrev` | [Hom.toIsometry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/hom-toisometry--ad40ed1566fb1983fad6985c.md) | 69 | `declaration-track:ad40ed1566fb1983fad6985c7d37fa112c5530f8d3f9835a2a5a7f0b22397a10` |
| 9 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/ofhom--104b1d72b98e8332d2da0809.md) | 73 | `declaration-track:104b1d72b98e8332d2da0809f6a5c4282bfb5eab61af352420f112e7de9b0b22` |
| 10 | `lemma` | [Hom.toIsometry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/hom-toisometry-injective--21e0a3bcb4e58f835d938f73.md) | 78 | `result-track:21e0a3bcb4e58f835d938f734e2ebbee3fbb822a7365122ae98aa9f08409c7f9` |
| 11 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/hom-ext--41b5d9be1ebd68dcb440ae15.md) | 83 | `result-track:41b5d9be1ebd68dcb440ae1500d5a832b8543f936f87bf12451c2c84ceabf65e` |
| 12 | `theorem` | [toIsometry_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometry-comp--ec62881af1b239ad1fc5fc5b.md) | 87 | `result-track:ec62881af1b239ad1fc5fc5bf25d67b45532917650b0cb4b04f030df19b87ddf` |
| 13 | `theorem` | [toIsometry_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometry-id--b25573b7c87241fa8b8e07fe.md) | 91 | `result-track:b25573b7c87241fa8b8e07fefa975cd88d5c35e271fe84cd11e5f79bab300725` |
| 14 | `instance` | [hasForgetToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/hasforgettomodule--8e3ca905edab5c819f7d4af4.md) | 95 | `declaration-track:8e3ca905edab5c819f7d4af40c283cd5ef51f95da2a8082712272cc385ecf837` |
| 15 | `theorem` | [forget₂_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/forget-obj--265c0d645bf3d5df5b86f63d.md) | 101 | `result-track:265c0d645bf3d5df5b86f63df5389d3483f4a3c51b234de6bcfa01b8f911c67c` |
| 16 | `theorem` | [forget₂_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/forget-map--50044396cff6deb82d7d77c7.md) | 106 | `result-track:50044396cff6deb82d7d77c7e6c646375f71da5778f2f44f28f757e880af6f25` |
| 17 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/ofiso--5f45d9015182169f0b630f30.md) | 118 | `declaration-track:5f45d9015182169f0b630f300f248aa854936eed547745cc607e08980e1e7365` |
| 18 | `theorem` | [ofIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/ofiso-refl--9e433c78a99325cb139d7ae1.md) | 124 | `result-track:9e433c78a99325cb139d7ae10145bb5a810a83337ae6deceab4fd8bbff2b00d9` |
| 19 | `theorem` | [ofIso_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/ofiso-symm--f3f531ecc8a10f83183a0d5e.md) | 127 | `result-track:f3f531ecc8a10f83183a0d5ec87148fdb7413f0d39f6965b8fea446bc6c7b127` |
| 20 | `theorem` | [ofIso_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/ofiso-trans--7931f8fbe61d34e29bc20734.md) | 130 | `result-track:7931f8fbe61d34e29bc207346357094f85d786d324e5665b710ebe980d08e9c6` |
| 21 | `def` | [toIsometryEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometryequiv--72239ac0ffd024ae9f4547f6.md) | 145 | `declaration-track:72239ac0ffd024ae9f4547f63832872a50538bf316b690396bc6cb7c4aa09607` |
| 22 | `theorem` | [toIsometryEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometryequiv-refl--a6a6c1fac36e750ea551f925.md) | 158 | `result-track:a6a6c1fac36e750ea551f9252539303a16388ad6de09d96123b0c63fa57d7451` |
| 23 | `theorem` | [toIsometryEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometryequiv-symm--5972197ca6bce8c8dc91edf1.md) | 161 | `result-track:5972197ca6bce8c8dc91edf104dd1d3c709cd28e64f74e5b3d0eba288a86904f` |
| 24 | `theorem` | [toIsometryEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variantcf3577fddf4960c30b25d2bdc5637371ebadc07fe2c81e84cc0387eb07050270.lean/declarations/toisometryequiv-trans--94a434e92caf6a6bbc4868c2.md) | 165 | `result-track:94a434e92caf6a6bbc4868c2ba26e4bb769dca1600c08515117311680d831cbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
