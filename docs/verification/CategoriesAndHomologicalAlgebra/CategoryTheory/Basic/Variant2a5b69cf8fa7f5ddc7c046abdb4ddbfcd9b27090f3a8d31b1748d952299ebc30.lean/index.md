# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e1e0363b4349e66c7874d7245fbc79dd83b81df",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e1e0363b4349e66c7874d7245fbc79dd83b81df`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean.json)

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
| 1 | `def` | [preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/preadditiveyonedaobj--d963873274a93dbf328eddb2.md) | 45 | `declaration-track:d963873274a93dbf328eddb2ffb976ae00a5b5f75a924daf434b78e55b373c48` |
| 2 | `def` | [preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/preadditiveyoneda--c9cc006e10a52c9cbe5b7589.md) | 59 | `declaration-track:c9cc006e10a52c9cbe5b75897d8428724e4ae0879d40713e2ad0f8874530361d` |
| 3 | `def` | [preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/preadditivecoyonedaobj--4f5799b15bfce0ed8b8e3e81.md) | 72 | `declaration-track:4f5799b15bfce0ed8b8e3e812573a35f482a3840e69d1c6d41ac2a4c4d93abac` |
| 4 | `def` | [preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/preadditivecoyoneda--3b5c6940a82e790585ac5e04.md) | 85 | `declaration-track:3b5c6940a82e790585ac5e044bfa1bbdcf7701cfd79e710dd5edb1e888f12c9d` |
| 5 | `instance` | [additive_yonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/additive-yonedaobj--8117c85a9f5bedb294308739.md) | 95 | `declaration-track:8117c85a9f5bedb294308739bdf6396c7dcea14b2aa7beaaaa6b4125f7544ff9` |
| 6 | `instance` | [additive_yonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/additive-yonedaobj--507df911fc1a19d1347d0ee2.md) | 98 | `declaration-track:507df911fc1a19d1347d0ee270f6a28d61d2e57e38df50c812feba29e138ed12` |
| 7 | `instance` | [additive_coyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/additive-coyonedaobj--1911f778c841c4890fe4b7ba.md) | 100 | `declaration-track:1911f778c841c4890fe4b7ba764e05622e0b9c2e5697e39db17e947a1d2030cd` |
| 8 | `instance` | [additive_coyonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/additive-coyonedaobj--4ef41e96e2f53d37f160ab61.md) | 103 | `declaration-track:4ef41e96e2f53d37f160ab61ee4cfcc50a7a665c5fca770b4f216dd49cf8d070` |
| 9 | `theorem` | [whiskering_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/whiskering-preadditiveyoneda--24620e276812d89bf60a6a0a.md) | 109 | `result-track:24620e276812d89bf60a6a0aa73a1a3110319810ca6acd066f2f421e6604198b` |
| 10 | `theorem` | [whiskering_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/whiskering-preadditivecoyoneda--403a8e881bc197f2045e3197.md) | 119 | `result-track:403a8e881bc197f2045e3197c2f5c8165d4f63c39112e8f975a1510ea6cd874e` |
| 11 | `instance` | [full_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/full-preadditiveyoneda--94b3c81b6ded84e72317289b.md) | 125 | `declaration-track:94b3c81b6ded84e72317289b1087a798013042efe6839fd50522b0ec7f8fdecd` |
| 12 | `instance` | [full_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/full-preadditivecoyoneda--309e7ab7b2eae1ba61af312d.md) | 132 | `declaration-track:309e7ab7b2eae1ba61af312dbf5170963ede7f725fa535d0459ef394e7808486` |
| 13 | `instance` | [faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/faithful-preadditiveyoneda--0ecf033378df07bd9be0e3fe.md) | 139 | `declaration-track:0ecf033378df07bd9be0e3feeaaf13a21220ef910476565b7a57fde9c758a5ba` |
| 14 | `instance` | [faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/faithful-preadditivecoyoneda--2fb6e7517cfe7770f089c67e.md) | 142 | `declaration-track:2fb6e7517cfe7770f089c67e29cf478b6ba408f54a10359e94c53681f8d9c303` |
| 15 | `def` | [preadditiveYonedaMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/preadditiveyonedamap--3eb51f01414a759439a63f08.md) | 155 | `declaration-track:3eb51f01414a759439a63f08cec12598da3db4635e6b4d6388def06fa8dc3750` |
| 16 | `def` | [_root_.AddCommGrpCat.preadditiveCoyonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2a5b69cf8fa7f5ddc7c046abdb4ddbfcd9b27090f3a8d31b1748d952299ebc30.lean/declarations/root-addcommgrpcat-preadditivecoyonedaiso--5fa3c0fb983bb30f2468cb8b.md) | 163 | `declaration-track:5fa3c0fb983bb30f2468cb8b0eccbd4828046a232ade8bf6642060decd128e5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
