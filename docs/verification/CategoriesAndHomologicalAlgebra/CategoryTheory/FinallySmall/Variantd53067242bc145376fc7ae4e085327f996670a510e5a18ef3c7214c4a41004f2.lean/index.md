# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinallySmall.Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d9f164e36af4cf1916e3e22c1f10fc685962de2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d9f164e36af4cf1916e3e22c1f10fc685962de2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall--6e58655b3bb0b73ff7bacca4.md) | 38 | `declaration-track:6e58655b3bb0b73ff7bacca4767fe6df1e6fbc476abf1cda31d6cb68591583e6` |
| 2 | `theorem` | [FinallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-mk--ed2c6fc77b6f43883cf914a9.md) | 43 | `result-track:ed2c6fc77b6f43883cf914a98ccd535d3b091fad392b858a041ba40c6e7f265d` |
| 3 | `def` | [FinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finalmodel--74fab2e71c989176920ec9ed.md) | 48 | `declaration-track:74fab2e71c989176920ec9edc216cc83283ee0921d6e4bd7f13a976970345b41` |
| 4 | `instance` | [smallCategoryFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/smallcategoryfinalmodel--45c9feef5e099563fa36f2f2.md) | 51 | `declaration-track:45c9feef5e099563fa36f2f2700620a4243cd4d6a375d0426a9cd09e7397df6a` |
| 5 | `def` | [fromFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/fromfinalmodel--2c64da1d82384e3439433cb3.md) | 56 | `declaration-track:2c64da1d82384e3439433cb30f81613da3105cae433a47f20c496b308cac8537` |
| 6 | `instance` | [final_fromFinalModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/final-fromfinalmodel--e59d0230119ce416d8ea2669.md) | 60 | `declaration-track:e59d0230119ce416d8ea2669ac3f443d8f0b1073255dfa3045fe0b658cd9a12e` |
| 7 | `theorem` | [finallySmall_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-of-essentiallysmall--86bad0c3eb4de12c42aae2c8.md) | 64 | `result-track:86bad0c3eb4de12c42aae2c801fe3f3e8f22e0f14694c885f50abe6f751a5b3a` |
| 8 | `theorem` | [finallySmall_of_final_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-of-final-of-finallysmall--8c0eaa44a5dc3d7d1810ca52.md) | 70 | `result-track:8c0eaa44a5dc3d7d1810ca52b324d7612270de0e0ec6606aeac354493f1049a1` |
| 9 | `theorem` | [finallySmall_of_final_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-of-final-of-essentiallysmall--c027de2d5c98b79bcb98e1a6.md) | 75 | `result-track:c027de2d5c98b79bcb98e1a6d69655a19357d20b49386dbb68c390a5db78ffbb` |
| 10 | `class` | [InitiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall--87923c14688a0f6083f87659.md) | 87 | `declaration-track:87923c14688a0f6083f87659db20f1dee4ee39c99debdc57a15a31b21384c007` |
| 11 | `theorem` | [InitiallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-mk--120e0b2405dfd10f6117429d.md) | 92 | `result-track:120e0b2405dfd10f6117429d2a4e7e19323013e36892486beca292e529e09d3a` |
| 12 | `def` | [InitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initialmodel--620583ecd30273176fae3f97.md) | 97 | `declaration-track:620583ecd30273176fae3f97f5232f934f794c81e7e29f1d13c63f17e57ef98e` |
| 13 | `instance` | [smallCategoryInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/smallcategoryinitialmodel--f9130c75304db42eb60f882a.md) | 100 | `declaration-track:f9130c75304db42eb60f882a7b8495893903f494567d188911292d53a63de1d0` |
| 14 | `def` | [fromInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/frominitialmodel--2d36b1dad425fb8e62662ac6.md) | 105 | `declaration-track:2d36b1dad425fb8e62662ac68100cc6275951512bc4c1f5ab459e09dce90c87a` |
| 15 | `instance` | [initial_fromInitialModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initial-frominitialmodel--73f5049d67ad0eff179ba48a.md) | 109 | `declaration-track:73f5049d67ad0eff179ba48a1849744b352c166aa48ba06ed12c137084107989` |
| 16 | `theorem` | [initiallySmall_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-of-essentiallysmall--4eb2faa8e2b15a0f69787c2b.md) | 113 | `result-track:4eb2faa8e2b15a0f69787c2bb4bf539a7cbb2d4da2b1ea33a46894048328faac` |
| 17 | `theorem` | [initiallySmall_of_initial_of_initiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-of-initial-of-initiallysmall--6495ddd30c2b95a22dad0230.md) | 119 | `result-track:6495ddd30c2b95a22dad0230fc19dcf0761e0848bd49920dfa32946e6fdb4fd0` |
| 18 | `theorem` | [initiallySmall_of_initial_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-of-initial-of-essentiallysmall--0fa5930e47241040f579c3ba.md) | 124 | `result-track:0fa5930e47241040f579c3ba7700333581e476e259830d7bda432318bcf723df` |
| 19 | `theorem` | [FinallySmall.exists_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-exists-small-weakly-terminal-set--2be451af83adc50b9cb7061f.md) | 136 | `result-track:2be451af83adc50b9cb7061f2c5194e5bf47545d442d10c1d883f798ef7dbe8e` |
| 20 | `theorem` | [finallySmall_of_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-of-small-weakly-terminal-set--144dace80362a0e6d7d1ae66.md) | 143 | `result-track:144dace80362a0e6d7d1ae66f65e3084febe919a2a242bfec8d6506dbcf1ae98` |
| 21 | `theorem` | [finallySmall_iff_exists_small_weakly_terminal_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/finallysmall-iff-exists-small-weakly-terminal-set--e644dbc42494472e2f23e9b4.md) | 151 | `result-track:e644dbc42494472e2f23e9b4ff5bf3bd17bacc62869e3ffd1fce43660314d61d` |
| 22 | `theorem` | [InitiallySmall.exists_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-exists-small-weakly-initial-set--cc4df1b51a721abfe987510a.md) | 164 | `result-track:cc4df1b51a721abfe987510afbebded3c398af6b0b72755002abb99b9b2b9382` |
| 23 | `theorem` | [initiallySmall_of_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-of-small-weakly-initial-set--836ea16038518580aaca4b8a.md) | 171 | `result-track:836ea16038518580aaca4b8ae66da81849f775cca1f1ca0c7215f934b3cd9a84` |
| 24 | `theorem` | [initiallySmall_iff_exists_small_weakly_initial_set](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/initiallysmall-iff-exists-small-weakly-initial-set--47bd526172f1d2932262b5ff.md) | 179 | `result-track:47bd526172f1d2932262b5ffc24c70de84f0325c42b481593b26fff86efa2e3f` |
| 25 | `theorem` | [hasColimitsOfShape_of_finallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/hascolimitsofshape-of-finallysmall--e842e20cce4ab4c09468f558.md) | 189 | `result-track:e842e20cce4ab4c09468f5589d7bf8b2456d3f270475c8d5756b8c7e37c9a0ef` |
| 26 | `theorem` | [hasLimitsOfShape_of_initiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinallySmall/Variantd53067242bc145376fc7ae4e085327f996670a510e5a18ef3c7214c4a41004f2.lean/declarations/haslimitsofshape-of-initiallysmall--96b50548ecf0154a3f23d468.md) | 193 | `result-track:96b50548ecf0154a3f23d46825185b0c20e251b060eba46d31ec99ef12521d07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
