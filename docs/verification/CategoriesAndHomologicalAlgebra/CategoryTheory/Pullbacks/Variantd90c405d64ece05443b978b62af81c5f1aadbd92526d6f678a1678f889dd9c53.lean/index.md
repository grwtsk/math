# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d2f0eb2a3ed36079e9426d9042552028ed02b3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d2f0eb2a3ed36079e9426d9042552028ed02b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/map--564650809df2baf9cc4e4b4f.md) | 47 | `declaration-track:564650809df2baf9cc4e4b4fdd13aea255a64ab62fbbca89fb7d2c52ced53ca1` |
| 2 | `def` | [isLimitMapConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/islimitmapconeequiv--65b5f82574d48e0485383f81.md) | 53 | `declaration-track:65b5f82574d48e0485383f81941e617913d45cd679ecd5356e0ceb9daae0ac75` |
| 3 | `def` | [isLimitMapConePullbackConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/islimitmapconepullbackconeequiv--8a15c0a9ca4ce5fc47e3964b.md) | 70 | `declaration-track:8a15c0a9ca4ce5fc47e3964b2be05df27c1bfc12721bb92edde884a38b3badba` |
| 4 | `def` | [isLimitPullbackConeMapOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/islimitpullbackconemapofislimit--f5694392c2d8a5567eaecc24.md) | 78 | `declaration-track:f5694392c2d8a5567eaecc24f1f970ee3b6ee45698f88b05cd039039317a9337` |
| 5 | `def` | [isLimitOfIsLimitPullbackConeMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/islimitofislimitpullbackconemap--3edd4c59be292f6647828feb.md) | 85 | `declaration-track:3edd4c59be292f6647828febc1434e63c206f7ff1c41aaddfae441af8891a10a` |
| 6 | `def` | [isLimitOfHasPullbackOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/islimitofhaspullbackofpreserveslimit--6e9003b8310ad7bf38bcbcaf.md) | 95 | `declaration-track:6e9003b8310ad7bf38bcbcaf7a32c3a997d1bf845692eb98a0df22087d4dd828` |
| 7 | `lemma` | [preservesPullback_symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-symmetry--b2e4020d6e55f0be2c729b8b.md) | 102 | `result-track:b2e4020d6e55f0be2c729b8bf2241084f6999a8f4cfe8971f2fa56f359331201` |
| 8 | `theorem` | [hasPullback_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/haspullback-of-preservespullback--9ce262dd9f1d1405c241b840.md) | 118 | `result-track:9ce262dd9f1d1405c241b84023772bd0379608a3c57ffcc70743312b1e360127` |
| 9 | `def` | [PreservesPullback.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso--f72ac8bec177664032760752.md) | 125 | `declaration-track:f72ac8bec177664032760752ce144c74a98e65280b784720e77cdf807ee5e911` |
| 10 | `theorem` | [PreservesPullback.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso-hom--ea9d86565d860960766ec47d.md) | 129 | `result-track:ea9d86565d860960766ec47d1253d0fea400d4788696237323c75af6d03d85a8` |
| 11 | `theorem` | [PreservesPullback.iso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso-hom-fst--d0d5b947fa374742d5bebf1c.md) | 133 | `result-track:d0d5b947fa374742d5bebf1c8163339cf4318d5f5f49d1c4776fbc0e20b8bdd1` |
| 12 | `theorem` | [PreservesPullback.iso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso-hom-snd--61ab16bf36c06fbd9e5b83e1.md) | 138 | `result-track:61ab16bf36c06fbd9e5b83e1616bba25700dc2b0a6e029cc9885d658df108d86` |
| 13 | `theorem` | [PreservesPullback.iso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso-inv-fst--78916d92019095554cdc42ca.md) | 143 | `result-track:78916d92019095554cdc42cac4f2eddfa910cab3b32e8e3ad0a5289f46416676` |
| 14 | `theorem` | [PreservesPullback.iso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-iso-inv-snd--a673930e59cfd799722f5115.md) | 148 | `result-track:a673930e59cfd799722f5115572cc14052ac8e3f30312232d36539dde52c8857` |
| 15 | `def` | [PullbackCone.isLimitCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/pullbackcone-islimitcoyonedaequiv--dc0f2b186f47606039d96edd.md) | 154 | `declaration-track:dc0f2b186f47606039d96edd69c2637aeaffb059cb96af0a90fa063422134525` |
| 16 | `abbrev` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/map--74234e13e8010e30fe9515d1.md) | 171 | `declaration-track:74234e13e8010e30fe9515d1c1b55aef0c08498c1a7d6bb1f8986785e3ae7c54` |
| 17 | `def` | [isColimitMapCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/iscolimitmapcoconeequiv--451413ccf6cc9435efb74e51.md) | 176 | `declaration-track:451413ccf6cc9435efb74e5193a5dfb90d5aa9450fd6ff96bd98aad98e36146a` |
| 18 | `def` | [isColimitMapCoconePushoutCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/iscolimitmapcoconepushoutcoconeequiv--7c740a82b6d6def9af8f66c1.md) | 193 | `declaration-track:7c740a82b6d6def9af8f66c1233ef5a9460c35d4434a8d502ce978d8844d0c89` |
| 19 | `def` | [isColimitPushoutCoconeMapOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/iscolimitpushoutcoconemapofiscolimit--8ce28e80672c9b4834bf23d9.md) | 205 | `declaration-track:8ce28e80672c9b4834bf23d95d4761b71898c00b859b4f35468ed85f38881149` |
| 20 | `def` | [isColimitOfIsColimitPushoutCoconeMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/iscolimitofiscolimitpushoutcoconemap--ff8b7c0e1b447f613389e5a8.md) | 212 | `declaration-track:ff8b7c0e1b447f613389e5a8334d30240d0d4ea5c8acb731daaaca2bfcfa7ec1` |
| 21 | `def` | [isColimitOfHasPushoutOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/iscolimitofhaspushoutofpreservescolimit--b996eca80a5535c552d95391.md) | 222 | `declaration-track:b996eca80a5535c552d953910d6075c3dd08badc723ce57a94b626b2d53707de` |
| 22 | `lemma` | [preservesPushout_symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-symmetry--2f3aab688b11ca5a4b7dde81.md) | 229 | `result-track:2f3aab688b11ca5a4b7dde81cc51c099e2a93bbecdd4c7cb325c489bbbf64cba` |
| 23 | `theorem` | [hasPushout_of_preservesPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/haspushout-of-preservespushout--471737990a4b05c0e96b217b.md) | 240 | `result-track:471737990a4b05c0e96b217b422c0db410e6b9939474e44d9094be14daea47e2` |
| 24 | `def` | [PreservesPushout.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-iso--3dd8372ee1c47e9e7954528a.md) | 247 | `declaration-track:3dd8372ee1c47e9e7954528ad97e2278a5c00e1a70f3451389ff9bdc61df04da` |
| 25 | `theorem` | [PreservesPushout.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-iso-hom--b7e9d21f7d593e9346626f86.md) | 252 | `result-track:b7e9d21f7d593e9346626f862973a21409a2a09fed7bdbe8998227dc78c00459` |
| 26 | `theorem` | [PreservesPushout.inl_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-inl-iso-hom--a888b861cca9f0718f96a6d9.md) | 256 | `result-track:a888b861cca9f0718f96a6d945474804857ee2aba7b73e67a4b6eba5ed986fca` |
| 27 | `theorem` | [PreservesPushout.inr_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-inr-iso-hom--aeab040d530b82f0817482fc.md) | 262 | `result-track:aeab040d530b82f0817482fc448179bc41507256c2cc5fd5d8a23e2c87306578` |
| 28 | `theorem` | [PreservesPushout.inl_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-inl-iso-inv--504aa0769fac317c3c4bfec2.md) | 268 | `result-track:504aa0769fac317c3c4bfec28d31faed222639a12489ecede0354e52e1724598` |
| 29 | `theorem` | [PreservesPushout.inr_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-inr-iso-inv--e16541ca4eb305a0d48f81bd.md) | 273 | `result-track:e16541ca4eb305a0d48f81bd9bb6c9a3bf326a086fb86464d812ddccebf9d9ce` |
| 30 | `lemma` | [PreservesPullback.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespullback-of-iso-comparison--79184b4e9a8de8f8fddbc066.md) | 292 | `result-track:79184b4e9a8de8f8fddbc066300c875b4aef3e011458e227ad6c6e964f910b94` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/instance--3c6218efa3b8a2968422a796.md) | 300 | `declaration-track:3c6218efa3b8a2968422a796e075d5849dd6b3f77f669fc070e9fb6dcb6080a2` |
| 32 | `lemma` | [PreservesPushout.of_iso_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/preservespushout-of-iso-comparison--3557de0607bd0d37924f2098.md) | 313 | `result-track:3557de0607bd0d37924f2098eae73b431a4cce87848a2a360f21147c7d6f670f` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/instance--aef82b4bb5985ff798ca2309.md) | 322 | `declaration-track:aef82b4bb5985ff798ca23097533405e58c88737177509551d2880a7fe1eb5f5` |
| 34 | `def` | [PushoutCocone.isColimitYonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/declarations/pushoutcocone-iscolimityonedaequiv--d322d8c0749e9653fd923296.md) | 328 | `declaration-track:d322d8c0749e9653fd9232965dec7fdf078fea94c7b537093de5d4f169a7680f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
