# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50cd2b1217c7038c8a7b53b0a277aeb1723da792",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50cd2b1217c7038c8a7b53b0a277aeb1723da792`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/compactlaplace--d68c288c60082494629521cd.md) | 30 | `declaration-track:d68c288c60082494629521cdfa38fd0a930274e18ce2557ffe9a3ff405b22273` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/primitivetransform--eafe8fd7dad38fe6d5230a5e.md) | 33 | `declaration-track:eafe8fd7dad38fe6d5230a5e865bfc25844026045bdf0bbfe91f4f3218a7db0d` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/normalizedprimitivetransform--44efd4dab0e496b648f8a350.md) | 35 | `declaration-track:44efd4dab0e496b648f8a350525a6bf8fc4bd63723c22703a4bfae61476d9de5` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/compactlaplace-integrable--d758eb875b6204dd05a9b908.md) | 38 | `result-track:d758eb875b6204dd05a9b9089baaf355f9a175bba1067af3866aa4b51fafd169` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/complex-weighted-derivative--574d9b742102a564c18ad336.md) | 45 | `result-track:574d9b742102a564c18ad3361de11e5b17c0ee87da7118df5be74b773f8ec410` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/actual-complex-pole-filter--5131cb0704e1f60d51a3feb4.md) | 74 | `result-track:5131cb0704e1f60d51a3feb419b040e2b53119227363baf3a1d0ae2b4672c562` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/primitive-transform-normalization--24e59273e21df0b501ac22bd.md) | 101 | `result-track:24e59273e21df0b501ac22bd64a6a7f7fe8709ea01c0b986c1df5cc08fc99b02` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/boundary-transform-factored--a6361575f7a08d4f7b93d811.md) | 111 | `result-track:a6361575f7a08d4f7b93d811b05e6e5f1a1937d67016428fcc07e1ac68c9d522` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/boundary-transform-factored-unnormalized--dbc57e11e7b1824cdac5eef0.md) | 118 | `result-track:dbc57e11e7b1824cdac5eef017c5746d5e9be57a3ac305168226d41407a0293f` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/compactlaplace-hasderivat--2c5be530daf3300a5f2c6512.md) | 128 | `result-track:2c5be530daf3300a5f2c651259a3565d761458554b24d6c0fd1d68f60ed14f9e` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/compactlaplace-differentiable--bbf57a40f960d1bbe052ccd8.md) | 173 | `result-track:bbf57a40f960d1bbe052ccd839c993304c229f4b5e007769f6db11eda8317ce0` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/normalized-primitive-differentiable--61bd0dc0c9599ba92926aefc.md) | 177 | `result-track:61bd0dc0c9599ba92926aefcfa4a9056378a524533513bb447f84bf68b6e06c1` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/primitive-differentiable--7ad9082fadac900e2e047487.md) | 182 | `result-track:7ad9082fadac900e2e047487112417e7436d90401ad89786a4a4fcd7f6790940` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/boundary-differentiable--1f3e6266e21f35ec4c090170.md) | 190 | `result-track:1f3e6266e21f35ec4c090170725ed57a2d4ea93b9f4a2964f5a85c6aa96ae3f5` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/normalized-primitive-half--b259ffc047cc59e6c2e786f4.md) | 199 | `result-track:b259ffc047cc59e6c2e786f4d7b75e814e32ec260bdee20df622ed5a02c6482b` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant43ab7deb29220eff17ace73bd201118df5ee52309d027c8951859f641b287aeb.lean/declarations/normalized-primitive-half-ne-zero--8d40bb382e7774558591a917.md) | 212 | `result-track:8d40bb382e7774558591a9170ef0ff28522cbe7a601a9122d7403a422928b841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
