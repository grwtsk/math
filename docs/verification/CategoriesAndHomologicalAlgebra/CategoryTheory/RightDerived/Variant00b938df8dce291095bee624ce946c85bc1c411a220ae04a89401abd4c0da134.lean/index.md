# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52027e9922e56e6d17ddf35803e21b397f9368f0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52027e9922e56e6d17ddf35803e21b397f9368f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/isrightderivedfunctor--8baa71f4ab66f64fabf99e85.md) | 51 | `declaration-track:8baa71f4ab66f64fabf99e85ab1efdb5eedfa0a9884c7252faee15498ef6a4d0` |
| 2 | `lemma` | [isRightDerivedFunctor_iff_isLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/isrightderivedfunctor-iff-isleftkanextension--a4de0903d13176ad3eb681c8.md) | 55 | `result-track:a4de0903d13176ad3eb681c836ba6bdeb84e668742f7416767f252d59eb96dd0` |
| 3 | `lemma` | [isRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/isrightderivedfunctor-iff-of-iso--603e262eac18f1e56c527cd2.md) | 62 | `result-track:603e262eac18f1e56c527cd2b798fd6136056b0938c491419d8527c0c91b3e35` |
| 4 | `def` | [rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderiveddesc--5be1047b23a7f1f5929c6a08.md) | 73 | `declaration-track:5be1047b23a7f1f5929c6a08cce7509e73c519d7cdb67fee7231acb81b00642c` |
| 5 | `lemma` | [rightDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderived-fac--9e15e3b56e4b78603ac0cae4.md) | 78 | `result-track:9e15e3b56e4b78603ac0cae42c9c852b3fb9ec10619cf0ed24e4003194e8f62e` |
| 6 | `lemma` | [rightDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderived-fac-app--b41f60b5875965d6dd2f4254.md) | 84 | `result-track:b41f60b5875965d6dd2f425489a4bf8c3ed6f0a69a3f5c6fae4a4a57a09ea63a` |
| 7 | `lemma` | [rightDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderived-ext--ddacd754e55a1c0aee7886ff.md) | 90 | `result-track:ddacd754e55a1c0aee7886ffaaee78fa76cac36c857953936b094a70b906aba4` |
| 8 | `def` | [rightDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednattrans--244d1b0f4fd21cedf9dbaec4.md) | 97 | `declaration-track:244d1b0f4fd21cedf9dbaec419730dc3d860b766377182e77c3c8f7f7c4d218f` |
| 9 | `lemma` | [rightDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednattrans-fac--caf830b9740a3026e937170e.md) | 101 | `result-track:caf830b9740a3026e937170e8bc9ac7955ede85ba6fb6e2d2eb2994940a2fc24` |
| 10 | `lemma` | [rightDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednattrans-app--05d160c79a7efca29729ee6a.md) | 107 | `result-track:05d160c79a7efca29729ee6a99fcc8d111b73e67d41054c66ee7c59f3b5fe14a` |
| 11 | `lemma` | [rightDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednattrans-id--ccb549ea4056800fa1473a2b.md) | 114 | `result-track:ccb549ea4056800fa1473a2b0ee1702cf89d388d3e6a841ed73203853f4166a5` |
| 12 | `lemma` | [rightDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednattrans-comp--ea50b16422fade5eeae856a6.md) | 121 | `result-track:ea50b16422fade5eeae856a6993aad3def7a1bb883b6a863784124faf89cb13f` |
| 13 | `def` | [rightDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivednatiso--3896945674475eb3aa0e9726.md) | 129 | `declaration-track:3896945674475eb3aa0e97264031130db142e97f730f2fb3f4dd22209e4ce43f` |
| 14 | `abbrev` | [rightDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/rightderivedunique--c74a1c758c18e54608f279c8.md) | 135 | `declaration-track:c74a1c758c18e54608f279c8d3cc253354a07d4f8bd305eb9b74aab88360a149` |
| 15 | `lemma` | [isRightDerivedFunctor_iff_isIso_rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/isrightderivedfunctor-iff-isiso-rightderiveddesc--c59abe9b580d03e3102eb1b1.md) | 138 | `result-track:c59abe9b580d03e3102eb1b1543dd710c0b7030333441fc6e3854d7b22e1b557` |
| 16 | `class` | [HasRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/hasrightderivedfunctor--8038ca3c48ce6ecdbd00379c.md) | 152 | `declaration-track:8038ca3c48ce6ecdbd00379cb90acee925550994201ab02eb54af41fe46dbad3` |
| 17 | `lemma` | [hasRightDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/hasrightderivedfunctor-iff--641900c316c72d4beb7e024d.md) | 158 | `result-track:641900c316c72d4beb7e024db76ba3954e53c14bfe7f2355850e7958c42775e5` |
| 18 | `lemma` | [hasRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/hasrightderivedfunctor-iff-of-iso--c23c9945e939e32f94065941.md) | 167 | `result-track:c23c9945e939e32f94065941424463f8c926b4e38377b01fb9b14fd6da4eb784` |
| 19 | `lemma` | [HasRightDerivedFunctor.hasLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/hasrightderivedfunctor-hasleftkanextension--66570272b3980d91a8d399e4.md) | 174 | `result-track:66570272b3980d91a8d399e4f1c49561486de760a02e4afbd2c331493a573a3e` |
| 20 | `lemma` | [HasRightDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/hasrightderivedfunctor-mk--816ce59574e852c1a52fb5ba.md) | 180 | `result-track:816ce59574e852c1a52fb5bada4fa06e88c7832d7cbce05bd119a97061154089` |
| 21 | `def` | [totalRightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/totalrightderived--4b692aa45a5a9c83008b43e6.md) | 192 | `declaration-track:4b692aa45a5a9c83008b43e6e77ee93cf51d126d9970df5901b07a005633b07a` |
| 22 | `def` | [totalRightDerivedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/totalrightderivedunit--67d0a835cac8eee76b8ae358.md) | 197 | `declaration-track:67d0a835cac8eee76b8ae3581793c9fd8633e78e5cbffb6fe6921459c3ca6d37` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant00b938df8dce291095bee624ce946c85bc1c411a220ae04a89401abd4c0da134.lean/declarations/instance--e51a732dd8fba1d2dff4ebf9.md) | 201 | `declaration-track:e51a732dd8fba1d2dff4ebf9577d6acfb1d338047d3714b89c27bad566c48f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
