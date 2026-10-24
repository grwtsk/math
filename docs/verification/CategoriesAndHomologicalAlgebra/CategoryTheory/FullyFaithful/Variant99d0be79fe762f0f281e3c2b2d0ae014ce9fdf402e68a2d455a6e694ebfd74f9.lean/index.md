# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "051e2014dfea770f8876c5149962c991ac08364e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `051e2014dfea770f8876c5149962c991ac08364e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unit_isIso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/unit-isiso-of-l-fully-faithful--c61ba6e6bdbaec611b24ad3b.md) | 50 | `declaration-track:c61ba6e6bdbaec611b24ad3be5fbdbb0345b52cb784267056266c0f5260818a1` |
| 2 | `instance` | [counit_isIso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/counit-isiso-of-r-fully-faithful--067b0560b71779632aedb77c.md) | 71 | `declaration-track:067b0560b71779632aedb77c30f2ce001c01d176d09abf8046d8b5bb28ac8103` |
| 3 | `theorem` | [inv_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/inv-map-unit--9af23ca39d4fe55671d9a9c2.md) | 92 | `result-track:9af23ca39d4fe55671d9a9c26567583c7de7bdaa778b5b23c77cef51c846a9bf` |
| 4 | `def` | [whiskerLeftLCounitIsoOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerleftlcounitisoofisisounit--546fd20b044db2a65184adae.md) | 99 | `declaration-track:546fd20b044db2a65184adae21f1afda91773d4c0346e828f72da5323798d750` |
| 5 | `theorem` | [inv_counit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/inv-counit-map--e97678331dd6ef93e98847ed.md) | 107 | `result-track:e97678331dd6ef93e98847edaf0691f9a04272177de49fd219cf5ebb714e4cd5` |
| 6 | `def` | [whiskerLeftRUnitIsoOfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerleftrunitisoofisisocounit--b3687ffe52f979ce9c0919c2.md) | 114 | `declaration-track:b3687ffe52f979ce9c0919c2281a1479ad09aa954811e7ef26d61283b15c36cd` |
| 7 | `def` | [lFullOfUnitIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/lfullofunitisiso--9f7e3730a250589a97bef231.md) | 120 | `declaration-track:9f7e3730a250589a97bef231b0c616c1873eb8bc2ce45d19b93d08b047646945` |
| 8 | `theorem` | [L_faithful_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/l-faithful-of-unit-isiso--edb1eff65bf8cda0ee713db7.md) | 126 | `result-track:edb1eff65bf8cda0ee713db71a2a91046ec27e4267c185c7a0a96b7cbbcbd536` |
| 9 | `def` | [rFullOfCounitIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/rfullofcounitisiso--06696f675066dfe7f5350a1c.md) | 134 | `declaration-track:06696f675066dfe7f5350a1cec16b289042f8bdab9c327029f114502a96c4845` |
| 10 | `theorem` | [R_faithful_of_counit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/r-faithful-of-counit-isiso--b7c8136fbe04c8276ccc2343.md) | 140 | `result-track:b7c8136fbe04c8276ccc234348987578675a6557a09f6e003816edc8061938fd` |
| 11 | `instance` | [whiskerLeft_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerleft-counit-iso-of-l-fully-faithful--63ff31b13c74ba2760fa1492.md) | 147 | `declaration-track:63ff31b13c74ba2760fa14926e5dce521fd7cc812d617427e494474c45cc3773` |
| 12 | `instance` | [whiskerRight_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerright-counit-iso-of-l-fully-faithful--4804cc3fd3e04e25f70c8f17.md) | 156 | `declaration-track:4804cc3fd3e04e25f70c8f172c099e6428e7690b62d49fb3c2bc1a0a8def3720` |
| 13 | `instance` | [whiskerLeft_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerleft-unit-iso-of-r-fully-faithful--78c19828b76473d7687e2260.md) | 165 | `declaration-track:78c19828b76473d7687e226017afd10ca8ac9268c03e6eb21ad463370c402c17` |
| 14 | `instance` | [whiskerRight_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/whiskerright-unit-iso-of-r-fully-faithful--6e0eb6769c3e8a00e2e42df6.md) | 174 | `declaration-track:6e0eb6769c3e8a00e2e42df68edd8e4fdd5079a545d18ee142320376b8ab7db5` |
| 15 | `def` | [Adjunction.restrictFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant99d0be79fe762f0f281e3c2b2d0ae014ce9fdf402e68a2d455a6e694ebfd74f9.lean/declarations/adjunction-restrictfullyfaithful--0d1682067723d0dff12defee.md) | 198 | `declaration-track:0d1682067723d0dff12defeef09d41f599163e14de6cfefc4a6f2ff485aa748c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
