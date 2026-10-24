# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660cf0f255a0a8cfa78115820358a0d5650c2107",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionLinear.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660cf0f255a0a8cfa78115820358a0d5650c2107`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSectionLinear.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSectionLinear.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionQuotient.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sectionZero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionzero--78412a15119e977b93633cc1.md) | 31 | `declaration-track:78412a15119e977b93633cc15c3fd272fadce291df3dd19e932c47a7325c57b1` |
| 2 | `def` | [sectionAdd](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionadd--db55f8a543cdf8b341712318.md) | 40 | `declaration-track:db55f8a543cdf8b341712318d5ef0c432073d5ee3e838c7734f7c4a75dc21bc3` |
| 3 | `def` | [sectionSMul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionsmul--93ce76e458842a51f5a0f55d.md) | 58 | `declaration-track:93ce76e458842a51f5a0f55dec1c759c7d19a1e1a0f519e70e58e2aea34af22d` |
| 4 | `theorem` | [sectionZero_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionzero-value--e7295f0d5ddb887e6bb8939c.md) | 73 | `result-track:e7295f0d5ddb887e6bb8939c09cc13cfb9349dba2944ac38da7d0b23e50fedd5` |
| 5 | `theorem` | [sectionAdd_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionadd-value--64b9b1d60890a9659c6e8cf8.md) | 76 | `result-track:64b9b1d60890a9659c6e8cf82b1e1d2fa6b5a4b58dca72067ac7b6558faa2147` |
| 6 | `theorem` | [sectionSMul_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/sectionsmul-value--84186b2d0956fe82b81869e4.md) | 80 | `result-track:84186b2d0956fe82b81869e4df25c214e6a0758f8ea36f9f9b1c33b092d63870` |
| 7 | `theorem` | [normSq_add_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/normsq-add-le--89676a351e207d5146d5c5a3.md) | 85 | `result-track:89676a351e207d5146d5c5a3859174b4853bdf85336eb0012f50af6d2d65e358` |
| 8 | `theorem` | [squaredNorm_add_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/squarednorm-add-le--4976013ea3f62e54a9c4c378.md) | 90 | `result-track:4976013ea3f62e54a9c4c378ccdcb6c39cc34aca4db1fdb83c2be0c2c3d1f3d5` |
| 9 | `theorem` | [density_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/density-zero--eb1b869332aca454542348fd.md) | 100 | `result-track:eb1b869332aca454542348fd1faa59f00b3cf97f90f191ef25ab9eca7580829b` |
| 10 | `theorem` | [density_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/density-smul--c3f6b532886e4c4742d82c46.md) | 105 | `result-track:c3f6b532886e4c4742d82c465790ec7ee2f5dbd1f4e200fe255aa4a22a661f9b` |
| 11 | `theorem` | [density_add_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/density-add-le--c558658162dd331c8182b6f4.md) | 118 | `result-track:c558658162dd331c8182b6f45f17f7e8ef0bb42c9169a541f2bf21230d06bb2d` |
| 12 | `theorem` | [energy_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/energy-zero--6e7bc5d88ad47ecebc3e5d84.md) | 131 | `result-track:6e7bc5d88ad47ecebc3e5d84523b5a2cb6a744494a5154895d7b03d1dd499833` |
| 13 | `theorem` | [energy_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/energy-smul--7527e02005e6ef2aad901c7d.md) | 136 | `result-track:7527e02005e6ef2aad901c7d173c6c4fb905522768eb9064a856958b510e1532` |
| 14 | `theorem` | [energy_add_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/energy-add-le--3cca7cff52c57c5b7b0be99f.md) | 145 | `result-track:3cca7cff52c57c5b7b0be99f11d565b8f14bebf81cfc27be25a7781c6de899a0` |
| 15 | `theorem` | [energy_smul_lt_top_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/energy-smul-lt-top-iff--f82aec73936c7981d0dd15d9.md) | 157 | `result-track:f82aec73936c7981d0dd15d9733ae755d9a0b0fb7b12f94d967792ec7e7bf046` |
| 16 | `theorem` | [aeEqual_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/aeequal-add--fdf5c192cbc435634984e724.md) | 168 | `result-track:fdf5c192cbc435634984e7248cc7f47ff3c6ca6317f7267714d4f44dfa0f6e75` |
| 17 | `theorem` | [aeEqual_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/aeequal-smul--fb3c9546ad7163c329bc9434.md) | 174 | `result-track:fb3c9546ad7163c329bc9434b24080bd72746fc8ba7047d11ba4b7a3a1ca8538` |
| 18 | `def` | [finiteZero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finitezero--46e66d897012a5a49449bbd5.md) | 181 | `declaration-track:46e66d897012a5a49449bbd568748088b04505ec174b927b97e8d784b558539f` |
| 19 | `def` | [finiteAdd](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finiteadd--aef998bf071074f1730e5a8d.md) | 184 | `declaration-track:aef998bf071074f1730e5a8d56aaccae7231a11f64726c377b97e353aa302f42` |
| 20 | `def` | [finiteSMul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finitesmul--502824bd0f5a6dc587511543.md) | 189 | `declaration-track:502824bd0f5a6dc587511543cf24caf69d6ae38c564379df59aa0f1b2498c1b9` |
| 21 | `def` | [quotientZero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientzero--a7a805a6d3cea7fc70180c47.md) | 196 | `declaration-track:a7a805a6d3cea7fc70180c47b0873faf4b976607d496348c7d1924e63d3cd401` |
| 22 | `def` | [quotientAdd](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd--1d357897f595d13587c27857.md) | 199 | `declaration-track:1d357897f595d13587c2785765188adc5e0eef3a323f34970a109340ec11d62c` |
| 23 | `def` | [quotientSMul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul--217a3a7f04ff4230010bbd41.md) | 204 | `declaration-track:217a3a7f04ff4230010bbd413d47290d888f3ef600fa11203797b853a2ed3ebf` |
| 24 | `theorem` | [quotientAdd_classOf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd-classof--91272675676b034d57a79013.md) | 209 | `result-track:91272675676b034d57a790137150910b567274af09019d55356881105d3d3c64` |
| 25 | `theorem` | [quotientSMul_classOf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul-classof--7f7cec01fd35635445b3507c.md) | 214 | `result-track:7f7cec01fd35635445b3507c38b036b06cb63473fe0b27a7ef6002ed3138b591` |
| 26 | `theorem` | [quotientAdd_assoc](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd-assoc--3be3fcfb60dfbdc1e51f659a.md) | 223 | `result-track:3be3fcfb60dfbdc1e51f659a3a366670cd8b92cfbe2adcb8970b336a0dfbf251` |
| 27 | `theorem` | [quotientAdd_comm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd-comm--8389f8dcc56f2ba21a1df821.md) | 232 | `result-track:8389f8dcc56f2ba21a1df821b96c692cd44019a8350a2812067f59a9b4c97229` |
| 28 | `theorem` | [quotientZero_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientzero-add--a330480c830e2262fdcf4030.md) | 240 | `result-track:a330480c830e2262fdcf4030c5214556d27d07ed131500e9759a2cacff8c990a` |
| 29 | `theorem` | [quotientAdd_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd-zero--1cd4124da7bc819f14717c48.md) | 248 | `result-track:1cd4124da7bc819f14717c48f3bbd74c767d1623b37b4b09ce48d44213d3185c` |
| 30 | `theorem` | [quotientNeg_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientneg-add--b9d8ac3087de79c1b4db495d.md) | 252 | `result-track:b9d8ac3087de79c1b4db495dab40e3cd5f62cf43401f68a7a8f61506f8b0e26b` |
| 31 | `theorem` | [quotientSMul_one](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul-one--1a803825faa21978e4e8ebf1.md) | 261 | `result-track:1a803825faa21978e4e8ebf1168e043e928c2feb24ceddbff785ef2ee7388e6c` |
| 32 | `theorem` | [quotientSMul_mul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul-mul--1130b1007a6a14dad082dae4.md) | 268 | `result-track:1130b1007a6a14dad082dae47a2d843f7f2701d650be8eb8eac9dfdca2d21e78` |
| 33 | `theorem` | [quotientSMul_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul-add--348176881c82da53f8b44499.md) | 276 | `result-track:348176881c82da53f8b444994e1328bfa5a251ba20d2486a490a8b175297f1f3` |
| 34 | `theorem` | [quotientAdd_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientadd-smul--a0afd905c397b4f71fcf0cc5.md) | 285 | `result-track:a0afd905c397b4f71fcf0cc5ae7e40367397f1a0ca453418abae9ea64c936de1` |
| 35 | `theorem` | [quotientSMul_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientsmul-zero--f493d6556be509c178404d5f.md) | 294 | `result-track:f493d6556be509c178404d5f5cf99bed74d0084692801affca880fcd850b8193` |
| 36 | `theorem` | [quotientZero_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientzero-smul--60ecdd504a6e9531663ce42d.md) | 300 | `result-track:60ecdd504a6e9531663ce42d672f66d06069f40fd6de6d069d8aec09451106bd` |
| 37 | `structure` | [QuotientVectorLaws](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientvectorlaws--0632dd486db6628e63b3b3e8.md) | 309 | `declaration-track:0632dd486db6628e63b3b3e86efe4ad748f8aa70e88200ac21c6d74176810ab7` |
| 38 | `theorem` | [quotientVectorLaws](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientvectorlaws--1f1a3132483aaaeb876566c6.md) | 333 | `result-track:1f1a3132483aaaeb876566c60df76379786b57f276d10ba1aaccc539c8851e55` |
| 39 | `theorem` | [quotientEnergy_eq_zero_iff](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientenergy-eq-zero-iff--d72219abe191ff1b26e6ead9.md) | 349 | `result-track:d72219abe191ff1b26e6ead9e8ca4e39d797e6b3e6bfc358e3b1fd5593fbbc2e` |
| 40 | `theorem` | [quotientEnergy_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientenergy-smul--23ac96efbfdfb2e1db29661f.md) | 359 | `result-track:23ac96efbfdfb2e1db29661f42628dbb3a68b02c21f01e948af7fcae7caa5983` |
| 41 | `theorem` | [quotientEnergy_add_le](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/quotientenergy-add-le--490f3e05d52cadf7e5d1e347.md) | 367 | `result-track:490f3e05d52cadf7e5d1e347fc9211206d5e6dd29683e19a7d1b8d3fe8c8f502` |
| 42 | `theorem` | [section_gauge_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/section-gauge-zero--b485d7cdfd12eadef896fbb5.md) | 376 | `result-track:b485d7cdfd12eadef896fbb5f4c1e6bbe05774de9a0f9c8903c23304952035d5` |
| 43 | `theorem` | [section_gauge_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/section-gauge-add--1bf0341f45f525fb878f7f49.md) | 383 | `result-track:1bf0341f45f525fb878f7f49beec4c7af070fa039b83afbaa1c7e4949d95afa0` |
| 44 | `theorem` | [section_gauge_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/section-gauge-smul--422bdcbcf16bf302452fd0bc.md) | 392 | `result-track:422bdcbcf16bf302452fd0bc309c966f5862a9c40f42c395ae96bfc74540ec94` |
| 45 | `theorem` | [finiteEnergyEquiv_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finiteenergyequiv-zero--f0cb584bfb449c3e2efc5e9f.md) | 400 | `result-track:f0cb584bfb449c3e2efc5e9faac46123dd20497881f5c2f44a466584f1964fcf` |
| 46 | `theorem` | [finiteEnergyEquiv_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finiteenergyequiv-add--cfdff55594ac804490953837.md) | 406 | `result-track:cfdff55594ac8044909538378f9853ba79362c84e8834f96d340f2a765dc258b` |
| 47 | `theorem` | [finiteEnergyEquiv_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/finiteenergyequiv-smul--ef7dc812889a66a71be9904f.md) | 413 | `result-track:ef7dc812889a66a71be9904f7cd7b53ef48d1e8d56fa2761bf237d56bcb0db33` |
| 48 | `theorem` | [gaugeEquiv_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/gaugeequiv-zero--004d7c031cb59953302fab3f.md) | 419 | `result-track:004d7c031cb59953302fab3f76192fdb69c03acedfd9e2ba8066a71c275ec52e` |
| 49 | `theorem` | [gaugeEquiv_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/gaugeequiv-add--95985b6fb42d59e87289530b.md) | 425 | `result-track:95985b6fb42d59e87289530b16f372fe51b1249deac2838b4a0048e7b0a25ab9` |
| 50 | `theorem` | [gaugeEquiv_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/gaugeequiv-smul--4eb169f6a6ae5244b8461edc.md) | 434 | `result-track:4eb169f6a6ae5244b8461edcadb61f3f8d9340ee0c9eebb9e7ee1c0447944146` |
| 51 | `theorem` | [gaugeEquiv_symm_add](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/gaugeequiv-symm-add--558f027d1440f2391065de72.md) | 443 | `result-track:558f027d1440f2391065de72489bf4d64ba890ea453aee529d12399fe733d7eb` |
| 52 | `theorem` | [gaugeEquiv_symm_smul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/gaugeequiv-symm-smul--1520e7e3c20e8bad7cf72ab9.md) | 452 | `result-track:1520e7e3c20e8bad7cf72ab9007af3bccc9f1f77a0921baddb13879bd31cf0a1` |
| 53 | `theorem` | [energy_not_additive](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/energy-not-additive--cdaed809b8bd4acc669a4599.md) | 467 | `result-track:cdaed809b8bd4acc669a4599a80bf5b02078104e28b9d9f7db0f8fdeca5add9a` |
| 54 | `theorem` | [zero_scalar_does_not_reflect_finiteness](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/declarations/zero-scalar-does-not-reflect-finiteness--45a484846ca25398c29d9cd1.md) | 480 | `result-track:45a484846ca25398c29d9cd18982fdacf4d453d3fc56e3869dbed0ad98181996` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
