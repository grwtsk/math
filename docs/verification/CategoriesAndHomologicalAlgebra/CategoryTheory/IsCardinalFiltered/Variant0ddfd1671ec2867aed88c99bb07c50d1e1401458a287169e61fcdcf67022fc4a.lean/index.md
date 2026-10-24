# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalFiltered.Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "024e71ae2d163eb6a1d8893b9ae3292b51d836fa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `024e71ae2d163eb6a1d8893b9ae3292b51d836fa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WideEqualizers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.CardinalArrow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCardinalFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/iscardinalfiltered--17f22a37f7067277b00d611c.md) | 39 | `declaration-track:17f22a37f7067277b00d611cd23460160df2ab2319e185f8a90774c0eba31948` |
| 2 | `lemma` | [hasCardinalLT_arrow_walkingParallelFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/hascardinallt-arrow-walkingparallelfamily--656ad495e902d0b342ecbfde.md) | 44 | `result-track:656ad495e902d0b342ecbfdea140975b27bdb206ad120d12ad1e395b1a6d6fb3` |
| 3 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/cocone--0f050440f0886a460e4486f6.md) | 57 | `declaration-track:0f050440f0886a460e4486f6c305f5fe0f2c1654d35f73cbf3b260117ecf8043` |
| 4 | `lemma` | [of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/of-le--216efbeebbc1d412dca1dbbf.md) | 68 | `result-track:216efbeebbc1d412dca1dbbf97de78d50ba431e9e55f63fb42a22eecd6c4ebb0` |
| 5 | `lemma` | [of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/of-equivalence--0f27e511f5814801c34afe61.md) | 73 | `result-track:0f27e511f5814801c34afe61b00351a8e68d237ef225ecb27f807bcb30bbdf6a` |
| 6 | `def` | [max](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/max--33005a73a2a9af0096a7e445.md) | 84 | `declaration-track:33005a73a2a9af0096a7e445bc45de4ca258e12175374e96f407e431637c6c20` |
| 7 | `def` | [toMax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/tomax--f62f335ee9c041b82235c45c.md) | 89 | `declaration-track:f62f335ee9c041b82235c45c4a295359e2e04f575a190ad60ac2cc3abc5ad6ad` |
| 8 | `def` | [coeq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/coeq--83085d7cfcdbcd66e94c8617.md) | 102 | `declaration-track:83085d7cfcdbcd66e94c86179257e838261bc716e8d2120af0d3f9c9b3972ba2` |
| 9 | `def` | [coeqHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/coeqhom--51f4a7ad6493a50ed719bf27.md) | 108 | `declaration-track:51f4a7ad6493a50ed719bf276e0142097f8ee94ce09e3e28aa7ab9b5a62aeb2f` |
| 10 | `def` | [toCoeq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/tocoeq--1f1863273e5b5dfdcd666cf4.md) | 115 | `declaration-track:1f1863273e5b5dfdcd666cf43e486aa2db30bcc951cf4d539a962f6fa30ad02d` |
| 11 | `lemma` | [coeq_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/coeq-condition--783401fd3ea4abdc1d3ea136.md) | 120 | `result-track:783401fd3ea4abdc1d3ea1361f9b1f9f205cdde951228cd1fc45300e6ba674dd` |
| 12 | `lemma` | [isFiltered_of_isCardinalDirected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/isfiltered-of-iscardinaldirected--8aaa32b936a3fa9b3ebb5df3.md) | 130 | `result-track:8aaa32b936a3fa9b3ebb5df39b5c4c33756057718c05ac822c83cdcc047d675f` |
| 13 | `lemma` | [isCardinalFiltered_aleph0_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/iscardinalfiltered-aleph0-iff--48038b9e1c4ad2aba36b156d.md) | 143 | `result-track:48038b9e1c4ad2aba36b156d70efd256f308e960747f3bb0837ad8fb2a1c985d` |
| 14 | `lemma` | [isCardinalFiltered_preorder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/iscardinalfiltered-preorder--694752b84bdf203c2281a7e2.md) | 155 | `result-track:694752b84bdf203c2281a7e22d601126293f760486d0a39d0700b0dadfdfe2fb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/instance--147f7fe4929e652da15a53b0.md) | 167 | `declaration-track:147f7fe4929e652da15a53b00067e00fa97c82d4d36f4b90621e3b8a9edc096c` |
| 16 | `instance` | [isCardinalFiltered_under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant0ddfd1671ec2867aed88c99bb07c50d1e1401458a287169e61fcdcf67022fc4a.lean/declarations/iscardinalfiltered-under--c9f8064cd66524ae40f2233e.md) | 179 | `declaration-track:c9f8064cd66524ae40f2233ee58f990c90909ff0240df618bb0bb0f18071da33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
