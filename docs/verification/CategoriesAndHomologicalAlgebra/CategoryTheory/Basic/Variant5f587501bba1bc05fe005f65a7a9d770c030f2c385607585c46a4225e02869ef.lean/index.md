# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7408e4fd011f1376bf2ce3be26db58e5bb6df21b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7408e4fd011f1376bf2ce3be26db58e5bb6df21b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/preadditiveyonedaobj--e660f980770d12646d9c0bdc.md) | 40 | `declaration-track:e660f980770d12646d9c0bdcad208ddc7ffb581cc268e7f5f23bc041897c18ff` |
| 2 | `def` | [preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/preadditiveyoneda--e173b101192e05394d73526b.md) | 52 | `declaration-track:e173b101192e05394d73526b7aff1e086253ac0365e1d31129e4bcd59266c8d8` |
| 3 | `def` | [preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/preadditivecoyonedaobj--52af8f37fe5ff56a62b46cf3.md) | 65 | `declaration-track:52af8f37fe5ff56a62b46cf3d14d5de7251022bdb5f025b5e3ebd049c6fa1d6a` |
| 4 | `def` | [preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/preadditivecoyoneda--8e30f87b2d663381eade5a1a.md) | 77 | `declaration-track:8e30f87b2d663381eade5a1ae467ff0e0fbb28c56611d55c0f15c3f2f845200f` |
| 5 | `instance` | [additive_yonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/additive-yonedaobj--cdfdef15c4eb99f6873592c3.md) | 87 | `declaration-track:cdfdef15c4eb99f6873592c3d4e4003c1fa31361b07678edab3c86a9342d1457` |
| 6 | `instance` | [additive_yonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/additive-yonedaobj--42b62ce4d0f1597b8f15b617.md) | 89 | `declaration-track:42b62ce4d0f1597b8f15b6179716b40a0825ed4eae176cc73536a23ffee00c6a` |
| 7 | `instance` | [additive_coyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/additive-coyonedaobj--f3b18b3f75941f49e0e27d4e.md) | 91 | `declaration-track:f3b18b3f75941f49e0e27d4ebbe8d481982a770867c722f6868a1f71c469523f` |
| 8 | `instance` | [additive_coyonedaObj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/additive-coyonedaobj--279d3575da8fe95fa658fcfb.md) | 93 | `declaration-track:279d3575da8fe95fa658fcfb75cd225b5e3b522759a5430ed4689e4b9debba21` |
| 9 | `theorem` | [whiskering_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/whiskering-preadditiveyoneda--924c56202301e1ddc03e6ea6.md) | 99 | `result-track:924c56202301e1ddc03e6ea6d34ad225318a39b96367f3be1bd55f6aa80dc2f5` |
| 10 | `theorem` | [whiskering_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/whiskering-preadditivecoyoneda--68a598b5aee221a42ec01f14.md) | 109 | `result-track:68a598b5aee221a42ec01f14ff496ebe4eecbe619118a96166dd10f85b86d070` |
| 11 | `instance` | [full_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/full-preadditiveyoneda--f6bdc35fb6302fdfe33095c5.md) | 115 | `declaration-track:f6bdc35fb6302fdfe33095c53edb10dc2cecd63655c1b3a5bbd23956c23128af` |
| 12 | `instance` | [full_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/full-preadditivecoyoneda--a8d952ca4a34e5571580d932.md) | 122 | `declaration-track:a8d952ca4a34e5571580d932f8a889cac90edf8b56642ffaf67349c71bbd9b69` |
| 13 | `instance` | [faithful_preadditiveYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/faithful-preadditiveyoneda--268ffe5c2d709e996a11e484.md) | 129 | `declaration-track:268ffe5c2d709e996a11e4846e43dbcb7f255ffa4b6e3429e1192ab86438f239` |
| 14 | `instance` | [faithful_preadditiveCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/faithful-preadditivecoyoneda--34e61f49fbb5b889db4eefb4.md) | 132 | `declaration-track:34e61f49fbb5b889db4eefb4499cbc3e2ed77be6ea9808f605af3ec9bade9279` |
| 15 | `def` | [preadditiveYonedaMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5f587501bba1bc05fe005f65a7a9d770c030f2c385607585c46a4225e02869ef.lean/declarations/preadditiveyonedamap--2330cd5e290233147db06b8d.md) | 143 | `declaration-track:2330cd5e290233147db06b8d5cfe824aa07cb81062a06c40320212915bcae2ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
