# Verification target: GRWTSK.Analysis.Complex.RationalRoundedArithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e70686faca9ef625b310d3abce194153c705ab",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e70686faca9ef625b310d3abce194153c705ab`.

Source path: `GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalRoundedArithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DyadicRoundedSquaring`](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Rat.Floor` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QComplex](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/qcomplex--5598ffddbcd0d6888ccd48dd.md) | 24 | `declaration-track:5598ffddbcd0d6888ccd48ddeb98de96553f054d4afc3a09054224cf867a8ac2` |
| 2 | `def` | [zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/zero--9d3218a74635000c9aa53b60.md) | 31 | `declaration-track:9d3218a74635000c9aa53b60bf42e215181e1090761b09e65d9de79183a8d6ad` |
| 3 | `def` | [one](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/one--c5d7e5f67e36ddd792ed194f.md) | 32 | `declaration-track:c5d7e5f67e36ddd792ed194f40f23386df04033f603a4a06eefe1530e23540e0` |
| 4 | `def` | [add](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/add--2085f2e6bf66a759841fb7a8.md) | 33 | `declaration-track:2085f2e6bf66a759841fb7a85c951c09702e1d6de7a7e7563dbce4b9a7533157` |
| 5 | `def` | [mul](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/mul--ac03092460e63cde66035e94.md) | 34 | `declaration-track:ac03092460e63cde66035e94a50c5e51031a27916048963131873efeea65469f` |
| 6 | `def` | [smul](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/smul--830e10cba8086b03ddf78979.md) | 36 | `declaration-track:830e10cba8086b03ddf789795bb012b80f2fe00262278d020314150027fca7e9` |
| 7 | `def` | [pow](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/pow--acbdebd6853b41b660876c6a.md) | 37 | `declaration-track:acbdebd6853b41b660876c6a777e9dc01338ce4a97a93f5c655b37c313aeea0e` |
| 8 | `def` | [rect](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/rect--1f5839d30224a25346108e02.md) | 41 | `declaration-track:1f5839d30224a25346108e021b459929c7ae22494dcfab9a59336979b0b4d1ba` |
| 9 | `def` | [polynomial](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/polynomial--878179ccc7a8db2da9327f89.md) | 44 | `declaration-track:878179ccc7a8db2da9327f8925dfaf656c8c1d0ffe83d9ad3e77bf369bed935d` |
| 10 | `def` | [embed](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed--1f031d5baf4080654a91476c.md) | 48 | `declaration-track:1f031d5baf4080654a91476cc02960f11665a96af5bb91ad32aab4dbe8499c57` |
| 11 | `theorem` | [embed_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-zero--fcef31db29fac98d3df6a747.md) | 50 | `result-track:fcef31db29fac98d3df6a747988d7023af749afa4f2443165eba90112e28f221` |
| 12 | `theorem` | [embed_one](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-one--d2b51792e7eaa1cc33cd9137.md) | 51 | `result-track:d2b51792e7eaa1cc33cd91371c631af08a9dc8adb8591ac4d5b5531f86f18628` |
| 13 | `theorem` | [embed_add](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-add--b95dee8ccb0be1f4ac93e1c8.md) | 53 | `result-track:b95dee8ccb0be1f4ac93e1c81667b4d305cc9648c31752065db0a6936a811423` |
| 14 | `theorem` | [embed_mul](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-mul--bf14830aa39f310d3d9b7e9d.md) | 56 | `result-track:bf14830aa39f310d3d9b7e9d2f412685b7afbbccd0a851ec2a6011f55d38932c` |
| 15 | `theorem` | [embed_smul](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-smul--e15dbc019117a7c8517e33e5.md) | 59 | `result-track:e15dbc019117a7c8517e33e5b3bde76da115e170b5ac9fe1dc60a077805e82f1` |
| 16 | `theorem` | [embed_pow](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-pow--bbc555a80f3188dd623a2968.md) | 63 | `result-track:bbc555a80f3188dd623a29687913b889edd9cfb039dba1bf8ba44f621d88f3ca` |
| 17 | `theorem` | [cast_rect](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/cast-rect--c5cd89c1f9750896eaea6e57.md) | 68 | `result-track:c5cd89c1f9750896eaea6e5766a9c033107548455ed1d4c6dd303b29e635296c` |
| 18 | `theorem` | [embed_polynomial](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-polynomial--16f06e3761a973304284b0c4.md) | 71 | `result-track:16f06e3761a973304284b0c4acac5884c4b23390a36604cb68e1c5567ecd17c0` |
| 19 | `def` | [scaleQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/scaleq--69b8d386b6837b33f881fab5.md) | 82 | `declaration-track:69b8d386b6837b33f881fab56fb4b7f197d714ea560a7fe3f5c0683d7268b05e` |
| 20 | `def` | [downQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/downq--28e41a1f8a85befc8c25de9e.md) | 84 | `declaration-track:28e41a1f8a85befc8c25de9ea65503036a987512dbbca79c5d534c28ca12a271` |
| 21 | `def` | [upQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/upq--a01f88ef32081ff534996c03.md) | 85 | `declaration-track:a01f88ef32081ff534996c03d2fc3f677d987eed9a321d39b4e4df426a183ace` |
| 22 | `def` | [roundoffQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/roundoffq--d46c2afdd1dd60522fc88dcc.md) | 86 | `declaration-track:d46c2afdd1dd60522fc88dcc241d7671fefdc99fea13fe9b6f5022904bc1ca3d` |
| 23 | `def` | [quantizeQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/quantizeq--e5a436ca9fc35f505f10fa55.md) | 88 | `declaration-track:e5a436ca9fc35f505f10fa55d6b92c590266c7cb5301802468cadf5b4e4b8771` |
| 24 | `structure` | [State](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/state--17bec2d4f214eb81caff87ad.md) | 91 | `declaration-track:17bec2d4f214eb81caff87ad9fc77711441e40258cac5ca91ac87ea83e08c2e9` |
| 25 | `def` | [initialState](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/initialstate--63ea48add93cbb1a53a3e05c.md) | 97 | `declaration-track:63ea48add93cbb1a53a3e05c5b66a6194991762fc7230c57b1385aeeafc08c86` |
| 26 | `def` | [step](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/step--5065e6a931e95515c1e95a6e.md) | 101 | `declaration-track:5065e6a931e95515c1e95a6effaeb22b4428b4267c2a10af3d1370e6abb1452e` |
| 27 | `def` | [run](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/run--92f0317676fc3c1006141987.md) | 106 | `declaration-track:92f0317676fc3c10061419877e6084222d2c515301f28047200844859ed1e90d` |
| 28 | `theorem` | [cast_scaleQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/cast-scaleq--fe012188ec01293e1d2d6548.md) | 110 | `result-track:fe012188ec01293e1d2d6548e9b3140f32d780541a72700d86bc7b246a05a447` |
| 29 | `theorem` | [cast_downQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/cast-downq--454278817d3fc3aa0f04ca2f.md) | 115 | `result-track:454278817d3fc3aa0f04ca2f28be4799ae6543f2dc07f8f8095956c77bf159cf` |
| 30 | `theorem` | [cast_upQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/cast-upq--1d905fbfee946bbd4af54733.md) | 121 | `result-track:1d905fbfee946bbd4af547337023738cb46fec45125c9528881e9f5613221547` |
| 31 | `theorem` | [cast_roundoffQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/cast-roundoffq--4b615ba2fdd91ed30eeb03ef.md) | 125 | `result-track:4b615ba2fdd91ed30eeb03ef8280934aad6e9e715ecf41f84eefb610ca05df8b` |
| 32 | `theorem` | [embed_quantizeQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/embed-quantizeq--83828b5a1640d14377390071.md) | 129 | `result-track:83828b5a1640d143773900715d8662255fdd877aa6ba3ab5afad62b4ee76a0ba` |
| 33 | `theorem` | [run_refines](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/run-refines--c91a470f600fa64c58b6af6f.md) | 135 | `result-track:c91a470f600fa64c58b6af6fd9a86878085b75ef6fd68b36901d82944c1deafb` |
| 34 | `theorem` | [run_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/declarations/run-sound--eb227ec114abc168d876b122.md) | 151 | `result-track:eb227ec114abc168d876b122ffa0777934b4223fd81d5833063dd5a37c0f8c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
