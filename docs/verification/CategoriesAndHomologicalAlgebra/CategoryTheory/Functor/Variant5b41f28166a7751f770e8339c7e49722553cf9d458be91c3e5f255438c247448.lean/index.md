# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Cartesian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frobeniusMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/frobeniusmorphism--1dc74cbc95d20093821d66e6.md) | 56 | `declaration-track:1dc74cbc95d20093821d66e68e2d78ed74605c8b493d249643317ce9efa6e63f` |
| 2 | `instance` | [frobeniusMorphism_iso_of_preserves_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/frobeniusmorphism-iso-of-preserves-binary-products--03d382431f290c860e97d970.md) | 62 | `declaration-track:03d382431f290c860e97d970190659d4ea9a4288896c693c8cf44bfdd28d161f` |
| 3 | `def` | [expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/expcomparison--e966f0d8248db4c80c2defac.md) | 75 | `declaration-track:e966f0d8248db4c80c2defacc355ea77fcb8fdf5afbba602981081f5839cbaa1` |
| 4 | `theorem` | [expComparison_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/expcomparison-ev--38613c7b0235875391e184d4.md) | 78 | `result-track:38613c7b0235875391e184d4555796196d1609f9630b1968096c3e993c6c9e12` |
| 5 | `theorem` | [coev_expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/coev-expcomparison--66dfadbb21592558d2e9ae59.md) | 86 | `result-track:66dfadbb21592558d2e9ae5989749bfe666def98d6bc328090f92523de96775f` |
| 6 | `theorem` | [uncurry_expComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/uncurry-expcomparison--9142961b98e9a9bb23b8b951.md) | 94 | `result-track:9142961b98e9a9bb23b8b95177e4bf71d90055159ce76017e12ca1b7154d56c0` |
| 7 | `theorem` | [expComparison_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/expcomparison-whiskerleft--872c7892084ee9ba903014cf.md) | 100 | `result-track:872c7892084ee9ba903014cf74495ae741cebe9990f127a92f2ba542c4ce6872` |
| 8 | `class` | [CartesianClosedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/cartesianclosedfunctor--ea52af6d27c23ed0ada98d7c.md) | 124 | `declaration-track:ea52af6d27c23ed0ada98d7c137c3c240fc3f99a11cf293986a7e00521e715cf` |
| 9 | `theorem` | [frobeniusMorphism_mate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/frobeniusmorphism-mate--9dddb2659178d4dcc618c954.md) | 129 | `result-track:9dddb2659178d4dcc618c95479cccb47819b36b0a2d0103a942ad2c4d23268b2` |
| 10 | `theorem` | [frobeniusMorphism_iso_of_expComparison_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/frobeniusmorphism-iso-of-expcomparison-iso--06f868475812ed21011e80a6.md) | 166 | `result-track:06f868475812ed21011e80a6e1557f88d937a47eba980f816b25519ec43c16cf` |
| 11 | `theorem` | [expComparison_iso_of_frobeniusMorphism_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/expcomparison-iso-of-frobeniusmorphism-iso--9836ecec54b9603be13924a7.md) | 175 | `result-track:9836ecec54b9603be13924a7f3c4fa88460f075dc9337d698f64ec71a45c77b5` |
| 12 | `theorem` | [cartesianClosedFunctorOfLeftAdjointPreservesBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/declarations/cartesianclosedfunctorofleftadjointpreservesbinaryproducts--c4d0e601c1c67b8792a3c555.md) | 186 | `result-track:c4d0e601c1c67b8792a3c5555b00277df11cf22280d38b1b9903f8fba38b2cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
