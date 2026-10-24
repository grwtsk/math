# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothTransition.Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470739a111939af7887817afb8326da861904513",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470739a111939af7887817afb8326da861904513`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Extend` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolynomialExp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/macro-rules--b29a1b1db17085ca60b0e98a.md) | 30 | `declaration-track:b29a1b1db17085ca60b0e98a07daa322b531ed90e19ee7b15ec791f4a407b7ff` |
| 2 | `def` | [expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/expneginvglue--fd22826433efe8de66085f8d.md) | 44 | `declaration-track:fd22826433efe8de66085f8de580d805c8b46c4102560e581abbdee5a4ed1803` |
| 3 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero-of-nonpos--b0513cd6b53ca9b8337a4046.md) | 51 | `result-track:b0513cd6b53ca9b8337a4046518afb48394b38bdbd9e3ef9d22b58a265ccacc0` |
| 4 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero--c42ec8ce277d25516f581784.md) | 55 | `result-track:c42ec8ce277d25516f5817843009614b5d3a67fe0b1b61f3c9b07ac6118a6a27` |
| 5 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/pos-of-pos--829952ffb177788fe123886f.md) | 58 | `result-track:829952ffb177788fe123886fb616635960f603e462818bea8edb3b546842f2f5` |
| 6 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/nonneg--7481033088e3b6ca6617e2b2.md) | 63 | `result-track:7481033088e3b6ca6617e2b2c57b4c33f152f03652280c98cc9aeb9ca79f4fcd` |
| 7 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero-iff-nonpos--2eb98aa1686dd9178405267e.md) | 70 | `result-track:2eb98aa1686dd9178405267e96195ba35535047cdea8ac4f5f632384465446db` |
| 8 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/tendsto-polynomial-inv-mul-zero--0729e605f4cf209edec7636b.md) | 96 | `result-track:0729e605f4cf209edec7636b63c826d9607910f4f93f31b0fc8ad59b9e48a63a` |
| 9 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/hasderivat-polynomial-eval-inv-mul--2b26983f961de4dd80b6d9f1.md) | 106 | `result-track:2b26983f961de4dd80b6d9f17ce8bf7e11b8c501b27cc444f1d6e191cd0c483e` |
| 10 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/differentiable-polynomial-eval-inv-mul--eb5ee26b8f741ae46923c03e.md) | 124 | `result-track:eb5ee26b8f741ae46923c03e383bdb83e2a386b7d915152e5f6d08493381a918` |
| 11 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/continuous-polynomial-eval-inv-mul--e2600944acf76b888d8b5a2f.md) | 128 | `result-track:e2600944acf76b888d8b5a2fb14d74b6d1b9948dcadd7426b883aa663041d328` |
| 12 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/contdiff-polynomial-eval-inv-mul--0808a5d6e9a63bbc68259525.md) | 132 | `result-track:0808a5d6e9a63bbc68259525d49820e4fb97bafd6373d5dc84355d1c0f815c82` |
| 13 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/contdiff--b33f52b6f4b55549f7ffe064.md) | 143 | `result-track:b33f52b6f4b55549f7ffe064b20f9d6a6a4b164f50c59c77692f471a26b1f42a` |
| 14 | `def` | [Real.smoothTransition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/real-smoothtransition--00bb02e0059554e210e89e7e.md) | 151 | `declaration-track:00bb02e0059554e210e89e7e8073abcb642d6a26e69531e17d9f757589845c0f` |
| 15 | `theorem` | [pos_denom](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/pos-denom--d93ae782dbddb006ecb59583.md) | 163 | `result-track:d93ae782dbddb006ecb595831f4ccc109512cfddfa9815737d13d4bf6b68f60c` |
| 16 | `theorem` | [one_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/one-of-one-le--6e479dc8ec6f16d9f6b77ff8.md) | 168 | `result-track:6e479dc8ec6f16d9f6b77ff89d7eaaa7e9900b71d6938ebce3a15d4a18f9d569` |
| 17 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero-iff-nonpos--f36f39c716eb066c2bac27ea.md) | 173 | `result-track:f36f39c716eb066c2bac27ea3f0cec7150b6bbd4d53978c59075c8751a6e913a` |
| 18 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero-of-nonpos--920f419e443d7e94c84c0cce.md) | 176 | `result-track:920f419e443d7e94c84c0ccefc15a0cba3645f27b7eccc94a6bc7a913b44f116` |
| 19 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/zero--4d4ca75d611b1a8e22f5292e.md) | 180 | `result-track:4d4ca75d611b1a8e22f5292ebd0dd344aa04db3c1ec780f4ce2b2a04a4d81f96` |
| 20 | `theorem` | [one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/one--4ba7b4b3c08352980a36d777.md) | 185 | `result-track:4ba7b4b3c08352980a36d777ac7021a6bbc44e8650bb368e6b858028e8169940` |
| 21 | `theorem` | [projIcc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/projicc--0930db104809c0f9494adc91.md) | 192 | `result-track:0930db104809c0f9494adc91ebe8b78a779076e4986cdafbaf38a4bdb38e482c` |
| 22 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/le-one--2076c5ce5a5362de0866c809.md) | 199 | `result-track:2076c5ce5a5362de0866c80902781947fcb86f34b66c56f5525e057193af2546` |
| 23 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/nonneg--18881e67ef599d1dfd8f7040.md) | 203 | `result-track:18881e67ef599d1dfd8f7040a9164a5b4e30a66bf78ec0744e32a5023b05310a` |
| 24 | `theorem` | [lt_one_of_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/lt-one-of-lt-one--0b488bf67fe36f236a24794d.md) | 207 | `result-track:0b488bf67fe36f236a24794dec35c0ece107673b1a8a62834d24090b6429f2ab` |
| 25 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/pos-of-pos--c5320ad0382fdf636845494a.md) | 211 | `result-track:c5320ad0382fdf636845494a4d82296f012ec55e3c418ac56e6fe34d1a68790c` |
| 26 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/contdiff--54c7ba96a377b7eb6d059a87.md) | 215 | `result-track:54c7ba96a377b7eb6d059a872f29d67e031e67da3f93ce287849f0178dc7ae7a` |
| 27 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/contdiffat--752c5d4adcfedc558cfb1691.md) | 221 | `result-track:752c5d4adcfedc558cfb16913e90c8170b6f0c986e0a82719d3df551c42fd62d` |
| 28 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/continuous--c640fa5dfea4c129d6e08286.md) | 225 | `result-track:c640fa5dfea4c129d6e08286ea28288ae3b7edc142a391a2c9f735e218dbae84` |
| 29 | `theorem` | [continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant8abd05798304d1fe1c9f51678243070a001516d8ca31bb7e2090301c0f10afa1.lean/declarations/continuousat--0bb38575a264c2411abbca1d.md) | 229 | `result-track:0bb38575a264c2411abbca1dffb40cf715eed9742ffc1c5a20e211f1cc091712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
