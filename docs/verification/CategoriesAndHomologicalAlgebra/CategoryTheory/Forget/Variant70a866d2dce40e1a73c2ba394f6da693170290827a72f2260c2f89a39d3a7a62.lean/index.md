# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "384acddb6463c147cc8dbfdd5731513c0116bd07",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `384acddb6463c147cc8dbfdd5731513c0116bd07`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean.json)

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
| 1 | `abbrev` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/forget--649e52f54c92543a9ebc9292.md) | 48 | `declaration-track:649e52f54c92543a9ebc9292c83ae0bec71c41c7db3cbfe8e62934e01089911e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/instance--556e6f2839f9c6baf71d7464.md) | 52 | `declaration-track:556e6f2839f9c6baf71d7464ad2443a1ef0ad3f19a91f2d13723add0d677a77b` |
| 3 | `lemma` | [ConcreteCategory.forget_map_eq_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/concretecategory-forget-map-eq-ofhom--db6199a6c1f585e4b333e032.md) | 58 | `result-track:db6199a6c1f585e4b333e032a8f70e19931ee6bcb8684d09b00ee7baa04ccd9b` |
| 4 | `theorem` | [forget_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/forget-obj--7e00e28259586cdf5545f9cf.md) | 65 | `result-track:7e00e28259586cdf5545f9cf2f89763874a97501e84c7e06611d53d07bd83184` |
| 5 | `theorem` | [congr_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/congr-fun--52a58168d51cb8ebfb9a0c68.md) | 70 | `result-track:52a58168d51cb8ebfb9a0c6895d5fe9603276f80fbc10d82ac2f4780b41e8502` |
| 6 | `theorem` | [congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/congr-arg--3256ab18f9c2bf200816f4d6.md) | 76 | `result-track:3256ab18f9c2bf200816f4d66c0ac9cd731fb9db08cfd2fbba77b058585ae92a` |
| 7 | `class` | [HasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/hasforget--7ac85f4ff7065f178f932f82.md) | 88 | `declaration-track:7ac85f4ff7065f178f932f823d45e687c14a2572e8bdfd8c61dfa20fa9ed1ad8` |
| 8 | `abbrev` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/forget--db46c22b5216e985fe01add2.md) | 96 | `declaration-track:db46c22b5216e985fe01add252e007ebe3f7226437288cbc2b4caedab449519c` |
| 9 | `lemma` | [forget₂_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/forget-comp-apply--923afad562a95a74f53a3531.md) | 101 | `result-track:923afad562a95a74f53a3531a50984bf2d3b47c572af9ff2d4d3be0fb7906e95` |
| 10 | `instance` | [forget₂_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/forget-faithful--43354c1076756fa9106604f7.md) | 106 | `declaration-track:43354c1076756fa9106604f728a4436115a64533941b6e8216b3d9de02ef40ce` |
| 11 | `instance` | [InducedCategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/inducedcategory-hasforget--3e5b51b105bf11d0c75d03f5.md) | 109 | `declaration-track:3e5b51b105bf11d0c75d03f50a193bd0de2523fc7cac6ca3071879832093337c` |
| 12 | `instance` | [ObjectProperty.FullSubcategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/objectproperty-fullsubcategory-hasforget--09db909447e0a97a486c674a.md) | 113 | `declaration-track:09db909447e0a97a486c674abd1bfe08e50c0db6ff7ec6d09546add8fffc4a50` |
| 13 | `def` | [HasForget₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/hasforget-mk--33483d0a4053aa28a252eea9.md) | 125 | `declaration-track:33483d0a4053aa28a252eea993b56c70a68a17bb052139f8c972c7a18a64eff5` |
| 14 | `def` | [HasForget₂.trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/hasforget-trans--899e9ca3d2f3258835ff1a12.md) | 136 | `declaration-track:899e9ca3d2f3258835ff1a1230aa262be12b4cef26a247c5c58c5ebe2addb2d3` |
| 15 | `lemma` | [ConcreteCategory.forget₂_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/concretecategory-forget-comp-apply--155615965327b46c3fd3f5df.md) | 145 | `result-track:155615965327b46c3fd3f5dfc9ac1b868f6d3db234f650714bb3e0da06def7d7` |
| 16 | `instance` | [hom_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant70a866d2dce40e1a73c2ba394f6da693170290827a72f2260c2f89a39d3a7a62.lean/declarations/hom-isiso--e5dab6ec1ce66972417b4d21.md) | 151 | `declaration-track:e5dab6ec1ce66972417b4d211baca5587008acaf155cebe59d819bebc86f2577` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
