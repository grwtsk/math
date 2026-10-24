# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Order.Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33c7a42409953218c559973feeefd441eca9f5d5",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33c7a42409953218c559973feeefd441eca9f5d5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean.json)

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
| 1 | `lemma` | [hasProd_le_of_prod_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-le-of-prod-le--f125f12b4a299ff980e16f71.md) | 31 | `result-track:f125f12b4a299ff980e16f715ef16a06904453768accfc098d1b86be9b2d6ce7` |
| 2 | `theorem` | [le_hasProd_of_le_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/le-hasprod-of-le-prod--4b1fa5ba1680c7287f16fc89.md) | 36 | `result-track:4b1fa5ba1680c7287f16fc8904dbd3bfc1fb6a6a5f006cb33fc523d1ec9b0171` |
| 3 | `theorem` | [Multipliable.tprod_le_of_prod_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-le-of-prod-range-le--8b808241ebcf1d3a506b6482.md) | 41 | `result-track:8b808241ebcf1d3a506b6482535b7b083d4ace830e308eab49a64557f62e0ee9` |
| 4 | `theorem` | [hasProd_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-le--9a06526c0e50f47d32bd260e.md) | 54 | `result-track:9a06526c0e50f47d32bd260e41be8544591aa213641c9cedabbd43e4ecd63bff` |
| 5 | `theorem` | [hasProd_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-mono--8d0519ae0eee0e3edeb0b5f9.md) | 59 | `result-track:8d0519ae0eee0e3edeb0b5f9d5996d93e4848b22ac2fbc0a189e392c6a522b91` |
| 6 | `theorem` | [hasProd_le_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-le-inj--b4bee9ecb40487d6eaefccd4.md) | 63 | `result-track:b4bee9ecb40487d6eaefccd407323a78ad9db1b1d496551bb2ea8c432fe54bba` |
| 7 | `theorem` | [Multipliable.tprod_le_tprod_of_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-le-tprod-of-inj--330e4f2e5d744f34ab75d56f.md) | 75 | `result-track:330e4f2e5d744f34ab75d56f6b6cfdc3356015bbc56fddc319ae83bb69fff8ce` |
| 8 | `lemma` | [Multipliable.tprod_subtype_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-subtype-le--471e604bdf8e8c1816a15bc2.md) | 81 | `result-track:471e604bdf8e8c1816a15bc2ac756f2a3e7dc587de680292a993bd7af688337b` |
| 9 | `theorem` | [prod_le_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/prod-le-hasprod--6688d79c4fc10af2925e5500.md) | 93 | `result-track:6688d79c4fc10af2925e55006bf801b74770eb45692d2ed23da863299b0a1eab` |
| 10 | `theorem` | [isLUB_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/islub-hasprod--a025ca0945d683c1a23f34d2.md) | 99 | `result-track:a025ca0945d683c1a23f34d2bf40a7cb225418d2ae0344ca67e305e9c8fd917e` |
| 11 | `theorem` | [le_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/le-hasprod--da93ae6cc03b80de33d9edd8.md) | 104 | `result-track:da93ae6cc03b80de33d9edd8d78143b1823914bf245ec3aec4d53bde0be72571` |
| 12 | `theorem` | [lt_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/lt-hasprod--54dca5d33d9e98983989f720.md) | 111 | `result-track:54dca5d33d9e98983989f7201a6a91cb867541bf7a31926e3802914cb9e36a83` |
| 13 | `theorem` | [Multipliable.prod_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-prod-le-tprod--8340f94d8380ff294827eecb.md) | 121 | `result-track:8340f94d8380ff294827eecbc48901acedfcf48eeb4cf0742d3d3415a0024202` |
| 14 | `theorem` | [Multipliable.le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-le-tprod--52354daa214b04b90fbc5ea1.md) | 127 | `result-track:52354daa214b04b90fbc5ea1e89f14fa7fd17b318c16d3d4ba81650c0be9eda2` |
| 15 | `theorem` | [Multipliable.tprod_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-le-tprod--a64443f51cdad84306999822.md) | 132 | `result-track:a64443f51cdad843069998228475016a4432cf9b61eb2ebbc8b6601f0a8418c8` |
| 16 | `theorem` | [Multipliable.tprod_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-mono--3576f8c64dcf80a490b11a80.md) | 137 | `result-track:3576f8c64dcf80a490b11a804d220def24043998a5168215b543592d9a255075` |
| 17 | `theorem` | [Multipliable.tprod_le_of_prod_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-le-of-prod-le--193e322ad8ce058d51ea4ff0.md) | 143 | `result-track:193e322ad8ce058d51ea4ff032c6fcac6b2521b845964fbd2d235d482297a2a5` |
| 18 | `theorem` | [tprod_le_of_prod_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/tprod-le-of-prod-le--3d3dd60e57a28a27c3d0bbb1.md) | 149 | `result-track:3d3dd60e57a28a27c3d0bbb199532132b5c6ecfe7fa2b7243a6c974dfa0fe543` |
| 19 | `theorem` | [HasProd.one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-one-le--59472dfe5fac7ccb63d72d9d.md) | 160 | `result-track:59472dfe5fac7ccb63d72d9da224d1a5afb81524aa2174440577bce3a4f0bced` |
| 20 | `theorem` | [HasProd.le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-le-one--556840369ed3783cea76b1cc.md) | 164 | `result-track:556840369ed3783cea76b1cc25f8a694f1c2328d5a213c3accdd2d161a307cc7` |
| 21 | `theorem` | [one_le_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/one-le-tprod--4302002150b99b831e27cc57.md) | 168 | `result-track:4302002150b99b831e27cc5795d78ba31e693027f32f9ec5b5cf17b5787e9650` |
| 22 | `theorem` | [tprod_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/tprod-le-one--f6777db32ef30facc2328f50.md) | 176 | `result-track:f6777db32ef30facc2328f50a9277d24821e012ac48dea925cbf663cc7a4d40b` |
| 23 | `theorem` | [hasProd_one_iff_of_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-one-iff-of-one-le--c75cd59ba48a68b8607a4c57.md) | 185 | `result-track:c75cd59ba48a68b8607a4c574dbace81995d059bd13b9f1c9a0d0f8501acc3d9` |
| 24 | `theorem` | [hasProd_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-lt--f4559cf0f37d45a8fc2af902.md) | 204 | `result-track:f4559cf0f37d45a8fc2af902b2e6a3d4fcfb212bb601ca7c688d4546ebcb7505` |
| 25 | `theorem` | [hasProd_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-strict-mono--c41fc3120d55652a0699307e.md) | 212 | `result-track:c41fc3120d55652a0699307e8a376c3bac29c999999bcbf58046b69ece4bab36` |
| 26 | `theorem` | [Multipliable.tprod_lt_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-lt-tprod--8aaada2e88b5a396162d391b.md) | 217 | `result-track:8aaada2e88b5a396162d391b84272f2ae117c3580d773b6018dc088cfcb13f91` |
| 27 | `theorem` | [Multipliable.tprod_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-strict-mono--988b50b77ef3cd12a0e23c20.md) | 223 | `result-track:988b50b77ef3cd12a0e23c20edc41fbf8b4a8842a6e7721cc6b4f74178551d3e` |
| 28 | `theorem` | [Multipliable.one_lt_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-one-lt-tprod--cfe21ff339ed4930afc1a880.md) | 230 | `result-track:cfe21ff339ed4930afc1a880ede08d72b456aa71e3279bb0b0e4fe14d7772ce9` |
| 29 | `theorem` | [HasProd.nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-nonneg--8fc43300e6a0c34d0bf688dd.md) | 242 | `result-track:8fc43300e6a0c34d0bf688dd16691ca6a000ae09989c30626c57b1f29c530c18` |
| 30 | `theorem` | [tprod_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/tprod-nonneg--26708ebf3c8bd4796ee093ca.md) | 246 | `result-track:26708ebf3c8bd4796ee093cab7f1e5496fc538348a4247371c032b49d3b3764f` |
| 31 | `theorem` | [prod_le_hasProd_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/prod-le-hasprod-of-nonneg--352707088bf02087f3cb2db1.md) | 254 | `result-track:352707088bf02087f3cb2db1fecb5b1dbbc67f690a03519bb782282b7d2052ed` |
| 32 | `theorem` | [Multipliable.prod_le_tprod_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-prod-le-tprod-of-nonneg--1aad0982b5e92bb14e51e237.md) | 260 | `result-track:1aad0982b5e92bb14e51e2374df88dc27fce1066e80549872635d11ab8b118e8` |
| 33 | `theorem` | [le_hasProd'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/le-hasprod--4b8789c84ccc986c4981b0bf.md) | 274 | `result-track:4b8789c84ccc986c4981b0bf2b0f55135c49acc6b10809ca0c4a1d762fd77d51` |
| 34 | `theorem` | [Multipliable.le_tprod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-le-tprod--aa1e307791a9ae366b7d96a3.md) | 278 | `result-track:aa1e307791a9ae366b7d96a3e526cb8f8246a6fecb6c21b1010cf7794031cfa0` |
| 35 | `theorem` | [hasProd_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-one-iff--415e235ca87fa9ace00ea593.md) | 282 | `result-track:415e235ca87fa9ace00ea59307b1821bf48a82b713aee85f9cd3786c667cd48d` |
| 36 | `theorem` | [Multipliable.tprod_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-eq-one-iff--c1b1692d30c11e738134ac02.md) | 286 | `result-track:c1b1692d30c11e738134ac020beec4ed0aa453a5be61c93339e57943f2b6a463` |
| 37 | `theorem` | [Multipliable.tprod_ne_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-tprod-ne-one-iff--a798d341ac1244f9f318876f.md) | 291 | `result-track:a798d341ac1244f9f318876f425c0dee195a7ed507073580d7661664d69b8b6f` |
| 38 | `theorem` | [isLUB_hasProd'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/islub-hasprod--c75393a2356701a483841508.md) | 297 | `result-track:c75393a2356701a4838415088964539dbff9d2b38b99c014b8a30a6b3406f598` |
| 39 | `theorem` | [hasProd_of_isLUB_of_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-of-islub-of-one-le--7f150db0038a6fc1c3686dc0.md) | 314 | `result-track:7f150db0038a6fc1c3686dc0cd43bdb80d87779b57b8892723c53b2274a54c9c` |
| 40 | `theorem` | [hasProd_of_isGLB_of_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-of-isglb-of-le-one--9df7a2052d8c9b71a184e0b1.md) | 321 | `result-track:9df7a2052d8c9b71a184e0b19f47fcee01dad3ea233e513c6df6e41a2a8ec73b` |
| 41 | `theorem` | [hasProd_of_isLUB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-of-islub--2b5f6b6c44136c3462c2c95f.md) | 328 | `result-track:2b5f6b6c44136c3462c2c95f08c3ff35bfc959d05a52aed87d62f1e4b8ed3c4f` |
| 42 | `theorem` | [multipliable_mabs_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-mabs-iff--c57f5f90990ec302cb48722b.md) | 335 | `result-track:c57f5f90990ec302cb48722be230ee2af1980be2f3e08048ced2268cf17bf754` |
| 43 | `theorem` | [Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/finite-of-summable-const--b35e67e3626f1364b8a2594e.md) | 349 | `result-track:b35e67e3626f1364b8a2594e01bc2adc3feffbc540195a78aa521a46a4e9e6fc` |
| 44 | `theorem` | [Set.Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/set-finite-of-summable-const--08ec7ae90992b08539708550.md) | 361 | `result-track:08ec7ae90992b085397085502d617e79a5063f020b00fdee7cde47b385ab52bc` |
| 45 | `theorem` | [HasProd.abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/hasprod-abs--95f0805e04495126d6c48a1c.md) | 374 | `result-track:95f0805e04495126d6c48a1c78d67d4e4a9f6a6b96d68e5fa13c50b88d0e075f` |
| 46 | `theorem` | [Multipliable.abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-abs--c5c7690f28791ab2ba5e7fe5.md) | 377 | `result-track:c5c7690f28791ab2ba5e7fe5fa758bcbbfa9df3d524afcbde8527a4e6b8c5c03` |
| 47 | `theorem` | [Multipliable.abs_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/multipliable-abs-tprod--58fc0e98eed32230ced7a4eb.md) | 380 | `result-track:58fc0e98eed32230ced7a4eb198be136eb4bfe1028bd5f1957c53f22deda83d1` |
| 48 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/summable-tendsto-attop-of-pos--e1d87e0f4e216d9b914ce0de.md) | 385 | `result-track:e1d87e0f4e216d9b914ce0ded1c635ff51ddf7c7bce1ff086b63cf182a729bf1` |
| 49 | `def` | [evalTsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant768bb6250a7ee69052aa1c034aa8285f32ca8cb65d58058f24ae4f567ac27378.lean/declarations/evaltsum--aeee0eff312c5b319153571b.md) | 402 | `declaration-track:aeee0eff312c5b319153571b7f389d4ef717f5e88d187f1c5a776c9e504e2fdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
