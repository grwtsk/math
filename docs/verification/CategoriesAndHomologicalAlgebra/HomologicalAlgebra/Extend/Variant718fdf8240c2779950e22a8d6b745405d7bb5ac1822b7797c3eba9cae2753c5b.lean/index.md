# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Extend.Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0adf7dc0c7e33ae40b1fd9361634a2aaefe1d7c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0adf7dc0c7e33ae40b1fd9361634a2aaefe1d7c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/x--059e7259494801c4c5772e55.md) | 37 | `declaration-track:059e7259494801c4c5772e5597c9ad7b9ee7fac42dcd5f3b7b61728e25460ac7` |
| 2 | `def` | [XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/xiso--aa38a27e6a2f2b190a22db48.md) | 42 | `declaration-track:aa38a27e6a2f2b190a22db4873f951154d1285c72b84875a6bdc913c581479a8` |
| 3 | `lemma` | [isZero_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/iszero-x--50f31cf56c53ee4572d5f3c0.md) | 45 | `result-track:50f31cf56c53ee4572d5f3c0256d2886136bd901a383b2bc5f543eb713e044f9` |
| 4 | `def` | [XOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/xopiso--70c907740fa79b3161ba69ea.md) | 51 | `declaration-track:70c907740fa79b3161ba69ea8764b3cd9323fc53aa5ae47ca3603c85cf00e6c3` |
| 5 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/d--25a6027ab2fb9d2023efa257.md) | 57 | `declaration-track:25a6027ab2fb9d2023efa257110db094971f66a09de9dbeee6b668a9b902c9f3` |
| 6 | `lemma` | [d_none_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/d-none-eq-zero--2664f1bd994cecfc428d4ade.md) | 62 | `result-track:2664f1bd994cecfc428d4ade6b324fe71ea4cafd87aca23502afbf3d18903bf9` |
| 7 | `lemma` | [d_none_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/d-none-eq-zero--c87b4cf3e91cf26e97e97edd.md) | 65 | `result-track:c87b4cf3e91cf26e97e97eddc0629787c0fd82e9afac3341f4a64b295d129bb8` |
| 8 | `lemma` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/d-eq--62c6a48dbaaad447ada23691.md) | 68 | `result-track:62c6a48dbaaad447ada236910e95232f947870530c9e2688db14a724bc367bcc` |
| 9 | `lemma` | [XOpIso_hom_d_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/xopiso-hom-d-op--82b1a9c7efaf3dcce9d9b77d.md) | 74 | `result-track:82b1a9c7efaf3dcce9d9b77d8099a13012649db9274c7dd9495f33b39641a1d1` |
| 10 | `def` | [mapX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/mapx--16176385c4f1576741e99309.md) | 91 | `declaration-track:16176385c4f1576741e99309ee44774f2ea44f9f14836bd6b06f1b7dd01f592f` |
| 11 | `lemma` | [mapX_some](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/mapx-some--72a08843343893b13a238c23.md) | 95 | `result-track:72a08843343893b13a238c2335a6d9c0c44df9f0a72c1ff280a6c3d9e979b430` |
| 12 | `lemma` | [mapX_none](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/mapx-none--e2fa7d61bba89f1e2c7e9ff9.md) | 102 | `result-track:e2fa7d61bba89f1e2c7e9ff901e12cc91ab1d4c2ad0f2ab27ad2158e52c49e62` |
| 13 | `def` | [extend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extend--bd441cd7c073a60525e90a24.md) | 110 | `declaration-track:bd441cd7c073a60525e90a2432de273588a6fe4c3d3b565da97b6d9057972b5e` |
| 14 | `def` | [extendXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendxiso--2fd629ea0b092366b4e91a85.md) | 134 | `declaration-track:2fd629ea0b092366b4e91a85668a33b2d415ead04b2960a33b0954f684abce61` |
| 15 | `lemma` | [isZero_extend_X'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/iszero-extend-x--3366227c49f8546ae2917c73.md) | 138 | `result-track:3366227c49f8546ae2917c73b397552717619206ee3ddd405654b914781aee56` |
| 16 | `lemma` | [isZero_extend_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/iszero-extend-x--145fb1914c229baa21ac82bc.md) | 142 | `result-track:145fb1914c229baa21ac82bcbe3ae7e855bf57c27c439fc3fc17dcf70aab48b5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/instance--ad914de1b69cab23a32bebef.md) | 150 | `declaration-track:ad914de1b69cab23a32bebef66d23c82f2a72f2d4eeb26d650e3dad80a3ea463` |
| 18 | `lemma` | [extend_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extend-d-eq--8a7b3837822dd613f452a17b.md) | 153 | `result-track:8a7b3837822dd613f452a17b04585c73a927351256590ea02b28aeb89db4f12a` |
| 19 | `lemma` | [extend_d_from_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extend-d-from-eq-zero--0f1ac2680fa366fa4bb4f3a5.md) | 158 | `result-track:0f1ac2680fa366fa4bb4f3a511b9a3ec1b670817e7d872f29e901445a7021e65` |
| 20 | `lemma` | [extend_d_to_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extend-d-to-eq-zero--f6b5daee6c72ef646764ed6d.md) | 167 | `result-track:f6b5daee6c72ef646764ed6d7ea127752a3afc1b7e35e7c590994c029a720641` |
| 21 | `def` | [extendMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap--08ce2fbcf2efb309226f633e.md) | 181 | `declaration-track:08ce2fbcf2efb309226f633e9165c6831c1103c8a54f143556666a5c25448445` |
| 22 | `lemma` | [extendMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-f--b81bdc52c4acc68e4189c363.md) | 201 | `result-track:b81bdc52c4acc68e4189c363813e3e8afaa93ebbf406c51f858f55cfdd19563a` |
| 23 | `lemma` | [extendMap_f_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-f-eq-zero--eaad63cb3140d9442309f3a5.md) | 208 | `result-track:eaad63cb3140d9442309f3a587bc2515209e36f347bf3f8f96bb852fab03c78e` |
| 24 | `lemma` | [extendMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-comp--96ebea14c62d875a4aff02f8.md) | 214 | `result-track:96ebea14c62d875a4aff02f88112b2c1ca6f62f6ffd07f99b24d428175acda34` |
| 25 | `lemma` | [extendMap_id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-id-f--4386c9c8032c79d9e42521e6.md) | 224 | `result-track:4386c9c8032c79d9e42521e668a568edb92a9eceef372d32327aff5a8fb2249e` |
| 26 | `lemma` | [extendMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-id--967699d038f350848fd8250f.md) | 231 | `result-track:967699d038f350848fd8250f6d58f787265f2199df5e99bbbb90d8b843f60b78` |
| 27 | `lemma` | [extendMap_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-zero--1c6f8a0930a5dbae5f7f2884.md) | 239 | `result-track:1c6f8a0930a5dbae5f7f288405ced599c0fde79ac22c6ffbc918e22f87a0525b` |
| 28 | `def` | [extendOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendopiso--d4bd1618ed5526e5982ecf75.md) | 247 | `declaration-track:d4bd1618ed5526e5982ecf75a1cbef5cd8bf995206488b94f83117488920cadd` |
| 29 | `lemma` | [extend_op_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extend-op-d--dee59f38b7436d0904363853.md) | 252 | `result-track:dee59f38b7436d090436385368f0165f9fdf401867c3c6a080887fcc863a0a29` |
| 30 | `lemma` | [extendMap_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendmap-add--ee5761ee377e2153af05924f.md) | 263 | `result-track:ee5761ee377e2153af05924f2857c0fd51d58a062484d837c9cfc106a49a3cab` |
| 31 | `def` | [extendFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/extendfunctor--b87fc39ad75989e49785b60c.md) | 282 | `declaration-track:b87fc39ad75989e49785b60cb3a8488272054054efedf5bbf5cb3a2508b83d78` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/instance--fac9cfbceac70d6e3b87a4f8.md) | 287 | `declaration-track:fac9cfbceac70d6e3b87a4f8852cbeb8b4a42c1a92997ce0ba3880aaf558a552` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Extend/Variant718fdf8240c2779950e22a8d6b745405d7bb5ac1822b7797c3eba9cae2753c5b.lean/declarations/instance--0b7cd770ae09b6516b3f983f.md) | 289 | `declaration-track:0b7cd770ae09b6516b3f983fd15ae840633d371a8b58442ec92df55a530417ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
