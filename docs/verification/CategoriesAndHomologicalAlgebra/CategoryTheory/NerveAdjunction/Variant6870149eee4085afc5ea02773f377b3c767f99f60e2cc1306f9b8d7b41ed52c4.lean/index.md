# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NerveAdjunction.Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e824dadfad76cb70459b8b482c37ad831d1edadc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.HomotopyCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.MorphismProperty` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nerve₂Adj.counit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-counit-app--4fc969b73326e73dfbb4f418.md) | 42 | `declaration-track:4fc969b73326e73dfbb4f418d76e4f9dbcbe96555cc331a963ee6720c55570d8` |
| 2 | `theorem` | [nerve₂Adj.counit.app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-counit-app-eq--2a5975d7508c78ff6b8a1afe.md) | 54 | `result-track:2a5975d7508c78ff6b8a1afe69b1e5f28f23e455cd399953576064eee78b7d6c` |
| 3 | `theorem` | [nerve₂Adj.counit.naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-counit-naturality--5dc9fa884969b149d0844afd.md) | 61 | `result-track:5dc9fa884969b149d0844afdf2a3782e5afe45eb36f7c652e9cd53e2d0fa4606` |
| 4 | `def` | [nerve₂Adj.counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-counit--6c6aed8663208428f510fa57.md) | 75 | `declaration-track:6c6aed8663208428f510fa574e9d754ad1487946d5e4e7d1284162cf58ca19ac` |
| 5 | `def` | [toNerve₂.mk.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-app--c8eeab140dfe3cf33131b393.md) | 86 | `declaration-track:c8eeab140dfe3cf33131b3938b7d38a494d7dce588fd94617293ce523071ba97` |
| 6 | `theorem` | [toNerve₂.mk.app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-app-zero--4e52fe189674c39cf2c43570.md) | 95 | `result-track:4e52fe189674c39cf2c4357053ac69a7becd5cd961063b2a7146715e28af4a04` |
| 7 | `theorem` | [toNerve₂.mk.app_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-app-one--37e52f43af3e45b5a890686e.md) | 97 | `result-track:37e52f43af3e45b5a890686e023ad75bd40929002fd5039fb4529e1977afb7b3` |
| 8 | `theorem` | [toNerve₂.mk.app_two](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-app-two--ba161ee8e653587c02fcb91d.md) | 100 | `result-track:ba161ee8e653587c02fcb91d191c540ce13b4c163492d378d6103117f8a5e998` |
| 9 | `def` | [nerve₂.seagull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-seagull--fea2c6ca67b6235da302e511.md) | 105 | `declaration-track:fea2c6ca67b6235da302e5111456c34932651cb595bc80ec92bef3920cc7f9c4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/instance--6128ce9d3d8698bc2b6f8672.md) | 111 | `declaration-track:6128ce9d3d8698bc2b6f86726a62c8e3d3b25b67f688aab62f38ad1d6a4ef85d` |
| 11 | `abbrev` | [toNerve₂.mk.naturalityProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturalityproperty--00f86a899f06bbc9b3fc924f.md) | 132 | `declaration-track:00f86a899f06bbc9b3fc924f05407d01ac3c1d15c4737eb9181108606835a188` |
| 12 | `lemma` | [ReflPrefunctor.congr_mk₁_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/reflprefunctor-congr-mk-map--4127d75126e5d7357b725746.md) | 135 | `result-track:4127d75126e5d7357b725746b934aa6e0d1bf7583c635416720ef17877b341d3` |
| 13 | `lemma` | [toNerve₂.mk_naturality_σ00](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturality-00--946ad4d684ba1a58ebdb6e0f.md) | 143 | `result-track:946ad4d684ba1a58ebdb6e0f820df7d44b54491528254c4246a0060368ffdb98` |
| 14 | `lemma` | [toNerve₂.mk_naturality_δ0i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturality-0i--3a75b1c96f560b685757544f.md) | 154 | `result-track:3a75b1c96f560b685757544f0b9549ede5c5461c192165fa8717a22c6ba03bff` |
| 15 | `lemma` | [toNerve₂.mk_naturality_δ1i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturality-1i--c14edf4b84216f066d7283df.md) | 164 | `result-track:c14edf4b84216f066d7283dfe4ca489323f3e6bf9ca1ec0af114db5b10ca8b53` |
| 16 | `lemma` | [toNerve₂.mk_naturality_σ1i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturality-1i--50d26dadf644fa2b932c54cc.md) | 213 | `result-track:50d26dadf644fa2b932c54cc607b8b55825437267ceec8640f685015d93ff999` |
| 17 | `theorem` | [toNerve₂.mk_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk-naturality--64a85a5748cd0cc8bfcb8833.md) | 239 | `result-track:64a85a5748cd0cc8bfcb8833dbd379a01b6bb7e2b4e84adfec72b7bb27f136d0` |
| 18 | `def` | [toNerve₂.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk--3fb1772c9e1c58f3a8d3c0a7.md) | 252 | `declaration-track:3fb1772c9e1c58f3a8d3c0a700f10caa0ba05bf0f69f31371ee9d9a1f40e3e4e` |
| 19 | `def` | [toNerve₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-mk--82b5e5fedcc19d9d769f926c.md) | 271 | `declaration-track:82b5e5fedcc19d9d769f926c395c567f86b74aa8ca5c4bcfbe6f7f65de9e37c0` |
| 20 | `theorem` | [oneTruncation₂_toNerve₂Mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/onetruncation-tonerve-mk--0d578304a356ec4f2436dcf7.md) | 275 | `result-track:0d578304a356ec4f2436dcf76818334350a047c2985cf676aa8c3f2dd76c0239` |
| 21 | `theorem` | [toNerve₂.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/tonerve-ext--55cad4a33517c4c7b2b5e61c.md) | 296 | `result-track:55cad4a33517c4c7b2b5e61ca3943b42089eaeb45400dfb85c34d948b6d7da76` |
| 22 | `def` | [nerve₂Adj.unit.app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-unit-app--b5aa862c41fb0f06e4ac974a.md) | 318 | `declaration-track:b5aa862c41fb0f06e4ac974a849e26b2472f3324cc08b028fb9d6593d9d80fa3` |
| 23 | `theorem` | [nerve₂Adj.unit.map_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-unit-map-app-eq--81be049c17a6a10f7b8bd33f.md) | 326 | `result-track:81be049c17a6a10f7b8bd33fe56af6cb140b13a5bda5504e7b885582bcc0a923` |
| 24 | `lemma` | [nerve₂Adj.unit.naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-unit-naturality--409ebcffc4e02644f91e5ff7.md) | 334 | `result-track:409ebcffc4e02644f91e5ff7544f3ff9b159b6e8d0ea39008166ecd0a59e2dd5` |
| 25 | `def` | [nerve₂Adj.unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-unit--87ddc71c7471aad4be416df8.md) | 346 | `declaration-track:87ddc71c7471aad4be416df85a36beb62fbc858ef1c2dd5b669bca49814d09fb` |
| 26 | `def` | [nerve₂Adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj--e7cf50f790e0ca48b9d76a1b.md) | 353 | `declaration-track:e7cf50f790e0ca48b9d76a1b1e887474e0f7bb731d206030ad666714a880f280` |
| 27 | `instance` | [nerveFunctor₂.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-faithful--8fe4b497d52833d051081b0c.md) | 410 | `declaration-track:8fe4b497d52833d051081b0c83278f8f3ba8836798244a4a0567cc91e9cb3bb6` |
| 28 | `instance` | [nerveFunctor₂.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-full--3cc1c2ac71cdd3eaa4f0d9e5.md) | 414 | `declaration-track:3cc1c2ac71cdd3eaa4f0d9e55c81e5ef53f6d25b734d874847d65282aded8bd6` |
| 29 | `def` | [nerveFunctor₂.fullyfaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-fullyfaithful--0feb9529b4e096bd2cfa233a.md) | 480 | `declaration-track:0feb9529b4e096bd2cfa233aa4f26e41ab2a8300695cdf22cad2f39903e5a44b` |
| 30 | `instance` | [nerve₂Adj.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerve-adj-reflective--72159a2406ab08a692abb963.md) | 483 | `declaration-track:72159a2406ab08a692abb963abd8252043ee5c7141a968c601663cb841305c7c` |
| 31 | `def` | [nerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerveadjunction--b6d60505d1adc27a9f134406.md) | 490 | `declaration-track:b6d60505d1adc27a9f13440655eaeb225716ccc7daf92e93328e0d0a9a9f4b6a` |
| 32 | `instance` | [nerveFunctor.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-faithful--cc7f17d5e8628ca2dcfd5679.md) | 495 | `declaration-track:cc7f17d5e8628ca2dcfd5679a5d10a86827f61d284ebe085869565e40ee57d15` |
| 33 | `instance` | [nerveFunctor.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-full--dee71a63ea0d47bd4e0f2738.md) | 500 | `declaration-track:dee71a63ea0d47bd4e0f2738dc83dfe0010233d0d97e62efc409335567592404` |
| 34 | `def` | [nerveFunctor.fullyfaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctor-fullyfaithful--12359cb5b9f66b42b439d514.md) | 506 | `declaration-track:12359cb5b9f66b42b439d514e60d68259a4787dcfec699a48c4ac4de109ad127` |
| 35 | `instance` | [nerveAdjunction.isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nerveadjunction-isiso-counit--03b3851131e8fb2cc0d87cea.md) | 509 | `declaration-track:03b3851131e8fb2cc0d87cea72fc076c3779179f9191c4b5e6135ba7e189fd04` |
| 36 | `def` | [nerveFunctorCompHoFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/nervefunctorcomphofunctoriso--a82e32e0326e049a142338bf.md) | 514 | `declaration-track:a82e32e0326e049a142338bfb1ffaa15edbd5a925d933aa5d0e087ebbf9fb463` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/declarations/instance--1ef17c2656c430e70e67ac25.md) | 517 | `declaration-track:1ef17c2656c430e70e67ac25c7a177b4d72cb4df47a6e2ef4355dc285fc5b678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
