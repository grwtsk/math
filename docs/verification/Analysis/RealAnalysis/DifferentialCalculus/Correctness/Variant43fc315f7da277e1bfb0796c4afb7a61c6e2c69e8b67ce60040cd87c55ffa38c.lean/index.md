# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Correctness.Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6758f0dac2c2058bc3b222cc1575703c166ec55b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalDual_val_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evaldual-val-correct--614dcb4af0d1f75fd1f41541.md) | 45 | `result-track:614dcb4af0d1f75fd1f41541ee35e8028a8c6a5126097be8892eb71ebfcb5418` |
| 2 | `abbrev` | [evalFunc1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1--341d15028aa69ede2120d0c7.md) | 78 | `declaration-track:341d15028aa69ede2120d0c7edfa9b4d9db5a14e6cfd4437264233278ccfb4ed` |
| 3 | `theorem` | [evalFunc1_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-differentiable--e1b4e762c2463c1e85ace943.md) | 88 | `result-track:e1b4e762c2463c1e85ace943727491e60bb886e60288f37b895175260507d0e9` |
| 4 | `theorem` | [cos_mem_cosInterval_of_any](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/cos-mem-cosinterval-of-any--44e90dae5f707c0677fd089b.md) | 112 | `result-track:44e90dae5f707c0677fd089b981be79eb7ef0219ea67c811e612a090d9e05c1f` |
| 5 | `theorem` | [sin_mem_sinInterval_of_any](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/sin-mem-sininterval-of-any--fa8b8d8d7b4270ab108fee12.md) | 119 | `result-track:fa8b8d8d7b4270ab108fee12576429007a7ef079acedb8fbcb33a83ab250a0b2` |
| 6 | `theorem` | [neg_sin_mem_neg_sinInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/neg-sin-mem-neg-sininterval--8967825919c3228a94a8faec.md) | 126 | `result-track:8967825919c3228a94a8faeca44fe3adb2e972418e60066540b6f9fb2b7ce936` |
| 7 | `theorem` | [updateVar_mem_mkDualEnv_val](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/updatevar-mem-mkdualenv-val--d2a5b6c88b46ba0d76a91e87.md) | 132 | `result-track:d2a5b6c88b46ba0d76a91e87f819f021e14b33e6f48ebc10b904b108524f8b80` |
| 8 | `theorem` | [evalFunc1_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-add--a8a0fab74eec9e2e3a9deb2c.md) | 146 | `result-track:a8a0fab74eec9e2e3a9deb2c8d29bc2478bed5b7727fbeb3be298c42554bab12` |
| 9 | `theorem` | [evalFunc1_add_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-add-pi--db9389610b0b5afd6c668ee2.md) | 150 | `result-track:db9389610b0b5afd6c668ee2c10a498f501def5ffcca05bee3bb703c339ba121` |
| 10 | `theorem` | [evalFunc1_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-mul--d493761b3d8a2a6739b86dfb.md) | 154 | `result-track:d493761b3d8a2a6739b86dfb7dccb02cd82684804b0f218d6c8810031a6d0a05` |
| 11 | `theorem` | [evalFunc1_mul_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-mul-pi--8f1bf6aaa8db85a10987d312.md) | 158 | `result-track:8f1bf6aaa8db85a10987d3126e20886597f1e9e964f09f41258b5084c4a21740` |
| 12 | `theorem` | [evalFunc1_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-neg--ee025f3ad37fd123079ea27b.md) | 162 | `result-track:ee025f3ad37fd123079ea27b5176c191e50cf810a034a83ae609a3e3b62ae881` |
| 13 | `theorem` | [evalFunc1_neg_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-neg-pi--4c332b85aa88aa9b78be9af9.md) | 166 | `result-track:4c332b85aa88aa9b78be9af9e5005aef30d87950b0a5ba278bca38c309a2a3bc` |
| 14 | `theorem` | [evalFunc1_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-sin--4a53d30c2cf597c1c5dfc1e0.md) | 170 | `result-track:4a53d30c2cf597c1c5dfc1e031ce4cf59f206561350acee8d5a46bb81948aaab` |
| 15 | `theorem` | [evalFunc1_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-cos--a052fbea79c345adcdad5cd9.md) | 174 | `result-track:a052fbea79c345adcdad5cd9318028ee6525ca9bcff4671eecd8929879b87379` |
| 16 | `theorem` | [evalFunc1_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-exp--04f184cb8f135f85651c360a.md) | 178 | `result-track:04f184cb8f135f85651c360af6974cc83806416879842be3ca04f5bd9675fe72` |
| 17 | `theorem` | [evalFunc1_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-log--e86982371e6e5be572fd93fb.md) | 182 | `result-track:e86982371e6e5be572fd93fbf728e54f42e523ce22d2d73978365ec61fe6ae23` |
| 18 | `theorem` | [evalFunc1_atan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-atan--1f2c692984e9cade6329b8f1.md) | 186 | `result-track:1f2c692984e9cade6329b8f1286970451d9507531a12d743796ab5442f02bf5d` |
| 19 | `theorem` | [evalFunc1_arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-arsinh--bf1ff787bafc815d93054440.md) | 190 | `result-track:bf1ff787bafc815d930544405e2179335257a3e07a56e11937bf830062a1eb83` |
| 20 | `theorem` | [evalFunc1_atanh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-atanh--f5e4d8739588c29403bc5dd0.md) | 194 | `result-track:f5e4d8739588c29403bc5dd0f854ec3cc9ee5d076da4cad400b6ac1f424d0829` |
| 21 | `theorem` | [evalFunc1_sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-sinc--ced3c772c600ca659a413dae.md) | 198 | `result-track:ced3c772c600ca659a413dae0acc9108f26be11141344a4d6dfa12538d644ae0` |
| 22 | `theorem` | [evalFunc1_erf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-erf--a4a0ff8880a3cd109e350d7f.md) | 202 | `result-track:a4a0ff8880a3cd109e350d7f817311b623f41d7a81971b1680a78528db58065f` |
| 23 | `theorem` | [evalFunc1_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-sqrt--00d394a599bc55dbb00f986b.md) | 206 | `result-track:00d394a599bc55dbb00f986be69c1324d6243994fb4db37740189c0f55443be2` |
| 24 | `theorem` | [evalFunc1_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-const--be97d1bd103b1333e99d2f2e.md) | 211 | `result-track:be97d1bd103b1333e99d2f2ea4405b38dff69b13bee14028beeb295692301cfd` |
| 25 | `theorem` | [evalFunc1_var](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-var--ed6f9b023623b00a446dba15.md) | 215 | `result-track:ed6f9b023623b00a446dba1532e24a009b9980736825c59bdded664f01baefde` |
| 26 | `theorem` | [evalFunc1_namedConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-namedconst--5be5e57a124e833d2c560c1b.md) | 219 | `result-track:5be5e57a124e833d2c560c1bce789c576dbb0047a32a8c5d594436b2cebab48a` |
| 27 | `theorem` | [evalFunc1_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-pi--034cc6ddd811ca27f4797c5c.md) | 223 | `result-track:034cc6ddd811ca27f4797c5c6a97bd4c9bba8006c50c621b07ef5be3c58b8d8f` |
| 28 | `theorem` | [evalFunc1_eulerMascheroni](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalfunc1-eulermascheroni--b11de2934d914f495642748b.md) | 227 | `result-track:b11de2934d914f495642748b24abfad488e226f81a782a2a1e4bf647882a6244` |
| 29 | `theorem` | [deriv_mem_dualDer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/deriv-mem-dualder--a94725bfb6b9cb569a369ee8.md) | 233 | `result-track:a94725bfb6b9cb569a369ee80d6d9731d70c8cfedb199a49525105c18e704702` |
| 30 | `theorem` | [evalDual_der_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evaldual-der-correct--c571fb4c333c8f2be4ec5cfe.md) | 306 | `result-track:c571fb4c333c8f2be4ec5cfe006423e46b9a6f260873dae9a77c8933ec8574b4` |
| 31 | `theorem` | [evalAlong_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalalong-differentiable--b7f2f91da1ff074ff528fd23.md) | 315 | `result-track:b7f2f91da1ff074ff528fd230367d03945612f738230b008783d13f41b16adc1` |
| 32 | `theorem` | [evalDual_der_correct_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evaldual-der-correct-idx--d6066da79fa9057427e2e096.md) | 357 | `result-track:d6066da79fa9057427e2e096cb059d8a55e254c333df31c3898018bc22e1ca52` |
| 33 | `theorem` | [derivInterval_correct_idx](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/derivinterval-correct-idx--7a8eb07de1684847160a83b9.md) | 417 | `result-track:7a8eb07de1684847160a83b9e1ec7837302315598d12fe54efbc402cbd7c0f03` |
| 34 | `inductive` | [UsesOnlyVar0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/usesonlyvar0--6ff0a91d076c2e22554902f1.md) | 430 | `declaration-track:6ff0a91d076c2e22554902f1ceebff74cdbdf0817b19e17791eb38bf9e3e1593` |
| 35 | `theorem` | [evalDual_congr_at_0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evaldual-congr-at-0--934eaee292cdea5f62c478d7.md) | 443 | `result-track:934eaee292cdea5f62c478d79cc7b2d4361c74eda468a3a74d0ec8a9a9d22f76` |
| 36 | `theorem` | [mkDualEnv_at_0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/mkdualenv-at-0--9d20dc02b52951edddd4318d.md) | 467 | `result-track:9d20dc02b52951edddd4318dad3edb9e922d1e0a04ab1392a6f923f99bd4495f` |
| 37 | `theorem` | [derivInterval_eq_evalWithDeriv1_of_UsesOnlyVar0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/derivinterval-eq-evalwithderiv1-of-usesonlyvar0--7678d3e4f01a0b4d188b7c71.md) | 472 | `result-track:7678d3e4f01a0b4d188b7c717cd08d7508179f71f3088b7273cb63d4af889103` |
| 38 | `theorem` | [evalWithDeriv1_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/declarations/evalwithderiv1-correct--09d5cf9d5356aea84452f35f.md) | 483 | `result-track:09d5cf9d5356aea84452f35fe3705f60ed3211d97226f3902221ba12bdcff87a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
