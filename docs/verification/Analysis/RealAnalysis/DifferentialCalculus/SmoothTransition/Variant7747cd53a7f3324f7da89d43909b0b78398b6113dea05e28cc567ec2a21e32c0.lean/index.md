# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothTransition.Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4500dcd2328fac52f2e8d175c81f73cf5d04a814",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4500dcd2328fac52f2e8d175c81f73cf5d04a814`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolynomialExp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/expneginvglue--b0c41cec9e2d89289bbe1b8b.md) | 34 | `declaration-track:b0c41cec9e2d89289bbe1b8bd7dbe9328ca5c9d47679c8ee215a385b293e5dfa` |
| 2 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero-of-nonpos--3f78b048aeb371b4461df13c.md) | 40 | `result-track:3f78b048aeb371b4461df13c23b62020baa78fa3ed6651cdcd536cc3c98d7b6a` |
| 3 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero--397db4b9af8cb2ff7a68d888.md) | 43 | `result-track:397db4b9af8cb2ff7a68d8881728d0799620624ecb04ee816f3dd9f283df372c` |
| 4 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/pos-of-pos--71405dabc0880194acead118.md) | 46 | `result-track:71405dabc0880194acead118d32589b7ba4b1ae7b22ea16119f607df22263408` |
| 5 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/nonneg--4ecb048c2be5887b01aa8076.md) | 50 | `result-track:4ecb048c2be5887b01aa807669e7a0255605664812d13bc53a011a0515c0dabd` |
| 6 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero-iff-nonpos--564634af00f51395d70a0055.md) | 55 | `result-track:564634af00f51395d70a0055fe7d51144314ef7b1561beb6d819375b315c98d6` |
| 7 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/tendsto-polynomial-inv-mul-zero--b6cb60329743f9f51c678b92.md) | 69 | `result-track:b6cb60329743f9f51c678b92ae08ee25d22782ddb55e8e608515fea655f35ad2` |
| 8 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/hasderivat-polynomial-eval-inv-mul--33fb8f9f76afaf6da96644a4.md) | 79 | `result-track:33fb8f9f76afaf6da96644a414642061ab5f3b223597232faade3c08427dffc6` |
| 9 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/differentiable-polynomial-eval-inv-mul--0755df1ae98059f81ba4e003.md) | 97 | `result-track:0755df1ae98059f81ba4e003879b426f61093c7f4b90fc9f7bc2b6d1645c0e28` |
| 10 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/continuous-polynomial-eval-inv-mul--82c9d9fd617a652135d2f6fa.md) | 101 | `result-track:82c9d9fd617a652135d2f6fa31f50a8e20b2f4f05296ce51277e40229e72e378` |
| 11 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/contdiff-polynomial-eval-inv-mul--2c0db5e9b1c71257de238fac.md) | 105 | `result-track:2c0db5e9b1c71257de238fac1d52811f933b9d17951e4148f12dd5cd5192a16b` |
| 12 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/contdiff--8f3edc48d29366f5b23eeb2d.md) | 118 | `result-track:8f3edc48d29366f5b23eeb2d5c1388081ee7ead5d1841ea68d028f7f30bfe0fd` |
| 13 | `def` | [Real.smoothTransition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/real-smoothtransition--2c342fdc4b615a78319f64ad.md) | 125 | `declaration-track:2c342fdc4b615a78319f64adf563aaa0171ed754d279b3a6ec26ed19746c1b87` |
| 14 | `theorem` | [pos_denom](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/pos-denom--3655b55002cd8fd4df4c45b2.md) | 136 | `result-track:3655b55002cd8fd4df4c45b238de64f2175f9b4453a6e5936c5773af5f97dc05` |
| 15 | `theorem` | [one_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/one-of-one-le--e815519480ca0691841785a0.md) | 140 | `result-track:e815519480ca0691841785a06809f4a2f7abb1e3e71e5882d73f24ebf1b0921f` |
| 16 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero-iff-nonpos--af1c86a4332b483c0f97cf42.md) | 144 | `result-track:af1c86a4332b483c0f97cf420f43c6aadaf1eac01ad5427ffd41de5245b43756` |
| 17 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero-of-nonpos--1e768f72cb94568f3092068c.md) | 147 | `result-track:1e768f72cb94568f3092068cabaaaafe0b38e5a79895671948ac21c79179364c` |
| 18 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/zero--4b31bc62058df21787bd35c6.md) | 150 | `result-track:4b31bc62058df21787bd35c62df235618ead26b7279bb00d6e576a79b0e0abf5` |
| 19 | `theorem` | [one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/one--098efa5382f9348cf9933773.md) | 154 | `result-track:098efa5382f9348cf99337733f37bc54db125b7922138bd3f3ae57668e179ad9` |
| 20 | `theorem` | [projIcc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/projicc--fd806ad79ecc71c303e32c1f.md) | 160 | `result-track:fd806ad79ecc71c303e32c1fac693ff17e53ec1ca6f88307fd87b52546f26775` |
| 21 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/le-one--8e20331b4887cde1b0b20bb6.md) | 167 | `result-track:8e20331b4887cde1b0b20bb676cea6f7ae1cc262251015b6e6328dc14b4fb0d6` |
| 22 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/nonneg--6ad1d938179c9808aec3f294.md) | 170 | `result-track:6ad1d938179c9808aec3f2943fac503b1bc487bd807c6ce959a12b5f5cc6898a` |
| 23 | `theorem` | [lt_one_of_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/lt-one-of-lt-one--0cd1fc9db4788e12b41cb5f0.md) | 173 | `result-track:0cd1fc9db4788e12b41cb5f0db183f35ad4eed88e0362d40b991a02a3a389d04` |
| 24 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/pos-of-pos--3c5867a643bd08e306a75e8a.md) | 176 | `result-track:3c5867a643bd08e306a75e8a36a421653ee489b2ababc620979da119cade40ce` |
| 25 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/contdiff--bbbfb57d54dc7d2cb0d72246.md) | 180 | `result-track:bbbfb57d54dc7d2cb0d7224660a5601015b71a6ef2f664af070deddd4994171f` |
| 26 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/contdiffat--0d386d6b2e614dc8b6ceba8b.md) | 186 | `result-track:0d386d6b2e614dc8b6ceba8b82cfb65d94357f003d848d4259618e1a7a1a0573` |
| 27 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/continuous--4a2674c96f9616ff4c49c4f9.md) | 190 | `result-track:4a2674c96f9616ff4c49c4f9290223f6e5336a1b25c7a1d0deef3636d06d0cad` |
| 28 | `theorem` | [continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant7747cd53a7f3324f7da89d43909b0b78398b6113dea05e28cc567ec2a21e32c0.lean/declarations/continuousat--6e41eb982923136eb43349df.md) | 194 | `result-track:6e41eb982923136eb43349df89adf1d23adc5ab92bd7d4f92107ff84c200b476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
