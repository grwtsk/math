# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sobolev.Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c425eabbfaad1b93ef5f7a758cdd70a8cd3a7cad",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c425eabbfaad1b93ef5f7a758cdd70a8cd3a7cad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/cs--9bd418735f9fa828a6704127.md) | 30 | `declaration-track:9bd418735f9fa828a6704127bbcc50dab8a39897ed47c8a0b6fa280d1c9fb01d` |
| 2 | `structure` | [trunc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/trunc--69007b34c2f80bf9fd80bfe1.md) | 35 | `declaration-track:69007b34c2f80bf9fd80bfe15a4a424b3b64f5712feb4eae72b10ef1b804fdb2` |
| 3 | `structure` | [W1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/w1--5c469c22ac51d3fa0e34855b.md) | 39 | `declaration-track:5c469c22ac51d3fa0e34855b47209541348331d8f4b256b4f638c844bc193e2b` |
| 4 | `abbrev` | [W21](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/w21--808253e9351b213e2b552999.md) | 44 | `declaration-track:808253e9351b213e2b552999aa97ce6d07ca7b2713350c83a60d85605b0480d9` |
| 5 | `def` | [funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/funscale--7b7ec4912e1390e8faef871a.md) | 48 | `declaration-track:7b7ec4912e1390e8faef871a298d513834e79cb90cd2f5ad1741e3372a5e51f2` |
| 6 | `lemma` | [contDiff_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/contdiff-ofreal--0a50abe1a05469a9e8d2806e.md) | 50 | `result-track:0a50abe1a05469a9e8d2806e595d93a5ff5d98d121f6949993e662b031fe4450` |
| 7 | `lemma` | [tendsto_funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/tendsto-funscale--a4487cb4f61d35e9df2a3a9c.md) | 57 | `result-track:a4487cb4f61d35e9df2a3a9c58010eab8ba76306cf6f8a499a4ce7f353f4ad80` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--e188f40bae4213c1e3380634.md) | 67 | `declaration-track:e188f40bae4213c1e3380634ca7bf9c1a53677b0fb2c7fd9bc5fa858035c5f37` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--7747a5fd91d4c4257dee3325.md) | 69 | `declaration-track:7747a5fd91d4c4257dee3325011fba689b82fcdbd57ee2f6234ee01218dd73e5` |
| 10 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/neg--bb1141827d7618b1a734afa8.md) | 72 | `declaration-track:bb1141827d7618b1a734afa82347f924bb5951da17b2d21e2a494487ed049798` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--428fc6caa30ff8baac33aec2.md) | 77 | `declaration-track:428fc6caa30ff8baac33aec2eb6435c01687a5d1c40ec4e0db3659c4e76eae78` |
| 12 | `lemma` | [neg_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/neg-apply--0d842fe34c569ea428d462db.md) | 79 | `result-track:0d842fe34c569ea428d462db091aab9a5e80ba3ac9977d7cb558d684286db0e1` |
| 13 | `def` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/smul--c97d88dfeb511286c940684e.md) | 81 | `declaration-track:c97d88dfeb511286c940684e858756d5f596a65325b27b33d077f8eb87914236` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--775807f4c64b33318470f142.md) | 83 | `declaration-track:775807f4c64b33318470f142e13f26d1b9b3aa7b9c134bed8d75a502c18a07f0` |
| 15 | `lemma` | [smul_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/smul-apply--363df48e22c4373a52d6cd21.md) | 85 | `result-track:363df48e22c4373a52d6cd21c284369c44899379ac0c80c6ef76ddc0f3dc2f49` |
| 16 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/continuous--dd7cb32664908437059d90d0.md) | 87 | `result-track:dd7cb32664908437059d90d069a1727bdebdd2c2f6033dc7f6c4dc53ab04db40` |
| 17 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv--994dab7472dbb97aca8b9025.md) | 89 | `declaration-track:994dab7472dbb97aca8b90257f636c1126201c99b8b1f93441a556d2da05120e` |
| 18 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hasderivat--86c6f2f9000f1d61995bf27e.md) | 94 | `result-track:86c6f2f9000f1d61995bf27e57ab47dd2e0ea7cec5299b7a6bc53a05d4e4c0f9` |
| 19 | `lemma` | [deriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv-apply--a4f00392a621e9eb7495e1ca.md) | 97 | `result-track:a4f00392a621e9eb7495e1ca974d1d93dd4ff415145491469de77e5ffddb9f5a` |
| 20 | `lemma` | [deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv-smul--930f9161ab336f88b4e6ab60.md) | 99 | `result-track:930f9161ab336f88b4e6ab602974aa2cd76cff0d6da17a8a1b0428b287d9d756` |
| 21 | `def` | [scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/scale--6f74381f95dbab180ff78820.md) | 102 | `declaration-track:6f74381f95dbab180ff7882060f0d55f0c43ae846c70808813c7670b1694329b` |
| 22 | `lemma` | [deriv_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv-scale--aef85d32e492310149f13143.md) | 109 | `result-track:aef85d32e492310149f13143d18be9e2a1f10fff6664f1a271bc723ae8b05f00` |
| 23 | `lemma` | [deriv_scale'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv-scale--da119651147ce5674802be40.md) | 116 | `result-track:da119651147ce5674802be4066d566340d9279674b229280d7624fc91530755c` |
| 24 | `lemma` | [hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hasderivat-scale--ea0c8e83d141d70c02a562eb.md) | 121 | `result-track:ea0c8e83d141d70c02a562ebc18e36f0714dbf1d8eb8c10059ce3f20fcb06b57` |
| 25 | `lemma` | [tendsto_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/tendsto-scale--21a86bc392601c136f17b811.md) | 125 | `result-track:21a86bc392601c136f17b8118b7f8d93f7089e07f9239328939611ac0f88beb8` |
| 26 | `lemma` | [bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/bounded--e231d021ce92322a1a8770e2.md) | 129 | `result-track:e231d021ce92322a1a8770e2aee6608c212a83a16612166caa6e1f3df56b8ee2` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--6a5892fa797f71b84e62a817.md) | 138 | `declaration-track:6a5892fa797f71b84e62a817ec4cbf46b062d7f6361b2ebc9216f6bdcb45cd91` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--cac85316b99e1afa40a1b937.md) | 140 | `declaration-track:cac85316b99e1afa40a1b9371e427d19664711b16d22148fc3269f4a32bea37d` |
| 29 | `lemma` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/nonneg--4246337b1e549d12d104eaf3.md) | 142 | `result-track:4246337b1e549d12d104eaf32a9dfaf131b5ff13d26775f16ba406bb9e50919d` |
| 30 | `lemma` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/le-one--68dee85b53a22267dbab2b5e.md) | 144 | `result-track:68dee85b53a22267dbab2b5e7016faff376472c3d02cde5f95b0ee05541f52f9` |
| 31 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/zero--1432a7c27425df7a454fadd5.md) | 147 | `result-track:1432a7c27425df7a454fadd5fb6e38935390a9433d64db11e7e94012646870c8` |
| 32 | `lemma` | [zero_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/zero-at--7d84a59815585387927faaa5.md) | 151 | `result-track:7d84a59815585387927faaa5d4a0ee064b9575b6e05d423ee4f130f235d45704` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--f46b7c71dd113ab6014e44a3.md) | 157 | `declaration-track:f46b7c71dd113ab6014e44a310fa4511269492db77ff74992701b4155882f9fa` |
| 34 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/continuous--a6f93f9544903c96130bc27c.md) | 159 | `result-track:a6f93f9544903c96130bc27c7b5630a0ea0f4e7051028a8b9475f60ed3af8539` |
| 35 | `lemma` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/differentiable--5934fc89916ed02a8b8f4f4d.md) | 161 | `result-track:5934fc89916ed02a8b8f4f4d21ea93ae5eeea64b5278a70b06bdf7e2acd48e31` |
| 36 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/iteratedderiv-sub--8128585d2b343ed1910f3ed1.md) | 164 | `result-track:8128585d2b343ed1910f3ed1c18734e593543c81208673b8e26964bfad737148` |
| 37 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/deriv--0754b256589f1d520efae552.md) | 177 | `declaration-track:0754b256589f1d520efae552e2938e3b68974441a5bfa4c62c4dd108c556527e` |
| 38 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hasderivat--1370f37d89c21aa15816b50d.md) | 183 | `result-track:1370f37d89c21aa15816b50d5b7ce267edf8da192f68887c0c1ddc144c364392` |
| 39 | `def` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/sub--57411f9061cc9fcc4bd394ac.md) | 186 | `declaration-track:57411f9061cc9fcc4bd394ac747c530a2d5e18b4406d52945165e1f4c5712792` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--aee147074e8f571afc0ad3c7.md) | 194 | `declaration-track:aee147074e8f571afc0ad3c7c465f8dd63aef532a0b12e962b7f213dbb9ad319` |
| 41 | `lemma` | [integrable_iteratedDeriv_Schwarz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/integrable-iteratedderiv-schwarz--7f95e61276b33c283de237a0.md) | 196 | `result-track:7f95e61276b33c283de237a016805962d0bf7d506ff5bf205f939b95ed177556` |
| 42 | `def` | [of_Schwartz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/of-schwartz--6113034cbf92e0c704ba4e29.md) | 201 | `declaration-track:6113034cbf92e0c704ba4e29cefb1518c33860ab5d83faed88a9a2d237c041ad` |
| 43 | `def` | [norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/norm--2b24bac304f9ec8aca73c3a3.md) | 212 | `declaration-track:2b24bac304f9ec8aca73c3a371e401447abf47590d24b94ee68c8254ccca02ca` |
| 44 | `lemma` | [norm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/norm-nonneg--4044640bf05eeb87fbc1172a.md) | 215 | `result-track:4044640bf05eeb87fbc1172a278d799ece13e6f5cdc81dd73d48f6e98afc2811` |
| 45 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--84b049550e25b3aaa1950282.md) | 219 | `declaration-track:84b049550e25b3aaa1950282b4fc39ebd4cbe6ad1d51a2c9992f8572468cfeb0` |
| 46 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--203dbe6d9afa45b2e951b20a.md) | 221 | `declaration-track:203dbe6d9afa45b2e951b20ae04d702ff1d89d8356437b07d94a324424fbfc51` |
| 47 | `def` | [ofCS2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/ofcs2--fa46f92e66fa2124cab282f8.md) | 223 | `declaration-track:fa46f92e66fa2124cab282f8cb2165d67063caa0ac97c8ed9b550d99d4ef0f40` |
| 48 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--c89327de4be564eef1e48d7d.md) | 230 | `declaration-track:c89327de4be564eef1e48d7dc8a70df69e228a9be57e262228d087abb9ae6e0b` |
| 49 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--82c2e7641af8cf942abf58a3.md) | 232 | `declaration-track:82c2e7641af8cf942abf58a34524ebb34fb59cedc006914a2e97588626ed65aa` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/instance--8c438e5513d6f701c6204907.md) | 235 | `declaration-track:8c438e5513d6f701c62049078eb5969b9724304ae780928d2529471e51781873` |
| 51 | `lemma` | [hf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hf--da81e65c3ac143166ec89ea9.md) | 237 | `result-track:da81e65c3ac143166ec89ea961560b62d948fc89e67c79e49bb7092b53e23259` |
| 52 | `lemma` | [hf'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hf--149c295c31aa1bd8db44aa43.md) | 239 | `result-track:149c295c31aa1bd8db44aa43dba4d5936e666ad324c64b3404260078cc10954f` |
| 53 | `lemma` | [hf''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/hf--936881f4d03cc610d0944019.md) | 242 | `result-track:936881f4d03cc610d0944019adf3a8308b30fa9e7d16b62ab22efeaf1fad6678` |
| 54 | `theorem` | [W21_approximation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variantfe4dcd0e9c1ca7670d75b7b4e5d7f5b09d1da022c2913428b069623e9e3cd074.lean/declarations/w21-approximation--e89544782904447429b0a4c2.md) | 247 | `result-track:e89544782904447429b0a4c2f91f181d9a77ec428a5c3886ed0347482ea0e11d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
