# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Ext.Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d838f93fcac3fff10155e6be8376c8b15b4196c9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d838f93fcac3fff10155e6be8376c8b15b4196c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/instance--cbc2a21a1f1c6d4c83820512.md) | 50 | `declaration-track:cbc2a21a1f1c6d4c838205125f3624c69879fe278f8d3d6f62e81d08fa22df98` |
| 2 | `def` | [extEquivCohomologyClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass--dc0e6dea8ff542bf9cc24acf.md) | 55 | `declaration-track:dc0e6dea8ff542bf9cc24acf00a9e8bfac16e85334cbeb59f40687b2d9c342de` |
| 3 | `lemma` | [extEquivCohomologyClass_symm_mk_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-symm-mk-hom--2855cfd525db62a984c2f850.md) | 61 | `result-track:2855cfd525db62a984c2f850ce02d3526d28ea99255f6dc48137860f6d62c4f3` |
| 4 | `lemma` | [extEquivCohomologyClass_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-symm-add--41182c7a94d5e58c074ebb4b.md) | 78 | `result-track:41182c7a94d5e58c074ebb4bcc7b29720819633bf21083dd500f61f4e8547017` |
| 5 | `def` | [extAddEquivCohomologyClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extaddequivcohomologyclass--10d92ba41242ae7c3d8d6880.md) | 92 | `declaration-track:10d92ba41242ae7c3d8d6880a682cddd0ae987ed904b507b32f888e1097241c1` |
| 6 | `lemma` | [extEquivCohomologyClass_symm_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-symm-sub--89bd630c777e2d4849887416.md) | 99 | `result-track:89bd630c777e2d48498874162f90732a5a7fb77c8c5bc2158d86b033b54b5975` |
| 7 | `lemma` | [extEquivCohomologyClass_symm_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-symm-neg--5efddd2893f57e7a25c362a7.md) | 106 | `result-track:5efddd2893f57e7a25c362a7f82ca107262f9707355a34a6042489e4bdb288dd` |
| 8 | `lemma` | [extEquivCohomologyClass_symm_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-symm-zero--19e42e503bd3e09687d8eb9a.md) | 113 | `result-track:19e42e503bd3e09687d8eb9a95f740b488095d528cab783313e407194d778bbd` |
| 9 | `lemma` | [extEquivCohomologyClass_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-add--ce511ad0539bde83c9296f07.md) | 118 | `result-track:ce511ad0539bde83c9296f07ff2a0eb550763682040df32e9a131651e14de6ce` |
| 10 | `lemma` | [extEquivCohomologyClass_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-sub--41cc1c1898515fd04820bf6c.md) | 124 | `result-track:41cc1c1898515fd04820bf6cec0d260e3ab24eeef9a681887b547c0e42fe6a2d` |
| 11 | `lemma` | [extEquivCohomologyClass_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-neg--8c4a419d2e9bcc7038a670b5.md) | 130 | `result-track:8c4a419d2e9bcc7038a670b593cd9cf4dbaabccff5a622fd59fb6f8eebc8ced1` |
| 12 | `lemma` | [extEquivCohomologyClass_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-zero--6215f20ea8bced2e30c06900.md) | 137 | `result-track:6215f20ea8bced2e30c0690012359f04ac16a86a6da340c423f420a8b9e56d18` |
| 13 | `def` | [extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk--d08f405ec53dad84c7f0c7e2.md) | 144 | `declaration-track:d08f405ec53dad84c7f0c7e2b61acff0457b944a8f1ab4857d80f042d9878d9e` |
| 14 | `lemma` | [extEquivCohomologyClass_extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extequivcohomologyclass-extmk--e7a52898b563dfb719994f2f.md) | 152 | `result-track:e7a52898b563dfb719994f2f6e038d333460abc2f4187ed599176c84c70587dd` |
| 15 | `lemma` | [add_extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/add-extmk--340611bb1f3d3cf113bb5215.md) | 159 | `result-track:340611bb1f3d3cf113bb521592e6dcd5507655441d85bf64d6e8127ea44c97dc` |
| 16 | `lemma` | [sub_extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/sub-extmk--09e96820bf824bddf000251c.md) | 169 | `result-track:09e96820bf824bddf000251cf22d242f847e378ee1a6b19ed7f30dbb00382634` |
| 17 | `lemma` | [neg_extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/neg-extmk--167a95535191f392024e7055.md) | 179 | `result-track:167a95535191f392024e705519fcc529105a6548e86d8ee462539e99f3ff616d` |
| 18 | `lemma` | [extMk_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk-zero--b879812c3449dc7e10eca043.md) | 189 | `result-track:b879812c3449dc7e10eca043856325b37e533e04ebeb4d5590209ac2a317b288` |
| 19 | `lemma` | [extMk_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk-hom--8ba239526c1b755eb1dc583b.md) | 193 | `result-track:8ba239526c1b755eb1dc583bbaf571412fe38f113a509d2d101828433e1496c6` |
| 20 | `lemma` | [extMk_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk-eq-zero-iff--cdad9b53626fb3dca1ddbf7a.md) | 206 | `result-track:cdad9b53626fb3dca1ddbf7a3048da395c8a7c43b44638bbee02e4d3e60dea77` |
| 21 | `lemma` | [extMk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk-surjective--a8cbed89225ef9ede393d3f3.md) | 221 | `result-track:a8cbed89225ef9ede393d3f38cf08296fb355b363c2fe58a4f810ab8764c3b9c` |
| 22 | `lemma` | [extMk_comp_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/extmk-comp-mk--fa69113680fff46f3a0872d2.md) | 231 | `result-track:fa69113680fff46f3a0872d2341c4f8e321404967f9624cbd1e4a3a237587f3c` |
| 23 | `lemma` | [mk₀_comp_extMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/declarations/mk-comp-extmk--4640d4fbd31812bf677a1497.md) | 252 | `result-track:4640d4fbd31812bf677a1497f3192550d554b8da89109ea45211d049d864c60f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
