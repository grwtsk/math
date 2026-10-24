# Verification target: GRWTSK.Analysis.Complex.TentKernelEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentKernelEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e8ee54d817d84dbf1b96a7a821e0ae8b8c84c8`.

Source path: `GRWTSK/Analysis/Complex/TentKernelEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentKernelEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.FiniteExponentialEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tentSensitivity](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/tentsensitivity--e3e34f01b51c26a4966f7da0.md) | 31 | `declaration-track:e3e34f01b51c26a4966f7da0a79e928b7a33047784aff776f0c020658bbe40f5` |
| 2 | `theorem` | [norm_tentKernel_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/norm-tentkernel-sub-le--f1523cb75fb5992a7a7a12d0.md) | 35 | `result-track:f1523cb75fb5992a7a7a12d046750056aa92cbb486eef0c52b324bcacf7f0f2d` |
| 3 | `theorem` | [tentSensitivity_one_le](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/tentsensitivity-one-le--839e98470aa8bfae74046ebd.md) | 77 | `result-track:839e98470aa8bfae74046ebd3e714c4c94975f5a4703abc9fec22d87d4eb7df9` |
| 4 | `theorem` | [norm_tentKernel_sub_le_one](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/norm-tentkernel-sub-le-one--dacb1e15367eed2bff464420.md) | 102 | `result-track:dacb1e15367eed2bff4644202b9e1c948c1194835099a44b7f2bd2b6155d40c9` |
| 5 | `theorem` | [endpoint_quotient_error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/endpoint-quotient-error--83446cdc5767bb56a8531fb8.md) | 110 | `result-track:83446cdc5767bb56a8531fb8a2366748466df66333e15b19e8f29984faf8b5aa` |
| 6 | `structure` | [PointEvaluation](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/pointevaluation--043e096dcd9db27b54e06aae.md) | 143 | `declaration-track:043e096dcd9db27b54e06aaed96255c55be67131719bff20441a9c58faccc2be` |
| 7 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/value--7340b236034cb352f7ab023b.md) | 159 | `declaration-track:7340b236034cb352f7ab023bb442820402dc850b47d80e0419d209855aa94ba4` |
| 8 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/error--079bb295a921022202cbe71f.md) | 163 | `declaration-track:079bb295a921022202cbe71f6993f9beb11d21376c0278e600ca7c020733f458` |
| 9 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/sound--f9e7fee19deb67aaea03aa1c.md) | 168 | `result-track:f9e7fee19deb67aaea03aa1c01a6fa4e1b899675b42a1838c7125bb528242d4a` |
| 10 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/declarations/error-nonneg--b121ee3606112352fcbad92a.md) | 192 | `result-track:b121ee3606112352fcbad92ac62f642bf8366862ba87b764c6aed1ba8e8cb79d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
