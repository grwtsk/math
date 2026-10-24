# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63181546095bab3e6fae96090bf9ab2e461381ac",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63181546095bab3e6fae96090bf9ab2e461381ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/isinvertedby--cfac659197fd8fd1ef9c50fc.md) | 54 | `declaration-track:cfac659197fd8fd1ef9c50fcafb0b46f1f027022ceb35435a271d792dfacbbd7` |
| 2 | `class` | [Lifting₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting--78c4dff39d8f9fa15d4585ec.md) | 69 | `declaration-track:78c4dff39d8f9fa15d4585ec42d00a2e65be498cccd8587f47fe98230c96bdba` |
| 3 | `def` | [Lifting₂.fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-fst--07a8fdad53d3b05c48da1de8.md) | 81 | `declaration-track:07a8fdad53d3b05c48da1de84008780cdf27b2385c404ad238783904c8a3c319` |
| 4 | `instance` | [Lifting₂.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-flip--af056034d1c9e1c9dfc65edb.md) | 85 | `declaration-track:af056034d1c9e1c9dfc65edb90f370be50cb118622a32977bac3bbceff2c9d35` |
| 5 | `def` | [Lifting₂.snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-snd--4165c58c121a30d6d1a9ac28.md) | 91 | `declaration-track:4165c58c121a30d6d1a9ac28d88bda7a74fc056632b243379e0b88d06235f1ab` |
| 6 | `instance` | [Lifting₂.uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-uncurry--b03b05971c09b5c884381904.md) | 95 | `declaration-track:b03b05971c09b5c8843819049a9111954eceb5c678563b91d961518881f18722` |
| 7 | `def` | [lift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift--f3961f090280665530fe489e.md) | 113 | `declaration-track:f3961f090280665530fe489ea72b40947988404e7283f73b98f7e5a97fe0a242` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/instance--15d2e1cb43f729433007d5a4.md) | 116 | `declaration-track:15d2e1cb43f729433007d5a456a6229ba072ff145a8a1bd75d007ee1bc31fd5a` |
| 9 | `instance` | [Lifting₂.liftingLift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-liftinglift--0ebe38b26112da60ca65a9ae.md) | 121 | `declaration-track:0ebe38b26112da60ca65a9ae92140ee38c8b6c15fd96b584e082c0e73ce39fd6` |
| 10 | `instance` | [Lifting₂.liftingLift₂Flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-liftinglift-flip--1a5308fc96aa71bf9a6446e0.md) | 125 | `declaration-track:1a5308fc96aa71bf9a6446e00320860d633a9d647157ebb254e359fab947ea13` |
| 11 | `lemma` | [lift₂_iso_hom_app_app₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift-iso-hom-app-app--5285c9f4475aacca8a5d4457.md) | 129 | `result-track:5285c9f4475aacca8a5d4457ccefa75d2d57fb538ba1de28a422d8ad2ef8e88e` |
| 12 | `lemma` | [lift₂_iso_hom_app_app₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift-iso-hom-app-app--fa0441eefca66d6c29fa6f04.md) | 134 | `result-track:fa0441eefca66d6c29fa6f04e4f39cb2fded3698aab49fea1c9d6875d2928b55` |
| 13 | `instance` | [Lifting₂.compRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lifting-compright--7908eb52bef63395def1b172.md) | 150 | `declaration-track:7908eb52bef63395def1b172695b2190f2198ce826efd0ad73aec49e9f40d77c` |
| 14 | `def` | [lift₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift-nattrans--ab26e6264e16051991b56cc0.md) | 170 | `declaration-track:ab26e6264e16051991b56cc0b19879655bebe0d305afe6f2a63c31809b8944c5` |
| 15 | `theorem` | [lift₂NatTrans_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift-nattrans-app-app--2804a924c958c18e0adca907.md) | 177 | `result-track:2804a924c958c18e0adca907e11edf7bc33c74ceae3d8a6c211c7668d897ce19` |
| 16 | `theorem` | [natTrans₂_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/nattrans-ext--b582233a65ba0a23fe06e5af.md) | 187 | `result-track:b582233a65ba0a23fe06e5afc8da7c662dbafbb09bf4c1b7b52eb084dcd6715c` |
| 17 | `def` | [lift₂NatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantac9f95ffda0e27485da8f343874ad68ff2fe4cf695de81c6cc00bceb10345b62.lean/declarations/lift-natiso--524cc1c9bf32f61c77ccb978.md) | 197 | `declaration-track:524cc1c9bf32f61c77ccb978efb95b46a6185895905a7076fbea388c5fb43126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
