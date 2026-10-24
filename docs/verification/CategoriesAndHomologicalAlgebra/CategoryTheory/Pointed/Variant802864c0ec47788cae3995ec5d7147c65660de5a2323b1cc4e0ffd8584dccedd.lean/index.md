# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pointed.Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bb4ac19629786dbd8fb2d17a491e760ba93abbd",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bb4ac19629786dbd8fb2d17a491e760ba93abbd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/pointed--69a53562ef3b7ac103d873bc.md) | 34 | `declaration-track:69a53562ef3b7ac103d873bcd7a80e22a388915a5c0155e39614edabcc5151f2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/instance--82e94e21fa98b7486b81da4a.md) | 42 | `declaration-track:82e94e21fa98b7486b81da4af9c0b44b33bce07f2d176c86b9b380e85d78aa54` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/of--868f823315e30a656a3df36e.md) | 46 | `declaration-track:868f823315e30a656a3df36e94da5fc7e502d1018ca5706e7c5766b7cf7c3377` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/coe-of--595747ef94a6f759e6ff228e.md) | 49 | `result-track:595747ef94a6f759e6ff228e9f14dee8de997219a19af6db08f97b308341894e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/instance--3f816fd447bd73a85bce4bee.md) | 54 | `declaration-track:3f816fd447bd73a85bce4bee6ca2520f4d014137667615b8d67dd6aa564e85cf` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/hom--3a5683b76e94321dabe40655.md) | 59 | `declaration-track:3a5683b76e94321dabe4065532d40e816576406bb791044a079f8e954df1113c` |
| 7 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/id--8ee59cc380a87f57ee5a507c.md) | 69 | `declaration-track:8ee59cc380a87f57ee5a507c7cb9c3393fc840384b40a36df7092263086c9008` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/instance--f4b668d9ae9ace96ed9b8375.md) | 72 | `declaration-track:f4b668d9ae9ace96ed9b8375ef63c15c4e0d629530b8609afdafce326e88c6e2` |
| 9 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/comp--57629e481a9c67cb238a5e48.md) | 77 | `declaration-track:57629e481a9c67cb238a5e48eb6aa87a1ea31ff76f0ea5a11002e6b08b65d607` |
| 10 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/largecategory--09582c933b02d6570bbca22a.md) | 82 | `declaration-track:09582c933b02d6570bbca22a43b6483e5b40e552dc2ead5c7224fbce4e994e54` |
| 11 | `lemma` | [Hom.id_toFun'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/hom-id-tofun--9967c5c4970ee756b1fb2511.md) | 87 | `result-track:9967c5c4970ee756b1fb25111e9e44978b86775d6cec3e295243430d2aa4e6d4` |
| 12 | `lemma` | [Hom.comp_toFun'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/hom-comp-tofun--c916576826ae4782fb289261.md) | 89 | `result-track:c916576826ae4782fb289261f02245aad7b0cdf55a519b37bdf8cc41a4db8b5b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/instance--dbbd8deaf075fd6cfab57c7f.md) | 92 | `declaration-track:dbbd8deaf075fd6cfab57c7f4ff9686195f11748af7bcb8145ea2c9c2fc98cf1` |
| 14 | `instance` | [hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/hasforget--8dd9a05510445a625d8a4e56.md) | 96 | `declaration-track:8dd9a05510445a625d8a4e561a36796d1212ef00a631c0a00e419ee72c2d3e5a` |
| 15 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/iso-mk--1fc6406f5e76d6eaa54c2fca.md) | 103 | `declaration-track:1fc6406f5e76d6eaa54c2fcae4e91306e810a2fba72e0a2f1cbcc20ef9f6f1eb` |
| 16 | `def` | [typeToPointed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/typetopointed--98e3e24d3432b5ba5a1e4f72.md) | 113 | `declaration-track:98e3e24d3432b5ba5a1e4f72c24e106a360d6b633613fc5e839a8352828a32af` |
| 17 | `def` | [typeToPointedForgetAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant802864c0ec47788cae3995ec5d7147c65660de5a2323b1cc4e0ffd8584dccedd.lean/declarations/typetopointedforgetadjunction--756e0e8224c65e91ca2657aa.md) | 120 | `declaration-track:756e0e8224c65e91ca2657aac2bea2610c604dfde994d84ef10071c8e9548b1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
