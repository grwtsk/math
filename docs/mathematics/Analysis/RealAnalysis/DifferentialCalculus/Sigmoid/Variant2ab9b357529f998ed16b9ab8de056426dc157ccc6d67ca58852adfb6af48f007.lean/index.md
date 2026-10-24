# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `161e5e5e8b90fdeab7fec71e04c5b9395868b098`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLinearBound](declarations/reallinearbound--4c8267b1313bed0d1ea1748a.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RealLinearBound.eval](declarations/reallinearbound-eval--ba3c76da8a66074c48277e9e.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RealSymbolicBound](declarations/realsymbolicbound--d042b56f9a5d93899f8bf562.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sigmoid](declarations/sigmoid--e32b9bc0a1835ae6e7cd2f63.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sigmoid_pos](declarations/sigmoid-pos--2894dba6806abe6ec4ee6f02.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sigmoid_lt_one](declarations/sigmoid-lt-one--7a1bd5a4b7e92a84a37e18da.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sigmoid_mem_Ioo](declarations/sigmoid-mem-ioo--161ffa1c31d384b99795e4e5.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sigmoid_nonneg](declarations/sigmoid-nonneg--b4f4c01002df59b533d3ce89.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sigmoid_le_one](declarations/sigmoid-le-one--777b3180d6fb285874f32a58.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sigmoid_zero](declarations/sigmoid-zero--3dae1ef523816ab60c4e3799.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [one_sub_sigmoid](declarations/one-sub-sigmoid--0e008519f0dd7b959305f6df.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sigmoid_denom_pos](declarations/sigmoid-denom-pos--15db11c7c3424deee2f44a89.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sigmoid_strictMono](declarations/sigmoid-strictmono--2eb2c869b1b8cdbd8bf2e273.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sigmoid_mono](declarations/sigmoid-mono--9aa9e15343e5f6b749884ef0.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sigmoid_le_of_le](declarations/sigmoid-le-of-le--b692dd8582620bd037e66d3f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSigmoidRelaxation](declarations/getsigmoidrelaxation--96943b0403069bce282c96a0.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sigmoid_lower_bound_valid](declarations/sigmoid-lower-bound-valid--e523ac225663fc892691e867.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sigmoid_upper_bound_valid](declarations/sigmoid-upper-bound-valid--703e32c86f51077266920371.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sigmoid_relaxation_sound](declarations/sigmoid-relaxation-sound--fec992e16b6a44c864a520b1.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sigmoidLowerApprox](declarations/sigmoidlowerapprox--80c5be8856c0b8ce612f7e74.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sigmoidUpperApprox](declarations/sigmoidupperapprox--e69d51c998a74c8ba3ca9316.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getSigmoidRelaxationRat](declarations/getsigmoidrelaxationrat--29884292a036b2b602648a54.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [sigmoidSecantEval](declarations/sigmoidsecanteval--2e61cdc7d9e7827ed7d64cba.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sigmoidSecant_at_l](declarations/sigmoidsecant-at-l--6aca07b19b517cbbd1f398b2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sigmoidSecant_at_u](declarations/sigmoidsecant-at-u--4edc520ee6111b8d022715f8.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sigmoid_deriv](declarations/sigmoid-deriv--29f2e362031085ee2b3da71f.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sigmoid_deriv_pos](declarations/sigmoid-deriv-pos--c577588b2b8c4c4e263c7454.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sigmoid_deriv_max](declarations/sigmoid-deriv-max--1217fe160696db61f87a65d5.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
