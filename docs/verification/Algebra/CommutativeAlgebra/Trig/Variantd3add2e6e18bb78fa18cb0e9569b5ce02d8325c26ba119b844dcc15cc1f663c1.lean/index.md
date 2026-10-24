# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trig.Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e970205ff06cf1cf82c7132d8d4f93251403f29c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinTaylorCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sintaylorcoeffs--97507a50e491f8faea9ae437.md) | 39 | `declaration-track:97507a50e491f8faea9ae43714e3e64f793de272c0a94b5289764109dd849782` |
| 2 | `def` | [sinTaylorPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sintaylorpoly--71a3ed774cab23d42a4685c2.md) | 47 | `declaration-track:71a3ed774cab23d42a4685c202eacde2dcb612ac37cd65ce451d010cdf2ecc0d` |
| 3 | `def` | [sinRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinremainderbound--83a55552069d25929d8c9d9b.md) | 51 | `declaration-track:83a55552069d25929d8c9d9ba9724e0c531b0b51010afbfa0d81b9125aaca6bf` |
| 4 | `theorem` | [sinRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinremainderbound-nonneg--1edb588accea9b88df6df8d6.md) | 56 | `result-track:1edb588accea9b88df6df8d6ba130b394b75fc2619f6b6b9f0b69137c2a5c200` |
| 5 | `def` | [cosTaylorCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/costaylorcoeffs--c69b9d458bdadd3857e1019a.md) | 68 | `declaration-track:c69b9d458bdadd3857e1019a33c71e95e1e61905e54a0877e9e4c7cf11b2cc3c` |
| 6 | `def` | [cosTaylorPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/costaylorpoly--75f676c93f3dc12b33f62901.md) | 76 | `declaration-track:75f676c93f3dc12b33f62901263a7ba039bda1779c31934ea102c1a74f869725` |
| 7 | `def` | [cosRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/cosremainderbound--954afab094e05cf62d30e536.md) | 80 | `declaration-track:954afab094e05cf62d30e5365830b7b1be6ec0dbc5920533f16ad0879382009f` |
| 8 | `theorem` | [cosRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/cosremainderbound-nonneg--f501bdcdf612d195fa78d21f.md) | 85 | `result-track:f501bdcdf612d195fa78d21f26847c18a553daf2be11dbd935073f319bd4e69c` |
| 9 | `def` | [sincTaylorCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinctaylorcoeffs--70bbfdf23760e07149bf5158.md) | 104 | `declaration-track:70bbfdf23760e07149bf51584ab9024a7a76030bb10ff889e4c90d918498cf40` |
| 10 | `def` | [sincTaylorPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinctaylorpoly--2497bb85cddce8da485ac1b3.md) | 113 | `declaration-track:2497bb85cddce8da485ac1b3b72a1cc2fed6575ec8fc53cc782b0426be44f8a9` |
| 11 | `def` | [sincRemainderBound](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sincremainderbound--00d66f80b368572ced20667d.md) | 119 | `declaration-track:00d66f80b368572ced20667d250e4a511dbcb6622f663b26452bea7ceb56f05a` |
| 12 | `theorem` | [sincRemainderBound_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sincremainderbound-nonneg--aaffe666ae7f1457138e4079.md) | 125 | `result-track:aaffe666ae7f1457138e40794172f628dc5e41cadf508db21d80e16c72753a60` |
| 13 | `def` | [tmSin](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmsin--b2959c164204f8dcc4e48c7b.md) | 138 | `declaration-track:b2959c164204f8dcc4e48c7bc4343f2efca58ce269825ef4d9daf8af06b8c136` |
| 14 | `def` | [tmCos](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmcos--1208e69420c7cdcd32215034.md) | 147 | `declaration-track:1208e69420c7cdcd322150340fdf2961efc1565f9462a618c728c29915cd49f5` |
| 15 | `def` | [tmSinc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmsinc--c062769af80a332deebdf3e1.md) | 156 | `declaration-track:c062769af80a332deebdf3e1b907d27d9cda88ba7df95ac560dca3b22ea97471` |
| 16 | `theorem` | [iteratedDeriv_sin_cos_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-sin-cos-zero--5cc0d5b67fc93195a9bde88d.md) | 166 | `result-track:5cc0d5b67fc93195a9bde88d278f5d30735697c1ad713609c749f647b094c1a7` |
| 17 | `theorem` | [iteratedDeriv_sin_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-sin-zero--a605d0d184a06290e2db3d21.md) | 192 | `result-track:a605d0d184a06290e2db3d2118b6247e68b4e71a5edac97819832ae4c753805e` |
| 18 | `theorem` | [iteratedDeriv_cos_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-cos-zero--d5e5b2d042e728976bb18597.md) | 201 | `result-track:d5e5b2d042e728976bb18597ecf47f769d93e4e08cd00597215ee33bb8d10bd1` |
| 19 | `theorem` | [iteratedDeriv_sin_zero_even](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-sin-zero-even--b63167c72bef5e9a1ee08cdb.md) | 210 | `result-track:b63167c72bef5e9a1ee08cdbda18b5b67707a2bf75d874b8dfaaa3923eb3c8f4` |
| 20 | `theorem` | [iteratedDeriv_sin_zero_odd](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-sin-zero-odd--756b36b94fa199633b5e2a82.md) | 217 | `result-track:756b36b94fa199633b5e2a8243b135bf30701176cb61c0fc047300e2383e7924` |
| 21 | `theorem` | [sinTaylorCoeffs_eq_iteratedDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sintaylorcoeffs-eq-iteratedderiv--8b9cdec2b8a334b955a57337.md) | 230 | `result-track:8b9cdec2b8a334b955a573377b49fffb9b341f45935e3942ab172ae003c67aff` |
| 22 | `theorem` | [iteratedDeriv_cos_zero_even](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-cos-zero-even--f74652b3952c77ec150ba97c.md) | 244 | `result-track:f74652b3952c77ec150ba97c70e43260a20f113f30afbf50be88422a1679c45b` |
| 23 | `theorem` | [iteratedDeriv_cos_zero_odd](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-cos-zero-odd--a10c29e7d9adbb5d04d9834e.md) | 257 | `result-track:a10c29e7d9adbb5d04d9834e7a3d94ba46db9a199f2d4ec0600150a846dc0b7e` |
| 24 | `theorem` | [cosTaylorCoeffs_eq_iteratedDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/costaylorcoeffs-eq-iteratedderiv--2b64bf31714f65b657041581.md) | 264 | `result-track:2b64bf31714f65b65704158198617a5758a74faef6b26dee672a95c7229ecd78` |
| 25 | `theorem` | [sinTaylorPoly_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sintaylorpoly-aeval-eq--e858128097784ff170e3281e.md) | 281 | `result-track:e858128097784ff170e3281e8a329b5695cbef89e7db02a133e74ba841a2824e` |
| 26 | `theorem` | [cosTaylorPoly_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/costaylorpoly-aeval-eq--26ebc5a5bafd8bd89ae4aa74.md) | 295 | `result-track:26ebc5a5bafd8bd89ae4aa749b15e4e77f022b60b58620b9bc1fa36008637e7e` |
| 27 | `theorem` | [abs_le_interval_radius](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/abs-le-interval-radius--1de3efd55ebbe8b1b96a3aa4.md) | 310 | `result-track:1de3efd55ebbe8b1b96a3aa46467e79b62b1daf92e0af44f7b3790a2e1826276` |
| 28 | `theorem` | [mem_Icc_of_mem_interval](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/mem-icc-of-mem-interval--9f55d88389a51874c9e5e583.md) | 324 | `result-track:9f55d88389a51874c9e5e583e6843b31945c97260e0f735e3e10d6f9df4a6992` |
| 29 | `theorem` | [tmSin_correct](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmsin-correct--1afa0798b7d08227fd3826df.md) | 331 | `result-track:1afa0798b7d08227fd3826df1a0f486a51925f615f3317b7202788b5d684ae3a` |
| 30 | `theorem` | [tmCos_correct](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmcos-correct--28d02bf18b63f7f0015b9eae.md) | 391 | `result-track:28d02bf18b63f7f0015b9eaebcfdd67bbcc6b159fd0b135a00a85c9637ae45f2` |
| 31 | `theorem` | [contDiff_sinc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/contdiff-sinc--ff59bd67181fc39f63e58da4.md) | 461 | `result-track:ff59bd67181fc39f63e58da40aa3905b2536bbc54d7f0860bb4f2ea84eacd064` |
| 32 | `theorem` | [iteratedDeriv_sinc_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/iteratedderiv-sinc-zero--22837563ecf6f8678ebe0389.md) | 471 | `result-track:22837563ecf6f8678ebe0389b14c38fc9b50261197897a50629c7411dcf41b5d` |
| 33 | `theorem` | [sincTaylorCoeffs_eq_iteratedDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinctaylorcoeffs-eq-iteratedderiv--c1aab96eb96332f0e738817d.md) | 593 | `result-track:c1aab96eb96332f0e738817dab9e17c68889214cee152629b0f00a2235bf9cc1` |
| 34 | `theorem` | [sincTaylorPoly_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/sinctaylorpoly-aeval-eq--18cc53db138aff52ea2a65ba.md) | 623 | `result-track:18cc53db138aff52ea2a65ba05047306ec3ea3d59afad4576c029402fa1bafce` |
| 35 | `theorem` | [tmSinc_correct](../../../../../mathematics/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/declarations/tmsinc-correct--dbbf8074fcb88ed0b941eb69.md) | 637 | `result-track:dbbf8074fcb88ed0b941eb69aca72e9af06a2f6bc7e27f5b3fd757c2aeba2af6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
