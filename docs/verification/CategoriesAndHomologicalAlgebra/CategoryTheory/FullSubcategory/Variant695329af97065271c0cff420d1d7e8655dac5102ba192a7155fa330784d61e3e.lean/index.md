# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullSubcategory.Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92c79ed59f839c704734277a286945c096b737b8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92c79ed59f839c704734277a286945c096b737b8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedcategory--098a3a64ac16744f1c9ac6f8.md) | 62 | `declaration-track:098a3a64ac16744f1c9ac6f861968093deed5042457314ce6fac67f5b985c03a` |
| 2 | `instance` | [InducedCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedcategory-hascoetosort--86b0cd3277be6523b0fe1993.md) | 68 | `declaration-track:86b0cd3277be6523b0fe1993f934f376fa3e0e991fc21ba27ce5a2c82be13434` |
| 3 | `instance` | [InducedCategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedcategory-category--293645b4b28f67acd31fa880.md) | 73 | `declaration-track:293645b4b28f67acd31fa88051d253ee7a2bf951e7d78f9aff53f12ae87c6909` |
| 4 | `def` | [inducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedfunctor--b3a458da5edc1352653e7bd1.md) | 83 | `declaration-track:b3a458da5edc1352653e7bd13b8c50cbfb7e6ac7be6fe0604886817078048f79` |
| 5 | `instance` | [InducedCategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedcategory-full--d9f4017e8d9e97817477e3ca.md) | 90 | `declaration-track:d9f4017e8d9e97817477e3caa7274c62b774ca6e8394eaab48d00613b7d3ac10` |
| 6 | `instance` | [InducedCategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/inducedcategory-faithful--bda530fb19b05ce7721c7539.md) | 93 | `declaration-track:bda530fb19b05ce7721c7539407be08da4c754a03c9bd8ca12e2c6c0dbd5887f` |
| 7 | `structure` | [FullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory--97949c222093735bd3e8e46b.md) | 111 | `declaration-track:97949c222093735bd3e8e46b7a9b933eb6febdd18c0929d24b8958b2362797f0` |
| 8 | `instance` | [FullSubcategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-category--1f3b731b584c64bbdf75858a.md) | 120 | `declaration-track:1f3b731b584c64bbdf75858ac103a5b99f00b6784904ea20563b1975fb53fda0` |
| 9 | `def` | [fullSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategoryinclusion--fb89b74273082fcbbbe8f83f.md) | 127 | `declaration-track:fb89b74273082fcbbbe8f83f269b17d0a6b1ef1ca79a7137ff0064809acf037e` |
| 10 | `theorem` | [fullSubcategoryInclusion.obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategoryinclusion-obj--bbb05297fd6c80b8a1575a70.md) | 132 | `result-track:bbb05297fd6c80b8a1575a702aab8addfc807971e1e23ba4f4ac3f20c34259ee` |
| 11 | `theorem` | [fullSubcategoryInclusion.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategoryinclusion-map--00aa1dbd1e4f8708a0f790d0.md) | 137 | `result-track:00aa1dbd1e4f8708a0f790d09585e65b4bd6148967763f7df372fe2b7e76b40e` |
| 12 | `instance` | [FullSubcategory.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-full--982e83376faa43a054514571.md) | 141 | `declaration-track:982e83376faa43a054514571f2f3e96b4dd714614e44d903f780c2910a3ce991` |
| 13 | `instance` | [FullSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-faithful--98b02cad0408b91c9313561d.md) | 145 | `declaration-track:98b02cad0408b91c9313561d94d0c3ae4b8442cc89898e0cf3124ffeba14aeec` |
| 14 | `def` | [FullSubcategory.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-map--e0613ac650843c09fb6473ad.md) | 153 | `declaration-track:e0613ac650843c09fb6473ad252fd0d2c23a4af1e62c7bc5bb3dba2bfb589580` |
| 15 | `instance` | [FullSubcategory.full_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-full-map--e0982b43dd209e65a867adae.md) | 160 | `declaration-track:e0982b43dd209e65a867adae6ef4ba97eb996bc8a6be9ad294797af482b1df5c` |
| 16 | `instance` | [FullSubcategory.faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-faithful-map--3a59638b468c64317400ef5d.md) | 163 | `declaration-track:3a59638b468c64317400ef5d7a1ef0b73f10b3e67f0921db2be3cd726b556a73` |
| 17 | `theorem` | [FullSubcategory.map_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-map-inclusion--c151a5c115232d58c4e707a5.md) | 167 | `result-track:c151a5c115232d58c4e707a565ac1026d3fc841164557e795a9e9e55b6b8889e` |
| 18 | `def` | [FullSubcategory.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-lift--df5b2c3c3d44e5b97f3038ba.md) | 179 | `declaration-track:df5b2c3c3d44e5b97f3038ba41248a7685f0ac36bbf1d57909c80fe893ebae48` |
| 19 | `theorem` | [FullSubcategory.lift_comp_inclusion_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-lift-comp-inclusion-eq--8252e5c1edfe30804ef51658.md) | 187 | `result-track:8252e5c1edfe30804ef516589f67ece77fdf6d432f9d5fc4bc71176bdac31834` |
| 20 | `def` | [FullSubcategory.lift_comp_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-lift-comp-inclusion--b2934b526052430050137b66.md) | 193 | `declaration-track:b2934b526052430050137b66286b031dffe1ab1c982cefae698e39771422c137` |
| 21 | `theorem` | [fullSubcategoryInclusion_obj_lift_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategoryinclusion-obj-lift-obj--e886666cc83689e28b5fa33e.md) | 199 | `result-track:e886666cc83689e28b5fa33e27f3466da8acd18d08e399f40405c62529c79734` |
| 22 | `theorem` | [fullSubcategoryInclusion_map_lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategoryinclusion-map-lift-map--a6ebaac8ea3127cd928b7959.md) | 205 | `result-track:a6ebaac8ea3127cd928b7959883fd706c9b38b52f7870a96f713e88d46a5a69f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/instance--f68fc8b324eea21556c84c55.md) | 211 | `declaration-track:f68fc8b324eea21556c84c553007ca9952940467d90abe070d5f474134c1c5c6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/instance--5943cfd9475a4d251f6e7d95.md) | 215 | `declaration-track:5943cfd9475a4d251f6e7d95adbdaedc2ab6fa647ed3ea930f7f0f4e01e437ab` |
| 25 | `theorem` | [FullSubcategory.lift_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variant695329af97065271c0cff420d1d7e8655dac5102ba192a7155fa330784d61e3e.lean/declarations/fullsubcategory-lift-comp-map--9829260f6e2c9fe8487c7f68.md) | 219 | `result-track:9829260f6e2c9fe8487c7f68d40c50a46d9e90354677ffd745f60f22cbc4338d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
