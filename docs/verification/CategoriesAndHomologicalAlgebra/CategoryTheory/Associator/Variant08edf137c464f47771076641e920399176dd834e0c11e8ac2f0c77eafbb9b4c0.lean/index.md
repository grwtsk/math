# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09752d5433ba5507b20f5ce5ee2d6b6fd3987cc8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09752d5433ba5507b20f5ce5ee2d6b6fd3987cc8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean.json)

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
| 1 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/associator--04513a1131c30bd5025808ad.md) | 32 | `declaration-track:04513a1131c30bd5025808ad6eecf000a42cfa4712aaa63c157d4ba0c5c8372a` |
| 2 | `def` | [inverseAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/inverseassociator--a2f6eb262a7e49f457ac74c2.md) | 39 | `declaration-track:a2f6eb262a7e49f457ac74c2b33c3f9934f88496ea7729cf160c303ed3c326f3` |
| 3 | `def` | [associativity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/associativity--c11477e037e33787ecde598d.md) | 47 | `declaration-track:c11477e037e33787ecde598dd95ea951925979f831d16a2a457f7af8c3a54b38` |
| 4 | `instance` | [associatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/associatorisequivalence--fc1a11cb89a4e4286c7becb5.md) | 53 | `declaration-track:fc1a11cb89a4e4286c7becb5541fdfec273e171f6c9ccf3b77de82b6277ff9eb` |
| 5 | `instance` | [inverseAssociatorIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/inverseassociatorisequivalence--491eb4976cd7a1238e89e953.md) | 56 | `declaration-track:491eb4976cd7a1238e89e9532934a7cbe39e3cc0943301aeb718dd10943d9970` |
| 6 | `def` | [prodFunctorToFunctorProdAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/prodfunctortofunctorprodassociator--afe4c9ab0f9598aa11f9443a.md) | 65 | `declaration-track:afe4c9ab0f9598aa11f9443a0cc7e12cafa3cd0b83591e6ccbd556801b770af5` |
| 7 | `def` | [functorProdToProdFunctorAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/functorprodtoprodfunctorassociator--402265efbbc8cc67cbbd4e23.md) | 74 | `declaration-track:402265efbbc8cc67cbbd4e236994ba4034bb12d43f1381cf5cd8597f28398a1c` |
| 8 | `def` | [prodμ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0.lean/declarations/prod--fa9425642538e51eb4d02828.md) | 87 | `declaration-track:fa9425642538e51eb4d0282899c4f4a135514c4ebbe504c4de778d64148f76e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
