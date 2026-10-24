# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9c1c2a89c744e6fb503f95b779ee299adf98ec",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9c1c2a89c744e6fb503f95b779ee299adf98ec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monad--8641a45f49dac6e01b880143.md) | 47 | `declaration-track:8641a45f49dac6e01b880143abe8ad3ec9443582f1c3a47906b11bd814511eb3` |
| 2 | `lemma` | [Monad.unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monad-unit-naturality--a8a7def1d4d193bda6414fdd.md) | 57 | `result-track:a8a7def1d4d193bda6414fdda8381f420f3070ef77d949a5c2119f38e7ba2616` |
| 3 | `lemma` | [Monad.mu_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monad-mu-naturality--cbe350649d8eba67ff13ff73.md) | 62 | `result-track:cbe350649d8eba67ff13ff73b59917d73789bc9d1443d86fb8fff5cbeebcb9f3` |
| 4 | `structure` | [Comonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonad--8ec9157f1a11cbf6667f362c.md) | 72 | `declaration-track:8ec9157f1a11cbf6667f362cb4ec927e3906310d7a7b14f62a38dac25706f2e6` |
| 5 | `lemma` | [Comonad.counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonad-counit-naturality--0b54672046629ee1f4129d85.md) | 83 | `result-track:0b54672046629ee1f4129d85ae339598c027774b3d2e64c593e14fad0b1c6186` |
| 6 | `lemma` | [Comonad.delta_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonad-delta-naturality--cb7a748f5e23ddab937307f8.md) | 88 | `result-track:cb7a748f5e23ddab937307f8173306d8ba9d45dd98795a181ada9eff9ae13179` |
| 7 | `instance` | [coeMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/coemonad--b4f597a75ed06134ee8db79a.md) | 95 | `declaration-track:b4f597a75ed06134ee8db79acc3984e79b129857ee1b9b0d7016b40c14d7bd12` |
| 8 | `instance` | [coeComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/coecomonad--a1304dbbbfe9722179237e89.md) | 98 | `declaration-track:a1304dbbbfe9722179237e89115b2c6efd7c350d4d472ebd72c7d6cb127c46d1` |
| 9 | `structure` | [MonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadhom--a7275c7d6454d4152e104a03.md) | 120 | `declaration-track:a7275c7d6454d4152e104a03c1fb9d25fab288fe261615cbd0149b59f4d5539e` |
| 10 | `structure` | [ComonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadhom--6f6f280d4e09f50e0d9de9ea.md) | 129 | `declaration-track:6f6f280d4e09f50e0d9de9eae1c31bddee33482ad90295a6719747e10349078f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--021c045748847e976207b936.md) | 138 | `declaration-track:021c045748847e976207b936266f5e3d59140693c6f5ed6d7ac2c6eaf90c0ded` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--34b498aa53637574ec439558.md) | 141 | `declaration-track:34b498aa53637574ec439558c04d98e7f5c94a3112a5a5443441e7e3ba56b1d5` |
| 13 | `lemma` | [MonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadhom-ext--30db82559cb70b4a9ac2418d.md) | 146 | `result-track:30db82559cb70b4a9ac2418d657d9fc88b5a161da4184e0bd1609ba87852c690` |
| 14 | `lemma` | [ComonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadhom-ext--beea2483508a8f6d892a3209.md) | 151 | `result-track:beea2483508a8f6d892a32093e23371ffd54cbdc18bfd022a2d4d605462805e8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--6b6d4c8b7826546e2139ad1f.md) | 154 | `declaration-track:6b6d4c8b7826546e2139ad1f1088ff439eb1371e767cd6cec1638b8afc833a95` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--5023bcf2fa608efed84a10db.md) | 165 | `declaration-track:5023bcf2fa608efed84a10db6d503847fb85a39820003751caeb4d3efe84551a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--7e36a1dcecab8970e36816d2.md) | 176 | `declaration-track:7e36a1dcecab8970e36816d247f6525e270d873019e2cb3ab5a39c2ed79858ad` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadhom-id-tonattrans--6e4da95dc50bbc35aa44b0dc.md) | 180 | `result-track:6e4da95dc50bbc35aa44b0dc9b94977c4b46c6a9683202e345cac7204f387a2c` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadhom-comp-tonattrans--413df77faa72dff4a89d8aac.md) | 184 | `result-track:413df77faa72dff4a89d8aac5374647eaf31ac777f37388f770e95a5de22b9d1` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--be19dd63e05d3bb0555c1c6d.md) | 188 | `declaration-track:be19dd63e05d3bb0555c1c6d2f44637ff16c6409fbf1db0fa2e4f1cef1c16f26` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadhom-id-tonattrans--8f3a531b2911e809f4457863.md) | 192 | `result-track:8f3a531b2911e809f4457863f5cbd56a048de57f9d3c139cb35c82ea42941933` |
| 22 | `theorem` | [comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comp-tonattrans--a82a7b29f6a1a07935b2136e.md) | 196 | `result-track:a82a7b29f6a1a07935b2136e881065f451c407ff69dcc246ca34893250e50f9e` |
| 23 | `def` | [MonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadiso-mk--4ffe6eb8dc14e4d5251d30a5.md) | 203 | `declaration-track:4ffe6eb8dc14e4d5251d30a5a32dbcccfaebbf3eb5c86c62d66d6b59b23c5f77` |
| 24 | `def` | [ComonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadiso-mk--1cfe9991c6fb1c2ecc2700c9.md) | 223 | `declaration-track:1cfe9991c6fb1c2ecc2700c93415b29b88ae90878d1d6a2d4f7fa5316e39e6d3` |
| 25 | `def` | [monadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadtofunctor--0a76d94709834846c0917c15.md) | 245 | `declaration-track:0a76d94709834846c0917c15ba7700e542e7a08d5e161e5be75521fc07c7208d` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--a4d48a21c2740b2cddcc99b2.md) | 249 | `declaration-track:a4d48a21c2740b2cddcc99b22d62a966b952862b1e0645eb62ee836c141805a4` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadtofunctor-mapiso-monad-iso-mk--ac04b50cf2bd7a4fe1945d88.md) | 251 | `result-track:ac04b50cf2bd7a4fe1945d88cb87a2c97a8caddd5c98d2dd246002440e88d15b` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--dcf7c6fdc45621be20aa13d8.md) | 256 | `declaration-track:dcf7c6fdc45621be20aa13d8d0a02446ff6e778506ce5d5452f129576cd2d94c` |
| 29 | `def` | [comonadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadtofunctor--8e7e6240363315a9b83e15cb.md) | 262 | `declaration-track:8e7e6240363315a9b83e15cbb08d205a5e1e2cc6bfe9a3c5b1c9a9538a85627d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--c880ddd210395a01f83a8a29.md) | 266 | `declaration-track:c880ddd210395a01f83a8a29c867a6521fa12bd56035bcb42f0e0ac56a59edad` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadtofunctor-mapiso-comonad-iso-mk--42ecc8e999c74929bd087210.md) | 268 | `result-track:42ecc8e999c74929bd0872104b6f2b9796224b52861505e24b5075464803f018` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--939f78539ca220091ddca026.md) | 273 | `declaration-track:939f78539ca220091ddca026827a09e5fa0483c0f097589cd629fd9de4af04ac` |
| 33 | `def` | [MonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/monadiso-tonatiso--7aaec0566c274176174e7402.md) | 284 | `declaration-track:7aaec0566c274176174e7402ea280b5086bda6d2cfb6865a446c7543e7321010` |
| 34 | `def` | [ComonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/comonadiso-tonatiso--4bef09cb89abeeb8b0a0c685.md) | 290 | `declaration-track:4bef09cb89abeeb8b0a0c6856e0575497b73d68128f0ecead6412aedf48e23c2` |
| 35 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/id--1630867728ec422cfe4f4ef6.md) | 299 | `declaration-track:1630867728ec422cfe4f4ef6e767fd03a344f6f98e5873eb971df7cdfafde522` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--394a8f1be6d981b26cca5fd8.md) | 304 | `declaration-track:394a8f1be6d981b26cca5fd8683580a4e07e525054e11bd011ba4ce41aa872c2` |
| 37 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/id--f486652a60ebae820a7bd953.md) | 313 | `declaration-track:f486652a60ebae820a7bd953d6baa0cfce4ea6461af73d3c397df2f33656985d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/instance--97ee9ba87e8e49ad191f8fc2.md) | 318 | `declaration-track:97ee9ba87e8e49ad191f8fc20d0c25ef29c8d59e0104243bdd0a8b03057bbb3e` |
| 39 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/transport--810b44dd8a64fd86c3f030cf.md) | 330 | `declaration-track:810b44dd8a64fd86c3f030cf3bb2cbc3cd6432f4f84159fc904ead3931553cbc` |
| 40 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/transport--525afe7170aa42aa1b5b9cba.md) | 362 | `declaration-track:525afe7170aa42aa1b5b9cba25f4549b3c05b7715f095501ac95d6f90616eee4` |
| 41 | `lemma` | [map_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/map-unit-app--021d62a1e9fd29c77c59a20e.md) | 387 | `result-track:021d62a1e9fd29c77c59a20e30c7bdfc2f5ffa2ea9740eb0b5291e38b4890569` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/issplitmono-iff-isiso-unit--0c6607f1d017d8930fa8c2c6.md) | 391 | `result-track:0c6607f1d017d8930fa8c2c64974965eebac5d63ef722b78918a7f92843d44a1` |
| 43 | `lemma` | [map_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/map-counit-app--7badf1364fbc69868efb0513.md) | 401 | `result-track:7badf1364fbc69868efb05135a2e8fa2016af455a2a2c4ae58f12e97fc72a401` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean/declarations/issplitepi-iff-isiso-counit--9b6377dbca7c665f3be8a65a.md) | 405 | `result-track:9b6377dbca7c665f3be8a65a4ce5bfb65335d4c6f7ce3c447b783f1888486126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
