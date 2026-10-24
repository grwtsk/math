# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11a7169e4e189c14178ca3e7c256f6e63a93541",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11a7169e4e189c14178ca3e7c256f6e63a93541`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/frobeniusmorphism--07119e62440a2608a752b9e1.md) | 64 | `declaration-track:07119e62440a2608a752b9e12efd5fa708155e82573fee1607c1069c77035372` |
| 2 | `instance` | [frobeniusMorphism_iso_of_preserves_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/frobeniusmorphism-iso-of-preserves-binary-products--937cca590177acbff0c31429.md) | 70 | `declaration-track:937cca590177acbff0c31429cc7740bb7506dd15a735e2ee102e9704c29c2fa1` |
| 3 | `def` | [expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/expcomparison--86816c00fd2da2c5956b84b0.md) | 83 | `declaration-track:86816c00fd2da2c5956b84b0276f8711525679244ad504ed5e31109fb000f7cb` |
| 4 | `theorem` | [expComparison_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/expcomparison-ev--31d12b5aff4e21384c56caf2.md) | 86 | `result-track:31d12b5aff4e21384c56caf267cdfab267bdf91de1a47d016765caf696e5465e` |
| 5 | `theorem` | [coev_expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/coev-expcomparison--466b52a6027db60eee99e00a.md) | 94 | `result-track:466b52a6027db60eee99e00a5fab78e2abcfee6f64e0c3f9d6945c448e2dc0ee` |
| 6 | `theorem` | [uncurry_expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/uncurry-expcomparison--dd224c820b60ecc785a801e5.md) | 102 | `result-track:dd224c820b60ecc785a801e5e61749a90dd8b42b35656dc158176e8475e93340` |
| 7 | `theorem` | [expComparison_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/expcomparison-whiskerleft--0eae0d789572265fb3880ebe.md) | 108 | `result-track:0eae0d789572265fb3880ebe68f26eb0efa9003a86856307a6b5cbad51af07bc` |
| 8 | `class` | [CartesianClosedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/cartesianclosedfunctor--85617d5fc76e7baeb8208c71.md) | 132 | `declaration-track:85617d5fc76e7baeb8208c71d05e612c0e27b3cd4f2522420dd2d43c69f6cba0` |
| 9 | `theorem` | [frobeniusMorphism_mate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/frobeniusmorphism-mate--ace2c28c3b23ce51eb7eebd8.md) | 137 | `result-track:ace2c28c3b23ce51eb7eebd80045de0dc15874c7f519333fca2b0155be4deb79` |
| 10 | `theorem` | [frobeniusMorphism_iso_of_expComparison_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/frobeniusmorphism-iso-of-expcomparison-iso--58ef04cb75bb06321a24df92.md) | 174 | `result-track:58ef04cb75bb06321a24df929ba389b2127965ffad7a6a2b31472efd3d13bdf5` |
| 11 | `theorem` | [expComparison_iso_of_frobeniusMorphism_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/expcomparison-iso-of-frobeniusmorphism-iso--cda599f40801b5866a345459.md) | 183 | `result-track:cda599f40801b5866a3454598d6f9c19f54479a69fb1f9cffa04d5c6f414c875` |
| 12 | `theorem` | [cartesianClosedFunctorOfLeftAdjointPreservesBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantf8405f39f5b4a4581293cc4e135835afcf7701fe29e08092123f2275b91fbf67.lean/declarations/cartesianclosedfunctorofleftadjointpreservesbinaryproducts--6bfd3788bff859c3fb8265a5.md) | 194 | `result-track:6bfd3788bff859c3fb8265a5be93f349c58a11c9007fe861eeefa6859e8e89e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
