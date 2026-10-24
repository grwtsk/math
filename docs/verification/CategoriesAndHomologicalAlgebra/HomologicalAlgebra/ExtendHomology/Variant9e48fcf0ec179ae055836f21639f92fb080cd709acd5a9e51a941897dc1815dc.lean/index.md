# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ExtendHomology.Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5d00e3d6d6f7aa40f30bf85674754530b47fa4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5d00e3d6d6f7aa40f30bf85674754530b47fa4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_d_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/comp-d-eq-zero-iff--7392f9433bd23dc3260f8264.md) | 38 | `result-track:7392f9433bd23dc3260f8264a8c1cbe6c8505c67756fd82d3c75a8507f40cf5d` |
| 2 | `lemma` | [d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/d-comp-eq-zero-iff--a07b9bf5b4f8dabcaa4cec55.md) | 50 | `result-track:a07b9bf5b4f8dabcaa4cec554f24b96f1ce496d3c869dc558fdf621fcf911d6d` |
| 3 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/kernelfork--f9688a7afde74f16d44394a2.md) | 68 | `declaration-track:f9688a7afde74f16d44394a272583c01d9d17b92cf30885a11f478311af8610e` |
| 4 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/islimitkernelfork--763a2a47b5006a104b52425e.md) | 74 | `declaration-track:763a2a47b5006a104b52425e22db69fa49d5d3d559bbc528fce9b0c5d0ef57ff` |
| 5 | `lemma` | [lift_d_comp_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/lift-d-comp-eq-zero-iff--6d4477049727648701c8ce3c.md) | 83 | `result-track:6d4477049727648701c8ce3cbf384f9d3fb0723607bea8cb07c24d885c40cc88` |
| 6 | `lemma` | [lift_d_comp_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/lift-d-comp-eq-zero-iff--57eab5d65e52e4dd605822a4.md) | 109 | `result-track:57eab5d65e52e4dd605822a43f732b7947eb82d431abe0dfa237548c8c20d2ce` |
| 7 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/cokernelcofork--d1cd87712610e2569d2c0f69.md) | 117 | `declaration-track:d1cd87712610e2569d2c0f6901adc3add8239258ad98026015da938df2f782d3` |
| 8 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/iscolimitcokernelcofork--1cd95e0030201b80fe9d7fcd.md) | 125 | `declaration-track:1cd95e0030201b80fe9d7fcd9a58e90870659cf4a5f86a9720eed25dc16d2244` |
| 9 | `def` | [leftHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/lefthomologydata--9fc8f6805c0aedc414cff970.md) | 136 | `declaration-track:9fc8f6805c0aedc414cff9706f9455b76858ff2ba9a44fe2f34fa09c3e669bb1` |
| 10 | `def` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/cokernelcofork--78c66edf557353dcfe41c10d.md) | 160 | `declaration-track:78c66edf557353dcfe41c10d64f9443f18f7d5accfa03355aaa8c2a389acded2` |
| 11 | `def` | [isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/iscolimitcokernelcofork--99530a751c65a08db75a9c9b.md) | 166 | `declaration-track:99530a751c65a08db75a9c9bfa71aa57595588e1cc0fd085e657f2381875afd5` |
| 12 | `lemma` | [d_comp_desc_eq_zero_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/d-comp-desc-eq-zero-iff--e327dc084530b3153dca4975.md) | 174 | `result-track:e327dc084530b3153dca49755781ea1625d5a9fbd1d652d8c5bed47d2f0f2331` |
| 13 | `lemma` | [d_comp_desc_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/d-comp-desc-eq-zero-iff--d06b89b44f62d28d9f17362a.md) | 199 | `result-track:d06b89b44f62d28d9f17362ad882e8b51db9d06bc37723c1fb39e9ce704429b6` |
| 14 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/kernelfork--6b93368c97fd0e093ccfd5f3.md) | 208 | `declaration-track:6b93368c97fd0e093ccfd5f3f215264871ac2e2b54d8e3c58cfa553d7146b3c3` |
| 15 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/islimitkernelfork--9f2379a3037fce214684bc48.md) | 216 | `declaration-track:9f2379a3037fce214684bc481276354ce946c93bd8e10bcf0bb7cb4d43db38b9` |
| 16 | `def` | [rightHomologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/righthomologydata--ce76d457ff68d73bac0127ac.md) | 227 | `declaration-track:ce76d457ff68d73bac0127ac4822539cc340565a3cea046c1412cf8494c12b9d` |
| 17 | `lemma` | [rightHomologyData_g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/righthomologydata-g--9be4dca4e8cb4bf8a7895f1f.md) | 245 | `result-track:9be4dca4e8cb4bf8a7895f1f072b62f306c015a3b51971ba38a0ebf697fd2501` |
| 18 | `def` | [homologyData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/homologydata--87575bde81bc7f838d2de427.md) | 256 | `declaration-track:87575bde81bc7f838d2de427f6e780fd1ffc521eea9ea1f8ba82ac3944b47d62` |
| 19 | `def` | [homologyData'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/homologydata--9b3af3bef471a264ab772bfb.md) | 265 | `declaration-track:9b3af3bef471a264ab772bfb416e50a0ce72544103bbf8ed5d6b6447fc0840cf` |
| 20 | `lemma` | [hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/hashomology--c42f24d4c174bd26b506f55b.md) | 271 | `result-track:c42f24d4c174bd26b506f55b362413d5cb37e09867a456ac10ab1aad4f412afe` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/instance--32e07615861f9fe362ea962f.md) | 276 | `declaration-track:32e07615861f9fe362ea962f428892453c35f2191320a3874fe39802348fc8de` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/instance--f057f24d6b41f9cde5d4ffb7.md) | 279 | `declaration-track:f057f24d6b41f9cde5d4ffb70299c8d01612dcad6b2376c52a5e34a5338d371e` |
| 23 | `lemma` | [extend_exactAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extend-exactat--752bf0fc27f180c317507fb2.md) | 289 | `result-track:752bf0fc27f180c317507fb2caf9e55ecc11c1e7d2a6e689be34d02c21bcaa35` |
| 24 | `def` | [extendCyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendcyclesiso--1c5622667a7e90e62b3c9d15.md) | 299 | `declaration-track:1c5622667a7e90e62b3c9d1540e0bd47e67575ba2134a5feda3660b6dfd07077` |
| 25 | `def` | [extendOpcyclesIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendopcyclesiso--b06ced99259674a61e630eb4.md) | 305 | `declaration-track:b06ced99259674a61e630eb4dd2195264079d71625b7ba31b17ab6fa7fc973fb` |
| 26 | `def` | [extendHomologyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendhomologyiso--bb9da4408d2c1b9c7052ca1a.md) | 311 | `declaration-track:bb9da4408d2c1b9c7052ca1af18238426fa9c6931b78193f8a9fe5d52bb9e4f9` |
| 27 | `lemma` | [extend_exactAt_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extend-exactat-iff--01b415d3b581fac2db810c05.md) | 317 | `result-track:01b415d3b581fac2db810c05ad32a45b24daba4af783c8a70fa165110c33d88c` |
| 28 | `lemma` | [extendCyclesIso_hom_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendcyclesiso-hom-icycles--379bd1329d1716af0ece3e46.md) | 323 | `result-track:379bd1329d1716af0ece3e463420fb2d0a5ff1a5e3822744eb327c73b7a5e27c` |
| 29 | `lemma` | [extendCyclesIso_inv_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendcyclesiso-inv-icycles--2987c408260a3225f30c6f7f.md) | 334 | `result-track:2987c408260a3225f30c6f7f96da70878f2f7d81f773fba7d333617db4f637ed` |
| 30 | `lemma` | [homologyπ_extendHomologyIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/homology-extendhomologyiso-hom--a3672f06ed8a9ed58373d67f.md) | 341 | `result-track:a3672f06ed8a9ed58373d67f4ec77da86976b2e9485994a4c0f672dbfeb5a32c` |
| 31 | `lemma` | [homologyπ_extendHomologyIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/homology-extendhomologyiso-inv--56ec436508ba704e2d3b5c22.md) | 353 | `result-track:56ec436508ba704e2d3b5c22e18a99d4d02e5200bd8e2fb2fffe8ce6baa1e77c` |
| 32 | `lemma` | [pOpcycles_extendOpcyclesIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/popcycles-extendopcyclesiso-inv--58ab05a99df13971b0b36f8b.md) | 360 | `result-track:58ab05a99df13971b0b36f8b85e89fc69454782acac23f42d0a583423e40f526` |
| 33 | `lemma` | [pOpcycles_extendOpcyclesIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/popcycles-extendopcyclesiso-hom--cfdd782c36bdfb0b67cd8cd4.md) | 371 | `result-track:cfdd782c36bdfb0b67cd8cd468ed56dab299efe35d3abc29386abcc4ed7e6637` |
| 34 | `lemma` | [extendHomologyIso_hom_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendhomologyiso-hom-homology--6251d2be5f2f0564f8084a39.md) | 378 | `result-track:6251d2be5f2f0564f8084a3926a2715a662b44d09f5461a8c52d29db202b0a77` |
| 35 | `lemma` | [extendHomologyIso_inv_homologyι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendhomologyiso-inv-homology--00a46b0e9c8dd5b89daaecc8.md) | 386 | `result-track:00a46b0e9c8dd5b89daaecc89eefeb09b4d48d499b4b6444489f58af02132c07` |
| 36 | `lemma` | [extendCyclesIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendcyclesiso-hom-naturality--2d3998c2ac07337b6809ce18.md) | 395 | `result-track:2d3998c2ac07337b6809ce18ccce53f8f3644ebbdf92453d4d99abd775f1d0aa` |
| 37 | `lemma` | [extendHomologyIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/extendhomologyiso-hom-naturality--919c69627c41b1f68b7b4451.md) | 401 | `result-track:919c69627c41b1f68b7b44510e61c80a5cb148ca37c46ad54eaee3904c04660c` |
| 38 | `lemma` | [quasiIsoAt_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/quasiisoat-extendmap-iff--54364ace76e07be1b6deee95.md) | 407 | `result-track:54364ace76e07be1b6deee951c7a11d2ad467bc7aa535ab8fab630a4b8d1e848` |
| 39 | `lemma` | [quasiIso_extendMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/declarations/quasiiso-extendmap-iff--d63e831e5d9e1305018c934b.md) | 415 | `result-track:d63e831e5d9e1305018c934b84019c2bdf682730244c21e70e38846173ab3165` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
