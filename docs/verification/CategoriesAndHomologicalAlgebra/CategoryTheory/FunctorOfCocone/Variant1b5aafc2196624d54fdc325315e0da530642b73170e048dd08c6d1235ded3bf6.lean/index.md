# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorOfCocone.Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c75826a22944fb71eaa38d2ecdf37cc694d7efdd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c75826a22944fb71eaa38d2ecdf37cc694d7efdd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/obj--b852d634ae6701f66213004e.md) | 35 | `declaration-track:b852d634ae6701f66213004e83c5f08a519cf5722f4c296a8136cb1cf97b7706` |
| 2 | `def` | [objIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/objiso--a220c47697edf59ebc5f5a12.md) | 41 | `declaration-track:a220c47697edf59ebc5f5a126d24f7c76b8a282979616c58fdd7b9d09c820c48` |
| 3 | `def` | [objIsoPt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/objisopt--eb2fc5a3ebaf66e2d538bf3d.md) | 46 | `declaration-track:eb2fc5a3ebaf66e2d538bf3d5f61f5cab5e0bcdd8313e9f4fe7ab8bf2c97ee03` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/map--d97185d83c1b043f62af96e0.md) | 51 | `declaration-track:d97185d83c1b043f62af96e0ec8e3c3fa3630543586966337741e4ea5bb9dca0` |
| 5 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/map-id--77e9f2275ee7922f87702338.md) | 63 | `result-track:77e9f2275ee7922f87702338fe4f1f1419dd0d0128c9429167eee198fee71ba6` |
| 6 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/map-comp--05f7f50671ab2269798585a3.md) | 70 | `result-track:05f7f50671ab2269798585a322fe470bc9a02f061df18c974d626ffd237880e5` |
| 7 | `def` | [ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcocone--a5980136841d9d743f6c301f.md) | 91 | `declaration-track:a5980136841d9d743f6c301fe42bdd3b22765212e30762fa9b8d0ff0434f77b0` |
| 8 | `lemma` | [ofCocone_obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcocone-obj-eq--bdc1a225e035eae8e07a9ea0.md) | 97 | `result-track:bdc1a225e035eae8e07a9ea0f35b30fa33d6a29624a317e3c54b449ea553b22a` |
| 9 | `def` | [ofCoconeObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcoconeobjiso--70394c4fb2a30b0914b401b5.md) | 102 | `declaration-track:70394c4fb2a30b0914b401b5b675439fffa554c303ec0e63634fd22ea485dce3` |
| 10 | `lemma` | [ofCocone_obj_eq_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcocone-obj-eq-pt--2c203bf9a060a914e646f933.md) | 106 | `result-track:2c203bf9a060a914e646f9338be903a1b15490619a4aef5b14180da647c11785` |
| 11 | `def` | [ofCoconeObjIsoPt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcoconeobjisopt--23dba6852ce1a508a9b29be5.md) | 111 | `declaration-track:23dba6852ce1a508a9b29be5eaf8bda6dabbe108c2a6e5946e693b90ddd090ab` |
| 12 | `lemma` | [ofCocone_map_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcocone-map-to-top--04c50aade9039508ddb86b93.md) | 115 | `result-track:04c50aade9039508ddb86b9323ca4c8f84dbacac8d992e7b65bb9545e595469c` |
| 13 | `lemma` | [ofCocone_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcocone-map--6ea39ab48c2d3e30b2ba9651.md) | 122 | `result-track:6ea39ab48c2d3e30b2ba9651fc2509e456d2a9e0a2bdc38d16238d4606668888` |
| 14 | `lemma` | [ofCoconeObjIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/ofcoconeobjiso-hom-naturality--75fa0f78f9aa871f7c8b398e.md) | 130 | `result-track:75fa0f78f9aa871f7c8b398ec068f3fe4ced10ab664fe164bc971722224a76ee` |
| 15 | `def` | [restrictionLTOfCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/restrictionltofcoconeiso--4b02a02998af077569b45ee8.md) | 139 | `declaration-track:4b02a02998af077569b45ee84fda94596810a7593f2a2354062308aa902fdddd` |
| 16 | `def` | [isColimitCoconeOfLEOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/iscolimitcoconeofleofcocone--94e7e1c3c894b1ad2e765ac7.md) | 146 | `declaration-track:94e7e1c3c894b1ad2e765ac7295a104da13c119c6e37b6393cb6795ed4cc6ec9` |
| 17 | `lemma` | [arrowMap_ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/arrowmap-ofcocone--91b8badd35ac1fef2423d9a8.md) | 154 | `result-track:91b8badd35ac1fef2423d9a8767efa3c403f126861d62adb1aec2b0dd33b55bc` |
| 18 | `lemma` | [arrowMap_ofCocone_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant1b5aafc2196624d54fdc325315e0da530642b73170e048dd08c6d1235ded3bf6.lean/declarations/arrowmap-ofcocone-to-top--564839e0439a7d8d4399f22c.md) | 159 | `result-track:564839e0439a7d8d4399f22c8688b40cc0ad6260710905de1b586b35df435f86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
