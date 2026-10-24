# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PureCoherence.Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e19df25aa2991142913744e10775e4dc2b892f47",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e19df25aa2991142913744e10775e4dc2b892f47`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Datatypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [normalizeIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/normalizeisocomp--1f7b12fb0bcdb68fc41f5ae6.md) | 42 | `declaration-track:1f7b12fb0bcdb68fc41f5ae646ff0e0fb61d954707ee24922c1c24c61f76ae80` |
| 2 | `theorem` | [naturality_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-associator--43e82c44af9e1826a76ddc73.md) | 45 | `result-track:43e82c44af9e1826a76ddc73e644c3609205e59d1e0424b113b5e79d494b7b99` |
| 3 | `theorem` | [naturality_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-leftunitor--065a5093b54c08d25333e091.md) | 51 | `result-track:065a5093b54c08d25333e09146a096bbd86ac787a4bf3ff8dbe3352cb6cbbec0` |
| 4 | `theorem` | [naturality_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-rightunitor--d0b7934e3489376cb7341180.md) | 55 | `result-track:d0b7934e3489376cb73411803ee806eef5374cab0cb9dcde02514ea9749cbcb3` |
| 5 | `theorem` | [naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-id--3b1d0f1aa102f392e8aea751.md) | 59 | `result-track:3b1d0f1aa102f392e8aea7513f9235353d39d4605934d006bb2bada3c9f4b2c8` |
| 6 | `theorem` | [naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-comp--19084472b0be873f9416a095.md) | 63 | `result-track:19084472b0be873f9416a095f256d3d0dbb8cf43e53a57cd195fbd8cfc332f7a` |
| 7 | `theorem` | [naturality_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-whiskerleft--5070286b21aada8a7a57ef67.md) | 69 | `result-track:5070286b21aada8a7a57ef67ea268991ea100f073064fc3726bc1d8029c64bed` |
| 8 | `theorem` | [naturality_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-whiskerright--1d2a5f9bc85d0f952163d905.md) | 77 | `result-track:1d2a5f9bc85d0f952163d90510c0e03f16be936695fb135a00739d0426fdaf14` |
| 9 | `theorem` | [naturality_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-tensorhom--36e6cd9b6614a4eb18fabe8f.md) | 85 | `result-track:36e6cd9b6614a4eb18fabe8f3a528d8ac56864249a5a3cdd7514372b683493c1` |
| 10 | `theorem` | [naturality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/naturality-inv--bb53945ad0c9231003e4974d.md) | 95 | `result-track:bb53945ad0c9231003e4974d32443a48f346be9f5a1a3c689a1a38b5ced7b553` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/instance--483db7fa7fcaf3ae57edb4b3.md) | 102 | `declaration-track:483db7fa7fcaf3ae57edb4b379748e1d3b1f914469d38a73332f6cc4bc13a8a8` |
| 12 | `theorem` | [of_normalize_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/of-normalize-eq--bafc302034589400fcac17df.md) | 219 | `result-track:bafc302034589400fcac17dff79dab523720226f4ac10642acdef13f7bbab013` |
| 13 | `theorem` | [mk_eq_of_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/mk-eq-of-naturality--e076d2c5a9bb851b08fe46d4.md) | 229 | `result-track:e076d2c5a9bb851b08fe46d45dc0fb3f68f541f7ebedc30fb274f4e7010f3751` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/instance--de85dee1446473cbe6c4d317.md) | 244 | `declaration-track:de85dee1446473cbe6c4d317374c9010a4ad5aeaf0498ce271eecf53261c9284` |
| 15 | `def` | [pureCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/purecoherence--b1dd20d840e9b2a594c8c772.md) | 278 | `declaration-track:b1dd20d840e9b2a594c8c7725847efcd4c01f24cf1271c73f5aafb80cb415903` |
| 16 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/declarations/elab--ba407df740ced69f318b033c.md) | 282 | `declaration-track:ba407df740ced69f318b033c1a75fe487152b94f32cd53e5fc3fae5e0e217cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
