# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCardinalFiltered.Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c07023a2fd2c1a61dfc17a699082c4f2f4eb017",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c07023a2fd2c1a61dfc17a699082c4f2f4eb017`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WideEqualizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.CardinalArrow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCardinalFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/iscardinalfiltered--5980cd862637cfc97244ba6c.md) | 47 | `declaration-track:5980cd862637cfc97244ba6cd2159e94a540f026ffdfc388b0276d2f35ee3505` |
| 2 | `lemma` | [hasCardinalLT_arrow_walkingParallelFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/hascardinallt-arrow-walkingparallelfamily--f8dafa9c09805961b282c867.md) | 52 | `result-track:f8dafa9c09805961b282c867d263bb01971b182a25cb07ba9e6e2daaf436fe68` |
| 3 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/cocone--203a8ae71f763ced152d139c.md) | 65 | `declaration-track:203a8ae71f763ced152d139cdcf5c584ed687318cbf1bec1b35d25d1631f437e` |
| 4 | `lemma` | [of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/of-le--34b5a4be1a29f6a045d5c56b.md) | 76 | `result-track:34b5a4be1a29f6a045d5c56b2302e1fcbc5fd10ca2304db23352c63917889bfb` |
| 5 | `lemma` | [of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/of-equivalence--9599b70b31179daef3510d1f.md) | 81 | `result-track:9599b70b31179daef3510d1f523b1d88fc80192d92ae481b351aaa18f7c02f64` |
| 6 | `def` | [max](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/max--f07ec8340e29ef23c161f828.md) | 92 | `declaration-track:f07ec8340e29ef23c161f82850627b39e6698ca0e6f33182f565cbde042532cc` |
| 7 | `def` | [toMax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/tomax--e1d350936d3a61145a002fcf.md) | 97 | `declaration-track:e1d350936d3a61145a002fcf6a48d9d5d84ca302a34ed52c1bddcd9050c99b11` |
| 8 | `def` | [coeq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/coeq--8185faf55939dc1113f35677.md) | 110 | `declaration-track:8185faf55939dc1113f3567713a12c5bebc468a803f7a3471b48bfd7daccfcf3` |
| 9 | `def` | [coeqHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/coeqhom--d1605618d0c42ed9bb921a20.md) | 116 | `declaration-track:d1605618d0c42ed9bb921a20a064ac59241adec605a73a6bffc6b5a4faff6d52` |
| 10 | `def` | [toCoeq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/tocoeq--1b83d1ba0300210cee7f0191.md) | 123 | `declaration-track:1b83d1ba0300210cee7f0191f8f290908c5caa6ffc40cad9487fe129ad1082b6` |
| 11 | `lemma` | [coeq_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/coeq-condition--402a948b7f288af2ed5d6252.md) | 128 | `result-track:402a948b7f288af2ed5d625281656b3145f7d92b5298fcf94c4800dc23306264` |
| 12 | `lemma` | [isFiltered_of_isCardinalDirected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/isfiltered-of-iscardinaldirected--07de550418ada790fb919ac2.md) | 138 | `result-track:07de550418ada790fb919ac2eff7d3ab7eb97ecf8e774e7afbdeb2fc19175781` |
| 13 | `lemma` | [isCardinalFiltered_aleph0_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/iscardinalfiltered-aleph0-iff--caed65e5c6aa12bdb740742e.md) | 151 | `result-track:caed65e5c6aa12bdb740742e9a6488ae969aea8a13733a76f1ac06ca67213844` |
| 14 | `lemma` | [isCardinalFiltered_preorder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/iscardinalfiltered-preorder--c874069d34558d2b93982d16.md) | 163 | `result-track:c874069d34558d2b93982d16f96544f037d3672d60640fbc41a9ee2092d6dee3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/instance--fbee560754148f0e6c9cb6aa.md) | 175 | `declaration-track:fbee560754148f0e6c9cb6aa05105fa0fa502feebab5aa9cceb8d5868ef8315d` |
| 16 | `instance` | [isCardinalFiltered_under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalFiltered/Variant3b5c908b1fc070882d925c26ca3251f4d84a4b8e37f46d7f6803352036df8b2e.lean/declarations/iscardinalfiltered-under--e4b1c274a880d844dbdd9b84.md) | 187 | `declaration-track:e4b1c274a880d844dbdd9b84cbff9554189d839372d4b0c079ce05fa3224a073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
