# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21f86509e1a5d0c1cba789237dc3c07ed622432",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21f86509e1a5d0c1cba789237dc3c07ed622432`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/piobjiso--a89e6f2e5142b518dae3de8d.md) | 29 | `declaration-track:a89e6f2e5142b518dae3de8d86fea5bcaeb8f1ee2a518865a8904f652b3e7f7a` |
| 2 | `theorem` | [piObjIso_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/piobjiso-hom-comp--c7b8074254a29ccf159cf391.md) | 34 | `result-track:c7b8074254a29ccf159cf3911b88e1429355fb15a8f25d4656bcf4215dc801ae` |
| 3 | `theorem` | [piObjIso_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/piobjiso-inv-comp--5b62c41341417117470c7f94.md) | 39 | `result-track:5b62c41341417117470c7f94bbb3f498a922a1993b75d0c5c99ec8dcfa3a77a2` |
| 4 | `def` | [sigmaObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/sigmaobjiso--ab03c9ec977f74181b16a3f4.md) | 53 | `declaration-track:ab03c9ec977f74181b16a3f481b2b85ede09d172a062a52fed2ee5e02b6e59d9` |
| 5 | `theorem` | [ι_comp_sigmaObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/comp-sigmaobjiso-hom--0347fbac2cfc7711cbcbfc95.md) | 58 | `result-track:0347fbac2cfc7711cbcbfc9537893d6c93e11e494c237d46b7e41f8e7bb47888` |
| 6 | `theorem` | [ι_comp_sigmaObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/declarations/comp-sigmaobjiso-inv--aa3d46d2e42e0a8ed8749389.md) | 63 | `result-track:aa3d46d2e42e0a8ed8749389295f307f30bbb620cfc0e784540211aa9180ce43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
