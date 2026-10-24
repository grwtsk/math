# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothTransition.Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15797851b66c53a964bccf7e3f64f3069e79b0fe",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15797851b66c53a964bccf7e3f64f3069e79b0fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Extend` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolynomialExp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/macro-rules--cc6a0dc2c9d4686b04620659.md) | 38 | `declaration-track:cc6a0dc2c9d4686b0462065956ce02a18cde6f89ba2a56cd246cc6ed50d4c492` |
| 2 | `def` | [expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/expneginvglue--5d4222d5b98d2ede284726f6.md) | 52 | `declaration-track:5d4222d5b98d2ede284726f61d27d52d591e26ea7c96dc46315b69586737fc41` |
| 3 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero-of-nonpos--54917a446f2f97f41b7cd3a9.md) | 59 | `result-track:54917a446f2f97f41b7cd3a965bf3aa273f5550ab76b022f8176abcb1337902e` |
| 4 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero--2db569046ec9211134f22cd8.md) | 63 | `result-track:2db569046ec9211134f22cd875b8c23f89ef43054b7b7bc434804001e95b7c73` |
| 5 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/pos-of-pos--c110d7420a48432fdcd437ee.md) | 66 | `result-track:c110d7420a48432fdcd437eee89615905e8a9fecb426f2369eacd623df79680e` |
| 6 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/nonneg--fe68cd575f28c1e11584f225.md) | 71 | `result-track:fe68cd575f28c1e11584f225bc452f8f749e9e72eff963447cee52ed0d4ebd4f` |
| 7 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero-iff-nonpos--20ec4dd0cf189f582a6bb7dd.md) | 78 | `result-track:20ec4dd0cf189f582a6bb7ddc80684fbc76b4e88157f8dec4f64914036026485` |
| 8 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/tendsto-polynomial-inv-mul-zero--76ede17f16753293bc470866.md) | 104 | `result-track:76ede17f16753293bc470866fc9dbc34718312609138a42142b44638c5c86e2c` |
| 9 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/hasderivat-polynomial-eval-inv-mul--e260a12f1ef7cd615eed34a5.md) | 114 | `result-track:e260a12f1ef7cd615eed34a5d7e686f49dfe6de48f0012bb85499a72bf0b9863` |
| 10 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/differentiable-polynomial-eval-inv-mul--01c1c9bf91fa0ced0df028c0.md) | 132 | `result-track:01c1c9bf91fa0ced0df028c0819ea09eafd29926c20ea9a634b5edbfce335cb1` |
| 11 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/continuous-polynomial-eval-inv-mul--84fac50fb6a195a8c8af20e7.md) | 136 | `result-track:84fac50fb6a195a8c8af20e7772c46e1a3cba452b0b17b49867e706d0aa1d8a5` |
| 12 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/contdiff-polynomial-eval-inv-mul--7c6b871a99389d08b4c7933f.md) | 140 | `result-track:7c6b871a99389d08b4c7933f9fb866ba25920cf3f49ebc35f18cc2e357c873a7` |
| 13 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/contdiff--a06cb3eca7775d780e1a2941.md) | 151 | `result-track:a06cb3eca7775d780e1a2941463502099bc34b3051b125231d261fc74f310574` |
| 14 | `def` | [Real.smoothTransition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/real-smoothtransition--33cc34133d56279f1e5b29ad.md) | 159 | `declaration-track:33cc34133d56279f1e5b29adf9be79c4df5c4d779f173613b16528ee81e0a3d2` |
| 15 | `theorem` | [pos_denom](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/pos-denom--0d8ce3f554d1598de318ba6a.md) | 171 | `result-track:0d8ce3f554d1598de318ba6a809665e87f096bdb02542c0d4a62d56dfa8be76e` |
| 16 | `theorem` | [one_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/one-of-one-le--c7480f5510732b17e053dceb.md) | 176 | `result-track:c7480f5510732b17e053dceb50fec694bc212c5123d01eb44e78f0f67add76a6` |
| 17 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero-iff-nonpos--eb4a688abec96b7301c093bf.md) | 181 | `result-track:eb4a688abec96b7301c093bfc58b3877f4334fd5eb12e1b4fbbce3d9fa25f971` |
| 18 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero-of-nonpos--882e856d4fe80dd9c1d5123f.md) | 184 | `result-track:882e856d4fe80dd9c1d5123fdf461e7b34960fdae77271f175e3aa26c8d5f296` |
| 19 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/zero--e78356f8a3d50451aec40347.md) | 188 | `result-track:e78356f8a3d50451aec40347de25a849a852e4debcd5090cac2b620beadbb708` |
| 20 | `theorem` | [one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/one--322bf7df917fbb6ba7fb42dc.md) | 193 | `result-track:322bf7df917fbb6ba7fb42dc19760d075dfc52ec4d033f84c1229584c1734e1e` |
| 21 | `theorem` | [projIcc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/projicc--fb6b129cc4834b2aec0f0796.md) | 200 | `result-track:fb6b129cc4834b2aec0f07961aa22917fed56e26f65260db0e9552d80fc57889` |
| 22 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/le-one--207de0d9dbadb654c75e4a48.md) | 207 | `result-track:207de0d9dbadb654c75e4a48ec8f35032896465078a0f26afe7b10821e3a59b4` |
| 23 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/nonneg--60fd17cd675a536fb0b640ff.md) | 211 | `result-track:60fd17cd675a536fb0b640fff22bc7722d46619c39ea92c9189d7cf1eff22e5f` |
| 24 | `theorem` | [lt_one_of_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/lt-one-of-lt-one--31f5ca52033c20f38095fb1d.md) | 215 | `result-track:31f5ca52033c20f38095fb1dd16d50fce57e5b0ad32709dfe5b3ec66115622cc` |
| 25 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/pos-of-pos--9a5fe9f27670c179e5360b5c.md) | 219 | `result-track:9a5fe9f27670c179e5360b5c243e38a9802cefff3fad800ff8d7a57f703e86f0` |
| 26 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/contdiff--b184265f6dc0baca9a5e2f6e.md) | 223 | `result-track:b184265f6dc0baca9a5e2f6e742788a29abbd644e9d60b96837807f8cf0ddb58` |
| 27 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/contdiffat--4ec2eb267160178a711f119d.md) | 229 | `result-track:4ec2eb267160178a711f119d57ec2511a8b44a822fc517750a61d2c1044073f8` |
| 28 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/continuous--b5bc124a3208a64b572e64ea.md) | 233 | `result-track:b5bc124a3208a64b572e64eab9eeac58731d77c62479119194957a5a115bebcd` |
| 29 | `theorem` | [continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/declarations/continuousat--96e03f3202a9df84e784ead0.md) | 237 | `result-track:96e03f3202a9df84e784ead0b7d374a1bbda2e68086150a6bd74ebc90d1815a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
