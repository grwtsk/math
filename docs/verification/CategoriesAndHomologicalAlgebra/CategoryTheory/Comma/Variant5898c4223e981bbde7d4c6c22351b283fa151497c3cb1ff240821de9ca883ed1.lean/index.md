# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c06f2853e9a6e628d592693bb950676d2bc2171e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c06f2853e9a6e628d592693bb950676d2bc2171e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectsubobject--aa5fceebafeed5c157f360fc.md) | 49 | `declaration-track:aa5fceebafeed5c157f360fc9ebc49ba3f060154899ee444fa6232bc978d87f3` |
| 2 | `theorem` | [projectSubobject_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectsubobject-mk--dea9892ea888fdea5a96726b.md) | 58 | `result-track:dea9892ea888fdea5a96726b42a67a832c917bdc9fcc1923ebb0b5bc86c57acc` |
| 3 | `theorem` | [projectSubobject_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectsubobject-factors--b79959db3694faa3a7b79df9.md) | 63 | `result-track:b79959db3694faa3a7b79df9d43c8ed5ab88e8391fb80feb125bbf4907e0676d` |
| 4 | `def` | [liftSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/liftsubobject--8dc4a1f497f935e0713c3a69.md) | 75 | `declaration-track:8dc4a1f497f935e0713c3a6954479709ad1f4935f159ad43a179da6e7217a3bf` |
| 5 | `theorem` | [lift_projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/lift-projectsubobject--4161d3e76414799f3f084273.md) | 82 | `result-track:4161d3e76414799f3f0842734750f25aa5b914320451993bce80f69705a6155b` |
| 6 | `def` | [subobjectEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/subobjectequiv--ea931c80449701a04a527e43.md) | 99 | `declaration-track:ea931c80449701a04a527e435c8e1d020ba0fc03672b9a3d1bbf519419f4306e` |
| 7 | `instance` | [wellPowered_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/wellpowered-structuredarrow--eb6e47db7c1d338523b869c6.md) | 119 | `declaration-track:eb6e47db7c1d338523b869c68db959d1d7917a1b859a82ddc28048102737a6b2` |
| 8 | `def` | [projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectquotient--21fc26dcff2a72bf9a002157.md) | 132 | `declaration-track:21fc26dcff2a72bf9a002157ae30cc3ce94e2f88fa44e4fb2954c31a6bf3051a` |
| 9 | `theorem` | [projectQuotient_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectquotient-mk--ae0e71a0d863ca9cb4aabf0e.md) | 142 | `result-track:ae0e71a0d863ca9cb4aabf0ef0cc6b9a4787bbc85064c16710d58ab9807f3b79` |
| 10 | `theorem` | [projectQuotient_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/projectquotient-factors--de0f9af11548295627fc1c2d.md) | 148 | `result-track:de0f9af11548295627fc1c2d639afc845b37abef9199233d72e458bdee46a1d6` |
| 11 | `def` | [liftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/liftquotient--e502d5e08b3432cd9315e769.md) | 161 | `declaration-track:e502d5e08b3432cd9315e769ab815c0bdde9efa4f258ab06757bef1d9d725b24` |
| 12 | `theorem` | [unop_left_comp_underlyingIso_hom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/unop-left-comp-underlyingiso-hom-unop--9d2037bdcd8d1010edc65b5f.md) | 168 | `result-track:9d2037bdcd8d1010edc65b5fe310217e1e47dab7963b7e3cbb569bcc8cd6e367` |
| 13 | `theorem` | [lift_projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/lift-projectquotient--5521f262c1eedce2e2536bba.md) | 180 | `result-track:5521f262c1eedce2e2536bba6d7d3ba220e09e713ef5d31883fc81c39e1ce29f` |
| 14 | `theorem` | [unop_left_comp_ofMkLEMk_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/unop-left-comp-ofmklemk-unop--e3c1ee59e7a7e33fdf67f7f8.md) | 195 | `result-track:e3c1ee59e7a7e33fdf67f7f806c61f4ab651c570c535968900b5fb08e2417877` |
| 15 | `def` | [quotientEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/quotientequiv--87b043775e7caa9a88ca9a65.md) | 209 | `declaration-track:87b043775e7caa9a88ca9a65f6acc65697935933adbdd091b3e119764522848a` |
| 16 | `instance` | [well_copowered_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant5898c4223e981bbde7d4c6c22351b283fa151497c3cb1ff240821de9ca883ed1.lean/declarations/well-copowered-costructuredarrow--a7190b81b7fcfd456e1a2511.md) | 237 | `declaration-track:a7190b81b7fcfd456e1a2511e80ec6a334b19ab34c5e8a8917ec4211b0952a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
