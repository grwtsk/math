# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CechNerve.Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8545d54209844596b9d8252ef425254a2660476b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8545d54209844596b9d8252ef425254a2660476b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Arrow` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechnerve--6fa6a68e9a4f31c06932c4ec.md) | 53 | `declaration-track:6fa6a68e9a4f31c06932c4ec110da82d64077ff7dae6409625f0c549e59df76f` |
| 2 | `def` | [mapCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/mapcechnerve--60873b42a9a4f7df602bfce1.md) | 61 | `declaration-track:60873b42a9a4f7df602bfce1a4c043bb1b133eb86e3972967c0af9b3c1a458e1` |
| 3 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/augmentedcechnerve--9cad628eaf00f43304f264ec.md) | 72 | `declaration-track:9cad628eaf00f43304f264ec5ca88fd7cfc3ca68ae1f7ab4331ec65ba1c89bbc` |
| 4 | `def` | [mapAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/mapaugmentedcechnerve--089aa23496502c1c7edc7237.md) | 80 | `declaration-track:089aa23496502c1c7edc723777a25d2911bd170eaaef4a15407c0ac14106af66` |
| 5 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechnerve--a0d4ff4b4f86f715ac03485e.md) | 99 | `declaration-track:a0d4ff4b4f86f715ac03485ec63cda9bf90af8e1de152a518ad81187de23bd18` |
| 6 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/augmentedcechnerve--7043a85ad0c44fa91175e4b7.md) | 106 | `declaration-track:7043a85ad0c44fa91175e4b7f543670405d5af04a0aa327a7f0fe008f1357a1a` |
| 7 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/equivalencerighttoleft--312d80825304145eae7953cf.md) | 113 | `declaration-track:312d80825304145eae7953cf0ecdab698fed68a4acd10c94e0edbeafcd0b675e` |
| 8 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/equivalencelefttoright--64dbf14ef44077073c5873c2.md) | 125 | `declaration-track:64dbf14ef44077073c5873c2fcda741fe6bb3eeb75f0e10b112aaa0f9eeef9dd` |
| 9 | `def` | [cechNerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechnerveequiv--587b2e46a539cbd019961dc5.md) | 148 | `declaration-track:587b2e46a539cbd019961dc5942e18c521ba3ab097516eb05ec3243c6ccf5bba` |
| 10 | `abbrev` | [cechNerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechnerveadjunction--4d17e0b753fb9004e4a7f8f3.md) | 179 | `declaration-track:4d17e0b753fb9004e4a7f8f35dc7ad1ee78ecb39a8de6d4282f27ee7cb54eae3` |
| 11 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechconerve--0b93306e423600eaff84a510.md) | 198 | `declaration-track:0b93306e423600eaff84a510c6b5dd2c22bab9b54bfcd379c7f7fd78ac42b06d` |
| 12 | `def` | [mapCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/mapcechconerve--f0062fae75d15b65aed7ef83.md) | 208 | `declaration-track:f0062fae75d15b65aed7ef8329d8af2b179047b47fb2246935b98d026682d92b` |
| 13 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/augmentedcechconerve--5ae79b8f2708c533d357be9d.md) | 219 | `declaration-track:5ae79b8f2708c533d357be9dfe61521c9fa28ce31dc8c80b488db05032f3aa58` |
| 14 | `def` | [mapAugmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/mapaugmentedcechconerve--8f119a261f78e6a9d0d4860f.md) | 228 | `declaration-track:8f119a261f78e6a9d0d4860f9b27b9f05f6c53eacb3e652f003527fe9cd2e8a1` |
| 15 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechconerve--e5a9345d87c2a2eafb2d0f38.md) | 247 | `declaration-track:e5a9345d87c2a2eafb2d0f38a56d5d6b2f9b4454f22f5165b391696d2e992027` |
| 16 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/augmentedcechconerve--0977b0d2ccfc6fb3bd44588f.md) | 254 | `declaration-track:0977b0d2ccfc6fb3bd44588f903fe48f1358e79c7c1f559011a6be72c97a1ebb` |
| 17 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/equivalencelefttoright--fccdbf92eeabfce531359297.md) | 261 | `declaration-track:fccdbf92eeabfce5313592975aba16dd46a1bf6cfe0b49e8d999acb2ffbbb5f2` |
| 18 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/equivalencerighttoleft--8b324477e74dcf808579fce1.md) | 274 | `declaration-track:8b324477e74dcf808579fce13fc20b12a9df66a08aad819f2af74606be0c49e4` |
| 19 | `def` | [cechConerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechconerveequiv--45760ae43ee7e96690e809f9.md) | 304 | `declaration-track:45760ae43ee7e96690e809f9d0b37c3693193d4673be6bc57646d15290204a36` |
| 20 | `abbrev` | [cechConerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechconerveadjunction--ebb6ba023ecab2df78860803.md) | 337 | `declaration-track:ebb6ba023ecab2df78860803ad22444e8c37c38aee2de0b87e4e3ca5cdccba69` |
| 21 | `def` | [cechNerveTerminalFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/cechnerveterminalfrom--bafaaedaebb8ef02198489ed.md) | 344 | `declaration-track:bafaaedaebb8ef02198489eda6c6ba012f30cfe223a22af9d9f55b4354d33e77` |
| 22 | `def` | [wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/widecospan--e8b49f75a073da1eb8794785.md) | 355 | `declaration-track:e8b49f75a073da1eb87947850c74e9c0692d8441745153eb6a56b6be2c90da0b` |
| 23 | `instance` | [uniqueToWideCospanNone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/uniquetowidecospannone--574fb5010328c98f89caf41a.md) | 359 | `declaration-track:574fb5010328c98f89caf41ae411fdcf77dfbc76fd9f11873e40fdf0766c0d34` |
| 24 | `def` | [wideCospan.limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/widecospan-limitcone--b28188441df335aac950f601.md) | 367 | `declaration-track:b28188441df335aac950f6015e231f0764d34f154d27ca213c2560f3fb182ede` |
| 25 | `instance` | [hasWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/haswidepullback--a42c565d91c01e56db46c0fe.md) | 391 | `declaration-track:a42c565d91c01e56db46c0fead8f4a7fc5980a92f3e39628306b7fa03f1c88f8` |
| 26 | `instance` | [hasWidePullback'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/haswidepullback--a0f245fcce25c5dbebeea20c.md) | 400 | `declaration-track:a0f245fcce25c5dbebeea20c38d6d5ec5f55a971274d0453a0f91188268861f8` |
| 27 | `instance` | [hasLimit_wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/haslimit-widecospan--656b9a39cd2ccee116402c49.md) | 407 | `declaration-track:656b9a39cd2ccee116402c497f2dc4fa86aac60c53f061fa6f7ce980c2c22c54` |
| 28 | `def` | [wideCospan.limitIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/widecospan-limitisopi--b9a5cd57ba07e6da7622c5d0.md) | 411 | `declaration-track:b9a5cd57ba07e6da7622c5d0ef1e059ba357f8b4fc7d62a33930d3df556d3867` |
| 29 | `lemma` | [wideCospan.limitIsoPi_inv_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/widecospan-limitisopi-inv-comp-pi--aaaf7b5caac0cef7ffebd6aa.md) | 418 | `result-track:aaaf7b5caac0cef7ffebd6aad34841d00bc09a3de0c8777b1534a51203e0643e` |
| 30 | `lemma` | [wideCospan.limitIsoPi_hom_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/widecospan-limitisopi-hom-comp-pi--155ffcd6aed6427e770561be.md) | 423 | `result-track:155ffcd6aed6427e770561be8229ece9fcf3319f69e273e4f64b2ec231a8d8ab` |
| 31 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/declarations/iso--e9b1641327515b25c70f30d2.md) | 430 | `declaration-track:e9b1641327515b25c70f30d2c0b56c9a34969a7a49772935a00dabd4ed096699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
