# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mon.Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cc58e70bab9a39c2db198d3e0faca06feafee14",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cc58e70bab9a39c2db198d3e0faca06feafee14`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_lift_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/lift-lift-assoc--ed63b7d4e30a300e17b54032.md) | 34 | `result-track:ed63b7d4e30a300e17b54032a6402c0720290b61c8f18ef9c203e9f2da51320e` |
| 2 | `theorem` | [lift_comp_one_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/lift-comp-one-left--b94a5bded99799460dcba9b3.md) | 40 | `result-track:b94a5bded99799460dcba9b34cb586b382b78218d8fbe8f921864e981accdefb` |
| 3 | `theorem` | [lift_comp_one_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/lift-comp-one-right--b95e36238cf3e91db9e5faf6.md) | 46 | `result-track:b95e36238cf3e91db9e5faf6738fa9b2ef194274c842cdd30b9b50b186c5c086` |
| 4 | `def` | [Mon_Class.ofRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-ofrepresentableby--2cb40efe0502f67c6b8da86c.md) | 56 | `declaration-track:2cb40efe0502f67c6b8da86cbfb5973fd7c765e731c8943047a603d098c2e899` |
| 5 | `abbrev` | [Hom.monoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/hom-monoid--4939649871ad72958623209e.md) | 92 | `declaration-track:4939649871ad72958623209ed57f57b363af2fc5d03fd9a4121cbafd5d6d1a97` |
| 6 | `lemma` | [Hom.one_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/hom-one-def--b09e246c7221d0222acc716a.md) | 118 | `result-track:b09e246c7221d0222acc716a3977477851534f84d4428a6fea7c1a93912c96d5` |
| 7 | `lemma` | [Hom.mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/hom-mul-def--598f49de6d342384442d26a0.md) | 119 | `result-track:598f49de6d342384442d26a0e633e9c69a349d20b47251217b609ba228c8245e` |
| 8 | `def` | [yonedaMonObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamonobj--b406b46f574c3471d4defd27.md) | 124 | `declaration-track:b406b46f574c3471d4defd27490541cb35f38bf45caad8bcda918eed94a0b782` |
| 9 | `def` | [yonedaMonObjIsoOfRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamonobjisoofrepresentableby--7d2f3a47f815e4854b4b2a33.md) | 142 | `declaration-track:7d2f3a47f815e4854b4b2a33b9e7171231aa0da5f82ebcf8db4fb1341bea3ea2` |
| 10 | `def` | [yonedaMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamon--e1fd7a8320545d2230e9fe87.md) | 159 | `declaration-track:e1fd7a8320545d2230e9fe87e57c2edd77af5caef720aeb0456a9cfe3de21114` |
| 11 | `lemma` | [yonedaMon_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamon-naturality--7169f7444b4123b3ca07e5c0.md) | 172 | `result-track:7169f7444b4123b3ca07e5c0fcc58f2a426d7131318d0d989e6e1ef8dcb51fd9` |
| 12 | `def` | [yonedaMonObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamonobjrepresentableby--e70aee1a6e4467664486cb31.md) | 177 | `declaration-track:e70aee1a6e4467664486cb3123867d239b45a0039bfe821d5955a3bd3768ffff` |
| 13 | `lemma` | [Mon_Class.ofRepresentableBy_yonedaMonObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-ofrepresentableby-yonedamonobjrepresentableby--0dc514f1666eb2e47f3f02f3.md) | 181 | `result-track:0dc514f1666eb2e47f3f02f3fee0304ad7bdf4a59b0ca91b242dbc53cbd86b6f` |
| 14 | `def` | [yonedaMonFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/yonedamonfullyfaithful--fba455de2eb13546ac0dd93c.md) | 190 | `declaration-track:fba455de2eb13546ac0dd93c6f723127ca48e19f61db4b9b2c31d0328beaa8b8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/instance--337654ffe7ac7927b8b93c01.md) | 214 | `declaration-track:337654ffe7ac7927b8b93c01273d5b7c31f532fa8e0d390dc61a40e55999ec36` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/instance--6b577025f3adf3e39d1aff53.md) | 215 | `declaration-track:6b577025f3adf3e39d1aff53a02e5e3e8d8ecad3310e2c8fa6dc798d30fc3a1d` |
| 17 | `lemma` | [essImage_yonedaMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/essimage-yonedamon--e6954ac7eac88ff752a69e20.md) | 217 | `result-track:e6954ac7eac88ff752a69e206503cc000f079f1d518524f1f71e9b376afd5e6b` |
| 18 | `lemma` | [Mon_Class.one_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-one-comp--9dd1ba27debcea48a62b6132.md) | 228 | `result-track:9dd1ba27debcea48a62b6132791372dffc0b02863053a8c41a8cb194ea4c4ed0` |
| 19 | `lemma` | [Mon_Class.mul_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-mul-comp--4d6a4d05dfe30aacd2c7476e.md) | 231 | `result-track:4d6a4d05dfe30aacd2c7476e0d6a87d2e27ee64ad9f7e53351107b632b70f604` |
| 20 | `lemma` | [Mon_Class.comp_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-comp-one--5aeab6e5b50ed55275ff07dc.md) | 235 | `result-track:5aeab6e5b50ed55275ff07dcaeb0ae95d8cf1b35e2c511274a9574c3066f0d3f` |
| 21 | `lemma` | [Mon_Class.comp_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-comp-mul--d834591b78ba828e83133669.md) | 239 | `result-track:d834591b78ba828e831336695fe033ea6ca36366f9268c7d431a9edc104e9b6a` |
| 22 | `lemma` | [Mon_Class.one_eq_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-one-eq-one--4a51be1107422750f3384a76.md) | 243 | `result-track:4a51be1107422750f3384a76ad83f629d6d2618028f8c7a06477c1b8281e762e` |
| 23 | `lemma` | [Mon_Class.mul_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantad15abca563bea4caf5cc0807a384039bd1b490d3e304395f1b8166311e56862.lean/declarations/mon-class-mul-eq-mul--bb4b52a4a7a95df73fb8a3e6.md) | 247 | `result-track:bb4b52a4a7a95df73fb8a3e6fbff901a4b554289995ee72f3ad97e03af1df6ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
