# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntervalRealEndpoints.Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28b572b0cc4a3448c2243660b9aca79c59b34ff8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/intervalreal--83d85931a42e0accededb284.md) | 47 | `declaration-track:83d85931a42e0accededb284940eb54dacbac15928ecd68a8b3c6791d67ed405` |
| 2 | `def` | [toSet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/toset--651a3754c1ffe53a6b513ad3.md) | 55 | `declaration-track:651a3754c1ffe53a6b513ad3c52c58e137be6b9bcd248383dcb161c213c15042` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/instance--9b1eb67069f201b05146e6d6.md) | 58 | `declaration-track:9b1eb67069f201b05146e6d677556a24b22358a75ad438582ae039aa11ea4ffe` |
| 4 | `theorem` | [mem_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-def--b8cff3621bcac6a9cee4c2c8.md) | 62 | `result-track:b8cff3621bcac6a9cee4c2c8f5df7312b565b4507fab16d5d16716f1e72e50d1` |
| 5 | `theorem` | [mem_toSet_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-toset-iff--ac8ee41729ca6a096fd04a49.md) | 65 | `result-track:ac8ee41729ca6a096fd04a4946413ad95316eb2c90852cf2f883ec9c50378bea` |
| 6 | `def` | [singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/singleton--a09edb3704d64da9f87e1350.md) | 69 | `declaration-track:a09edb3704d64da9f87e1350722b1e517dbcf9381c187a0785f615d5dac15913` |
| 7 | `theorem` | [mem_singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-singleton--b8640cea876f9f62d1d34066.md) | 71 | `result-track:b8640cea876f9f62d1d34066666fd39854e57d4caf98568ce5518331f4673d9b` |
| 8 | `def` | [ofRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/ofrat--e3834f34a59dd4f85abad422.md) | 74 | `declaration-track:e3834f34a59dd4f85abad4226a7d92b82b9367aafecbf45b6cd650cae9f3b2e2` |
| 9 | `theorem` | [mem_ofRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-ofrat--1aa9accf596176c2d6d1e6ff.md) | 79 | `result-track:1aa9accf596176c2d6d1e6ff1c9cfe77e233144533c21769f4846cf5293cae54` |
| 10 | `def` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/add--50fea14c9517ff834f08800e.md) | 86 | `declaration-track:50fea14c9517ff834f08800efa219f21118a74b4515a13211eaffdcebd4e8800` |
| 11 | `theorem` | [mem_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-add--757ac004fb5490f81fc2f49d.md) | 92 | `result-track:757ac004fb5490f81fc2f49da27395a1ee6c7b307eeda6709aa601332feea978` |
| 12 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/neg--c45a058b7566d714a77eb20c.md) | 101 | `declaration-track:c45a058b7566d714a77eb20cedf858776f418dab0823a2ba0301d846f8528bca` |
| 13 | `theorem` | [mem_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-neg--19c36b3e61321d64b58d717e.md) | 107 | `result-track:19c36b3e61321d64b58d717e8801a6acaa1424f193e59c1a03b4674feee9305f` |
| 14 | `def` | [min4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/min4--c7ae0f1fc9b6b3200335ae69.md) | 114 | `declaration-track:c7ae0f1fc9b6b3200335ae69c0c1f5e0f711ac8a73dd6c620b5e67238dc5abb1` |
| 15 | `def` | [max4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/max4--7055489b1167ba720533beef.md) | 115 | `declaration-track:7055489b1167ba720533beef053218c0672776c13d6f5183de3cd71243a3f292` |
| 16 | `def` | [mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mul--936382d1772593a5ed5a3309.md) | 118 | `declaration-track:936382d1772593a5ed5a3309f041e4cefed4d5c7aed734dc242bd5023da7178d` |
| 17 | `def` | [expInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/expinterval--381564f2c6649c72b1eb5e5a.md) | 130 | `declaration-track:381564f2c6649c72b1eb5e5a22f4eb2abe359859ad3ff4420dfad412478b19e2` |
| 18 | `theorem` | [mem_expInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-expinterval--9aa87672df43b5fc0a9b0920.md) | 137 | `result-track:9aa87672df43b5fc0a9b0920619ecec02fa51a2a4894d43627e7f4457d9b97e7` |
| 19 | `structure` | [IntervalRealPos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/intervalrealpos--96fc8e73f9de4c04674173e7.md) | 148 | `declaration-track:96fc8e73f9de4c04674173e719df1c5f3f0c91392b5346dd61e7841b1c788ed0` |
| 20 | `def` | [logInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/loginterval--395847ecfa891d49cec29df3.md) | 153 | `declaration-track:395847ecfa891d49cec29df3ce2109b09af1c1b5fb569f6949115ddc3b4611ed` |
| 21 | `theorem` | [mem_logInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-loginterval--5c7ac02476c2c321350c5cdd.md) | 160 | `result-track:5c7ac02476c2c321350c5cdd907db8ef6ab35e64a324b614bfa5fc336fee5af8` |
| 22 | `def` | [sinInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/sininterval--bed0e72c95bbb3aabc8afdab.md) | 172 | `declaration-track:bed0e72c95bbb3aabc8afdab5e128fea8cb193bc4158ed0ca5cb347b771a8b8b` |
| 23 | `theorem` | [mem_sinInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-sininterval--64829ce438d6e0ab8f81adbe.md) | 176 | `result-track:64829ce438d6e0ab8f81adbef3175e3c46d43e2e9c503c95939d9c32d7e4377e` |
| 24 | `def` | [cosInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/cosinterval--d7d66d8c2f4e6c31d5cf47be.md) | 184 | `declaration-track:d7d66d8c2f4e6c31d5cf47bec0d37dfcf24f5b45d130731327b84eb0444c1e07` |
| 25 | `theorem` | [mem_cosInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-cosinterval--727fab4fddeffd5f3c472fe0.md) | 188 | `result-track:727fab4fddeffd5f3c472fe00cb771f83615d4eb62496466789d6bd86e3b9afa` |
| 26 | `def` | [atanInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/ataninterval--2d3f8583e3aaba1d3e3c58b7.md) | 196 | `declaration-track:2d3f8583e3aaba1d3e3c58b702f82a2cd8606f4e311713e5935ec1bb91ced653` |
| 27 | `theorem` | [mem_atanInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-ataninterval--39083b64084696ab1763f691.md) | 200 | `result-track:39083b64084696ab1763f691fb0e3f1f93dfe0451cc3eac074ea74db4b0edff1` |
| 28 | `theorem` | [arsinh_deriv_abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/arsinh-deriv-abs-le-one--d89b08ff88165ec541134f91.md) | 212 | `result-track:d89b08ff88165ec541134f9192dfb09e7e24d2c2219c7e6a30522fa1f94878c6` |
| 29 | `theorem` | [abs_arsinh_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/abs-arsinh-le-abs--b2dd062d0fae90ed4cb3d8e5.md) | 227 | `result-track:b2dd062d0fae90ed4cb3d8e5d4277cec3aab38f0d0561789378232e15cb3d126` |
| 30 | `def` | [arsinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/arsinhinterval--931c2fde7fb56d21f73f9d4d.md) | 275 | `declaration-track:931c2fde7fb56d21f73f9d4d14eaa599c58cb9c10d3beb550391b5d957d3ca53` |
| 31 | `theorem` | [mem_arsinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-arsinhinterval--2ab167be5446a52feeb728cf.md) | 285 | `result-track:2ab167be5446a52feeb728cfd0a1224668760bb38ed7bb3bbae622adaf41842b` |
| 32 | `def` | [sinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/sinhinterval--859b5b9be4b1423fbcc1cf74.md) | 313 | `declaration-track:859b5b9be4b1423fbcc1cf74b0c2e719d6c95f665a1169c2dceeda7499fa6e91` |
| 33 | `theorem` | [mem_sinhInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-sinhinterval--3d14f954fba8b45ba2cf2265.md) | 320 | `result-track:3d14f954fba8b45ba2cf2265849a1522b69b32c18bbbea1a6f7d4f0d3e74a3d2` |
| 34 | `def` | [coshInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/coshinterval--dea3c02bc780b6080db0f151.md) | 331 | `declaration-track:dea3c02bc780b6080db0f151195ff85d16b19b7682db08a835fc322e18a91862` |
| 35 | `theorem` | [mem_coshInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-coshinterval--95708a3c81753ca677a21d87.md) | 355 | `result-track:95708a3c81753ca677a21d87eb45664e9fd6ed7d5750d534ae5e8f2a5fff94c8` |
| 36 | `def` | [sqrtInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/sqrtinterval--024239db9fd251b19c46aa2e.md) | 403 | `declaration-track:024239db9fd251b19c46aa2e92f6701db1f2cdb07eac1c95fcf2e5ace4bc1ae6` |
| 37 | `theorem` | [sqrt_le_max_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/sqrt-le-max-one--2a1dff1abaf68df4c37a1fb2.md) | 409 | `result-track:2a1dff1abaf68df4c37a1fb2a006650361731b3fb49cff7a0d79582f163852bb` |
| 38 | `theorem` | [mem_sqrtInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/declarations/mem-sqrtinterval--312ac781aecde80fc2195b7b.md) | 432 | `result-track:312ac781aecde80fc2195b7b5b6a0e280ab74da6af897cc908c1d5a9c0ae3121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
