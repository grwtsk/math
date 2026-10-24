# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GevreyProfileProbe.Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25d10a5c716a505f7c26215ec72cde4aa3c0bdb2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25d10a5c716a505f7c26215ec72cde4aa3c0bdb2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squaredExpNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/squaredexpneginvglue--65c8c5d4e82a1d017c686df5.md) | 9 | `declaration-track:65c8c5d4e82a1d017c686df5087cff39408e4e7f89c2b6f93bd59e69185c6069` |
| 2 | `theorem` | [squaredExpNegInvGlue_zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/squaredexpneginvglue-zero-of-nonpos--1fae37aecc13847146b4c61e.md) | 12 | `result-track:1fae37aecc13847146b4c61ef9cf03a83b4f391820561f7e05f368a45bf9357f` |
| 3 | `theorem` | [squaredExpNegInvGlue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/squaredexpneginvglue-zero--bc96c11a2935423562df57bf.md) | 16 | `result-track:bc96c11a2935423562df57bf3bc250c82160a0e60e14a323f5849dd9462da488` |
| 4 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/tendsto-polynomial-inv-mul-zero--2cbdea42243c49e9d91257d9.md) | 19 | `result-track:2cbdea42243c49e9d91257d97352c0a3c36d84ff270dbd4ea9191c2660a137ff` |
| 5 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/hasderivat-polynomial-eval-inv-mul--751be70cbb149c21bc387273.md) | 38 | `result-track:751be70cbb149c21bc3872734fd6e1fbb3ccefb35754275daf0f9247b69464fe` |
| 6 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/differentiable-polynomial-eval-inv-mul--1e5853a284cf73ed7cbcb1b9.md) | 57 | `result-track:1e5853a284cf73ed7cbcb1b980ff7b8891c0442012a7297bcf246333facc0d5a` |
| 7 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/continuous-polynomial-eval-inv-mul--be0369a4691aa3d6473780d7.md) | 61 | `result-track:be0369a4691aa3d6473780d7b2bc3cc088e43f65f739f1b86d1f68e466c6c2a8` |
| 8 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/contdiff-polynomial-eval-inv-mul--7ec057e1b97d0b53aaf8e5d3.md) | 65 | `result-track:7ec057e1b97d0b53aaf8e5d3870c1c4e96d8faa6316caf30d50ec0844772f6d2` |
| 9 | `theorem` | [squaredExpNegInvGlue_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/squaredexpneginvglue-contdiff--2a42371fb3aa1291a0e82203.md) | 76 | `result-track:2a42371fb3aa1291a0e822030fcb75317e765c1ef79fdd0b0ec07ca8b9c98cca` |
| 10 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile--d3558f0a687ffc4e6884c0c7.md) | 80 | `declaration-track:d3558f0a687ffc4e6884c0c7382af163d4dab0b445757842455d52aad55ac2e3` |
| 11 | `theorem` | [profile_eq_glue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-eq-glue--7dfb4ee396ebb1538226c498.md) | 83 | `result-track:7dfb4ee396ebb1538226c4986c25d4079ddb5d04159b42b37ed4c300b06b8aa6` |
| 12 | `theorem` | [profile_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-contdiff--4929ccd7f2497273cb930772.md) | 95 | `result-track:4929ccd7f2497273cb9307726821c5746b898d127a3de52d5d87ccf22cf43d14` |
| 13 | `theorem` | [profile_pos_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-pos-of-abs-lt-one--eca38308556bfbf8caf85841.md) | 103 | `result-track:eca38308556bfbf8caf858415387e96580f49085f6c9522fc52e4c98ce17b9e7` |
| 14 | `theorem` | [profile_zero_of_one_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-zero-of-one-le-abs--5f6b97ec8f14471dd611fe28.md) | 106 | `result-track:5f6b97ec8f14471dd611fe28dbeace2a0e419dbdf1f1d273716d23db4a6aa573` |
| 15 | `theorem` | [profile_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-zero--5c0ec772863e31303b11efb0.md) | 109 | `result-track:5c0ec772863e31303b11efb02c409874baaa0de9b86822480e648dff27fd628d` |
| 16 | `theorem` | [profile_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-nonzero--d5f9491fddad16d4cbef8aa1.md) | 112 | `result-track:d5f9491fddad16d4cbef8aa161d4b71ee131653d55cc144742c9ba818cef7b20` |
| 17 | `theorem` | [profile_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-support--e10a2e3e803466e4d1863964.md) | 115 | `result-track:e10a2e3e803466e4d18639644d3965f41b356127df135dcc3ec3f220c653946e` |
| 18 | `theorem` | [profile_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfileProbe/Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5.lean/declarations/profile-hascompactsupport--6583f04be55124cf41eb9baf.md) | 126 | `result-track:6583f04be55124cf41eb9baf5344f0c23b8c38b103aa8f18ebe49488317b9c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
