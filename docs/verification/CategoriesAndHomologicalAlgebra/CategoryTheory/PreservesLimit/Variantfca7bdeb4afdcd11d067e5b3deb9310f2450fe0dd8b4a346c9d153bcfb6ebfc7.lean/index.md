# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimit.Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac06838ba1027268e6f7be82dcdb0feb9d448f02",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac06838ba1027268e6f7be82dcdb0feb9d448f02`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean.json)

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
| 1 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/anonymous--3e828efef4e364452efe0d64.md) | 40 | `declaration-track:3e828efef4e364452efe0d64a68a870bd6b0e7b7474709241d9b65ada56a31aa` |
| 2 | `lemma` | [π_ι_app_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/app-hom-app-apply--66e795d4724dc98f708db8cf.md) | 47 | `result-track:66e795d4724dc98f708db8cf125c66e3f915a43c38f48eb36658f57dc0ee7c67` |
| 3 | `def` | [preservesLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/preserveslimit--28e525229f6e7f197813226f.md) | 61 | `declaration-track:28e525229f6e7f197813226f4daf821e8e43880dbebedd48ca9cd373de700ae5` |
| 4 | `lemma` | [preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/preserveslimit--42d6c47fcd22dfe1fc1a71d2.md) | 79 | `result-track:42d6c47fcd22dfe1fc1a71d2217ceb9773aaf3526d655f259dd8b0574f50bf05` |
| 5 | `def` | [coneEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/coneeval--f723651e89c65d6dd82cc901.md) | 104 | `declaration-track:f723651e89c65d6dd82cc9012f8e589ebce1877394492197be771bfd3dc34638` |
| 6 | `def` | [liftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/liftaux--01f39285a4a03c97e1cee347.md) | 111 | `declaration-track:01f39285a4a03c97e1cee347927585148be6eb796636c4db921e91e9281f74e2` |
| 7 | `lemma` | [liftAux_π_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/liftaux-app-app--1199be53263b4c0aa9bf3fd0.md) | 115 | `result-track:1199be53263b4c0aa9bf3fd02fd51a7c82391c30e4ba542eeb5576f6add82074` |
| 8 | `def` | [isLimitMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/islimitmapcone--f059cb15f6e8224110c0da50.md) | 121 | `declaration-track:f059cb15f6e8224110c0da5073f0a6e74ca70a39d78e50459c030c3e9d13cd4a` |
| 9 | `instance` | [preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/preserveslimit--db155f03feb5b63ee7121b28.md) | 134 | `declaration-track:db155f03feb5b63ee7121b2845dcc1dca967cf4bde5ac240fac887e13c1c92de` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--18218e57b089083dba22b4e4.md) | 139 | `declaration-track:18218e57b089083dba22b4e4d32b99867ef719bb5eb01fbf53b84a7383735576` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--ac64128c0b8c8a30b95c8fcf.md) | 144 | `declaration-track:ac64128c0b8c8a30b95c8fcf8d22faa3f4c359b7af9ea35c41f0436f1b83a83e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--655f889fe1e36d1dac6f3f58.md) | 149 | `declaration-track:655f889fe1e36d1dac6f3f5844ac8be669c5d30cdcf35c6f088866e83e9fd35c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--0eba47d2736542a17d484dc3.md) | 153 | `declaration-track:0eba47d2736542a17d484dc3d96cf37670be61c066ca2ddda5f5e2cc13f523b8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--7315aa581eae17da5727da53.md) | 157 | `declaration-track:7315aa581eae17da5727da53ea9331a0f7a89744c373ab10ef79145aa35fcd9a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--bb08246d9f05bcd56aae1277.md) | 160 | `declaration-track:bb08246d9f05bcd56aae12772dceb581f4bcf60c2577ccedb4bb57c74b52e2f2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--e19880d9e53ff2ffc00e4b61.md) | 163 | `declaration-track:e19880d9e53ff2ffc00e4b61401b176dbbb8ca697e52885f9a8e3ffda9f06d20` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--783c61a82d569a166bf03f21.md) | 169 | `declaration-track:783c61a82d569a166bf03f214e511b4590b3091a0cec5d2884527ff3925ac976` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--42208eb15932aa8de3025735.md) | 175 | `declaration-track:42208eb15932aa8de3025735cd134ee42f5f717923afa58183722e6953dc1d01` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantfca7bdeb4afdcd11d067e5b3deb9310f2450fe0dd8b4a346c9d153bcfb6ebfc7.lean/declarations/instance--c6a89326225bb6c4a4c9a0fe.md) | 179 | `declaration-track:c6a89326225bb6c4a4c9a0feaa4d6d59bcdbf3929b661ab2a93ad9296e42de0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
