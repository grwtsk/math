# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleStatements.Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9d2aadbbe1f31a62a043b8165ffea9aa1bc2bf3`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/zetapolefactor--7fd54d048a36806d36ee00a4.md) | 26 | `declaration-track:7fd54d048a36806d36ee00a487192d1db262a4d8faea06620eb48d64318ea1b1` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/zetapolefactor-zero--a05dc57858a21b48eb1aa34b.md) | 28 | `result-track:a05dc57858a21b48eb1aa34bb1f61d38e700a2d34d67e29b3e58cc0de5c19752` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/zetapolefactor-off--752e2876a24d201fc3774361.md) | 31 | `result-track:752e2876a24d201fc3774361ae4f6a22a2db19ab1633a1e425532e90298c2bd1` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/zetapolefactor-limit--5637cf9b2ec578ccbfa489e3.md) | 35 | `result-track:5637cf9b2ec578ccbfa489e35a4700c76abff47951903ca9dccc092d9b6cdeda` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/zetapolefactor-analyticat-zero--4c8acffaa6df75eab7146aad.md) | 50 | `result-track:4c8acffaa6df75eab7146aad1f4c2eda0d1a3ffe53469010288d9b04b042e85e` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta--31722e52a30db173d2d5c0c2.md) | 63 | `declaration-track:31722e52a30db173d2d5c0c2c441857066c01b363f9d818ee95956f4aaca4475` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-zero--57186537fcb1e1d253e270ec.md) | 65 | `result-track:57186537fcb1e1d253e270ec86571cb8ec6a0db5bdc43f3b72ff785d39c956a6` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-off--512aaddd4ef0b2a9e92f6960.md) | 68 | `result-track:512aaddd4ef0b2a9e92f6960a648fce7a98431d6fc4d1f2a6308d3aa1a5f7dcf` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-eq-div-factor--b4fb9dc779b83409a59fe6f2.md) | 72 | `result-track:b4fb9dc779b83409a59fe6f2c21327376bcdecd383df61871363b4f9d67d3599` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-analyticat-zero--925e146891aecdfb60eb69a5.md) | 79 | `result-track:925e146891aecdfb60eb69a52c08bf774b21ebed83c44c1eb75f3987cdb2dc0f` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-hasderivat-zero--ef04e858637f9fdd0e2ec178.md) | 85 | `result-track:ef04e858637f9fdd0e2ec178758797d4303ace985cb5809139fa2f2fada8105a` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/reciprocalzeta-eventually-ne-zero--dca0cb049a220b28a6b37c10.md) | 93 | `result-track:dca0cb049a220b28a6b37c1062c4761417e669bff089910fa118eeecd0e67e0e` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand--08116d4b808add3716621632.md) | 104 | `declaration-track:08116d4b808add3716621632eb9b04859b8545f1bf295ab34b023e495b2a5a1c` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand-factor--4fdf554f5971abb144f479f9.md) | 107 | `result-track:4fdf554f5971abb144f479f94aaabb3deb2505ed6defb92bc5bdb13bababf54a` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/perronnumerator-analyticat-zero--ffaf9198282130ddf09e5d71.md) | 115 | `result-track:ffaf9198282130ddf09e5d71d468339f64c3f61e6204ee2bec2d1bff0b9c2dd4` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand-meromorphicat-zero--e1ec6a7b095702c8116f8969.md) | 124 | `result-track:e1ec6a7b095702c8116f8969ddb7931730a2fda46e61a358e003ec18ee43af9a` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand-order-zero--9272de25cfb893dbc646013a.md) | 131 | `result-track:9272de25cfb893dbc646013ae52514d0bed0640b767d5f2397fa1f75d8ea3cff` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand-residue-limit--2d01cb95d1d2d1a80234b43e.md) | 141 | `result-track:2d01cb95d1d2d1a80234b43e7005d767c6b43bbebe95b9b002968813a0c2b267` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/smoothedperronintegrand-residue-one--6bcdaaf777fcb0e746784672.md) | 152 | `result-track:6bcdaaf777fcb0e746784672a04ad2ab723cbbbafbe581739e929e214196d673` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--29a82fd3d6adcdfeb2b800bc.md) | 164 | `declaration-track:29a82fd3d6adcdfeb2b800bc37800c93a74f075c3aa9699dc7e091c5a4269c0b` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--732c44ed946f804f432762cb.md) | 167 | `declaration-track:732c44ed946f804f432762cb33ef9242d1e8143dc9c2217e503448907cda94ba` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--398cd79e0e9627739e21499d.md) | 169 | `declaration-track:398cd79e0e9627739e21499df2923e5e362e487005eb9ba18b47007bf24103d5` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--e74fb5d78f770aafc43487ba.md) | 171 | `declaration-track:e74fb5d78f770aafc43487baaf599f924ef7b04039c37de90ddda73cd68e006b` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--a87140816d5761b053b25dd7.md) | 174 | `declaration-track:a87140816d5761b053b25dd7e51923e5807122cbe7dcd2b810848e6e1a96569c` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--98dccb40a1a54707d3939749.md) | 176 | `declaration-track:98dccb40a1a54707d39397490e38db026ca57039fb92c6228531cb018b5dc4fe` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--241696d11130ae6f7c4c29c9.md) | 179 | `declaration-track:241696d11130ae6f7c4c29c9e92ec47baf92988fae5886823a032bc046986f4c` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--d0cf55097536429c3f3f4797.md) | 182 | `declaration-track:d0cf55097536429c3f3f479755d113fe6edbd98b1202b388bbb668f29c2489fe` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--226b0bd1b20e172979028f4d.md) | 184 | `declaration-track:226b0bd1b20e172979028f4d1165ec7a24d2f75a906bd456fe271893e684bc09` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--530f52f17e949c50dc1504ef.md) | 186 | `declaration-track:530f52f17e949c50dc1504ef78f11e0db4e19ba16664cb2a55a2f006f7a7ff02` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--6988aa2d8f58292d4e7cdccf.md) | 189 | `declaration-track:6988aa2d8f58292d4e7cdccf7a0a54a525fa0151db7e25457617b6eff790fbd0` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--1c48b55e8d143cfe9d8d1336.md) | 192 | `declaration-track:1c48b55e8d143cfe9d8d1336b85a3f113fb78fb6d3bb01764141bcf595bb519f` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--e2b99d1af8679dc71469bb87.md) | 195 | `declaration-track:e2b99d1af8679dc71469bb87521eecb4ddf214c19a33b7f6b45fce304d1d78f8` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--55a2cf246f2eeea368cc8284.md) | 199 | `declaration-track:55a2cf246f2eeea368cc82848f92d1bec48f40ed3290a22c4bfb72c465b5486b` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--c9002cd12253d2d223e7537d.md) | 203 | `declaration-track:c9002cd12253d2d223e7537d940fc4453d23c8b8c9084afc459d43c0b07d7d13` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--3205f546269f12987d053c54.md) | 206 | `declaration-track:3205f546269f12987d053c544921e6657d69f0ff445e3281dafe8bb945a7e1fb` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--71445d3627be9c7669b3db88.md) | 210 | `declaration-track:71445d3627be9c7669b3db88b1ff0ddcbe93bad6dab7a02bf102b3a9ba52f7f8` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variant43191e88a0d72c887aca525845f9e73ee6ac7e3265f9fc14f10a57a80845d627.lean/declarations/example--681a939dd38c329956c613e3.md) | 214 | `declaration-track:681a939dd38c329956c613e3e56d778344063194e080795b1b4a37c9834944eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
