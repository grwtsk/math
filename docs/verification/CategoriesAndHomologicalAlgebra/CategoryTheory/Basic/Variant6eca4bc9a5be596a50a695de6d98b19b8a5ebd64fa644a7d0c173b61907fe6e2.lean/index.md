# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10f817b9b001ded7440ead377dbfd2d8dee19bfc",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10f817b9b001ded7440ead377dbfd2d8dee19bfc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monad--aeb3c2155f08e90cf8b752ac.md) | 39 | `declaration-track:aeb3c2155f08e90cf8b752ac9e2fd5b33d90c3d0f0b88fcf0c6febcaf83f600b` |
| 2 | `lemma` | [Monad.unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monad-unit-naturality--24c6f4bf03aa1f3eb88ad171.md) | 49 | `result-track:24c6f4bf03aa1f3eb88ad171cee4e534d853861bc0bd469bfbda5b3f4fd4473f` |
| 3 | `lemma` | [Monad.mu_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monad-mu-naturality--7c3a5681874348cd8ce5e5b5.md) | 54 | `result-track:7c3a5681874348cd8ce5e5b55957b9ccb4bb3532ad24e4f17fdf4c57af008077` |
| 4 | `structure` | [Comonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonad--aba8569d5e038b638959e6c3.md) | 64 | `declaration-track:aba8569d5e038b638959e6c3ded964e413c100c6286e6867240ef00503100c59` |
| 5 | `lemma` | [Comonad.counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonad-counit-naturality--c68374b7375145de23adfbfc.md) | 75 | `result-track:c68374b7375145de23adfbfcabb325cdec4d3dd7249883846586e2a89fd791ca` |
| 6 | `lemma` | [Comonad.delta_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonad-delta-naturality--6c7d63cd11c08c24a5135fb8.md) | 80 | `result-track:6c7d63cd11c08c24a5135fb8cc95ed00f95a0f8a9ea4136991813885df7ccba0` |
| 7 | `instance` | [coeMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/coemonad--cc664f36b6775bb320ae4b47.md) | 87 | `declaration-track:cc664f36b6775bb320ae4b47b388b8b4aa3d7f8c17821456dfdeced7c5e4498b` |
| 8 | `instance` | [coeComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/coecomonad--cb1f8e941ff74c079b900e31.md) | 90 | `declaration-track:cb1f8e941ff74c079b900e3110ac23ac0a3a5a747904140d7ea693525e38cd35` |
| 9 | `structure` | [MonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadhom--220bc0d8647088e9309e2067.md) | 112 | `declaration-track:220bc0d8647088e9309e2067233b5474306cec0eed380c6749cb85489b9df2b5` |
| 10 | `structure` | [ComonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadhom--a9aa091d4f1cce60ab8986d1.md) | 121 | `declaration-track:a9aa091d4f1cce60ab8986d1450ee7b9c9cbd74d010960098d591ab04b423975` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--2228bebbb64a4f00abb4178e.md) | 130 | `declaration-track:2228bebbb64a4f00abb4178e300af3b61e90db3785356c6b506042b426d14b91` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--d23c8fcf3d590099af10bfd4.md) | 133 | `declaration-track:d23c8fcf3d590099af10bfd44594fee4655e4c90b8623682c68269452f656aef` |
| 13 | `lemma` | [MonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadhom-ext--c47c7f933c0215092c0144bc.md) | 138 | `result-track:c47c7f933c0215092c0144bc187af63ff72b4b8139d323d374309a54c2d626f8` |
| 14 | `lemma` | [ComonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadhom-ext--e119b98fbe3ecfe7e8365f17.md) | 143 | `result-track:e119b98fbe3ecfe7e8365f171d9da4dfb612746de10c16d111179aaa3a69acc2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--a42e51505bddb96dd0992858.md) | 146 | `declaration-track:a42e51505bddb96dd09928587c236097eaa6f663c714f00e0a9874fe49f67b71` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--82ffc3f75bc67185d7ba0ebe.md) | 157 | `declaration-track:82ffc3f75bc67185d7ba0ebe345712cc8fa44b04712dc999d48e8633200a6a9b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--7d6a1454d05f4785604588a7.md) | 168 | `declaration-track:7d6a1454d05f4785604588a784a0a804ab55369eab3f46e97d1dbb6fa8cfeee1` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadhom-id-tonattrans--0a1f39a0c51c3d80cc20bb44.md) | 172 | `result-track:0a1f39a0c51c3d80cc20bb4461ac4020af0d26d69bba433687e3acf822e64664` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadhom-comp-tonattrans--1467194d9c4116bf3803b0d3.md) | 176 | `result-track:1467194d9c4116bf3803b0d33b4cc54543240aa1ce5c4394bd571b1780276e8c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--07a81f1520c06789d568dcb6.md) | 180 | `declaration-track:07a81f1520c06789d568dcb6ce59bedba6e1426ad2e85eaf8e005fc5a8bfea72` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadhom-id-tonattrans--094214a2bf67f5142ff037a0.md) | 184 | `result-track:094214a2bf67f5142ff037a0b4a0ca77cac23cbafbc6a4b4c4012cee8a7010af` |
| 22 | `theorem` | [comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comp-tonattrans--03cf7513e62df1f09a99dec6.md) | 188 | `result-track:03cf7513e62df1f09a99dec672aa6c75eb3e99b435f73c90c79f8ccff6ace839` |
| 23 | `def` | [MonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadiso-mk--29d0f87731cf05495b40656e.md) | 195 | `declaration-track:29d0f87731cf05495b40656eabfe7587109d005b567ccad546c728f5426bb16d` |
| 24 | `def` | [ComonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadiso-mk--e9f4bf6a16c6095e38e12752.md) | 215 | `declaration-track:e9f4bf6a16c6095e38e12752a93697d274c10a2db1cb563dda545c30f1b802b5` |
| 25 | `def` | [monadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadtofunctor--6d20a10ec1b35eeb98221abf.md) | 237 | `declaration-track:6d20a10ec1b35eeb98221abfe4e442e129cad309424ecc67d58a2e64bfcccf44` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--f8c279cef2de00d2bfc2363c.md) | 241 | `declaration-track:f8c279cef2de00d2bfc2363ca54c2a6386d4c41c04a6547389787123d8a15035` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadtofunctor-mapiso-monad-iso-mk--9e2493f83dcb60f942c9d143.md) | 243 | `result-track:9e2493f83dcb60f942c9d1438cdf74a5714a9de9fcc1affa9d7759e7bfa3c7c0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--29e5353090c540904e065b25.md) | 248 | `declaration-track:29e5353090c540904e065b25ae9718bfcdd444fc42d3353aa5307e2d7d94b883` |
| 29 | `def` | [comonadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadtofunctor--5dc60a13e0df97e289f0eb5d.md) | 254 | `declaration-track:5dc60a13e0df97e289f0eb5d46038277f2160930246cfe2de8b84ba190a03772` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--7a02019896479ce6f0ded7bf.md) | 258 | `declaration-track:7a02019896479ce6f0ded7bf0eb8fb3c0401cef8288082c99db40bc55cdd80c0` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadtofunctor-mapiso-comonad-iso-mk--519e95304455e9fc1b86ed28.md) | 260 | `result-track:519e95304455e9fc1b86ed28ec5d94ccf3f28b549a8c3e3d4b5dddf164588a59` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--f82cf03b1d8c5103d69b05dd.md) | 265 | `declaration-track:f82cf03b1d8c5103d69b05dd8f3c0c5ebff7d71efc452cda08f8489a556c0fa3` |
| 33 | `def` | [MonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/monadiso-tonatiso--9afd0d9f6bf9953179974914.md) | 276 | `declaration-track:9afd0d9f6bf9953179974914e4ec1455c8a10d1580bc82cdcfc9059dc8ea4a68` |
| 34 | `def` | [ComonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/comonadiso-tonatiso--c0a52332e1b8ba9ff5926c2c.md) | 282 | `declaration-track:c0a52332e1b8ba9ff5926c2cba4e174373235cc07e61b0d296718881f8b0e725` |
| 35 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/id--5cb6cfa7f3e8c1db771d8d9e.md) | 291 | `declaration-track:5cb6cfa7f3e8c1db771d8d9ef1ea99778e5fefa70d307389108ced92f70da5de` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--6850767482c3f81e8204af83.md) | 296 | `declaration-track:6850767482c3f81e8204af83d48401ca7bf7e4fca4a132918f7aba509a3aa000` |
| 37 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/id--4b36d4a6198de64d05aab5ae.md) | 305 | `declaration-track:4b36d4a6198de64d05aab5aedc1950357b34dc272a33734f3aea9abf714341f5` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/instance--4f538178fd05592899e76078.md) | 310 | `declaration-track:4f538178fd05592899e76078cff2fd9ad55180961bc13c2c7336b058054b8f1a` |
| 39 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/transport--bc3f61ab95485ecfc54e81ab.md) | 322 | `declaration-track:bc3f61ab95485ecfc54e81abdd949ae0102dd6dc7af33a0e5604ce03a60cb739` |
| 40 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/transport--2b3d8b1323f7c0c26773e6a7.md) | 354 | `declaration-track:2b3d8b1323f7c0c26773e6a71a00c7fc347d18eed58c7225f566e3c59c91f687` |
| 41 | `lemma` | [map_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/map-unit-app--2ef577a53c7c7eca460aa29d.md) | 379 | `result-track:2ef577a53c7c7eca460aa29d53b4875bd4acc2113a0d623247b60b829d007eea` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/issplitmono-iff-isiso-unit--25720f94df5bdda6e20701cc.md) | 383 | `result-track:25720f94df5bdda6e20701ccae48857ba0830513223107cc2d8f83171d274bc2` |
| 43 | `lemma` | [map_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/map-counit-app--642b1c9d8ce8dfadd5fa2f0a.md) | 393 | `result-track:642b1c9d8ce8dfadd5fa2f0a37f54a19d10675ab798d808df8ad6807f6debd22` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/declarations/issplitepi-iff-isiso-counit--8b565585f0385870a5ea5e9a.md) | 397 | `result-track:8b565585f0385870a5ea5e9aace6e8be73f6223730ecd725416191a059f9c3a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
