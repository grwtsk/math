# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NoetherianObject.Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47fcacc71516d65eb17c0ed0f70e04e864c44d5c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47fcacc71516d65eb17c0ed0f70e04e864c44d5c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ContainsZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject--54b81414abed57f84a398099.md) | 50 | `declaration-track:54b81414abed57f84a398099765d9c3b0ca2a913c79ca19e1c50a87cfac5f337` |
| 2 | `abbrev` | [IsNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject--440ff280bfdecd6e5e59eea2.md) | 57 | `declaration-track:440ff280bfdecd6e5e59eea2d5539e118890c43d49ebde4c2993728b6e6f1212` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/instance--9cda2a6cc43a503f76a721b6.md) | 59 | `declaration-track:9cda2a6cc43a503f76a721b6af1d2337bebf2b6c60f2b197519bd988b9adf9c8` |
| 4 | `lemma` | [isNoetherianObject_iff_monotone_chain_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject-iff-monotone-chain-condition--0a94b306c75654a94a375b57.md) | 62 | `result-track:0a94b306c75654a94a375b57fe13c3ddfa723559e1d57b0cf1b2644dbb5989f3` |
| 5 | `lemma` | [monotone_chain_condition_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/monotone-chain-condition-of-isnoetherianobject--a23d599b95d000d3ae2b36af.md) | 70 | `result-track:a23d599b95d000d3ae2b36aff8a39825e3bedf04df345041ba1c8c08a6151630` |
| 6 | `lemma` | [isNoetherianObject_iff_not_strictMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject-iff-not-strictmono--9ef0b45113f06a3c3f72bedc.md) | 75 | `result-track:9ef0b45113f06a3c3f72bedca0c7ca08dc028ee5a34f4aac249c8a9a5afa3984` |
| 7 | `lemma` | [not_strictMono_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/not-strictmono-of-isnoetherianobject--7f3cc50c572d30ba137028fc.md) | 84 | `result-track:7f3cc50c572d30ba137028fc44443f5e5eb6d68b1eed481604379b0e7db80c0b` |
| 8 | `lemma` | [isNoetherianObject_iff_isEventuallyConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject-iff-iseventuallyconstant--8cf2a130da0c5e2d99415c9a.md) | 89 | `result-track:8cf2a130da0c5e2d99415c9a33a677284e4aac05270719a79594839e65e3a0a8` |
| 9 | `lemma` | [isEventuallyConstant_of_isNoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/iseventuallyconstant-of-isnoetherianobject--fb902f7970a6cf1f9823543f.md) | 106 | `result-track:fb902f7970a6cf1f9823543f2621d98268a1c17ebad155eccca4e2363451ff2b` |
| 10 | `lemma` | [isNoetherianObject_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject-of-iszero--215df0c4061a751f7ff97989.md) | 112 | `result-track:215df0c4061a751f7ff97989f2aba1d48beb169be266f8c16678f2d9def9aad7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/instance--544ceb715b42fd520fa4f081.md) | 118 | `declaration-track:544ceb715b42fd520fa4f0815726914518d4ae020beef72fb9675e01dd1d404f` |
| 12 | `lemma` | [isNoetherianObject_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/isnoetherianobject-of-mono--4ff2076e6420b8b9aa8e5797.md) | 123 | `result-track:4ff2076e6420b8b9aa8e5797607490576fb5a7b0498af384819ca42c4289cccc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant68f81c973f53634b4abb39d0e604f0b7813b8f61bb7d0362b5a0e34ee44b401e.lean/declarations/instance--ee992c324aaa8393b36c44c6.md) | 131 | `declaration-track:ee992c324aaa8393b36c44c6abfc9d481d938370f52be00a1d26aaae6748c2b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
