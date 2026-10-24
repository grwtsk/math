# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f9b1d87664266fcb0c60e85561765e746f3fd69",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f9b1d87664266fcb0c60e85561765e746f3fd69`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/linearyoneda--63df1196068082cf109dea82.md) | 47 | `declaration-track:63df1196068082cf109dea820d764ea332e19346b35e2d0fb21b5ce2421fbbb5` |
| 2 | `def` | [linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/linearcoyoneda--c38cdfab90098f95b4877b7a.md) | 59 | `declaration-track:c38cdfab90098f95b4877b7aec5d2867e03cc8779b8508258634293b86aa8fcd` |
| 3 | `instance` | [linearYoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/linearyoneda-obj-additive--0cb1e9ab0d2a7efb25cca287.md) | 67 | `declaration-track:0cb1e9ab0d2a7efb25cca287dbe45358e8f4db20741bc62443bae52458e21ed6` |
| 4 | `instance` | [linearCoyoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/linearcoyoneda-obj-additive--7ea7ca32e9a43d754deb9925.md) | 69 | `declaration-track:7ea7ca32e9a43d754deb992519b27fbbd9ca9f27844d891045291ef2e194ff37` |
| 5 | `theorem` | [whiskering_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/whiskering-linearyoneda--1868925f9444956aae96de52.md) | 72 | `result-track:1868925f9444956aae96de520c8268d77831a97a4d5f996805bdd09ae3c8d63b` |
| 6 | `theorem` | [whiskering_linearYoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/whiskering-linearyoneda--ddc4abd24bac3f452a86421a.md) | 77 | `result-track:ddc4abd24bac3f452a86421a4535b81d0ef089213715f235ba2cbaf288990470` |
| 7 | `theorem` | [whiskering_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/whiskering-linearcoyoneda--038c1e123a40371807c017b8.md) | 83 | `result-track:038c1e123a40371807c017b88b3240c3cbe5c035f42fcf3f1f1d166728156ad4` |
| 8 | `theorem` | [whiskering_linearCoyoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/whiskering-linearcoyoneda--5b671a0255887ef9c96dd4ce.md) | 88 | `result-track:5b671a0255887ef9c96dd4ce82f638fba3c1102c58ea1902fd8f0dc116594b21` |
| 9 | `instance` | [full_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/full-linearyoneda--74f08a66e36195d04611dfb8.md) | 94 | `declaration-track:74f08a66e36195d04611dfb8d76241ba18a79b970032adf1a6df3ad33595db7e` |
| 10 | `instance` | [full_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/full-linearcoyoneda--4c91b6b7c092ed6ad7a12898.md) | 100 | `declaration-track:4c91b6b7c092ed6ad7a12898f9d28295863311720c11a562a065695914df1df5` |
| 11 | `instance` | [faithful_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/faithful-linearyoneda--7b92094ef0cc695f6354df08.md) | 106 | `declaration-track:7b92094ef0cc695f6354df0875257229c46d8e0052337e8a6b18900a6580281e` |
| 12 | `instance` | [faithful_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant3ab1cdfb3818da67f523bb7645dbddbcd4eb105d45718fc8d2fd53cd3d0dba42.lean/declarations/faithful-linearcoyoneda--a8023b562291c3cbdaaf969b.md) | 109 | `declaration-track:a8023b562291c3cbdaaf969bd4de441504802b95ad205e10e45bbd5a60966606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
